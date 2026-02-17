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


        public static TextBlock FormTextblock(string input, bool doNotFormat = false) // The main function. You put text in, completely formatted textblock comes out.
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

            var inlines = new List<Inline>(); // Create inline list, to store all the different Runs for formatted text and links and emojis and etc
            int position = 0;

            // This Regular Expressions pattern determines what syntax corresponds to what group. It scans the input for these symbols and matches the associated text to the groups.
            string pattern = @"(```)(.+?)\1|(`)(.+?)\3|(\*\*\*)(.+?)\5|(\*\*)(.+?)\7|(__)(.+?)\9|(\*|_)(.+?)\11|~~(.+?)~~|(?m)^(?:\*|-)\s+(.+)|(?m)^>\s+(.+)|(?m)^(#{1,6})\s+(.+)|(?m)^\-#\s+(.+)";

            foreach (Match m in Regex.Matches(input, pattern)) // add RegexOptions.Singleline here to make message parsing only consider single lines, breaks multiline parsing  but allows for multiline code blocks
            {
                if (m.Index > position)
                    AddTextOrLinkOrClickable(inlines, input.Substring(position, m.Index - position));

                if (m.Groups[1].Success) // code block (delimiter: ```)
                {
                    var codeText = new TextBlock
                    {
                        Text = m.Groups[2].Value,
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
                    inlines.Add(new LineBreak());
                }
                else if (m.Groups[3].Success) // code line (delimiter: `)
                {
                    inlines.Add(new Run(m.Groups[4].Value)
                    {
                        FontFamily = new FontFamily("Consolas"),
                        Background = Brushes.Black,
                        Foreground = Brushes.Lime
                    });
                }
                else if (m.Groups[5].Success) // bold italic (delimiter: ***)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[6].Value);
                    span.FontWeight = FontWeights.Bold;
                    span.FontStyle = FontStyles.Italic;
                    inlines.Add(span);
                }
                else if (m.Groups[7].Success) // bold (delimiter: **)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[8].Value);
                    span.FontWeight = FontWeights.Bold;
                    inlines.Add(span);
                }
                else if (m.Groups[9].Success) // underline (delimiter: __)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[10].Value);
                    span.TextDecorations = TextDecorations.Underline;
                    inlines.Add(span);
                }
                else if (m.Groups[11].Success) // italic (delimiters: * or _)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[12].Value);
                    span.FontStyle = FontStyles.Italic;
                    inlines.Add(span);
                }
                else if (m.Groups[13].Success) // strikethrough (delimiter: ~~)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[13].Value);
                    span.TextDecorations = TextDecorations.Strikethrough;
                    inlines.Add(span);
                }
                else if (m.Groups[14].Success) // list item (delimiter: *)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, Properties.Settings.Default.ListDelimiter + " " + m.Groups[14].Value);
                    inlines.Add(span);
                }
                else if (m.Groups[15].Success) // quote (delimiter: >)
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, "“" + m.Groups[15].Value.Trim() + "”");
                    span.FontStyle = FontStyles.Italic;
                    span.Foreground = Brushes.DimGray;
                    inlines.Add(span);
                }
                else if (m.Groups[16].Success) // headers (delimiters: # or ## or ###)
                {
                    var headerSpan = new Span();
                    AddTextOrLinkOrClickable(headerSpan.Inlines, m.Groups[17].Value.Trim());
                    headerSpan.FontWeight = FontWeights.Bold;
                    headerSpan.FontSize = m.Groups[16].Value.Length switch
                    {
                        1 => 24,
                        2 => 20,
                        3 => 16,
                        _ => 16,
                    };
                    inlines.Add(headerSpan);
                    inlines.Add(new LineBreak());
                }
                else if (m.Groups[18].Success) // tiny text (delimiter: -#)
                {
                    var smallSpan = new Span();
                    AddTextOrLinkOrClickable(smallSpan.Inlines, m.Groups[18].Value.Trim());
                    smallSpan.FontSize = 9;
                    inlines.Add(smallSpan);
                    inlines.Add(new LineBreak());
                }

                position = m.Index + m.Length;
            }


            // Add any trailing text after all the matches
            if (position < input.Length)
                AddTextOrLinkOrClickable(inlines, input.Substring(position));

            // Add all the emoji-fied, linked, and markdown'ed inlines to the textblock
            foreach (var inline in inlines)
                textBlock.Inlines.Add(inline);

            // Return
            return textBlock;
        }


        // This function takes the source text and the inlines of the newly-created Span, and adds links,  ClickableItems, and animated emoticons to them. (After that, the text formatting is applied in
        // the main method, and the span, containg formatted text, is added to the global inline list. This, and the emoji-processing function only update the inline collection, and as such, return void.
        private static void AddTextOrLinkOrClickable(ICollection<Inline> inlines, string text)
        {
            if (string.IsNullOrEmpty(text)) return;

            int position = 0;

            string linkPattern = @"\[(.+?)\]\((https?://[^\s)]+)\)|((?:https?|ftp|gopher)://[^\s]+)"; // Regex for weblinks 
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
                    if (nextLink.Groups[1].Success && nextLink.Groups[2].Success) // Markdown-formatted links e.g. [text](link)
                    {
                        string display = nextLink.Groups[1].Value;
                        string url = nextLink.Groups[2].Value.TrimEnd(punctuation);
                        if (Uri.TryCreate(url, UriKind.Absolute, out Uri uri))
                        {
                            var hyperlink = new Hyperlink(new Run(display)) { NavigateUri = uri };
                            hyperlink.RequestNavigate += (s, e) =>
                            {
                                Process.Start(new ProcessStartInfo(e.Uri.AbsoluteUri) { UseShellExecute = true });
                            };
                            inlines.Add(hyperlink);
                        }
                        else
                        {
                            inlines.Add(new Run(nextLink.Value));
                        }
                    }
                    else if (nextLink.Groups[3].Success)
                    {
                        string url = nextLink.Groups[3].Value.TrimEnd(punctuation); // Standard links
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


        private static void ProcessTextWithEmoji(ICollection<Inline> inlines, string text) // This function replaces Unicode emojis in the text with inline animated emoticons.
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
                            BaselineAlignment = BaselineAlignment.Center
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
