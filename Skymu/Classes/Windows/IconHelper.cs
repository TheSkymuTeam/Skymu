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

using Avalonia;
using Avalonia.Media.Imaging;
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using Avalonia.Platform;

namespace Skymu.Native.Windows
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

        private static RenderTargetBitmap CropSheet(string path, int index)
        {
            using (var stream = AssetLoader.Open(new Uri(path)))
            using (var spriteSheet = new Avalonia.Media.Imaging.Bitmap(stream))
            {
                int h = spriteSheet.PixelSize.Height;

                var result = new RenderTargetBitmap(new PixelSize(h, h));

                using (var context = result.CreateDrawingContext())
                {
                    context.DrawImage(
                        spriteSheet,
                        new Rect(h * index, 0, h, h),
                        new Rect(0, 0, h, h));
                }

                return result;
            }
        }

        private static IntPtr CreatePremultipliedBitmap(RenderTargetBitmap src)
        {
            int width = src.PixelSize.Width;
            int height = src.PixelSize.Height;
            int stride = width * 4;

            var bmi = new BITMAPINFO
            {
                biSize = Marshal.SizeOf<BITMAPINFO>(),
                biWidth = width,
                biHeight = -height,
                biPlanes = 1,
                biBitCount = 32,
            };

            IntPtr bits;
            IntPtr hbmp = CreateDIBSection(
                IntPtr.Zero, ref bmi, 0, out bits, IntPtr.Zero, 0);

            if (hbmp == IntPtr.Zero)
                return IntPtr.Zero;

            byte[] pixels = new byte[height * stride];

            var handle = GCHandle.Alloc(pixels, GCHandleType.Pinned);

            try
            {
                src.CopyPixels(
                    new PixelRect(0, 0, width, height),
                    handle.AddrOfPinnedObject(),
                    pixels.Length,
                    stride);
            }
            finally
            {
                handle.Free();
            }

            for (int i = 0; i < pixels.Length; i += 4)
            {
                byte a = pixels[i + 3];

                pixels[i] = (byte)(pixels[i] * a / 255);
                pixels[i + 1] = (byte)(pixels[i + 1] * a / 255);
                pixels[i + 2] = (byte)(pixels[i + 2] * a / 255);
            }

            Marshal.Copy(pixels, 0, bits, pixels.Length);

            return hbmp;
        }

        public static IntPtr LoadHBitmapFromSheet(int index, string path)
        {
            using (var bmp = CropSheet(path, index))
                return bmp == null ? IntPtr.Zero : CreatePremultipliedBitmap(bmp);
        }

        public static Icon LoadIconFromSheet(int index, string path)
        {
            using (var bmp = CropSheet(path, index))
            {
                if (bmp == null)
                    return SystemIcons.Application;

                IntPtr hBitmap = CreatePremultipliedBitmap(bmp);

                if (hBitmap == IntPtr.Zero)
                    return SystemIcons.Application;

                return Icon.FromHandle(hBitmap);
            }
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
