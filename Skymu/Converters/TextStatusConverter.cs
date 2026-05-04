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
    // returns the content of the "status" field depending on input type (group, user?)
    public class TextStatusConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values[1] is int count)
            {
                return count.ToString() + " members";
            }
            else
                return values[0] ?? String.Empty;
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotSupportedException();
        }
    }
}