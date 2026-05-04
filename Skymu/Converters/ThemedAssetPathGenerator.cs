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


/* Unmerged change from project 'Skymu (net5.0-windows)'
Before:
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using Skymu.Formatting;
After:
using Skymu.Formatting;
*/
using System;
using System.Globalization;
using System.Windows.Data;
/* Unmerged change from project 'Skymu (net5.0-windows)'
Before:
using System.Windows.Media.Imaging;
After:
using System.Windows.Media.Imaging;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
*/


namespace Skymu.Converters
{
    // returns path to themed (dark/light mode) asset
    public class ThemedAssetPathGenerator : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var image_path = value as string;
            if (image_path == null)
                return null;
            else if (parameter is string era && !String.IsNullOrEmpty(era))
                return ConversionHelpers.AssetPathGenerator(image_path, false, era);
            else
                return ConversionHelpers.AssetPathGenerator(image_path, false);
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