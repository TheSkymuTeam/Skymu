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
using Markdig.Extensions.TaskLists;
using Markdig.Extensions.Tables;
using Markdig.Extensions.Mathematics;
using Markdig.Extensions.DefinitionLists;
using Markdig.Extensions.Footnotes;
using Markdig.Extensions.CustomContainers;
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
using System.Windows.Media;
using System.Windows.Media.Imaging;
using MarkdigBlock = Markdig.Syntax.Block;
using MarkdigInline = Markdig.Syntax.Inlines.Inline;
using WpfBlock = System.Windows.Documents.Block;
using WpfInline = System.Windows.Documents.Inline;
using MdTable = Markdig.Extensions.Tables.Table;
using MdTableRow = Markdig.Extensions.Tables.TableRow;
using MdTableCell = Markdig.Extensions.Tables.TableCell;

using WpfTable = System.Windows.Documents.Table;
using WpfTableRow = System.Windows.Documents.TableRow;
using WpfTableCell = System.Windows.Documents.TableCell;
using WpfTableRowGroup = System.Windows.Documents.TableRowGroup;

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

        public static TextBlock FormTextblock(string input, bool doNotFormat = false, Style style = null) // The main function. You put text in, completely formatted textblock comes out. Ta da!!!!
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

            if (style != null) textBlock.Style = style;

            var pipeline = new MarkdownPipelineBuilder()
            //.UseAdvancedExtensions()   // All standard + extended features (tables, footnotes, task lists, etc.)
            .UseAlertBlocks()          // GitHub-style [!NOTE], [!TIP], etc.
            .UseAbbreviations()        // *[HTML]: Hyper Text Markup Language
            .UseAutoIdentifiers()      // Automatically generate id attributes for headings
            .UseCitations()            // ""citation"" style references
            .UseCustomContainers()     // ::: fenced container blocks
            .UseDefinitionLists()      // Definition lists (<dl>, <dt>, <dd>)
            .UseEmphasisExtras()       // Strikethrough, subscript, superscript, insert, mark
            .UseFigures()              // ^^^ figure blocks
            .UseFooters()              // ^^ footer blocks
            .UseFootnotes()            // [^ref] footnotes
            .UseGridTables()           // Pandoc-style grid tables
            .UseMathematics()          // $inline$ and $$block$$ math
            .UseMediaLinks()           // Embed YouTube, Vimeo, etc.
            .UsePipeTables()           // GitHub-style pipe tables
            //.UseListExtras()        // (intentionally excluded)
            .UseTaskLists()            // - [x] / - [ ] task checkboxes
            .UseDiagrams()             // Mermaid / nomnoml diagram blocks
            .UseAutoLinks()            // Auto-detect http:// and www. links
            .UseGenericAttributes()    // {#id .class key=value}
            .Build();

            // parse the input into a Markdig AST and walk it to produce WPF inlines
            // then add all the emoji-fied, linked, and markdown'ed inlines to the textblock
            var document = Markdown.Parse(input, pipeline);
            ProcessMarkdigBlocks(textBlock.Inlines, document);
          
            // Return
            return textBlock;
        }


        // loop for ProcessMarkdigBlock for all blocks
        private static void ProcessMarkdigBlocks(InlineCollection inlines, MarkdownDocument document)
        {
            var blocks = document.ToList();
            for (int i = 0; i < blocks.Count; i++)
            {
                if (i > 0)
                {
                    // recreate blank lines between previous block end and this block start
                    int blankLines = blocks[i].Line - blocks[i - 1].Line;
                    for (int b = 0; b < blankLines; b++)
                        inlines.Add(new LineBreak());
                }

                ProcessBlock(inlines, blocks[i]);
            }
        }


        // converts a Markdig block node to WPF inlines for insertion
        private static void ProcessBlock(InlineCollection inlines, MarkdigBlock block)
        {
            switch (block)
            {
                case HeadingBlock heading:
                    {
                        var span = new Span
                        {
                            FontWeight = FontWeights.Bold
                        };

                        switch (heading.Level)
                        {
                            case 1:
                                span.FontSize = 24;
                                break;
                            case 2:
                                span.FontSize = 20;
                                break;
                            case 3:
                                span.FontSize = 16;
                                break;
                            default:
                                span.FontSize = 16;
                                break;
                        }

                        if (heading.Inline != null)
                            ProcessInlines(span.Inlines, heading.Inline);

                        inlines.Add(span);
                        break;
                    }

                case ParagraphBlock para:
                    {
                        if (para.Inline != null)
                            ProcessInlines(inlines, para.Inline);

                        break;
                    }

                case QuoteBlock quote:
                    {
                        var stack = new StackPanel
                        {
                            Orientation = Orientation.Vertical
                        };

                        var border = new Border
                        {
                            BorderBrush = Brushes.DarkGray,
                            BorderThickness = new Thickness(2, 0, 0, 0),
                            Padding = new Thickness(8, 0, 0, 0),
                            Child = stack
                        };

                        foreach (var child in quote)
                        {
                            var tb = new TextBlock
                            {
                                Foreground = Brushes.Gray,
                                TextWrapping = TextWrapping.Wrap
                            };

                            ProcessBlock(tb.Inlines, child);

                            stack.Children.Add(tb);
                        }

                        inlines.Add(new InlineUIContainer(border));
                        break;
                    }

                case ListBlock list:
                    {
                        int index = 1;

                        foreach (ListItemBlock item in list)
                        {
                            if (list.IsOrdered)
                                inlines.Add(new Run($"{index}. "));
                            else
                                inlines.Add(new Run("• "));

                            foreach (var child in item)
                                ProcessBlock(inlines, child);

                            inlines.Add(new LineBreak());
                            index++;
                        }

                        break;
                    }

                case MathBlock math:
                    {
                        inlines.Add(new Run(math.Lines.ToString())
                        {
                            FontFamily = new FontFamily("Consolas"),
                            Foreground = Brushes.Cyan
                        });
                        break;
                    }

                case FencedCodeBlock fencedBlock:
                    {
                        var border = new Border
                        {
                            Background = Brushes.Black,
                            Padding = new Thickness(6),
                            Margin = new Thickness(0, 4, 0, 4),
                            Child = new TextBlock
                            {
                                Text = fencedBlock.Lines.ToString(),
                                FontFamily = new FontFamily("Consolas"),
                                Foreground = Brushes.Lime,
                                TextWrapping = TextWrapping.Wrap
                            }
                        };

                        inlines.Add(new InlineUIContainer(border));
                        break;
                    }

                case CodeBlock codeBlock:
                    {
                        var border = new Border
                        {
                            Background = Brushes.Black,
                            Padding = new Thickness(6),
                            Margin = new Thickness(0, 4, 0, 4),
                            Child = new TextBlock
                            {
                                Text = codeBlock.Lines.ToString(),
                                FontFamily = new FontFamily("Consolas"),
                                Foreground = Brushes.Lime,
                                TextWrapping = TextWrapping.Wrap
                            }
                        };

                        inlines.Add(new InlineUIContainer(border));
                        break;
                    }

                case ThematicBreakBlock _:
                    {
                        var line = new System.Windows.Shapes.Rectangle
                        {
                            Height = 1,                   
                            Fill = Brushes.Gray,          
                            HorizontalAlignment = HorizontalAlignment.Stretch
                        };

                        inlines.Add(new InlineUIContainer(line)
                        {
                            BaselineAlignment = BaselineAlignment.Center
                        });

                        break;
                    }

                case MdTable table:
                    {
                        var grid = new Grid
                        {
                            Margin = new Thickness(0, 4, 0, 4)
                        };

                        int columnCount = table.FirstOrDefault() is MdTableRow firstRow
                            ? firstRow.Count
                            : 0;

                        for (int i = 0; i < columnCount; i++)
                            grid.ColumnDefinitions.Add(new ColumnDefinition { Width = GridLength.Auto });

                        int rowIndex = 0;
                        bool isHeaderRow = true;

                        foreach (MdTableRow mdRow in table)
                        {
                            grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });

                            int colIndex = 0;

                            foreach (MdTableCell mdCell in mdRow)
                            {
                                var tb = new TextBlock
                                {
                                    Margin = new Thickness(0, 0, 30, 0),
                                    TextWrapping = TextWrapping.Wrap
                                };

                                foreach (var cellBlock in mdCell)
                                {
                                    if (cellBlock is ParagraphBlock para && para.Inline != null)
                                        ProcessInlines(tb.Inlines, para.Inline);
                                }

                                if (isHeaderRow)
                                    tb.FontWeight = FontWeights.Bold;

                                Grid.SetRow(tb, rowIndex);
                                Grid.SetColumn(tb, colIndex);

                                grid.Children.Add(tb);
                                colIndex++;
                            }

                            isHeaderRow = false;
                            rowIndex++;
                        }

                        inlines.Add(new InlineUIContainer(grid));
                        break;
                    }

                default:
                    break;
            }
        }

        private static void ProcessInlines(InlineCollection inlines, ContainerInline container)
        {
            foreach (var node in container)
                ProcessInline(inlines, node);
        }


        // converts a Markdig inline node to WPF inlines
        private static void ProcessInline(InlineCollection inlines, MarkdigInline node)
        {
            switch (node)
            {
                case LiteralInline literal:
                    AddTextOrLinkOrClickable(inlines, literal.Content.ToString());
                    break;

                case EmphasisInline emphasis:
                    {
                        var span = new Span();
                        ProcessInlines(span.Inlines, emphasis);

                        char delimiter = emphasis.DelimiterChar;
                        int count = emphasis.DelimiterCount;

                        if (delimiter == '*')
                        {
                            if (count >= 3)
                            {
                                span.FontWeight = FontWeights.Bold;
                                span.FontStyle = FontStyles.Italic;
                            }
                            else if (count == 2)
                                span.FontWeight = FontWeights.Bold;
                            else
                                span.FontStyle = FontStyles.Italic;
                        }
                        else if (delimiter == '~')
                        {
                            if (count == 2) // ~~strike~~
                                span.TextDecorations = TextDecorations.Strikethrough;
                            else if (count == 1) // ~sub~
                                span.BaselineAlignment = BaselineAlignment.Subscript;
                        }
                        else if (delimiter == '^')
                        {
                            span.BaselineAlignment = BaselineAlignment.Superscript;
                        }
                        else if (delimiter == '+') // ++insert++
                        {
                            span.TextDecorations = TextDecorations.Underline;
                        }
                        else if (delimiter == '=') // ==mark==
                        {
                            span.Background = Brushes.Yellow;
                        }

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
                                inlines.Add(new Run($" (warning, actual destination → {url})") { Foreground = Brushes.Red });
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
                        ProcessInlines(span.Inlines, container);
                        inlines.Add(span);
                        break;
                    }
              
                default:
                    // skip
                    break;
            }
        }





        // This function takes the source text and the inlines of the newly-created Span, and adds links,  ClickableItems, and animated emoticons to them. (After that, the text formatting is applied in
        // the main method, and the span, containg formatted text, is added to the global inline list. This, and the emoji-processing function only update the inline collection, and as such, return void.
        private static void AddTextOrLinkOrClickable(IList<WpfInline> inlines, string text)
        {
            if (string.IsNullOrEmpty(text)) return;

            int position = 0;

            string linkPattern = @"((?:https?|ftp|gopher)://[^\s]+)"; // Regex for weblinks (plain URL schema only, markdown links handled by Markdig)
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
                if (nextLink != null && nextLink.Index + position == nextIndex)
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
                if (nextClickableConfig != null)
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


        // overload that accepts InlineCollection so Span.Inlines can be passed directly.
        private static void AddTextOrLinkOrClickable(InlineCollection inlines, string text)
        {
            var temp = new List<WpfInline>();
            AddTextOrLinkOrClickable(temp, text);
            foreach (var il in temp)
                inlines.Add(il);
        }


        internal static SliceControl FormAnimatedEmoji(string emojiName)
        {
            var uri = new Uri($"pack://application:,,,/Emoji/{emojiName}/views/default_20_anim/index.png", UriKind.Absolute);
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


        private static void ProcessTextWithEmoji(IList<WpfInline> inlines, string text) // This function replaces Unicode emojis in the text with sexy inline animated emoticons.
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