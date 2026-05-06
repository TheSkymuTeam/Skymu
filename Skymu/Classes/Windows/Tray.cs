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
            { PresenceStatus.Offline, Universal.Lang["sTRAYHINT_USER_OFFLINE"] },
            { PresenceStatus.DoNotDisturb, Universal.Lang["sTRAYHINT_USER_DND"] },
            { PresenceStatus.Invisible, Universal.Lang["sTRAYHINT_USER_INVISIBLE"] },
            { PresenceStatus.LoggedOut, Universal.Lang["sTRAYHINT_PROFILE_LOGGED_OUT"] }
        };

        public static readonly Dictionary<PresenceStatus, string> SIconTextMap = new Dictionary<PresenceStatus, string>()
        {
            { PresenceStatus.Online, "online" },
            { PresenceStatus.Away, "away" },
            { PresenceStatus.Offline, "offline" },
            { PresenceStatus.DoNotDisturb, "dnd" },
            { PresenceStatus.Invisible, "offline" },
            { PresenceStatus.LoggedOut, "logged-out" }
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
            Width = 16,
            Height = 16,
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
            PushIcon(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                status = currentStatus;
                if (Universal.CurrentUser != null)
                    Universal.CurrentUser.ConnectionStatus = status;
                PushIcon(status);
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
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_AWAY"], Command = new RelayCommand(() => SS(PresenceStatus.Away)), Icon = IICN(SIconTextMap[PresenceStatus.Online]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_DND"], Command = new RelayCommand(() => SS(PresenceStatus.DoNotDisturb)), Icon = IICN(SIconTextMap[PresenceStatus.Online]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_INVISIBLE"], Command = new RelayCommand(() => SS(PresenceStatus.Invisible)), Icon = IICN(SIconTextMap[PresenceStatus.Online]) },
            new MenuItem() { Header = Universal.Lang["sTRAYHINT_USER_OFFLINE"], Command = new RelayCommand(() => SS(PresenceStatus.Offline)), Icon = IICN(SIconTextMap[PresenceStatus.Online]) },
            new Separator(),
            new MenuItem() { Header = Universal.Lang["sSTATUSMENU_CAPTION_CF_OPTIONS2"], Command = new RelayCommand(() => Universal.NotImplemented("Call forwarding")) }
        };

        static readonly ObservableCollection<Control> MainItems = new ObservableCollection<Control>()
        {
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_CHANGESTATUS"], ItemsSource = StatusItems},
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_SHOWFRIENDS"], Command = OpenSkype },
            new Separator(),
            new MenuItem() { Header = Universal.Lang["sTRAYMENU_QUIT"], Command = new RelayCommand(() => Universal.Close()) }
        };

        public static NullSoftware.ToolKit.TrayIcon trayIcon = new NullSoftware.ToolKit.TrayIcon()
        {
            Title = $"{Settings.BrandingName} ({Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"]})",
            IconSource = ICON("logged-out"),
            ClickCommand = OpenSkype,
            ContextMenu = new ContextMenu() { ItemsSource = MainItems }
        };

        public static void DisposeIcon() => trayIcon.Dispose();

        public static void PushIcon(PresenceStatus icon, bool isSignedIn = true)
        {
            string iconName;
            if (!SIconTextMap.TryGetValue(icon, out iconName))
            {
                iconName = "question";
            }

            string statusText;
            if (!isSignedIn) statusText = Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"];
            else if (!StatusMap.TryGetValue(icon, out statusText))
            {
                statusText = Universal.Lang["sTRAYHINT_USER_OFFLINE"];
            }

            trayIcon.IconSource = ICON(iconName);
            trayIcon.Title = $"{Settings.BrandingName} ({statusText})";

            if (!isSignedIn)
                trayIcon.ContextMenu = new ContextMenu() { ItemsSource = LoginItems };
            else
                trayIcon.ContextMenu = new ContextMenu() { ItemsSource = MainItems };
        }
    }
}
