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

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Threading;
using Avalonia.VisualTree;

using Avalonia.Controls.Platform;

namespace Skymu.Skype7
{
    // Skype 7.18 pops a real Win32 menu (#32768). This is that menu, drawn by Windows.
    internal static class NativeMenu
    {
        private const uint MfString = 0x0000;
        private const uint MfGrayed = 0x0001;
        private const uint MfPopup = 0x0010;
        private const uint MfSeparator = 0x0800;
        private const uint TpmReturnCmd = 0x0100;
        private const uint TpmRightButton = 0x0002;

        internal struct Entry
        {
            public string Text;
            public int Id;
            public bool Separator;
            public bool Enabled;
            public Entry[] Children;
        }

        internal static Entry Item(string text, int id, bool enabled = true, Entry[] children = null)
        {
            return new Entry { Text = text, Id = id, Enabled = enabled, Children = children };
        }

        internal static Entry Sep()
        {
            return new Entry { Separator = true };
        }

        internal static int Show(Window window, Entry[] entries)
        {
            IntPtr hwnd = window.TryGetPlatformHandle()?.Handle ?? IntPtr.Zero;
            IntPtr menu = CreatePopupMenu();
            var subs = new List<IntPtr>();
            foreach (Entry entry in entries)
                Append(menu, entry, subs);

            PixelPoint screen = window.PointToScreen(new Point(0, 0));
            SetForegroundWindow(hwnd);
            int command = TrackPopupMenuEx(
                menu,
                TpmReturnCmd | TpmRightButton,
                screen.X,
                screen.Y,
                hwnd,
                IntPtr.Zero);
            foreach (IntPtr sub in subs)
                DestroyMenu(sub);
            DestroyMenu(menu);
            return command;
        }

        private static void Append(IntPtr menu, Entry entry, List<IntPtr> subs)
        {
            if (entry.Separator)
            {
                AppendMenu(menu, MfSeparator, 0, null);
                return;
            }
            if (entry.Children != null && entry.Children.Length > 0)
            {
                IntPtr sub = CreatePopupMenu();
                subs.Add(sub);
                foreach (Entry child in entry.Children)
                    Append(sub, child, subs);
                AppendMenu(menu, MfPopup | (entry.Enabled ? 0 : MfGrayed), (uint)sub.ToInt64(), entry.Text);
                return;
            }
            AppendMenu(menu, entry.Enabled ? MfString : MfGrayed, (uint)entry.Id, entry.Text);
        }

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern IntPtr CreatePopupMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool AppendMenu(IntPtr menu, uint flags, uint id, string text);

        [DllImport("user32.dll")]
        private static extern int TrackPopupMenuEx(IntPtr menu, uint flags, int x, int y, IntPtr hwnd, IntPtr rect);

        [DllImport("user32.dll")]
        private static extern bool DestroyMenu(IntPtr menu);

        [DllImport("user32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hwnd);
    }
}
