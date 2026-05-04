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



using System;
using System.Globalization;
using System.Windows.Data;



namespace Skymu.Converters
{
    // parse string as int
    public class StringToIntegerConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int intValue)
            {
                return intValue.ToString(CultureInfo.InvariantCulture);
            }
            return "0";
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
                && int.TryParse(
                    stringValue,
                    NumberStyles.Integer,
                    CultureInfo.InvariantCulture,
                    out int result
                )
            )
            {
                return result;
            }
            return 0;
        }
    }
}