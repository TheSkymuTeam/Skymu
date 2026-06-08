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
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

namespace Skymu.Windows
{
    public class IconHelper
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

        [StructLayout(LayoutKind.Sequential)]
        struct BITMAPINFO
        {
            public int biSize,
                biWidth,
                biHeight;
            public short biPlanes,
                biBitCount;
            public int biCompression,
                biSizeImage;
            public int biXPelsPerMeter,
                biYPelsPerMeter;
            public int biClrUsed,
                biClrImportant;
        }

        [DllImport("user32.dll")]
        static extern bool SetMenuItemInfo(
            IntPtr hMenu,
            uint item,
            bool byPosition,
            ref MENUITEMINFO info
        );

        [DllImport("gdi32.dll")]
        static extern IntPtr CreateDIBSection(
            IntPtr hdc,
            ref BITMAPINFO bmi,
            uint usage,
            out IntPtr bits,
            IntPtr hSection,
            uint offset
        );

        [DllImport("gdi32.dll")]
        static extern bool DeleteObject(IntPtr hObject);

        const uint MIIM_BITMAP = 0x00000080;

        private static Bitmap CropSheet(string custom_path, int index)
        {
            string path = !string.IsNullOrEmpty(custom_path)
                ? custom_path
                : $"pack://application:,,,/{Preferences.Settings.Interface}/Assets/Universal/Icon/skype-status.png";

            var sri = System.Windows.Application.GetResourceStream(new Uri(path, UriKind.Absolute));
            if (sri == null)
                return null;

            using (var spriteSheet = new Bitmap(sri.Stream))
            {
                int h = spriteSheet.Height;
                var bmp = new Bitmap(h, h, PixelFormat.Format32bppArgb);
                using (var g = Graphics.FromImage(bmp))
                {
                    g.Clear(Color.Transparent);
                    g.CompositingMode = CompositingMode.SourceCopy;
                    g.DrawImage(
                        spriteSheet,
                        new Rectangle(0, 0, h, h),
                        new Rectangle(h * index, 0, h, h),
                        GraphicsUnit.Pixel
                    );
                }
                return bmp;
            }
        }

        private static IntPtr CreatePremultipliedBitmap(Bitmap src)
        {
            var bmi = new BITMAPINFO
            {
                biSize = Marshal.SizeOf<BITMAPINFO>(),
                biWidth = src.Width,
                biHeight = -src.Height,
                biPlanes = 1,
                biBitCount = 32,
            };

            IntPtr bits;
            IntPtr hbmp = CreateDIBSection(IntPtr.Zero, ref bmi, 0, out bits, IntPtr.Zero, 0);
            if (hbmp == IntPtr.Zero)
                return IntPtr.Zero;

            var data = src.LockBits(
                new Rectangle(0, 0, src.Width, src.Height),
                ImageLockMode.ReadOnly,
                PixelFormat.Format32bppArgb
            );

            for (int y = 0; y < src.Height; y++)
            for (int x = 0; x < src.Width; x++)
            {
                int offset = y * data.Stride + x * 4;
                byte b = Marshal.ReadByte(data.Scan0, offset);
                byte g = Marshal.ReadByte(data.Scan0, offset + 1);
                byte r = Marshal.ReadByte(data.Scan0, offset + 2);
                byte a = Marshal.ReadByte(data.Scan0, offset + 3);
                Marshal.WriteByte(bits, offset, (byte)(b * a / 255));
                Marshal.WriteByte(bits, offset + 1, (byte)(g * a / 255));
                Marshal.WriteByte(bits, offset + 2, (byte)(r * a / 255));
                Marshal.WriteByte(bits, offset + 3, a);
            }

            src.UnlockBits(data);
            return hbmp;
        }

        public static IntPtr LoadHBitmapFromSheet(int index, string custom_path = null)
        {
            using (var bmp = CropSheet(custom_path, index))
                return bmp == null ? IntPtr.Zero : CreatePremultipliedBitmap(bmp);
        }

        public static Icon LoadIconFromSheet(int index, string custom_path = null)
        {
            using (var bmp = CropSheet(custom_path, index))
                return bmp == null ? SystemIcons.Application : Icon.FromHandle(bmp.GetHicon());
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
}
