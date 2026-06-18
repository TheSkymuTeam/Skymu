/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our license.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Skymu.Helpers
{
    class ImageHelper

    {
        private static readonly Dictionary<string, BitmapImage> _cache = new Dictionary<string, BitmapImage>();
        public static BitmapImage FreezeLoad(string path)
        {
            return FreezeLoadFromPackUri($"pack://application:,,,/Themes/{Universal.Theme}/Assets/{path}");
        }

        public static BitmapImage FreezeLoadFromPackUri(string uri)
        {
            if (_cache.TryGetValue(uri, out var cached))
                return cached;

            BitmapImage img = new BitmapImage();
            img.BeginInit();
            img.UriSource = new Uri(uri, UriKind.RelativeOrAbsolute);
            img.CacheOption = BitmapCacheOption.OnLoad;
            img.EndInit();
            img.Freeze();

            _cache[uri] = img;
            return img;
        }

        public static BitmapImage GenerateFromArray(byte[] data)
        {
            BitmapImage img = new BitmapImage();
            using (var stream = new MemoryStream(data))
            {
                img.BeginInit();
                img.CacheOption = BitmapCacheOption.OnLoad;
                img.StreamSource = stream;
                img.EndInit();
            }
            img.Freeze();
            return img;
        }

        public static BitmapSource Darken(BitmapSource source)
        {
            if (source == null)
                return null;

            var wb = new WriteableBitmap(source);

            int stride = wb.PixelWidth * (wb.Format.BitsPerPixel / 8);
            byte[] pixels = new byte[wb.PixelHeight * stride];

            wb.CopyPixels(pixels, stride, 0);

            for (int i = 0; i < pixels.Length; i++)
            {
                pixels[i] = (byte)(255 - pixels[i]);
            }

            wb.WritePixels(
                new Int32Rect(0, 0, wb.PixelWidth, wb.PixelHeight),
                pixels,
                stride,
                0);

            return wb;
        }

        public static string ResolveExtension(byte[] bytes, string existingName)
        {
            string ext = Path.GetExtension(existingName)?.ToLowerInvariant();
            if ( // does the file already have the extension? (unlikely)
                ext == ".png"
                || ext == ".jpg"
                || ext == ".jpeg"
                || ext == ".gif"
                || ext == ".webp"
            )
            {
                return existingName; // just save as is, the file has the extension already
            }

            if (bytes.Length >= 4) // are there magic bytes?
            {
                if ( // do they match up with any of the formats we know?
                    bytes[0] == 0x89
                    && bytes[1] == 0x50
                    && bytes[2] == 0x4E
                    && bytes[3] == 0x47
                )
                    return existingName + ".png"; // save as PNG
                if (bytes[0] == 0xFF && bytes[1] == 0xD8)
                    return existingName + ".jpg"; // save as JPEG
                if (bytes[0] == 0x47 && bytes[1] == 0x49 && bytes[2] == 0x46)
                    return existingName + ".gif"; // save as GIF
                if (
                    bytes[0] == 0x52
                    && bytes[1] == 0x49
                    && bytes[2] == 0x46
                    && bytes[3] == 0x46
                )
                    return existingName + ".webp"; // save as WebP
            }

            return existingName; // couldn't find proper extension, just save without an extension
        }

        public static Bitmap WpfToGdiBitmap(BitmapImage bitmapImage)
        {
            using (MemoryStream outStream = new MemoryStream())
            {
                BitmapEncoder enc = new PngBitmapEncoder();

                enc.Frames.Add(BitmapFrame.Create(bitmapImage));
                enc.Save(outStream);
                outStream.Position = 0;

                Bitmap bitmap = new Bitmap(outStream);
                return new Bitmap(bitmap);
            }
        }
    }
}
