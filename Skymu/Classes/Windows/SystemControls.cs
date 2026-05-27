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

using Skymu.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Interop;

namespace Skymu
{

    public class DwmHelper
    {
        [DllImport("dwmapi.dll", CharSet = CharSet.Unicode)]
        private static extern int DwmIsCompositionEnabled(out bool enabled);

        public static bool IsDwmEnabled()
        {
            if (Environment.OSVersion.Version.Major < 6)
                return false;

            bool enabled;
            return DwmIsCompositionEnabled(out enabled) == 0 && enabled;
        }
    }

    public class Taskbar
    {
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        [return: MarshalAs(UnmanagedType.Bool)]
        private static extern bool FlashWindowEx(ref FLASHWINFO pwfi);

        [StructLayout(LayoutKind.Sequential)]
        private struct FLASHWINFO
        {
            public uint cbSize;
            public IntPtr hwnd;
            public uint dwFlags;
            public uint uCount;
            public uint dwTimeout;
        }

        private const uint FLASHW_STOP = 0;
        private const uint FLASHW_CAPTION = 1;
        private const uint FLASHW_TRAY = 2;
        private const uint FLASHW_ALL = 3;
        private const uint FLASHW_TIMER = 4;
        private const uint FLASHW_TIMERNOFG = 12;

        public static void Flash(Window window)
        {
            if (window == null) return;

            WindowInteropHelper wih = new WindowInteropHelper(window);

            FLASHWINFO fw = new FLASHWINFO
            {
                cbSize = (uint)Marshal.SizeOf(typeof(FLASHWINFO)),
                hwnd = wih.Handle,
                dwFlags = FLASHW_ALL | FLASHW_TIMERNOFG, // flash until focused
                uCount = uint.MaxValue,                  // repeat indefinitely
                dwTimeout = 0
            };

            FlashWindowEx(ref fw);
        }

    }

    public class BitmapHelper
    {
        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
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

        [DllImport("user32.dll")]
        static extern bool SetMenuItemInfo(IntPtr hMenu, uint item, bool byPosition, ref MENUITEMINFO info);

        const uint MIIM_BITMAP = 0x00000080;

        public static IntPtr IconFromSheet(string path, int index)
        {
            var spriteSheet = ImageHelper.BitmapImageToBitmap(ImageHelper.Generate(path));
            int h = spriteSheet.Height;

            Bitmap bmp = new Bitmap(h, h, PixelFormat.Format32bppArgb);

            using (Graphics g = Graphics.FromImage(bmp))
            {
                g.Clear(Color.Transparent);

                g.CompositingMode = CompositingMode.SourceCopy;
                g.DrawImage(spriteSheet, new Rectangle(0, 0, h, h),　new Rectangle(h * index, 0, h, h), GraphicsUnit.Pixel);
            }

            bmp.Save("test.png");

            return bmp.GetHbitmap(Color.FromArgb(0));
        }

        public static void SetIcon(IntPtr menu, int id, IntPtr hBitmap)
        {
            var mii = new MENUITEMINFO();
            mii.cbSize = (uint)Marshal.SizeOf<MENUITEMINFO>();
            mii.fMask = MIIM_BITMAP;
            mii.hbmpItem = hBitmap;

            SetMenuItemInfo(menu, (uint)id, false, ref mii);
        }
    }

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

        const uint MF_STRING = 0x0000;
        const uint MF_GRAYED = 0x0001;
        const uint MF_POPUP = 0x0010;
        const uint MF_SEPARATOR = 0x0800;

        NativeMenuBar bar;
        internal IntPtr hSubMenu;

        public NativeSubMenu(NativeMenuBar bar)
        {
            hSubMenu = CreatePopupMenu();
            this.bar = bar;
        }

        // TODO: Create (without icons)

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
                        BitmapHelper.SetIcon(hSubMenu, id, (IntPtr)hBitmap);
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
