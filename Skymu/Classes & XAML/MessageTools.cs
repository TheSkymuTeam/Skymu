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

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
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

        public static TextBlock FormTextblock(string input)
        {
            var textBlock = new TextBlock
            {
                TextWrapping = TextWrapping.Wrap
            };

            var inlines = new List<Inline>();
            int pos = 0;

            // Combined pattern for markdown elements, headers, small text
            string pattern =
                @"(\*\*)(.+?)\1|(__)(.+?)\3|(\*|_)(.+?)\5|~~(.+?)~~|(?m)^(?:\*|-)\s+(.+)|(?m)^>\s+(.+)|(?m)^(#{1,6})\s+(.+)|(?m)^\-#\s+(.+)"; // literally oh my god

            foreach (Match m in Regex.Matches(input, pattern))
            {
                if (m.Index > pos)
                    AddTextOrLink(inlines, input.Substring(pos, m.Index - pos));

                if (m.Groups[1].Success) // bold
                    inlines.Add(new Run(m.Groups[2].Value) { FontWeight = FontWeights.Bold });
                else if (m.Groups[3].Success) // underline
                    inlines.Add(new Run(m.Groups[4].Value) { TextDecorations = TextDecorations.Underline });
                else if (m.Groups[5].Success) // italic
                    inlines.Add(new Run(m.Groups[6].Value) { FontStyle = FontStyles.Italic });
                else if (m.Groups[7].Success) // strikethrough
                    inlines.Add(new Span(new Run(m.Groups[7].Value)) { TextDecorations = TextDecorations.Strikethrough });
                else if (m.Groups[8].Success) // list
                    inlines.Add(new Run(Properties.Settings.Default.ListDelimiterCharacter + " " + m.Groups[8].Value));
                else if (m.Groups[9].Success) // quote
                    inlines.Add(new Run("“" + m.Groups[9].Value.Trim() + "”")
                    {
                        FontStyle = FontStyles.Italic,
                        Foreground = Brushes.DimGray
                    });
                else if (m.Groups[10].Success) // header
                {
                    var run = new Run(m.Groups[11].Value.Trim()) { FontWeight = FontWeights.Bold };
                    switch (m.Groups[10].Value.Length)
                    {
                        case 1: run.FontSize = 24; break;
                        case 2: run.FontSize = 20; break;
                        case 3: run.FontSize = 16; break;
                        default: run.FontSize = 16; break;
                    }
                    inlines.Add(run);
                    inlines.Add(new LineBreak());
                }
                else if (m.Groups[12].Success) // small text line (-# ...)
                {
                    var run = new Run(m.Groups[12].Value.Trim())
                    {
                        FontSize = 9
                    };
                    inlines.Add(run);
                    inlines.Add(new LineBreak());
                }

                pos = m.Index + m.Length;
            }

            if (pos < input.Length)
                AddTextOrLink(inlines, input.Substring(pos));

            foreach (var inline in inlines)
                textBlock.Inlines.Add(inline);

            return textBlock;
        }

        private static void AddTextOrLink(List<Inline> inlines, string text)
        {
            int position = 0;
            // match either Markdown link or plain URL
            string pattern = @"\[(.+?)\]\((https?://[^\s)]+)\)|((?:https?|ftp|gopher)://[^\s]+)";
            char[] punctuation = new char[] { '.', ',', ';', ')', ']', '"', '\'' };
            foreach (Match m in Regex.Matches(text, pattern))
            {
                if (m.Index > position)
                    ProcessTextWithEmoji(inlines, text.Substring(position, m.Index - position));
                if (m.Groups[1].Success && m.Groups[2].Success)
                {
                    // reminder: markdown link: [text](url)
                    string display = m.Groups[1].Value;
                    string url = m.Groups[2].Value.TrimEnd(punctuation);
                    if (Uri.TryCreate(url, UriKind.Absolute, out Uri uri))
                    {
                        var hyperlink = new Hyperlink(new Run(display)) { NavigateUri = uri };
                        hyperlink.RequestNavigate += (s, e) =>
                        {
                            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo(e.Uri.AbsoluteUri)
                            {
                                UseShellExecute = true
                            });
                        };
                        inlines.Add(hyperlink);
                    }
                    else
                    {
                        inlines.Add(new Run(m.Value));
                    }
                }
                else if (m.Groups[3].Success)
                {
                    string url = m.Groups[3].Value.TrimEnd(punctuation);
                    if (Uri.TryCreate(url, UriKind.Absolute, out Uri uri))
                    {
                        var hyperlink = new Hyperlink(new Run(url)) { NavigateUri = uri };
                        hyperlink.RequestNavigate += (s, e) =>
                        {
                            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo(e.Uri.AbsoluteUri)
                            {
                                UseShellExecute = true
                            });
                        };
                        inlines.Add(hyperlink);
                    }
                    else
                    {
                        inlines.Add(new Run(url));
                    }
                }
                position = m.Index + m.Length;
            }
            if (position < text.Length)
                ProcessTextWithEmoji(inlines, text.Substring(position));
        }

        private static void ProcessTextWithEmoji(List<Inline> inlines, string text)
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

                    // Build emoji key from runes
                    string emojiKey = string.Join("-",
                        element.EnumerateRunes()
                               .Select(r => r.Value.ToString("X")));
                    Debug.WriteLine(emojiKey);

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
                            Width = 20,
                            Height = 20,
                            ElementCount = (sourceImg.PixelHeight / 20), 
                            StackDirection = SpriteStackDirection.Vertical,
                            DefaultIndex = 0,
                            Slice = false, 
                            IsAnimation = true, 
                            AnimationFps = 30.0, 
                            UseLayoutRounding = true,
                            SnapsToDevicePixels = true
                        };

                        RenderOptions.SetBitmapScalingMode(sliceControl, BitmapScalingMode.NearestNeighbor);
                        RenderOptions.SetEdgeMode(sliceControl, EdgeMode.Aliased);

                        inlines.Add(new InlineUIContainer(sliceControl)
                        {
                            BaselineAlignment = BaselineAlignment.TextBottom
                        });
                    }
                    else
                    {
                        // fallback: keep Unicode emoji
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
