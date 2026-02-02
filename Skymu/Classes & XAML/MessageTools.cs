using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using System.Windows.Documents;
using System.Windows.Media;

namespace Skymu
{
    internal class MessageTools
    {
        private bool ContainsEmoji(string text)
        {
            if (text.Contains(':') && text.IndexOf(':') != text.LastIndexOf(':'))
                return true;

            foreach (char c in text)
            {
                if (char.IsSurrogate(c) || char.GetUnicodeCategory(c) == System.Globalization.UnicodeCategory.OtherSymbol)
                    return true;
            }

            return false;
        }

        public static TextBlock MarkdownFormat(string input)
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
                       // FontStyle = FontStyles.Italic,
                        Foreground = Brushes.DimGray
                    });
                else if (m.Groups[10].Success) // header
                {
                    var run = new Run(m.Groups[11].Value.Trim()) { FontWeight = FontWeights.Bold };
                    switch (m.Groups[10].Value.Length)
                    {
                        case 1: run.FontSize = 24; break;
                        case 2: run.FontSize = 20; break;
                        case 3: run.FontSize = 18; break;
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
            int pos = 0;

            // match either Markdown link or plain URL
            string pattern = @"\[(.+?)\]\((https?://[^\s)]+)\)|((?:https?|ftp|gopher)://[^\s]+)";
            char[] punctuation = new char[] { '.', ',', ';', ')', ']', '"', '\'' };
            foreach (Match m in Regex.Matches(text, pattern))
            {
                if (m.Index > pos)
                    inlines.Add(new Run(text.Substring(pos, m.Index - pos)));

                if (m.Groups[1].Success && m.Groups[2].Success)
                {
                    // remminder: markdown link: [text](url)
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

                pos = m.Index + m.Length;
            }

            if (pos < text.Length)
                inlines.Add(new Run(text.Substring(pos)));
        }


    }
}
