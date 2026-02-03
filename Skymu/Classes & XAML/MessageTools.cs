/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
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
// using Emoji.Wpf; // Color Emoji Textblock. CAUSES PERFORMANCE DELAYS
using System.Windows.Controls; // Standard Textblock with Tahoma-rendered emoji
using System.Windows.Documents;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu
{
    internal class MessageTools
    {
        private static bool IsEmojiTextElement(string element)
        {
            bool hasEmojiRune = false;

            foreach (var rune in element.EnumerateRunes())
            {
                int v = rune.Value;

                if (v == 0x200D || v == 0xFE0F)
                    return true;


                if (
                    (v >= 0x1F300 && v <= 0x1FAFF) ||
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


        public static TextBlock FormTextblock(string input, bool doNotFormat = false)
        {
            var textBlock = new TextBlock
            {
                TextWrapping = TextWrapping.Wrap,
            };

            TextOptions.SetTextFormattingMode(textBlock, TextFormattingMode.Display);

            if (doNotFormat)
            {
                textBlock.Text = input;
                return textBlock;
            }

            var inlines = new List<Inline>();
            int position = 0;

            string pattern = @"(```)(.+?)\1|(`)(.+?)\3|(\*\*\*)(.+?)\5|(\*\*)(.+?)\7|(__)(.+?)\9|(\*|_)(.+?)\11|~~(.+?)~~|(?m)^(?:\*|-)\s+(.+)|(?m)^>\s+(.+)|(?m)^(#{1,6})\s+(.+)|(?m)^\-#\s+(.+)";

            foreach (Match m in Regex.Matches(input, pattern, RegexOptions.Singleline))
            {
                if (m.Index > position)
                    AddTextOrLinkOrClickable(inlines, input.Substring(position, m.Index - position));

                if (m.Groups[1].Success) // code block ```
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
                else if (m.Groups[3].Success) // code line `
                {
                    inlines.Add(new Run(m.Groups[4].Value)
                    {
                        FontFamily = new FontFamily("Consolas"),
                        Background = Brushes.Black,
                        Foreground = Brushes.Lime
                    });
                }
                else if (m.Groups[5].Success) // bold italic ***
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[6].Value);
                    span.FontWeight = FontWeights.Bold;
                    span.FontStyle = FontStyles.Italic;
                    inlines.Add(span);
                }
                else if (m.Groups[7].Success) // bold **
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[8].Value);
                    span.FontWeight = FontWeights.Bold;
                    inlines.Add(span);
                }
                else if (m.Groups[9].Success) // underline __
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[10].Value);
                    span.TextDecorations = TextDecorations.Underline;
                    inlines.Add(span);
                }
                else if (m.Groups[11].Success) // italic * or _
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[12].Value);
                    span.FontStyle = FontStyles.Italic;
                    inlines.Add(span);
                }
                else if (m.Groups[13].Success) // strikethrough ~~
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, m.Groups[13].Value);
                    span.TextDecorations = TextDecorations.Strikethrough;
                    inlines.Add(span);
                }
                else if (m.Groups[14].Success) // list item
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, Properties.Settings.Default.ListDelimiterCharacter + " " + m.Groups[14].Value);
                    inlines.Add(span);
                }
                else if (m.Groups[15].Success) // quote
                {
                    var span = new Span();
                    AddTextOrLinkOrClickable(span.Inlines, "“" + m.Groups[15].Value.Trim() + "”");
                    span.FontStyle = FontStyles.Italic;
                    span.Foreground = Brushes.DimGray;
                    inlines.Add(span);
                }
                else if (m.Groups[16].Success) // headers
                {
                    var headerSpan = new Span();
                    AddTextOrLinkOrClickable(headerSpan.Inlines, m.Groups[17].Value.Trim());
                    headerSpan.FontWeight = FontWeights.Bold;
                    switch (m.Groups[16].Value.Length)
                    {
                        case 1: headerSpan.FontSize = 24; break;
                        case 2: headerSpan.FontSize = 20; break;
                        case 3: headerSpan.FontSize = 16; break;
                        default: headerSpan.FontSize = 16; break;
                    }
                    inlines.Add(headerSpan);
                    inlines.Add(new LineBreak());
                }
                else if (m.Groups[18].Success) // small text line (-# ...)
                {
                    var smallSpan = new Span();
                    AddTextOrLinkOrClickable(smallSpan.Inlines, m.Groups[18].Value.Trim());
                    smallSpan.FontSize = 9;
                    inlines.Add(smallSpan);
                    inlines.Add(new LineBreak());
                }

                position = m.Index + m.Length;
            }


            // Add any trailing text after last match
            if (position < input.Length)
                AddTextOrLinkOrClickable(inlines, input.Substring(position));

            foreach (var inline in inlines)
                textBlock.Inlines.Add(inline);

            return textBlock;
        }



        private static void AddTextOrLinkOrClickable(ICollection<Inline> inlines, string text)
        {
            if (string.IsNullOrEmpty(text)) return;

            int position = 0;

            string linkPattern = @"\[(.+?)\]\((https?://[^\s)]+)\)|((?:https?|ftp|gopher)://[^\s]+)";
            char[] punctuation = new char[] { '.', ',', ';', ')', ']', '"', '\'' };

            while (position < text.Length)
            {
                int nextIndex = text.Length;
                Match nextLink = null;
                ClickableDelimitationConfiguration nextClickableConfig = null;
                int clickableStartIndex = -1;
                string clickableMatch = null;
                ClickableItemConfiguration clickableItem = null;

                // find the next link to be parsed in the text
                foreach (Match m in Regex.Matches(text.Substring(position), linkPattern))
                {
                    int idx = position + m.Index;
                    if (idx < nextIndex)
                    {
                        nextIndex = idx;
                        nextLink = m;
                    }
                }

                // find the next clickable to be parsed in the text (clickables defined in plugin)
                // this loop only checks for clickables in delimiters, not standalone clickables
                foreach (var config in Universal.Plugin.ClickableConfigurations.OfType<ClickableDelimitationConfiguration>())
                {
                    if (!config.DelimiterLeft.HasValue) continue;
                    int idx = text.IndexOf(config.DelimiterLeft.Value, position);
                    if (idx >= 0 && idx < nextIndex)
                    {
                        foreach (var item in config.ClickableItems)
                        {
                            if (text.Length >= idx + 1 + item.StartString.Length &&
                                text.Substring(idx + 1, item.StartString.Length) == item.StartString)
                            {
                                nextIndex = idx;
                                nextClickableConfig = config;
                                clickableStartIndex = idx;
                                clickableItem = item;
                                clickableMatch = item.StartString;
                                break;
                            }
                        }
                    }
                }

                // process all the text between the current and the next match
                if (nextIndex > position)
                {
                    string plain = text.Substring(position, nextIndex - position);
                    ProcessTextWithEmoji(inlines, plain);
                    position = nextIndex;
                }

                // if the next match is a link, process it like so
                if (nextLink != null && nextLink.Index + position == nextIndex)
                {
                    if (nextLink.Groups[1].Success && nextLink.Groups[2].Success)
                    {
                        string display = nextLink.Groups[1].Value;
                        string url = nextLink.Groups[2].Value.TrimEnd(punctuation);
                        if (Uri.TryCreate(url, UriKind.Absolute, out Uri uri))
                        {
                            var hyperlink = new Hyperlink(new Run(display)) { NavigateUri = uri};
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
                        string url = nextLink.Groups[3].Value.TrimEnd(punctuation);
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

                // if the next match is a clickable, process it like so
                if (nextClickableConfig != null && clickableItem != null)
                {
                    int start = clickableStartIndex;
                    int end = start + clickableMatch.Length + 1;

                    string clickableText;

                    if (nextClickableConfig.DelimiterRight.HasValue)
                    {
                        int closeIdx = text.IndexOf(nextClickableConfig.DelimiterRight.Value, end);
                        if (closeIdx >= end)
                        {
                            // remove delimiters from displayed text, keep StartString
                            clickableText = text.Substring(start + 1, closeIdx - start - 1);
                            end = closeIdx + 1;
                        }
                        else
                        {
                            // no closing delimiter, fallback
                            clickableText = text.Substring(start + 1, clickableMatch.Length);
                        }
                    }
                    else
                    {
                        // left-only delimiter
                        clickableText = text.Substring(start + 1, clickableMatch.Length);
                    }

                    var hyperlink = new Hyperlink(new Run(clickableText));
                    // For now ignore clickable type actions
                    inlines.Add(hyperlink);

                    position = end;
                    continue;
                }

                // if nothing matched, break
                if (nextIndex == text.Length)
                    break;
            }
        }



        private static void ProcessTextWithEmoji(ICollection<Inline> inlines, string text)
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
                        var uri = new Uri($"pack://application:,,,/Resources/Universal/Emoji/{emojiFilename}/views/default_20_anim/index.png", UriKind.Absolute);
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
                            Width = 22,
                            Height = 20,
                            ElementCount = (sourceImg.PixelHeight / 20), 
                            StackDirection = SpriteStackDirection.Vertical,
                            DefaultIndex = 0,
                            Slice = false, 
                            IsAnimation = true, 
                            AnimationFps = 45.0
                        };

                        RenderOptions.SetBitmapScalingMode(sliceControl, BitmapScalingMode.NearestNeighbor);
                        RenderOptions.SetEdgeMode(sliceControl, EdgeMode.Aliased);

                        inlines.Add(new InlineUIContainer(sliceControl)
                        {
                            BaselineAlignment = BaselineAlignment.Baseline
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
