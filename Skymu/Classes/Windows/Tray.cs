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

using Yggdrasil.Enumerations;
using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Runtime.InteropServices;
using Winforms = System.Windows.Forms;

# pragma warning disable CA1416

namespace Skymu
{
    class Tray
    {
        public static readonly Dictionary<PresenceStatus, string> StatusMap = new Dictionary<PresenceStatus, string>()
        {
            { PresenceStatus.Online, Universal.Lang["sTRAYHINT_USER_ONLINE"] },
            { PresenceStatus.Away, Universal.Lang["sTRAYHINT_USER_AWAY"] },
            { PresenceStatus.Offline, Universal.Lang["sTRAYHINT_USER_OFFLINE"] },
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

        private static Winforms.NotifyIcon Icon;
        private static IntPtr hMenu = IntPtr.Zero;
        private static NativeWindow messageWindow;

        #region PInvoke Declarations

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern IntPtr CreatePopupMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool AppendMenu(IntPtr hMenu, uint uFlags, UIntPtr uIDNewItem, string lpNewItem);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern uint TrackPopupMenu(IntPtr hMenu, uint uFlags, int x, int y, int nReserved, IntPtr hwnd, IntPtr prcRect);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool DestroyMenu(IntPtr hMenu);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool SetForegroundWindow(IntPtr hWnd);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool PostMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);

        private const uint MF_STRING = 0x00000000;
        private const uint MF_SEPARATOR = 0x00000800;
        private const uint MF_GRAYED = 0x00000001;
        private const uint TPM_LEFTALIGN = 0x0000;
        private const uint TPM_RETURNCMD = 0x0100;
        private const uint WM_COMMAND = 0x0111;

        // Menu item IDs
        private const uint MENU_OPEN_SKYPE = 1001;
        private const uint MENU_SIGN_IN = 1002;
        private const uint MENU_QUIT = 1003;

        #endregion

        private class NativeWindow : Winforms.NativeWindow
        {
            private Action<uint> commandHandler;

            public NativeWindow(Action<uint> handler)
            {
                commandHandler = handler;
                CreateHandle(new Winforms.CreateParams
                {
                    Parent = new IntPtr(-3) // HWND_MESSAGE
                });
            }

            protected override void WndProc(ref Winforms.Message m)
            {
                if (m.Msg == WM_COMMAND)
                {
                    uint commandId = (uint)(m.WParam.ToInt32() & 0xFFFF);
                    commandHandler?.Invoke(commandId);
                }
                base.WndProc(ref m);
            }
        }

        public static void DisposeIcon()
        {
            if (Icon != null)
            {
                Icon.Visible = false;
                Icon.Icon = null;
                Icon.Dispose();
                Icon = null;
            }

            if (hMenu != IntPtr.Zero)
            {
                DestroyMenu(hMenu);
                hMenu = IntPtr.Zero;
            }

            if (messageWindow != null)
            {
                messageWindow.DestroyHandle();
                messageWindow = null;
            }
        }

        private static void HandleMenuCommand(uint commandId)
        {
            switch (commandId)
            {
                case MENU_OPEN_SKYPE:
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
                    break;

                case MENU_SIGN_IN:
                    if (System.Windows.Application.Current.Windows != null)
                    {
                    }
                    else
                    {
                    }
                    break;

                case MENU_QUIT:
                    Universal.Close();
                    break;
            }
        }

        private static void ShowContextMenu()
        {
            var cursorPos = System.Windows.Forms.Cursor.Position;

            if (hMenu == IntPtr.Zero)
            {
                hMenu = CreatePopupMenu();

                AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_OPEN_SKYPE, Universal.Lang["sTRAYMENU_SHOWFRIENDS"]);
                AppendMenu(hMenu, MF_STRING | MF_GRAYED, (UIntPtr)MENU_SIGN_IN, Universal.Lang["sTRAYMENU_LOGIN"]);
                AppendMenu(hMenu, MF_SEPARATOR, UIntPtr.Zero, null);
                AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_QUIT, Universal.Lang["sTRAYMENU_QUIT"]);
            }

            SetForegroundWindow(messageWindow.Handle);

            uint command = TrackPopupMenu(
                hMenu,
                TPM_LEFTALIGN | TPM_RETURNCMD,
                cursorPos.X,
                cursorPos.Y,
                0,
                messageWindow.Handle,
                IntPtr.Zero
            );

            if (command != 0)
            {
                HandleMenuCommand(command);
            }

            if (messageWindow != null) { PostMessage(messageWindow.Handle, 0, IntPtr.Zero, IntPtr.Zero); }
        }

        public static void PushIcon(PresenceStatus icon, bool is_signed_in = true)
        {
            string iconName;
            if (!SIconTextMap.TryGetValue(icon, out iconName))
            {
                iconName = "offline";
            }

            string statusText;
            if (!is_signed_in) statusText = Universal.Lang["sTRAYHINT_PROFILE_NOT_LOGGED_IN"];
            else if (!StatusMap.TryGetValue(icon, out statusText))
            {
                statusText = Universal.Lang["sTRAYHINT_USER_OFFLINE"];
            }

            string iconToolTip = Settings.BrandingName + " (" + statusText + ")";
            var resourceUri = new Uri("pack://application:,,,/Skymu;component/Skyaeris/Assets/Universal/Icon/skype-" + iconName + ".ico", UriKind.Absolute);
            var resourceStreamInfo = Universal.GetResourceStream(resourceUri);

            if (Icon != null)
            {
                Icon.Icon = new Icon(resourceStreamInfo.Stream);
            }
            else
            {
                messageWindow = new NativeWindow(HandleMenuCommand);

                Icon = new Winforms.NotifyIcon();
                Icon.Icon = new Icon(resourceStreamInfo.Stream);
                Icon.MouseClick += (s, e) =>
                {
                    if (e.Button == Winforms.MouseButtons.Right)
                        ShowContextMenu();
                };
                Icon.MouseDoubleClick += (s, e) =>
                {
                    if (e.Button == Winforms.MouseButtons.Left)
                        HandleMenuCommand(MENU_OPEN_SKYPE);
                };
                Icon.Visible = true;
            }

            Icon.Text = iconToolTip;
        }
    }
}