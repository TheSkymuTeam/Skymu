/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Media.Imaging;
using Avalonia.Platform;
using Avalonia.Threading;
using Skymu.Preferences;
using Skymu.ViewModels;
using System;
using System.Collections.Generic;
using Yggdrasil.Enumerations;

namespace Skymu.Crossplatform
{
    public static class Tray
    {
        public static readonly Dictionary<PresenceStatus, string> StatusMap = new Dictionary<PresenceStatus, string>()
        {
            { PresenceStatus.Online,       Universal.Lang["sTRAYHINT_USER_ONLINE"] },
            { PresenceStatus.Away,         Universal.Lang["sTRAYHINT_USER_AWAY"] },
            { PresenceStatus.Offline,      Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"] },
            { PresenceStatus.DoNotDisturb, Universal.Lang["sTRAYHINT_USER_DND"] },
            { PresenceStatus.Invisible,    Universal.Lang["sTRAYHINT_USER_INVISIBLE"] }
        };

        private static TrayIcon _tray;
        private static NativeMenu _menu;
        private static bool? _menuSignedInState;

        private static PresenceStatus _status = PresenceStatus.Offline;
        private static string _statusText = Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"];
        private static bool _isSignedIn;

        private static readonly Dictionary<string, Bitmap> _spriteCache = new Dictionary<string, Bitmap>();

        public static void Init()
        {
            if (Dispatcher.UIThread.CheckAccess())
                InitInternal();
            else
                Dispatcher.UIThread.Post(InitInternal);
        }

        private static void InitInternal()
        {
            if (_tray != null)
                return;

            _tray = new TrayIcon();
            _tray.Clicked += (s, e) => ShowFriends();

            Apply();

            TrayIcon.SetIcons(Avalonia.Application.Current, new TrayIcons { _tray });
        }

        public static void DisposeIcon()
        {
            if (_tray == null)
                return;

            if (Dispatcher.UIThread.CheckAccess())
                DisposeInternal();
            else
                Dispatcher.UIThread.Invoke(DisposeInternal);
        }

        private static void DisposeInternal()
        {
            if (_tray == null)
                return;

            _tray.IsVisible = false;
            _tray.Dispose();
            _tray = null;
            _menu = null;
            _menuSignedInState = null;
        }

        public static void SetStatus(PresenceStatus status)
        {
            bool isSignedIn = status != PresenceStatus.Offline;

            if (!StatusMap.TryGetValue(status, out string statusText))
                statusText = Universal.Lang["sSTATUS_UNKNOWN"];

            SetStatusInternal(statusText, status, isSignedIn);
        }

        public static void SetConnecting()
        {
            SetStatusInternal(Universal.Lang["sTRAYHINT_CONN_CONNECTING"], PresenceStatus.Offline, false);
        }

        private static void SetStatusInternal(string statusText, PresenceStatus status, bool isSignedIn)
        {
            if (!Dispatcher.UIThread.CheckAccess())
            {
                Dispatcher.UIThread.Post(() => SetStatusInternal(statusText, status, isSignedIn));
                return;
            }

            _status = status;
            _statusText = statusText;
            _isSignedIn = isSignedIn;

            Apply();
        }

        private static void Apply()
        {
            if (_tray == null)
                return;

            _tray.Icon = new WindowIcon(GetStatusSprite(_status));
            _tray.ToolTipText = $"{Settings.BrandingName} ({_statusText})";

            if (_menu == null)
            {
                _menu = new NativeMenu();
                UpdateMenu();
                _tray.Menu = _menu;
            }
            else if (_menuSignedInState != _isSignedIn)
            {
                UpdateMenu();
            }
        }

        private static NativeMenuItem Item(string langKey, Action onClick, Bitmap icon = null)
        {
            var item = new NativeMenuItem(Universal.Lang[langKey]) { Icon = icon };
            item.Click += (s, e) => onClick();
            return item;
        }

        private static NativeMenuItem StatusItem(PresenceStatus status, string langKey)
        {
            return Item(langKey, () => SetPresence(status), GetStatusSprite(status));
        }

        private static void UpdateMenu()
        {
            _menu.Items.Clear();

            if (_isSignedIn)
            {
                var statusMenu = new NativeMenu();
                statusMenu.Add(StatusItem(PresenceStatus.Online, "sTRAYHINT_USER_ONLINE"));
                statusMenu.Add(StatusItem(PresenceStatus.Away, "sTRAYHINT_USER_AWAY"));
                statusMenu.Add(StatusItem(PresenceStatus.DoNotDisturb, "sTRAYHINT_USER_DND"));
                statusMenu.Add(StatusItem(PresenceStatus.Invisible, "sTRAYHINT_USER_INVISIBLE"));
                statusMenu.Add(StatusItem(PresenceStatus.Offline, "sTRAYHINT_USER_OFFLINE"));
                statusMenu.Add(new NativeMenuItemSeparator());
                statusMenu.Add(Item(
                    "sSTATUSMENU_CAPTION_CF_OPTIONS2",
                    () => Universal.NotImplemented("Call forwarding")));

                _menu.Add(new NativeMenuItem(Universal.Lang["sTRAYMENU_CHANGESTATUS"]) { Menu = statusMenu });
                _menu.Add(Item("sTRAYMENU_SHOWFRIENDS", ShowFriends));
            }
            else
            {
                _menu.Add(Item("sTRAYMENU_SHOWFRIENDS", ShowFriends));
                _menu.Add(Item("sTRAYMENU_LOGIN", () =>
                {
                    // TODO
                }));
            }

            _menu.Add(new NativeMenuItemSeparator());
            _menu.Add(Item("sTRAYMENU_QUIT", () => Universal.Close()));

            _menuSignedInState = _isSignedIn;
        }

        private static void ShowFriends()
        {
            var lifetime = Avalonia.Application.Current?.ApplicationLifetime as IClassicDesktopStyleApplicationLifetime;
            if (lifetime == null)
                return;

            foreach (Window w in lifetime.Windows)
            {
                if (w.IsInitialized)
                {
                    w.Show();
                    w.WindowState = WindowState.Normal;
                    w.Activate();
                }
            }
        }

        private static void SetPresence(PresenceStatus status)
        {
            if (status == PresenceStatus.DoNotDisturb)
                Universal.ActiveViewModel.InformDND();

            _ = Universal.Plugin.SetConnectionStatus(status);
        }

        private static string SheetPath()
        {
            return $"avares://Skymu/Themes/{Settings.Theme}/Assets/Universal/Icon/skype-status.png";
        }

        private static Bitmap GetStatusSprite(PresenceStatus status)
        {
            string path = SheetPath();
            int index = MainViewModel.GetIntFromStatus(status);
            string key = path + "|" + index;

            if (!_spriteCache.TryGetValue(key, out Bitmap sprite))
            {
                sprite = CropSheet(path, index);
                _spriteCache[key] = sprite;
            }

            return sprite;
        }

        private static RenderTargetBitmap CropSheet(string path, int index)
        {
            using (var stream = AssetLoader.Open(new Uri(path)))
            using (var spriteSheet = new Bitmap(stream))
            {
                int h = spriteSheet.PixelSize.Height;

                var result = new RenderTargetBitmap(new PixelSize(h, h));

                using (var context = result.CreateDrawingContext())
                {
                    context.DrawImage(
                        spriteSheet,
                        new Rect(h * index, 0, h, h),
                        new Rect(0, 0, h, h));
                }

                return result;
            }
        }
    }
}
