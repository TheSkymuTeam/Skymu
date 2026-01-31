/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/
using System;
using System.Drawing;
using System.Runtime.InteropServices;
using Winforms = System.Windows.Forms;

namespace Skymu
{
    class Tray
    {
        private static Winforms.NotifyIcon Icon;
        private static IntPtr hMenu = IntPtr.Zero;
        private static NativeWindow messageWindow;

        #region PInvoke Declarations

        [DllImport("user32.dll")]
        private static extern IntPtr CreatePopupMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool AppendMenu(IntPtr hMenu, uint uFlags, UIntPtr uIDNewItem, string lpNewItem);

        [DllImport("user32.dll")]
        private static extern uint TrackPopupMenu(IntPtr hMenu, uint uFlags, int x, int y, int nReserved, IntPtr hwnd, IntPtr prcRect);

        [DllImport("user32.dll")]
        private static extern bool DestroyMenu(IntPtr hMenu);

        [DllImport("user32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hWnd);

        [DllImport("user32.dll")]
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

        // Message-only window to handle menu commands
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
            if (hMenu != IntPtr.Zero)
            {
                DestroyMenu(hMenu);
                hMenu = IntPtr.Zero;
            }

            messageWindow?.DestroyHandle();
            messageWindow = null;

            Icon?.Dispose();
        }

        private static void HandleMenuCommand(uint commandId)
        {
            switch (commandId)
            {
                case MENU_OPEN_SKYPE:
                    if (System.Windows.Application.Current.Windows is not null)
                    {
                    }
                    else
                    {
                    }
                    break;

                case MENU_SIGN_IN:
                    if (System.Windows.Application.Current.Windows is not null)
                    {
                    }
                    else
                    {
                    }
                    break;

                case MENU_QUIT:
                    Universal.Shutdown(null);
                    break;
            }
        }

        private static void ShowContextMenu()
        {
            // Get cursor position
            var cursorPos = System.Windows.Forms.Cursor.Position;

            // Create menu if it doesn't exist
            if (hMenu == IntPtr.Zero)
            {
                hMenu = CreatePopupMenu();

                AppendMenu(hMenu, MF_STRING | MF_GRAYED, (UIntPtr)MENU_OPEN_SKYPE, "Open Skype");
                AppendMenu(hMenu, MF_STRING | MF_GRAYED, (UIntPtr)MENU_SIGN_IN, "Sign in");
                AppendMenu(hMenu, MF_SEPARATOR, UIntPtr.Zero, null);
                AppendMenu(hMenu, MF_STRING, (UIntPtr)MENU_QUIT, "Quit");
            }

            // Required for context menu to work properly
            SetForegroundWindow(messageWindow.Handle);

            // Show menu and get selected command
            uint command = TrackPopupMenu(
                hMenu,
                TPM_LEFTALIGN | TPM_RETURNCMD,
                cursorPos.X,
                cursorPos.Y,
                0,
                messageWindow.Handle,
                IntPtr.Zero
            );

            // Process command if one was selected
            if (command != 0)
            {
                HandleMenuCommand(command);
            }

            // Post a null message to clear menu state
            PostMessage(messageWindow.Handle, 0, IntPtr.Zero, IntPtr.Zero);
        }

        public static void PushIcon(string icon, string iconText = "Skype")
        {
            var resourceUri = new Uri("pack://application:,,,/Resources/Universal/Icon/skype-" + icon + ".ico", UriKind.Absolute);
            var resourceStreamInfo = Universal.GetResourceStream(resourceUri);

            if (Icon is not null)
            {
                Icon.Icon = new Icon(resourceStreamInfo.Stream);
            }
            else
            {
                // Create message window for handling menu commands
                messageWindow = new NativeWindow(HandleMenuCommand);

                Icon = new Winforms.NotifyIcon();
                Icon.Icon = new Icon(resourceStreamInfo.Stream);
                Icon.MouseClick += (s, e) =>
                {
                    if (e.Button == Winforms.MouseButtons.Right)
                    {
                        ShowContextMenu();
                    }
                };
                Icon.Visible = true;
            }

            Icon.Text = iconText;
        }
    }
}