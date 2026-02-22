/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using Markdig;
using Markdig.Syntax;
using Markdig.Syntax.Inlines;
using MiddleMan;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;

// using Emoji.Wpf; // Color Emoji Textblock. CAUSES PERFORMANCE DELAYS, DO NOT USE
using System.Windows.Controls; // Standard Textblock with Tahoma-rendered emoji
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Media;
using System.Windows.Media.Imaging;

using WpfInline = System.Windows.Documents.Inline;
using WpfBlock = System.Windows.Documents.Block;
using MarkdigBlock = Markdig.Syntax.Block;
using MarkdigInline = Markdig.Syntax.Inlines.Inline;

namespace Skymu
{
    internal class MessageTools
    {
        private static bool IsEmojiTextElement(string element) // Checks if the selected text element is an emoji or not.
        {
            bool hasEmojiRune = false;

            foreach (var rune in element.EnumerateRunes())
            {
                int v = rune.Value;

                if (v == 0x200D || v == 0xFE0F)
                    return true;


                if (
                    (v >= 0x1F300 && v <= 0x1FAFF) || // all types of emoji unicode stuff
                    (v >= 0x2600 && v <= 0x26FF) ||
                    (v >= 0x2700 && v <= 0x27BF) ||
                    (v >= 0x1F1E6 && v <= 0x1F1FF)
                )
                {
                    hasEmojiRune = true;
                }
            }

            return hasEmojiRune;
        }


        public static TextBlock FormTextblock(string input, bool doNotFormat = false) // The main function. You put text in, completely formatted textblock comes out. Ta da.
        {
            var textBlock = new TextBlock
            {
                TextWrapping = TextWrapping.Wrap, // otherwise text wouldn't go to a newline unless explicitly told to
            };

            if (doNotFormat) // Just return a plain unformatted TextBlock
            {
                textBlock.Text = input;
                return textBlock;
            }

            var inlines = new List<WpfInline>(); // create inline list, to store all the different Runs for formatted text and links and emojis and etc

            // build a Markdig pipeline with all standard extensions enabled
            var pipeline = new MarkdownPipelineBuilder()
                .UseAdvancedExtensions()
                .Build();

            // parse the input into a Markdig AST and walk it to produce WPF inlines
            var document = Markdown.Parse(input, pipeline);
            ProcessMarkdigBlocks(inlines, document);

            // Add all the emoji-fied, linked, and markdown'ed inlines to the textblock
            foreach (var inline in inlines)
                textBlock.Inlines.Add(inline);

            // Return
            return textBlock;
        }


        // loop for ProcessMarkdigBlock for all blocks
        private static void ProcessMarkdigBlocks(List<WpfInline> inlines, MarkdownDocument document)
        {
            var blocks = document.ToList();
            for (int i = 0; i < blocks.Count; i++)
            {
                if (i > 0)
                {
                    // count blank lines between previous block end and this block start
                    int blankLines = blocks[i].Line - blocks[i - 1].Line - 1;
                    for (int b = 0; b < Math.Max(1, blankLines); b++)
                        inlines.Add(new LineBreak());
                }
                ProcessMarkdigBlock(inlines, blocks[i]);
            }
        }


        // converts a Markdig block node to WPF inlines
        private static void ProcessMarkdigBlock(List<WpfInline> inlines, MarkdigBlock block)
        {
            switch (block)
            {
                case HeadingBlock heading:
                    {
                        var headerSpan = new Span();
                        if (heading.Inline != null)
                            ProcessMarkdigInlines(headerSpan.Inlines, heading.Inline);
                        headerSpan.FontWeight = FontWeights.Bold;
                        headerSpan.FontSize = heading.Level switch
                        {
                            1 => 24,
                            2 => 20,
                            3 => 16,
                            _ => 16,
                        };
                        inlines.Add(headerSpan);
                        break;
                    }

                case FencedCodeBlock fenced:
                    {
                        string code = fenced.Lines.ToString();
                        var codeText = new TextBlock
                        {
                            Text = code,
                            FontFamily = new FontFamily("Consolas"),
                            Foreground = Brushes.Lime,
                            Background = Brushes.Black,
                            TextWrapping = TextWrapping.Wrap
                        };

                        var border = new Border
                        {
                            Background = Brushes.Black,
                            Padding = new Thickness(4),
                            Child = codeText
                        };

                        inlines.Add(new InlineUIContainer(border));
                        break;
                    }

                case CodeBlock code:
                    {
                        string codeContent = code.Lines.ToString();
                        var codeText = new TextBlock
                        {
                            Text = codeContent,
                            FontFamily = new FontFamily("Consolas"),
                            Foreground = Brushes.Lime,
                            Background = Brushes.Black,
                            TextWrapping = TextWrapping.Wrap
                        };

                        var border = new Border
                        {
                            Background = Brushes.Black,
                            Padding = new Thickness(4),
                            Child = codeText
                        };

                        inlines.Add(new InlineUIContainer(border));
                        break;
                    }

                case QuoteBlock quote:
                    {
                        var quoteInlines = new List<WpfInline>();
                        foreach (var child in quote)
                            ProcessMarkdigBlock(quoteInlines, child);
                        string quoteText = string.Concat(quoteInlines.OfType<Run>().Select(r => r.Text));
                        var span = new Span();
                        AddTextOrLinkOrClickable(span.Inlines, "\u201C" + quoteText.Trim() + "\u201D");
                        span.FontStyle = FontStyles.Italic;
                        span.Foreground = Brushes.DimGray;
                        inlines.Add(span);
                        break;
                    }

                case ListBlock list:
                    {
                        var listItems = list.OfType<ListItemBlock>().ToList();
                        for (int i = 0; i < listItems.Count; i++)
                        {
                            if (i > 0) inlines.Add(new LineBreak()); 
                            var span = new Span();
                            var itemInlines = new List<WpfInline>();
                            foreach (var child in listItems[i])
                                ProcessMarkdigBlock(itemInlines, child);
                            // prefix each item with the configured list delimiter, le epic arrow
                            AddTextOrLinkOrClickable(span.Inlines, Properties.Settings.Default.ListDelimiter + " ");
                            foreach (var il in itemInlines)
                                span.Inlines.Add(il);
                            inlines.Add(span);
                        }
                        break;
                    }

                case ParagraphBlock para:
                    {
                        if (para.Inline != null)
                            ProcessMarkdigInlines(inlines, para.Inline);
                        break;
                    }

                case ThematicBreakBlock _:
                    inlines.Add(new LineBreak());
                    break;

                default:
                    {
                        // fallback to raw text
                        if (block is LeafBlock leaf && leaf.Lines.Count > 0)
                            AddTextOrLinkOrClickable(inlines, leaf.Lines.ToString());
                        break;
                    }
            }
        }


        // loop for ProcessMarkdigInlineNode
        private static void ProcessMarkdigInlines(List<WpfInline> inlines, ContainerInline markdigInlines)
        {
            foreach (var node in markdigInlines)
            {
                ProcessMarkdigInlineNode(inlines, node);
            }
        }


        // overload that accepts InlineCollection so Span.Inlines can be passed directly
        private static void ProcessMarkdigInlines(InlineCollection inlines, ContainerInline markdigInlines)
        {
            foreach (var node in markdigInlines)
            {
                ProcessMarkdigInlineNode(inlines, node);
            }
        }


        // converts a Markdig inline node to WPF inlines
        private static void ProcessMarkdigInlineNode(IList<WpfInline> inlines, MarkdigInline node)
        {
            switch (node)
            {
                case LiteralInline literal:
                    AddTextOrLinkOrClickable(inlines, literal.Content.ToString());
                    break;

                case EmphasisInline emphasis:
                    {
                        var span = new Span();
                        ProcessMarkdigInlines(span.Inlines, emphasis);
                        if (emphasis.DelimiterCount >= 3)
                        {
                            span.FontWeight = FontWeights.Bold;          
                            span.FontStyle = FontStyles.Italic;
                        }
                        else if (emphasis.DelimiterCount == 2)
                            span.FontWeight = FontWeights.Bold;          
                        else if (emphasis.DelimiterCount == 1)
                            span.FontStyle = FontStyles.Italic;          
                        inlines.Add(span);
                        break;
                    }

                case CodeInline code:
                    inlines.Add(new Run(code.Content)
                    {
                        FontFamily = new FontFamily("Consolas"),
                        Background = Brushes.Black,
                        Foreground = Brushes.Lime
                    });
                    break;

                case LinkInline link:
                    {
                        string display = string.Concat(link.OfType<LiteralInline>().Select(l => l.Content.ToString()));
                        string url = link.Url ?? string.Empty;
                        if (Uri.TryCreate(url, UriKind.Absolute, out Uri uri))
                        {
                            bool displayLooksLikeUrl = Uri.TryCreate(display, UriKind.Absolute, out Uri displayUri) // thanks epicness
                                                       && displayUri.Host != uri.Host;
                            string label = string.IsNullOrEmpty(display) ? url : display;
                            var hyperlink = new Hyperlink(new Run(label)) { NavigateUri = uri };
                            hyperlink.RequestNavigate += (s, e) =>
                            {
                                Process.Start(new ProcessStartInfo(e.Uri.AbsoluteUri) { UseShellExecute = true });
                            };
                            inlines.Add(hyperlink);
                            if (displayLooksLikeUrl)
                                inlines.Add(new Run($" (warning, actual destination→ {url})") { Foreground = Brushes.Red });
                        }
                        else
                        {
                            inlines.Add(new Run(url));
                        }
                        break;
                    }

                case LineBreakInline lineBreak:
                        inlines.Add(new LineBreak());
                    break;

                case HtmlInline html:
                    inlines.Add(new Run(html.Tag));
                    break;

                case ContainerInline container:
                    {
                        // generic container fallback
                        var span = new Span();
                        ProcessMarkdigInlines(span.Inlines, container);
                        inlines.Add(span);
                        break;
                    }

                default:
                    // skip
                    break;
            }
        }


        // overload that accepts InlineCollection
        private static void ProcessMarkdigInlineNode(InlineCollection inlines, MarkdigInline node)
        {
            var temp = new List<WpfInline>();
            ProcessMarkdigInlineNode(temp, node);
            foreach (var il in temp)
                inlines.Add(il);
        }


        // This function takes the source text and the inlines of the newly-created Span, and adds links,  ClickableItems, and animated emoticons to them. (After that, the text formatting is applied in
        // the main method, and the span, containg formatted text, is added to the global inline list. This, and the emoji-processing function only update the inline collection, and as such, return void.
        private static void AddTextOrLinkOrClickable(IList<WpfInline> inlines, string text)
        {
            if (string.IsNullOrEmpty(text)) return;

            int position = 0;

            string linkPattern = @"((?:https?|ftp|gopher)://[^\s]+)"; // Regex for weblinks (plain URLs only, markdown links handled by Markdig)
            char[] punctuation = new char[] { '.', ',', ';', ')', ']', '"', '\'' };

            while (position < text.Length)
            {
                int nextIndex = text.Length;
                Match nextLink = null;
                ClickableConfiguration nextClickableConfig = null;
                int clickableStartIndex = -1;

                // preparation

                // find and set the next link to be parsed in the text
                foreach (Match m in Regex.Matches(text.Substring(position), linkPattern))
                {
                    int idx = position + m.Index;
                    if (idx < nextIndex)
                    {
                        nextIndex = idx;
                        nextLink = m;
                    }
                }

                // find and set the next clickable to be parsed in the text (clickables defined in plugin)
                // this loop only checks for clickables in delimiters, not standalone clickables
                foreach (var config in Universal.Plugin.ClickableConfigurations)
                {
                    if (string.IsNullOrEmpty(config.DelimiterLeft)) continue;

                    int idx = text.IndexOf(config.DelimiterLeft, position, StringComparison.Ordinal);
                    if (idx >= 0 && idx < nextIndex)
                    {
                        nextIndex = idx;
                        nextClickableConfig = config;
                        clickableStartIndex = idx;
                        break;
                    }
                }

                // action

                // process all text until and the next match (the emojis can't be in any of the matches, hence why it's running here)
                if (nextIndex > position)
                {
                    string plain = text.Substring(position, nextIndex - position);
                    ProcessTextWithEmoji(inlines, plain); // start the emoticon adding, takes the same parameters as this function did
                    position = nextIndex;
                }

                // if the next match is a link, process it like so
                if (nextLink is not null && nextLink.Index + position == nextIndex)
                {
                    if (nextLink.Groups[1].Success)
                    {
                        string url = nextLink.Groups[1].Value.TrimEnd(punctuation); // Standard links
                        if (Uri.TryCreate(url, UriKind.Absolute, out Uri uri))
                        {
                            var hyperlink = new Hyperlink(new Run(url)) { NavigateUri = uri };
                            hyperlink.RequestNavigate += (s, e) =>
                            {
                                Process.Start(new ProcessStartInfo(e.Uri.AbsoluteUri) { UseShellExecute = true });
                            };
                            inlines.Add(hyperlink);
                        }
                        else
                        {
                            inlines.Add(new Run(url));
                        }
                    }

                    position += nextLink.Length;
                    continue;
                }

                // if the next match is a Clickable, process it like so
                if (nextClickableConfig is not null)
                {
                    int start = clickableStartIndex;
                    int end = start + nextClickableConfig.DelimiterLeft.Length;

                    string clickableText;

                    if (!string.IsNullOrEmpty(nextClickableConfig.DelimiterRight))
                    {
                        int closeIdx = text.IndexOf(nextClickableConfig.DelimiterRight, end, StringComparison.Ordinal);
                        if (closeIdx >= end)
                        {
                            // remove delimiters from displayed text
                            clickableText = text.Substring(end, closeIdx - end);
                            end = closeIdx + nextClickableConfig.DelimiterRight.Length;
                        }
                        else
                        {
                            // if there is no closing delimiter, fallback to text after left delimiter
                            clickableText = text.Substring(end, Math.Min(20, text.Length - end)); // or any fallback length
                            end = text.Length;
                        }
                    }
                    else
                    {
                        // left-only delimiter, take text immediately after delimiter
                        clickableText = text.Substring(end, Math.Min(20, text.Length - end)); // fallback length
                        end = text.Length;
                    }

                    var hyperlink = new Hyperlink(new Run(clickableText));
                    // TODO: handle clickable type actions if needed
                    inlines.Add(hyperlink);

                    position = end;
                    continue;
                }

                // if nothing matched, break and add no inlines using this method
                if (nextIndex == text.Length)
                    break;
            }
        }


        // Overload that accepts InlineCollection so Span.Inlines can be passed directly.
        private static void AddTextOrLinkOrClickable(InlineCollection inlines, string text)
        {
            var temp = new List<WpfInline>();
            AddTextOrLinkOrClickable(temp, text);
            foreach (var il in temp)
                inlines.Add(il);
        }


        internal static SliceControl FormAnimatedEmoji(string emojiName)
        {
            var uri = new Uri($"pack://application:,,,/Resources/Universal/Emoji/{emojiName}/views/default_20_anim/index.png", UriKind.Absolute);
            var sourceImg = new BitmapImage();
            sourceImg.BeginInit();
            sourceImg.UriSource = uri;
            sourceImg.CacheOption = BitmapCacheOption.OnLoad;
            sourceImg.EndInit();
            sourceImg.Freeze();
            var sliceControl = new SliceControl
            {
                Source = sourceImg,
                IsHitTestVisible = false,
                Width = 22, // 2px padding to fix image render clip bug
                Height = 20,
                Tag = emojiName,
                ElementCount = (sourceImg.PixelHeight / 20),
                StackDirection = SpriteStackDirection.Vertical,
                DefaultIndex = 0,
                Slice = false,
                IsAnimation = true,
                AnimationFps = Properties.Settings.Default.EmojiFps
            };

            RenderOptions.SetBitmapScalingMode(sliceControl, BitmapScalingMode.NearestNeighbor);
            RenderOptions.SetEdgeMode(sliceControl, EdgeMode.Aliased);
            return sliceControl;
        }


        private static void ProcessTextWithEmoji(IList<WpfInline> inlines, string text) // This function replaces Unicode emojis in the text with inline animated emoticons.
        {
            StringInfo info = new StringInfo(text);
            int loopCount = info.LengthInTextElements;
            Run currentRun = new Run();

            for (int i = 0; i < loopCount; i++)
            {
                string element = info.SubstringByTextElements(i, 1);

                if (IsEmojiTextElement(element))
                {
                    if (!string.IsNullOrEmpty(currentRun.Text))
                    {
                        inlines.Add(currentRun);
                        currentRun = new Run();
                    }

                    string emojiKey = string.Join("-",
                        element.EnumerateRunes()
                               .Select(r => r.Value.ToString("X")));

                    if (EmojiDictionary.Map.TryGetValue(emojiKey, out var emojiFilename))
                    {
                        inlines.Add(new InlineUIContainer(FormAnimatedEmoji(emojiFilename))
                        {
                            BaselineAlignment = BaselineAlignment.TextBottom
                        });
                    }
                    else
                    {
                        currentRun.Text += element;
                    }
                }
                else
                {
                    currentRun.Text += element;
                }
            }

            if (!string.IsNullOrEmpty(currentRun.Text))
                inlines.Add(currentRun);
        }
    }

}