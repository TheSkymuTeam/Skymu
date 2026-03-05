/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
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

    public class MenuBar
    {
        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr CreateMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr CreatePopupMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern bool AppendMenu(IntPtr hMenu, uint uFlags, UIntPtr uIDNewItem, string lpNewItem);

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        static extern IntPtr SetMenu(IntPtr hWnd, IntPtr hMenu);

        const uint MF_STRING = 0x0000;
        const uint MF_POPUP = 0x0010;
        const uint MF_SEPARATOR = 0x0800;

        const uint WM_COMMAND = 0x0111;

        public static IntPtr hwnd;
        public static IntPtr hMenu;


        public static void MenuInit(Window window)
        {
            // Get the window handle
            hwnd = new WindowInteropHelper(window).Handle;

            // Hook into the WndProc to handle native menu commands
            HwndSource source = HwndSource.FromHwnd(hwnd);
            source.AddHook(WndProc);

            // Create the top-level menu
            hMenu = CreateMenu();
            SetMenu(hwnd, hMenu);
        }
        public static void MenuCreator(string title, params string[] subtitles)
        {
            IntPtr menu = CreatePopupMenu();

            foreach (string subtitle in subtitles)
            {
                if (subtitle.Contains("$"))
                {
                    AppendMenu(menu, MF_SEPARATOR, UIntPtr.Zero, null);
                }
                else
                {

                    AppendMenu(menu, MF_STRING, (UIntPtr)1, subtitle);
                }

            }

            AppendMenu(hMenu, MF_POPUP, new UIntPtr((uint)menu.ToInt32()), title);
        }

        private static IntPtr WndProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            const int WM_COMMAND = 0x0111;

            if (msg == WM_COMMAND)
            {
                int id = wParam.ToInt32() & 0xFFFF;

                /*switch (id)
                {
                    case 1:
                        MessageBox.Show("New clicked");
                        handled = true;
                        break;
                    case 2:
                        MessageBox.Show("Open clicked");
                        handled = true;
                        break;
                    case 3:
                        Universal.Close();
                        handled = true;
                        break;
                }*/

                new Views.About().Show();
                //Universal.NotImplemented("Windows Native Menu Bar");
            }
            return IntPtr.Zero;
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
