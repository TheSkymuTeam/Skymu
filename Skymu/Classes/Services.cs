/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our license.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Emoticons;
using Skymu.Forms;
using Skymu.Preferences;
using Skymu.Sounds;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;
using Yggdrasil;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu.UI.SharedInfrastructure
{
    public static class Services

    {
        private const string TAG_PLACEHOLDER = "PLACEHOLDER";
        public static void SetPlaceholder(RichTextBox rtb, string text, bool force = false)
        {
            if (rtb.Tag as string == TAG_PLACEHOLDER && !force)
                return;

            var flowDoc = rtb.Document;
            flowDoc.Blocks.Clear();

            var para = new Paragraph(new Run(text))
            {
                Margin = new Thickness(0),
                Foreground = (SolidColorBrush)Application.Current.Resources["Text.LowContrast"],
            };

            flowDoc.Blocks.Add(para);
            rtb.Tag = TAG_PLACEHOLDER;
        }

        public static void SetPlaceholder(TextBox tb, string text, bool force = false)
        {
            if (!force && tb.Tag as string == TAG_PLACEHOLDER)
                return;

            if (!force && !string.IsNullOrEmpty(tb.Text))
                return;

            tb.Text = text;
            tb.Foreground = (SolidColorBrush)Application.Current.Resources["Text.LowContrast"];
            tb.Tag = TAG_PLACEHOLDER;
        }

        public static void RemovePlaceholder(RichTextBox rtb)
        {
            if (rtb.Tag as string == TAG_PLACEHOLDER)
            {
                var flowDoc = rtb.Document;
                flowDoc.Blocks.Clear();
                flowDoc.Blocks.Add(new Paragraph { Margin = new Thickness(0) });
                rtb.Tag = null;
            }
        }

        public static void RemovePlaceholder(TextBox tb)
        {
            if (tb.Tag as string == TAG_PLACEHOLDER)
            {
                tb.Text = string.Empty;
                tb.Foreground = Brushes.Black;
                tb.Tag = null;
            }
        }

        public static bool HasAnyContent(RichTextBox rtb)
        {
            if (rtb?.Document == null)
                return false;

            if (rtb.Tag as string == TAG_PLACEHOLDER)
                return false;

            string text = new TextRange(
                rtb.Document.ContentStart,
                rtb.Document.ContentEnd
            ).Text;

            return !string.IsNullOrWhiteSpace(text);
        }

        public static bool CheckIfMessageSendable(RichTextBox mtb)
        {
            if (mtb is null || mtb.Tag as string == TAG_PLACEHOLDER)
            {
                return false;
            }
            return HasAnyContent(mtb);
        }

        public static string ExtractText(RichTextBox mtb)
        {
            var sb = new StringBuilder();
            var flow_document = mtb.Document;

            bool first_paragraph = true;

            foreach (var block in flow_document.Blocks)
            {
                if (block is Paragraph paragraph)
                {
                    if (!first_paragraph)
                        sb.Append(Environment.NewLine);

                    first_paragraph = false;

                    foreach (var inline in paragraph.Inlines)
                    {
                        if (inline is Run run)
                        {
                            sb.Append(run.Text);
                        }
                        else if (inline is LineBreak)
                        {
                            sb.Append(Environment.NewLine);
                        }
                        else if (inline is InlineUIContainer container)
                        {
                            if (container.Tag is string emojiFilename)
                            {
                                var emojiKey = EmojiDictionary
                                    .Map.FirstOrDefault(kvp => kvp.Value == emojiFilename)
                                    .Key;

                                if (!string.IsNullOrEmpty(emojiKey))
                                {
                                    string unicode_emoji = ConvertHexKeyToUnicode(emojiKey);
                                    sb.Append(unicode_emoji);
                                }
                            }
                        }
                    }
                }
            }

            return sb.ToString();
        }

        public static string ConvertHexKeyToUnicode(string hexKey)
        {
            try
            {
                var sb = new StringBuilder();
                foreach (var part in hexKey.Split('-'))
                    sb.Append(char.ConvertFromUtf32(Convert.ToInt32(part, 16)));
                return sb.ToString();
            }
            catch
            {
                return string.Empty;
            }
        }

        public static void SavePositioning(Window window, ColumnDefinition sidebar)
        {
            if (!Settings.SaveWindowPosition) return;

            Settings.ConvListWidth = sidebar.ActualWidth;
            Settings.X = window.Left;
            Settings.Y = window.Top;
            Settings.Height = window.Height;
            Settings.Width = window.Width;
            Settings.Maximized = window.WindowState == WindowState.Maximized;
        }

        public enum Egg
        {
            SkypeMemeVideo
        }

        public static async Task EasterEgg(Egg egg)
        {
            switch (egg)
            {
                case Egg.SkypeMemeVideo:
                    // changed this because just clicking AND it being hand cursor... no bro .... so now u hold 2 seconds - TODO: make it show the actual menu, I fuckin knewww it was like that bro
                    await SoundManager.PlayAsync("BUSY");
                    string url;
                    Random _random = new Random(); // what is this bro // for the easter egg to decide what video to show
                    if (_random.Next(0, 100) < 12) // oh hello im le underscore yeah I change everything and it totally makes sense guys
                        url = "https://www.youtube.com/watch?v=cdtNIyx10DM"; // one of the uploads called him ksi bruh are we dead ass ... french ksi wtf......
                    else
                        url = "https://www.youtube.com/watch?v=kVsH_ySm5_E";
                    Universal.OpenUrl(url);
                    break;
            }
        }

        public static string GetCreditText()
        {
            string subtext = Universal.Lang["sACCOUNT_PANEL_NR_OF_SUBSCRIPTIONS"];
            switch (Settings.CredsSubCount)
            {
                case 0:
                    subtext = Universal.Lang["sACCOUNT_PANEL_NO_SUBSCRIPTION"];
                    break;
                case 1:
                    subtext = Universal.Lang["sACCOUNT_PANEL_ONE_SUBSCRIPTION"];
                    break;
            }
            return Settings.CredsText + " - " + subtext.Replace("%d", Settings.CredsSubCount.ToString());
        }

        private static readonly PresenceStatus[] _indexToStatus = new PresenceStatus[]
{
            PresenceStatus.Online,
            PresenceStatus.Away,
            PresenceStatus.DoNotDisturb,
            PresenceStatus.Invisible
};

        public static async Task SetStatusFromMenuItems(object sender, ItemCollection items)
        {
            int i = 0;
            foreach (var item in items)
            {
                if (!(item is MenuItem mitem) || ((MenuItem)sender).Header != mitem.Header)
                {
                    if (item is MenuItem mitemm)
                        Debug.WriteLine(mitemm?.Header);
                    i++;
                    continue;
                }
                await Universal.Plugin.SetConnectionStatus(_indexToStatus[i]);
                return;
            }
            Universal.ShowMessage(
                "Couldn't find the MenuItem that equals to sender from MenuStatusHolder.Items",
                "Failed to set connection status",
                WindowBase.IconType.Error
            );
        }

        public static TreeViewItem GetContainerFromItem(ItemsControl parent, object item)
        {
            if (parent == null)
                return null;

            TreeViewItem container =
                parent.ItemContainerGenerator.ContainerFromItem(item) as TreeViewItem;

            if (container != null)
                return container;

            foreach (object child in parent.Items)
            {
                TreeViewItem parentContainer =
                    parent.ItemContainerGenerator.ContainerFromItem(child) as TreeViewItem;

                TreeViewItem result = GetContainerFromItem(parentContainer, item);
                if (result != null)
                    return result;
            }

            return null;
        }

        public static List<object> GetExtras(MenuItem GetExtrasMenuItem)
        {
            List<object> items = new List<object>();
            var ep = Universal.Plugin as IExtras;
            if (ep.ExtraConfigurations.Count == 0)
            {
                items.Add(GetExtrasMenuItem);
                return items;
            }
            foreach (var extra in ep.ExtraConfigurations)
            {
                var item = new MenuItem()
                {
                    Header = extra.title,
                    ToolTip = extra.description
                };
                item.Click += (_, __) => extra.onRun();
                items.Add(item);
            }
            items.Add(new Separator());
            items.Add(GetExtrasMenuItem);
            return items;

        }
    }

    public class CompactRecentsTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DateHeaderTemplate { get; set; }
        public DataTemplate CompactDirectMessageTemplate { get; set; }
        public DataTemplate CompactGroupTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item is DateHeaderItem)
                return DateHeaderTemplate;
            else if (item is DirectMessage)
                return CompactDirectMessageTemplate;
            else if (item is Group)
                return CompactGroupTemplate;
            return base.SelectTemplate(item, container);
        }
    }
}
