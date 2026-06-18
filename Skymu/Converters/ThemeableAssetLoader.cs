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
using System.Drawing;
using System.Globalization;
using System.Windows.Data;
using Skymu.Helpers;


namespace Skymu.Converters
{
    // loads asset under /Themeable
    // this is used in all XAML files, and is the default way to load themeable assets
    public class ThemeableAssetLoader : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var image_path = value as string;
            if (image_path == null)
                return null;

            var bitmap = ConversionHelpers.LoadAsset(image_path, false, parameter as string);

            if (Universal.IsDarkTheme)
                return ImageHelper.Darken(bitmap);

            return bitmap;
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