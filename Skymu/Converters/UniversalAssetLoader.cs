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

using System;
using System.Globalization;
using System.Windows.Data;

namespace Skymu.Converters
{
    // loads assets under /Universal
    // this is used only in shared XAML files (such as the ones in /Forms)
    // for theme-specific assets, directly reference the path instead
    public class UniversalAssetLoader : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var image_path = value as string;
            if (image_path == null)
                return null;

            return ConversionHelpers.LoadAsset(image_path, true, parameter as string);
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
