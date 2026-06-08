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

    public class SystemComboBox
    {
        // PInvoke declarations
        [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        public static extern IntPtr GetModuleHandle(string lpModuleName);

        [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        public static extern IntPtr CreateWindowEx(
            uint dwExStyle,
            string lpClassName,
            string lpWindowName,
            uint dwStyle,
            int x,
            int y,
            int nWidth,
            int nHeight,
            IntPtr hWndParent,
            IntPtr hMenu,
            IntPtr hInstance,
            IntPtr lpParam);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        public static extern bool UpdateWindow(IntPtr hWnd);

        [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        public static extern bool DestroyWindow(IntPtr hWnd);

        [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        public static extern IntPtr SendMessage(IntPtr hWnd, uint msg, IntPtr wParam, IntPtr lParam);

        // Define constants
        const uint WS_VISIBLE = 0x10000000;
        const uint WS_CHILD = 0x40000000;
        const uint CBS_DROPDOWNLIST = 0x0003;
        const uint WM_CREATE = 0x0001;
        const uint WM_COMMAND = 0x0111;

        private IntPtr ComboBoxHandle { get; set; }

        public SystemComboBox(Window parentWindow, int x, int y, int width, int height, params string[] items)
        {
            // Get the window handle (HWND)
            IntPtr hwnd = new WindowInteropHelper(parentWindow).Handle;

            // Create ComboBox
            ComboBoxHandle = CreateWindowEx(
                0, // extended styles
                "ComboBox", // class name
                "Select Option", // window name
                WS_VISIBLE | WS_CHILD | CBS_DROPDOWNLIST, // style
                x, y, width, height, hwnd, IntPtr.Zero, GetModuleHandle(null), IntPtr.Zero);

            ShowWindow(ComboBoxHandle, 1);  // 1 = SW_SHOWNORMAL
            UpdateWindow(ComboBoxHandle);

            // Add items to the ComboBox
            AddItems(items);
        }

        // Add items to the ComboBox
        public void AddItems(params string[] items)
        {
            foreach (var item in items)
            {
                SendMessage(ComboBoxHandle, 0x0140, IntPtr.Zero, Marshal.StringToHGlobalAuto(item));
            }
        }

        // Cleanup
        public void Destroy()
        {
            DestroyWindow(ComboBoxHandle);
        }
    }
}
