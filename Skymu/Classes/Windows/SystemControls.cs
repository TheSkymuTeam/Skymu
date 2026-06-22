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
using System.Windows;
using System.Windows.Interop;

namespace Skymu.Windows
{
    public class NativeMenuBar
    {
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr CreateMenu();
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr CreatePopupMenu();
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern bool AppendMenu(IntPtr hMenu, uint uFlags, UIntPtr uIDNewItem, string lpNewItem);
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr SetMenu(IntPtr hWnd, IntPtr hMenu);

        const uint MF_STRING = 0x0000;
        const uint MF_GRAYED = 0x0001;
        const uint MF_POPUP = 0x0010;
        const uint MF_SEPARATOR = 0x0800;

        IntPtr hwnd;
        IntPtr hMenu;
        internal int nextId = 1;
        internal readonly Dictionary<int, EventHandler> callbacks = new Dictionary<int, EventHandler>();

        public NativeMenuBar(Window window)
        {
            hwnd = new WindowInteropHelper(window).Handle;
            HwndSource source = HwndSource.FromHwnd(hwnd);
            source.AddHook(WndProc);
            hMenu = CreateMenu();
            SetMenu(hwnd, hMenu);
        }

        public void Create(string title, params (string label, object child)[] items)
        {
            IntPtr menu = CreatePopupMenu();
            foreach (var (label, child) in items)
            {
                if (label == "$")
                {
                    AppendMenu(menu, MF_SEPARATOR, UIntPtr.Zero, null);
                }
                else
                {
                    uint flags = MF_STRING;
                    if (child == null)
                    {
                        flags |= MF_GRAYED;
                        AppendMenu(menu, flags, UIntPtr.Zero, label);
                    }
                    else if (child is EventHandler handler)
                    {
                        int id = nextId++;
                        callbacks[id] = handler;
                        AppendMenu(menu, flags, (UIntPtr)id, label);
                    }
                    else if (child is NativeSubMenu subMenu)
                    {
                        AppendMenu(menu, flags | MF_POPUP, unchecked((UIntPtr)(long)(ulong)subMenu.hSubMenu), label);
                    }
                    else throw new ArgumentException("Only EventHandler or NativeSubMenu is supported");
                }
            }
            AppendMenu(hMenu, MF_POPUP, unchecked((UIntPtr)(ulong)menu.ToInt64()), title);
        }

        IntPtr WndProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            const int WM_COMMAND = 0x0111;
            if (msg == WM_COMMAND)
            {
                int id = wParam.ToInt32() & 0xFFFF;
                if (callbacks.TryGetValue(id, out EventHandler handler))
                {
                    handler?.Invoke(this, EventArgs.Empty);
                    handled = true;
                }
            }
            return IntPtr.Zero;
        }
    }

    public class NativeSubMenu
    {
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr CreatePopupMenu();
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern bool AppendMenu(IntPtr hSubMenu, uint uFlags, UIntPtr uIDNewItem, string lpNewItem);
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern bool RemoveMenu(IntPtr hMenu, uint uPosition, uint uFlags);
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern bool DestroyMenu(IntPtr hMenu);
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern int GetMenuItemCount(IntPtr hMenu);

        const uint MF_STRING = 0x0000;
        const uint MF_GRAYED = 0x0001;
        const uint MF_SEPARATOR = 0x0800;
        const uint MF_BYPOSITION = 0x0400;

        NativeMenuBar bar;
        internal IntPtr hSubMenu;

        public NativeSubMenu(NativeMenuBar bar)
        {
            hSubMenu = CreatePopupMenu();
            this.bar = bar;
        }

        public void RefreshItems(params (string label, EventHandler handler)[] items)
        {
            int itemCount = GetMenuItemCount(hSubMenu);
            for (int i = itemCount - 1; i >= 0; i--)
            {
                RemoveMenu(hSubMenu, (uint)i, MF_BYPOSITION);
            }

            Create("", items);
        }

        public NativeSubMenu Create(string title, params (string label, EventHandler handler)[] items)
        {
            foreach (var (label, handler) in items)
            {
                if (label == "$")
                {
                    AppendMenu(hSubMenu, MF_SEPARATOR, UIntPtr.Zero, null);
                }
                else
                {
                    uint flags = MF_STRING;
                    int id = -1;
                    if (handler == null)
                    {
                        flags |= MF_GRAYED;
                        AppendMenu(hSubMenu, flags, id == -1 ? UIntPtr.Zero : (UIntPtr)id, label);
                    }
                    else
                    {
                        id = bar.nextId++;
                        bar.callbacks[id] = handler;
                        AppendMenu(hSubMenu, flags, (UIntPtr)id, label);
                    }
                }
            }
            return this;
        }

        public NativeSubMenu CreateWithIcons(string title, params (string label, EventHandler handler, IntPtr? hBitmap)[] items)
        {
            foreach (var (label, handler, hBitmap) in items)
            {
                if (label == "$")
                {
                    AppendMenu(hSubMenu, MF_SEPARATOR, UIntPtr.Zero, null);
                }
                else
                {
                    uint flags = MF_STRING;
                    int id = -1;
                    if (handler == null)
                    {
                        if (hBitmap != null)
                            id = bar.nextId++;
                        flags |= MF_GRAYED;
                        AppendMenu(hSubMenu, flags, id == -1 ? UIntPtr.Zero : (UIntPtr)id, label);
                    }
                    else
                    {
                        id = bar.nextId++;
                        bar.callbacks[id] = handler;
                        AppendMenu(hSubMenu, flags, (UIntPtr)id, label);
                    }
                    if (hBitmap != null)
                        IconHelper.SetIcon(hSubMenu, id, (IntPtr)hBitmap);
                }
            }
            return this;
        }
    }
}
