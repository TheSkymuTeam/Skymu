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
using System;
using System.Globalization;
using System.Windows.Data;

namespace Skymu.Converters
{
    // loads assets, given an asset path
    // this is used only in shared XAML files (such as the ones in /Forms)
    // for theme-specific assets, directly reference the path instead
    public class AssetLoader : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var image_path = value as string;
            if (image_path == null)
                return null;

            string theme;
            if (System.ComponentModel.DesignerProperties.GetIsInDesignMode(new System.Windows.DependencyObject()))
            {
                // designer: hard-code theme if not specified
                theme = "Skype5";
            }
            else
            {
                // runtime: use the configured theme
                theme = Universal.Theme;
            }
            if (image_path.StartsWith("/")) image_path = image_path.Substring(1); // just in case
            return ImageHelper.FreezeLoadFromPackUri($"pack://application:,,,/Themes/{theme}/{image_path}");
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotImplementedException();
        }
    }
}
