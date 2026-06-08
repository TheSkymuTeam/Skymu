/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;

namespace Skymu.Forms
{
    public partial class Options : Window
    {
        readonly Dictionary<SliceControl, Grid> catToGrid;
        readonly Dictionary<SliceControl, Func<Page>> tabDispenser;
        readonly Dictionary<SliceControl, string> tabToText;

        SliceControl currentCategory;

        public Options()
        {
            InitializeComponent();

            string background_color;
            if (Universal.Theme == "Skype7" || Universal.Theme == "Skype6") background_color = "Metro.Background";
            else background_color = "Background";
            Background = (SolidColorBrush)Application.Current.Resources[background_color];

            currentCategory = HGeneral;

            catToGrid = new Dictionary<SliceControl, Grid>
            {
                { HGeneral, GGeneral },
                { HPrivacy, GPrivacy },
                { HNotifications, GNotifications },
                { HCalls, GCalls },
                { HChatsSMS, GChatsSMS },
                { HAdvanced, GAdvanced },
            };
            tabDispenser = new Dictionary<SliceControl, Func<Page>>
            {
                { General_Skymu, () => new OptionPages.General.Skymu() },
                { Advanced_Debug, () => new OptionPages.Advanced.Debug() },
            };
            tabToText = new Dictionary<SliceControl, string>
            {
                { General_Main, "SF_OPTIONS_GENERAL_CAPTION" },
                { General_Devices, "sF_OPTIONS_AUDIO_CAPTION" },
                { General_Sounds, "sF_OPTIONS_SOUNDS_CAPTION" },
                { General_Video, "sF_OPTIONS_LBC_VIDEO" },
                { General_Access, "sF_OPTIONS_LBC_SKYACCESS" },
                {
                    General_Skymu,
                    "<b>Skymu Customization:</b> Modify the way Skymu looks, feels, and behaves"
                },
                { Privacy_Main, "sF_OPTIONS_LBC_PRIVACY" },
                { Privacy_Blocked, "sF_OPTIONS_TNTB8" },
                { Notifications_Main, "sF_OPTIONS_NOTIFICATIONS_CAPTION" },
                { Notifications_Alerts, "sF_OPTIONS_LBC_ALERTS" },
                { Notifications_Sounds, "sF_OPTIONS_SOUNDS_CAPTION" },
                { Calls_Main, "sF_OPTIONS_SETUP_CALLS" },
                { Calls_Forwarding, "sF_OPTIONS_LBC_FORWARDING" },
                { Calls_Voicemail, "SF_OPTIONS_VOICEMAIL_CAPTION" },
                { Calls_Video, "sF_OPTIONS_LBC_VIDEO" },
                { Chats_Main, "sF_OPTIONS_LB_CHAT" },
                { Chats_Appearance, "sF_OPTIONS_CHAT_LOOKS" },
                { Chats_SMS, "sF_OPTIONS_LBC_SMS" },
                { Advanced_Main, "sF_OPTIONS_LBC_UPDATES" },
                { Advanced_Updates, "sF_OPTIONS_LBC_UPGRADES" },
                { Advanced_Connection, "sF_OPTIONS_LBC_CONNECTION" },
                { Advanced_Hotkeys, "sF_OPTIONS_LBC_HOTKEYS" },
                {
                    Advanced_Debug,
                    "<b>Debug options:</b> Options that only appears on \"Debug\" build variant"
                },
            };

            SourceInitialized += (s, e) =>
            {
                foreach (var cat in catToGrid)
                {
                    cat.Key.ApplyTemplate();
                    foreach (SliceControl tab in (cat.Value.Children[1] as StackPanel).Children)
                        tab.ApplyTemplate();
                }
                TabSelect(General_Skymu, null);
            };

            if (Universal.DebugBuild) Advanced_Debug.Visibility = Visibility.Visible;
        }

        private void CatSelect(object sender, MouseButtonEventArgs e)
        {
            var sc = (SliceControl)sender;
            currentCategory = sc;
            foreach (var cat in catToGrid)
            {
                if (ReferenceEquals(cat.Key, sc))
                    continue;
                cat.Key.SetState(ButtonVisualState.Default);
                cat.Key.DefaultIndex = 0;
                cat.Key.HoverIndex = 1;
                cat.Key.PressedIndex = 2;
                cat.Value.Visibility = Visibility.Collapsed;
            }
            sc.SetState(ButtonVisualState.Pressed);
            catToGrid[sc].Visibility = Visibility.Visible;
            sc.DefaultIndex = 3;
            sc.HoverIndex = -1;
            sc.PressedIndex = -1;

            TabSelect((catToGrid[sc].Children[1] as StackPanel).Children[0], null);
        }

        private void TabSelect(object sender, MouseButtonEventArgs e)
        {
            var sc = (SliceControl)sender;
            foreach (SliceControl tab in (sc.Parent as StackPanel).Children)
            {
                if (ReferenceEquals(tab, sc))
                    continue;
                tab.SetState(ButtonVisualState.Default);
                ((SliceControl)tab.Template.FindName("InnerSlice", tab))?.SetState(
                    ButtonVisualState.Default
                );
            }
            sc.SetState(ButtonVisualState.Pressed);
            ((SliceControl)sc.Template.FindName("InnerSlice", sc))?.SetState(
                ButtonVisualState.Pressed
            );

            for (int once = 1; once == 1; once++)
            {
                string title;

                if (tabToText.TryGetValue(sc, out var td))
                {
                    title = td;
                }
                else
                {
                    title =
                        "<b>Placeholder:</b> We couldn't find the settings page you were looking for. Sorry!";
                }

                if (title.ToLowerInvariant().StartsWith("s"))
                    title = Universal.Lang[title];
                var i = title.IndexOf("</b>");
                if (i == -1)
                    break;
                CTabTitle.Text = title.Substring(3, i - 3);
                CTabDescription.Text = title.Substring(i + 4);
            }
            if (!tabDispenser.TryGetValue(sc, out var pfact))
            {
                pfact = () => new OptionPages.Placeholder();
                Debug.WriteLine(
                    "Tried to access an unknown tab: " + sc.Name + ". Displaying fallback page."
                );
            }
            var page = pfact();
            JournalEntry.SetKeepAlive(page, false);
            PageHost.Navigate(page);
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void SaveButtonClick(object sender, RoutedEventArgs e)
        {
            Settings.Save();
            this.Close();
        }

        private void RestartButtonClick(object sender, RoutedEventArgs e)
        {
            Settings.Save();
            Universal.Restart();
        }

        private void ResetButtonClick(object sender, RoutedEventArgs e)
        {
            Settings.Reset();
            Settings.Save();
        }
    }
}
