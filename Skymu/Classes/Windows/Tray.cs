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

using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Threading;
using Skymu.Preferences;
using Skymu.ViewModels;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Runtime.InteropServices;
using Yggdrasil.Enumerations;

namespace Skymu.Native.Windows
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

        [DllImport("user32.dll")] static extern bool GetCursorPos(out POINT lpPoint);
        [DllImport("user32.dll")] static extern bool DestroyWindow(IntPtr hWnd);

        [DllImport("user32.dll", EntryPoint = "DefWindowProcW")]
        static extern IntPtr DefWindowProc(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll", EntryPoint = "RegisterClassExW", CharSet = CharSet.Unicode)]
        static extern ushort RegisterClassEx(ref WNDCLASSEX lpwcx);

        [DllImport("user32.dll", EntryPoint = "CreateWindowExW", CharSet = CharSet.Unicode)]
        static extern IntPtr CreateWindowEx(
            uint dwExStyle, string lpClassName, string lpWindowName, uint dwStyle,
            int x, int y, int nWidth, int nHeight,
            IntPtr hWndParent, IntPtr hMenu, IntPtr hInstance, IntPtr lpParam);

        [DllImport("user32.dll", EntryPoint = "RegisterWindowMessageW", CharSet = CharSet.Unicode)]
        static extern uint RegisterWindowMessage(string lpString);

        [DllImport("kernel32.dll", EntryPoint = "GetModuleHandleW", CharSet = CharSet.Unicode)]
        static extern IntPtr GetModuleHandle(string lpModuleName);

        [DllImport("shell32.dll", EntryPoint = "Shell_NotifyIconW", CharSet = CharSet.Unicode)]
        static extern bool Shell_NotifyIcon(uint dwMessage, ref NOTIFYICONDATA lpData);

        [StructLayout(LayoutKind.Sequential)]
        struct POINT
        {
            public int X;
            public int Y;
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        struct WNDCLASSEX
        {
            public uint cbSize;
            public uint style;
            public IntPtr lpfnWndProc;
            public int cbClsExtra;
            public int cbWndExtra;
            public IntPtr hInstance;
            public IntPtr hIcon;
            public IntPtr hCursor;
            public IntPtr hbrBackground;
            public string lpszMenuName;
            public string lpszClassName;
            public IntPtr hIconSm;
        }

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        struct NOTIFYICONDATA
        {
            public uint cbSize;
            public IntPtr hWnd;
            public uint uID;
            public uint uFlags;
            public uint uCallbackMessage;
            public IntPtr hIcon;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
            public string szTip;
            public uint dwState;
            public uint dwStateMask;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 256)]
            public string szInfo;
            public uint uTimeoutOrVersion;
            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 64)]
            public string szInfoTitle;
            public uint dwInfoFlags;
            public Guid guidItem;
            public IntPtr hBalloonIcon;
        }

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

        const uint NIM_ADD = 0x00000000;
        const uint NIM_MODIFY = 0x00000001;
        const uint NIM_DELETE = 0x00000002;
        const uint NIF_MESSAGE = 0x00000001;
        const uint NIF_ICON = 0x00000002;
        const uint NIF_TIP = 0x00000004;
        const uint WM_TRAYICON = 0x8001;

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

        private static Icon _icon;
        private static string _iconText;
        private static bool _iconAdded;
        private static uint _taskbarCreatedMessage;
        private static MessageWindow _msgWindow;
        private static bool _isSignedIn;
        private static readonly List<IntPtr> _menuBitmaps = new List<IntPtr>();

        static Tray()
        {
            _taskbarCreatedMessage = RegisterWindowMessage("TaskbarCreated");
            _msgWindow = new MessageWindow();
            _isSignedIn = false;

            _icon = LoadIcon(PresenceStatus.Offline);
            _iconText = $"{Settings.BrandingName} ({Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"]})";
            _iconAdded = NotifyIconCommand(NIM_ADD);
        }

        private static bool NotifyIconCommand(uint command)
        {
            if (_msgWindow == null)
                return false;

            var data = new NOTIFYICONDATA
            {
                cbSize = (uint)Marshal.SizeOf<NOTIFYICONDATA>(),
                hWnd = _msgWindow.Handle,
                uID = 1,
                uFlags = NIF_MESSAGE | NIF_ICON | NIF_TIP,
                uCallbackMessage = WM_TRAYICON,
                hIcon = _icon != null ? _icon.Handle : IntPtr.Zero,
                szTip = _iconText
            };
            return Shell_NotifyIcon(command, ref data);
        }

        private class MessageWindow
        {
            const int WM_COMMAND = 0x0111;
            const uint WM_LBUTTONUP = 0x0202;
            const uint WM_RBUTTONUP = 0x0205;

            private delegate IntPtr WndProcDelegate(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam);
            private static readonly WndProcDelegate _wndProc = WndProc;

            public IntPtr Handle { get; private set; }

            public MessageWindow()
            {
                string className = Universal.NAME + "TrayMessageWindow";
                IntPtr hInstance = GetModuleHandle(null);

                var wc = new WNDCLASSEX
                {
                    cbSize = (uint)Marshal.SizeOf<WNDCLASSEX>(),
                    lpfnWndProc = Marshal.GetFunctionPointerForDelegate(_wndProc),
                    hInstance = hInstance,
                    lpszClassName = className
                };
                RegisterClassEx(ref wc);

                Handle = CreateWindowEx(
                    0, className, null, 0,
                    0, 0, 0, 0,
                    new IntPtr(-3), // HWND_MESSAGE
                    IntPtr.Zero, hInstance, IntPtr.Zero
                );
            }

            public void DestroyHandle()
            {
                if (Handle != IntPtr.Zero)
                    DestroyWindow(Handle);
                Handle = IntPtr.Zero;
            }

            private static IntPtr WndProc(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam)
            {
                if (msg == WM_COMMAND)
                {
                    HandleMenuCommand((uint)(wParam.ToInt32() & 0xFFFF));
                }
                else if (msg == WM_TRAYICON)
                {
                    uint mouseMsg = (uint)(lParam.ToInt64() & 0xFFFF);
                    if (mouseMsg == WM_LBUTTONUP)
                        HandleMenuCommand(MENU_SHOWFRIENDS);
                    else if (mouseMsg == WM_RBUTTONUP)
                        ShowContextMenu();
                }
                else if (msg == _taskbarCreatedMessage)
                {
                    _iconAdded = NotifyIconCommand(NIM_ADD);
                }
                return DefWindowProc(hWnd, msg, wParam, lParam);
            }
        }

        private static void HandleMenuCommand(uint id)
        {
            switch (id)
            {
                case MENU_SHOWFRIENDS:
                    Dispatcher.UIThread.Post(() =>
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

                IntPtr hBmp = IconHelper.LoadHBitmapFromSheet(MainViewModel.GetIntFromStatus(status), $"avares://Skymu/Themes/{Preferences.Settings.Theme}/Assets/Universal/Icon/skype-status.png");
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
            GetCursorPos(out POINT pos);
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
            if (_iconAdded)
            {
                NotifyIconCommand(NIM_DELETE);
                _iconAdded = false;
                _icon = null;
            }
            _msgWindow?.DestroyHandle();
            _msgWindow = null;
        }

        private static Icon LoadIcon(PresenceStatus status)
        {
            return IconHelper.LoadIconFromSheet(MainViewModel.GetIntFromStatus(status), $"avares://Skymu/Themes/{Preferences.Settings.Theme}/Assets/Universal/Icon/skype-status.png");
        }

        private static void SetStatusInternal(string statusText, PresenceStatus status, bool isSignedIn)
        {
            _isSignedIn = isSignedIn;
            _icon = LoadIcon(status);
            _iconText = $"{Settings.BrandingName} ({statusText})";
            NotifyIconCommand(NIM_MODIFY);
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