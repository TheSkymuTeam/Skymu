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
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Platform;
using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;

namespace Skymu.Helpers
{
    class ImageHelper

    {
        private static readonly Dictionary<string, Bitmap> _cache = new Dictionary<string, Bitmap>();
        public static Bitmap Load(string path)
        {
            return LoadFromPackUri($"avares://Skymu/Themes/{Universal.Theme}/Assets/{path}");
        }

        public static Bitmap LoadFromPackUri(string uri)
        {
            if (_cache.TryGetValue(uri, out var cached))
                return cached;

            Bitmap img;

            using (var stream = AssetLoader.Open(new Uri(uri)))
            {
                img = new Bitmap(stream);
            }

            _cache[uri] = img;
            return img;
        }

        public static Bitmap GenerateFromArray(byte[] data)
        {
            using (var stream = new MemoryStream(data))
            {
                return new Bitmap(stream);
            }
        }

        public static Bitmap Darken(Bitmap source)
        {
            if (source == null)
                return null;

            var wb = new WriteableBitmap(
                source.PixelSize,
                source.Dpi,
                source.Format,
                source.AlphaFormat);

            int stride = source.PixelSize.Width * 4;
            byte[] pixels = new byte[source.PixelSize.Height * stride];

            var handle = System.Runtime.InteropServices.GCHandle.Alloc(
                pixels, System.Runtime.InteropServices.GCHandleType.Pinned);

            try
            {
                source.CopyPixels(
                    new PixelRect(source.PixelSize),
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
                pixels[i] = (byte)(255 - pixels[i]);
                pixels[i + 1] = (byte)(255 - pixels[i + 1]);
                pixels[i + 2] = (byte)(255 - pixels[i + 2]);
            }

            using (var fb = wb.Lock())
            {
                for (int y = 0; y < source.PixelSize.Height; y++)
                {
                    System.Runtime.InteropServices.Marshal.Copy(
                        pixels,
                        y * stride,
                        fb.Address + y * fb.RowBytes,
                        stride);
                }
            }

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
    }
}
