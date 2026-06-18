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

using Skymu.Helpers;
using Skymu.Preferences;
using System;
using System.Windows.Media.Imaging;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using System.Windows;
using System.Windows.Media;
using System.ComponentModel;

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

        internal static BitmapImage AssetPathGenerator(
            string image_path,
            bool is_universal
        )
        {
            string theme;
            if (System.ComponentModel.DesignerProperties.GetIsInDesignMode(new System.Windows.DependencyObject()))
            {
                // designer: hard-code theme
                theme = "Skype5";
            }
            else
            {
                // runtime: use the configured theme
                theme = Universal.Theme;
            }
            if (!image_path.StartsWith("/")) image_path = "/" + image_path; // just in case
            return ImageHelper.FreezeLoadFromPackUri($"pack://application:,,,/Themes/{theme}/Assets/{(is_universal ? "Universal" : "Themeable") + image_path}");
        }
    }

}
