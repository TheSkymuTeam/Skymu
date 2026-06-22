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
