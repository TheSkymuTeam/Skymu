/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Windows.Media.Imaging;

namespace Skymu.Helpers
{
    class FrozenImage
    {
        private static readonly Dictionary<string, BitmapImage> _cache = new Dictionary<string, BitmapImage>();

        public static BitmapImage Generate(string uri)
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
    }
}
