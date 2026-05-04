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
    // parse string as double
    public class StringToDoubleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is double doubleValue)
            {
                return doubleValue.ToString(CultureInfo.InvariantCulture);
            }
            return "30";
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (
                value is string stringValue
                && double.TryParse(
                    stringValue,
                    NumberStyles.Float,
                    CultureInfo.InvariantCulture,
                    out double result
                )
            )
            {
                return result;
            }
            return 30.0; // fallback
        }
    }
}