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

using CommunityToolkit.Mvvm.Input;
using NullSoftware.ToolKit;
using Skymu.Preferences;
using Skymu.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using Yggdrasil.Enumerations;

namespace Skymu
{
    public class Tray
    {
        public static readonly Dictionary<PresenceStatus, string> StatusMap = new Dictionary<PresenceStatus, string>()
        {
            { PresenceStatus.Online, Universal.Lang["sTRAYHINT_USER_ONLINE"] },
            { PresenceStatus.Away, Universal.Lang["sTRAYHINT_USER_AWAY"] },
            { PresenceStatus.Offline, Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"] },
            { PresenceStatus.DoNotDisturb, Universal.Lang["sTRAYHINT_USER_DND"] },
            { PresenceStatus.Invisible, Universal.Lang["sTRAYHINT_USER_INVISIBLE"] }
        };

        public static readonly Dictionary<PresenceStatus, string> SIconTextMap = new Dictionary<PresenceStatus, string>()
        {
            { PresenceStatus.Online, "online" },
            { PresenceStatus.Away, "away" },
            { PresenceStatus.Offline, "offline" },
            { PresenceStatus.DoNotDisturb, "dnd" },
            { PresenceStatus.Invisible, "offline" }
        };

        static readonly RelayCommand OpenSkype = new RelayCommand(() =>
        {
            System.Windows.Application.Current.Dispatcher.Invoke(() =>
            {
                foreach (System.Windows.Window window in System.Windows.Application.Current.Windows)
                {
                    if (window.IsInitialized)
                    {
                        window.Show();
                        window.WindowState = System.Windows.WindowState.Normal;
                        window.Activate();
                    }
                }
            });
        });

        static Image IICN(string iconName) => new Image
        {
            Width = 64, // XXX look at this: raw bitmap only 16?
            Height = 64,
            Source = ICON(iconName)
        };
        static BitmapFrame ICON(string iconName) => BitmapFrame.Create(new Uri($"pack://application:,,,/{Universal.Interface}/Assets/Universal/Icon/skype-" + iconName + ".ico", UriKind.Absolute));

        static async void SS(PresenceStatus status)
        {
            if (status == PresenceStatus.DoNotDisturb)
            {
                new Dialog(
                    WindowBase.IconType.Information,
                    Universal.Lang["sINFORM_DND"],
                    Universal.Lang["sINFORM_DND_CAP"],
                    Universal.Lang["sINFORM_DND_TITLE"],
                    brText: "OK"
                ).ShowDialog();
                // TODO: Do not display this information again
            }

            var currentStatus = Universal.CurrentUser.ConnectionStatus;
            SetStatus(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                status = currentStatus;
                if (Universal.CurrentUser != null)
                    Universal.CurrentUser.ConnectionStatus = status;
                SetStatus(status);
            }
        }

        static readonly ObservableCollection<Control> LoginItems = new ObservableCollection<Control>()
        {
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_SHOWFRIENDS"], Command = OpenSkype },
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_LOGIN"], Command = new RelayCommand(() => { /* TODO */ }) },
            new Separator(),
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_QUIT"], Command = new RelayCommand(() => Universal.Close()) }
        };

        static readonly ObservableCollection<Control> StatusItems = new ObservableCollection<Control>()
        {
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_ONLINE"], Command = new RelayCommand(() => SS(PresenceStatus.Online)), Icon = IICN(SIconTextMap[PresenceStatus.Online]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_AWAY"], Command = new RelayCommand(() => SS(PresenceStatus.Away)), Icon = IICN(SIconTextMap[PresenceStatus.Away]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_DND"], Command = new RelayCommand(() => SS(PresenceStatus.DoNotDisturb)), Icon = IICN(SIconTextMap[PresenceStatus.DoNotDisturb]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_INVISIBLE"], Command = new RelayCommand(() => SS(PresenceStatus.Invisible)), Icon = IICN(SIconTextMap[PresenceStatus.Invisible]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_OFFLINE"], Command = new RelayCommand(() => SS(PresenceStatus.Offline)), Icon = IICN(SIconTextMap[PresenceStatus.Offline]) },
            new Separator(),
            new MenuItem() { Header = Universal.Lang["sSTATUSMENU_CAPTION_CF_OPTIONS2"], Command = new RelayCommand(() => Universal.NotImplemented("Call forwarding")) }
        };

        static readonly ObservableCollection<Control> MainItems = new ObservableCollection<Control>()
        {
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_CHANGESTATUS"], ItemsSource = StatusItems},
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_SHOWFRIENDS"], Command = OpenSkype },
            new Separator(),
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_QUIT"], Command = new RelayCommand(() => Universal.Close()) }
            // TODO: Hang up menu with list of contacts with active calls (and "hang up all"? I'm not sure about that)
        };

        public static TrayIcon trayIcon = new TrayIcon()
        {
            Title = $"{Settings.BrandingName} ({Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"]})",
            IconSource = ICON("offline"),
            ClickCommand = OpenSkype,
            ContextMenu = new ContextMenu() { ItemsSource = MainItems }
        };

        public static void DisposeIcon() => trayIcon.Dispose();

        private static void SetStatusInternal(string statusText, string iconName, bool isSignedIn)
        {
            trayIcon.IconSource = ICON(iconName);
            trayIcon.Title = $"{Settings.BrandingName} ({statusText})";

            if (!isSignedIn)
                trayIcon.ContextMenu = new ContextMenu() { ItemsSource = LoginItems };
            else
                trayIcon.ContextMenu = new ContextMenu() { ItemsSource = MainItems };
        }

        public static void SetStatus(PresenceStatus status)
        {
            bool isSignedIn = status == PresenceStatus.Offline ? false : true;
            string iconName;
            if (!SIconTextMap.TryGetValue(status, out iconName))
            {
                iconName = "question";
            }

            string statusText;
            if (!StatusMap.TryGetValue(status, out statusText))
            {
                statusText = Universal.Lang["sSTATUS_UNKNOWN"];
            }

            SetStatusInternal(statusText, iconName, isSignedIn);
        }

        public static void SetConnecting()
        {
            SetStatusInternal(Universal.Lang["sTRAYHINT_CONN_CONNECTING"], "offline", false);
        } 
    }
}
