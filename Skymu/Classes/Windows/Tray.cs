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
using Skymu.ViewModels;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Forms;
using Yggdrasil.Enumerations;

namespace Skymu.Windows
{
    public class Tray
    {
        public static readonly Dictionary<PresenceStatus, string> StatusMap = new Dictionary<PresenceStatus, string>()
        {
            { PresenceStatus.Online,       Universal.Lang["sTRAYHINT_USER_ONLINE"] },
            { PresenceStatus.Away,         Universal.Lang["sTRAYHINT_USER_AWAY"] },
            { PresenceStatus.Offline,      Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"] },
            { PresenceStatus.DoNotDisturb, Universal.Lang["sTRAYHINT_USER_DND"] },
            { PresenceStatus.Invisible,    Universal.Lang["sTRAYHINT_USER_INVISIBLE"] }
        };

        #region P/Invoke

        [DllImport("user32.dll", EntryPoint = "AppendMenuW", CharSet = CharSet.Unicode)]
        static extern bool AppendMenu(IntPtr hMenu, uint uFlags, UIntPtr uIDNewItem, string lpNewItem);

        [DllImport("user32.dll", EntryPoint = "AppendMenuW", CharSet = CharSet.Unicode)]
        static extern bool AppendMenuPopup(IntPtr hMenu, uint uFlags, IntPtr hSubMenu, string lpNewItem);

        [DllImport("user32.dll")] static extern IntPtr CreatePopupMenu();
        [DllImport("user32.dll")] static extern uint TrackPopupMenu(IntPtr hMenu, uint uFlags, int x, int y, int nReserved, IntPtr hwnd, IntPtr prcRect);
        [DllImport("user32.dll")] static extern bool DestroyMenu(IntPtr hMenu);
        [DllImport("user32.dll")] static extern bool SetForegroundWindow(IntPtr hWnd);
        [DllImport("user32.dll")] static extern bool PostMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);
        [DllImport("user32.dll")] static extern bool SetMenuItemInfo(IntPtr hMenu, uint uItem, bool fByPosition, ref MENUITEMINFO lpmii);
        [DllImport("gdi32.dll")] static extern bool DeleteObject(IntPtr hObject);

        [StructLayout(LayoutKind.Sequential)]
        struct MENUITEMINFO
        {
            public uint cbSize;
            public uint fMask;
            public uint fType;
            public uint fState;
            public uint wID;
            public IntPtr hSubMenu;
            public IntPtr hbmpChecked;
            public IntPtr hbmpUnchecked;
            public IntPtr dwItemData;
            public string dwTypeData;
            public uint cch;
            public IntPtr hbmpItem;
        }

        const uint MF_STRING = 0x00000000;
        const uint MF_SEPARATOR = 0x00000800;
        const uint MF_POPUP = 0x00000010;
        const uint TPM_LEFTALIGN = 0x0000;
        const uint TPM_RETURNCMD = 0x0100;
        const uint TPM_RIGHTBUTTON = 0x0002;
        const uint MIIM_BITMAP = 0x00000080;

        const uint MENU_SHOWFRIENDS = 1001;
        const uint MENU_LOGIN = 1002;
        const uint MENU_QUIT = 1003;
        const uint MENU_STATUS_ONLINE = 1010;
        const uint MENU_STATUS_AWAY = 1011;
        const uint MENU_STATUS_DND = 1012;
        const uint MENU_STATUS_INVISIBLE = 1013;
        const uint MENU_STATUS_OFFLINE = 1014;
        const uint MENU_CALL_FORWARDING = 1015;

        #endregion

        private static NotifyIcon _icon;
        private static MessageWindow _msgWindow;
        private static bool _isSignedIn;
        private static readonly List<IntPtr> _menuBitmaps = new List<IntPtr>();

        static Tray()
        {
            _msgWindow = new MessageWindow();
            _isSignedIn = false;

            _icon = new NotifyIcon
            {
                Icon = LoadIcon(PresenceStatus.Offline),
                Text = $"{Settings.BrandingName} ({Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"]})",
                Visible = true
            };

            _icon.MouseClick += (s, e) =>
            {
                if (e.Button == MouseButtons.Left)
                    HandleMenuCommand(MENU_SHOWFRIENDS);
                else if (e.Button == MouseButtons.Right)
                    ShowContextMenu();
            };
        }

        private class MessageWindow : NativeWindow
        {
            const int WM_COMMAND = 0x0111;

            public MessageWindow()
            {
                CreateHandle(new CreateParams { Parent = new IntPtr(-3) }); // HWND_MESSAGE
            }

            protected override void WndProc(ref Message m)
            {
                if (m.Msg == WM_COMMAND)
                    HandleMenuCommand((uint)(m.WParam.ToInt32() & 0xFFFF));
                base.WndProc(ref m);
            }
        }

        private static void HandleMenuCommand(uint id)
        {
            switch (id)
            {
                case MENU_SHOWFRIENDS:
                    System.Windows.Application.Current.Dispatcher.Invoke(() =>
                    {
                        foreach (Window w in System.Windows.Application.Current.Windows)
                        {
                            if (w.IsInitialized)
                            {
                                w.Show();
                                w.WindowState = WindowState.Normal;
                                w.Activate();
                            }
                        }
                    });
                    break;

                case MENU_LOGIN:
                    // TODO
                    break;

                case MENU_QUIT:
                    Universal.Close();
                    break;

                case MENU_STATUS_ONLINE: SS(PresenceStatus.Online); break;
                case MENU_STATUS_AWAY: SS(PresenceStatus.Away); break;
                case MENU_STATUS_DND: SS(PresenceStatus.DoNotDisturb); break;
                case MENU_STATUS_INVISIBLE: SS(PresenceStatus.Invisible); break;
                case MENU_STATUS_OFFLINE: SS(PresenceStatus.Offline); break;

                case MENU_CALL_FORWARDING:
                    Universal.NotImplemented("Call forwarding");
                    break;
            }
        }

        private static void SS(PresenceStatus status)
        {
            if (status == PresenceStatus.DoNotDisturb)
                Universal.ActiveViewModel.InformDND();

            _ = Universal.Plugin.SetConnectionStatus(status);
        }

        private static void SetMenuItemBitmap(IntPtr hMenu, uint itemId, IntPtr hBitmap)
        {
            var info = new MENUITEMINFO
            {
                cbSize = (uint)Marshal.SizeOf<MENUITEMINFO>(),
                fMask = MIIM_BITMAP,
                hbmpItem = hBitmap
            };
            SetMenuItemInfo(hMenu, itemId, false, ref info);
        }

        private static void ClearMenuBitmaps()
        {
            foreach (IntPtr hbm in _menuBitmaps)
                DeleteObject(hbm);
            _menuBitmaps.Clear();
        }

        private static IntPtr BuildLoggedOutMenu() // menu to show when logged out
        {
            IntPtr hMenu = CreatePopupMenu();
            AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_SHOWFRIENDS, Universal.Lang["sTRAYMENU_SHOWFRIENDS"]);
            AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_LOGIN, Universal.Lang["sTRAYMENU_LOGIN"]);
            AppendMenu(hMenu, MF_SEPARATOR, UIntPtr.Zero, null);
            AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_QUIT, Universal.Lang["sTRAYMENU_QUIT"]);
            return hMenu;
        }

        private static IntPtr BuildLoggedInMenu() // menu to show when logged in
        {
            ClearMenuBitmaps(); 
            IntPtr hStatus = CreatePopupMenu();

            void AddStatusItem(uint menuId, PresenceStatus status, string langKey)
            {
                AppendMenu(hStatus, MF_STRING, (UIntPtr)menuId, Universal.Lang[langKey]);

                IntPtr hBmp = IconHelper.LoadHBitmapFromSheet(MainViewModel.GetIntFromStatus(status));
                if (hBmp != IntPtr.Zero)
                {
                    SetMenuItemBitmap(hStatus, menuId, hBmp);
                    _menuBitmaps.Add(hBmp);
                }
            }

            AddStatusItem(MENU_STATUS_ONLINE, PresenceStatus.Online, "sTRAYHINT_USER_ONLINE");
            AddStatusItem(MENU_STATUS_AWAY, PresenceStatus.Away, "sTRAYHINT_USER_AWAY");
            AddStatusItem(MENU_STATUS_DND, PresenceStatus.DoNotDisturb, "sTRAYHINT_USER_DND");
            AddStatusItem(MENU_STATUS_INVISIBLE, PresenceStatus.Invisible, "sTRAYHINT_USER_INVISIBLE");
            AddStatusItem(MENU_STATUS_OFFLINE, PresenceStatus.Offline, "sTRAYHINT_USER_OFFLINE");
            AppendMenu(hStatus, MF_SEPARATOR, UIntPtr.Zero, null);
            AppendMenu(hStatus, MF_STRING, (UIntPtr)MENU_CALL_FORWARDING, Universal.Lang["sSTATUSMENU_CAPTION_CF_OPTIONS2"]);

            IntPtr hMenu = CreatePopupMenu();
            AppendMenuPopup(hMenu, MF_POPUP, hStatus, Universal.Lang["sTRAYMENU_CHANGESTATUS"]);
            AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_SHOWFRIENDS, Universal.Lang["sTRAYMENU_SHOWFRIENDS"]);
            AppendMenu(hMenu, MF_SEPARATOR, UIntPtr.Zero, null);
            AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_QUIT, Universal.Lang["sTRAYMENU_QUIT"]);
            // TODO: Hang up menu with list of contacts with active calls (and "hang up all"? I'm not sure about that)
            return hMenu;
        }

        private static void ShowContextMenu()
        {
            var pos = Cursor.Position;
            IntPtr hMenu = _isSignedIn ? BuildLoggedInMenu() : BuildLoggedOutMenu();

            SetForegroundWindow(_msgWindow.Handle);

            uint cmd = TrackPopupMenu(
                hMenu,
                TPM_LEFTALIGN | TPM_RETURNCMD | TPM_RIGHTBUTTON,
                pos.X, pos.Y, 0,
                _msgWindow.Handle,
                IntPtr.Zero
            );

            DestroyMenu(hMenu);

            if (cmd != 0)
                HandleMenuCommand(cmd);

            if (_msgWindow != null)
                PostMessage(_msgWindow.Handle, 0, IntPtr.Zero, IntPtr.Zero);
        }

        public static void DisposeIcon()
        {
            ClearMenuBitmaps(); // free any bitmaps still allocated from the last menu
            if (_icon != null)
            {
                _icon.Visible = false;
                _icon.Dispose();
                _icon = null;
            }
            _msgWindow?.DestroyHandle();
            _msgWindow = null;
        }

        private static Icon LoadIcon(PresenceStatus status)
        {
            return IconHelper.LoadIconFromSheet(MainViewModel.GetIntFromStatus(status));
        }

        private static void SetStatusInternal(string statusText, PresenceStatus status, bool isSignedIn)
        {
            _isSignedIn = isSignedIn;
            _icon.Icon = LoadIcon(status);
            _icon.Text = $"{Settings.BrandingName} ({statusText})";
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
    }
}