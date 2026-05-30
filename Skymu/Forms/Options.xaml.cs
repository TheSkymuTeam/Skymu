/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
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

namespace Skymu.Views
{
    public partial class Options : Window
    {
        readonly Dictionary<SliceControl, Grid> catToGrid;
        readonly Dictionary<SliceControl, SliceControl[]> catToTabs;
        readonly Dictionary<SliceControl, Func<Page>> tabDispenser;
        readonly Dictionary<SliceControl, string> tabToText;

        SliceControl currentCategory;

        public Options(string brush)
        {
            InitializeComponent();
            Background = (SolidColorBrush)Application.Current.Resources[brush];
            currentCategory = HGeneral;

            catToGrid = new Dictionary<SliceControl, Grid> {
                { HGeneral, GGeneral },
                { HPrivacy, GPrivacy },
                { HNotifications, GNotifications },
                { HCalls, GCalls },
                { HChatsSMS, GChatsSMS },
                { HAdvanced, GAdvanced }
            };
            catToTabs = new Dictionary<SliceControl, SliceControl[]>
            {
                { HGeneral, new[] { GenGen, GenDevices, GenSounds, GenVideo, GenAccess, GenSkymu } },
                { HPrivacy, new[] { PriPri, PriBlocked } },
                { HNotifications, new[] { NotNot, NotAlerts, NotSounds } },
                { HCalls, new[] { CalCal, CalForwarding, CalVoicemail, CalVideo } },
                { HChatsSMS, new[] { ChaIM, ChaIMAppearance, ChaSMS } },
                { HAdvanced, new[] { AdvAdv, AdvUpdates, AdvConnection, AdvHotkeys, AdvDbg } }
            };
            tabDispenser = new Dictionary<SliceControl, Func<Page>>
            {
                { GenGen, () => new OptionPages.General.General() },
                { GenSkymu, () => new OptionPages.General.Skymu() },
                { AdvDbg, () => new OptionPages.Advanced.Debug() }
            };
            tabToText = new Dictionary<SliceControl, string>
            {
                { GenGen, "SF_OPTIONS_GENERAL_CAPTION" },
                { GenSkymu, "<b>Skymu Customization:</b> Modify the way Skymu looks, feels, and behaves" },
                { AdvDbg, "<b>Debug options:</b> Options that only appears on \"Debug\" build variant" }
            };

            SourceInitialized += (s, e) =>
            {
                foreach (var cat in catToGrid)
                {
                    cat.Key.ApplyTemplate();
                    foreach (var tab in catToTabs[cat.Key])
                        tab.ApplyTemplate();
                }
                TabSelect(GenGen, null);
            };

#if DEBUG
            AdvDbg.Visibility = Visibility.Visible;
#endif
        }

        private void CatSelect(object sender, MouseButtonEventArgs e)
        {
            var sc = (SliceControl)sender;
            currentCategory = sc;
            foreach (var cat in catToGrid)
            {
                if (ReferenceEquals(cat.Key, sc)) continue;
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

            TabSelect(catToTabs[sc][0], null);
        }

        private void TabSelect(object sender, MouseButtonEventArgs e)
        {
            var sc = (SliceControl)sender;
            foreach (var tab in catToTabs[currentCategory])
            {
                if (ReferenceEquals(tab, sc)) continue;
                tab.SetState(ButtonVisualState.Default);
                ((SliceControl)tab.Template.FindName("InnerSlice", tab))?.SetState(ButtonVisualState.Default);
            }
            sc.SetState(ButtonVisualState.Pressed);
            ((SliceControl)sc.Template.FindName("InnerSlice", sc))?.SetState(ButtonVisualState.Pressed);

            for (int once = 1; once == 1; once++) {
                if (tabToText.TryGetValue(sc, out var title))
                {
                    if (title.ToLowerInvariant().StartsWith("s"))
                        title = Universal.Lang[title];
                    var i = title.IndexOf("</b>");
                    if (i == -1)
                        break;
                    CTabTitle.Text = title.Substring(3, i - 3);
                    CTabDescription.Text = title.Substring(i + 4);
                }
            }
            if (!tabDispenser.TryGetValue(sc, out var pfact))
            {
                Debug.WriteLine("Tried to access an unknown tab " + sc.Name);
                return;
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