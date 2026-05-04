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
using Skymu.Preferences;
using System;
using System.Windows.Media.Imaging;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Skymu.Converters
{
    internal class ConversionHelpers
    {
        internal static byte[] RetrieveImageAttachment(object value)
        {
            Attachment[] arr = value as Attachment[];
            if (
                arr == null
                || arr.Length < 1
                || (
                    arr[0].Type != AttachmentType.Image
                    && arr[0].Type != AttachmentType.ThumbnailImage
                )
            )
                return null;

            byte[] bytes = arr[0].File;
            if (bytes == null || bytes.Length == 0)
                return null;

            return bytes;
        }

        internal static string GetAssetBasePrefix(string era = null, bool universal = false)
        {
            string theme_root = "Light";
            if (universal)
                theme_root = "Universal";

            if (!String.IsNullOrEmpty(theme_root))
            {
                string baseFolder = Settings.Interface;
                if (!String.IsNullOrEmpty(era))
                    baseFolder = era;
                return $"pack://application:,,,/Skymu;component/{baseFolder}/Assets/{theme_root}/";
            }

            return $"pack://application:,,,/Skymu;component/Skype5/Assets/{theme_root}/";
        }

        internal static BitmapImage AssetPathGenerator(
            string image_path,
            bool is_shared,
            string era = null
        )
        {
            string packUri;
            if (era == null)
                era = Settings.Interface;
            if (is_shared)
            {
                packUri =
                    $"pack://application:,,,/Skymu;component/{era}/Assets/Universal/{image_path}";
            }
            else
            {
                packUri = GetAssetBasePrefix(era) + image_path;
            }
            return ImageHelper.Generate(packUri);
        }
    }
}
