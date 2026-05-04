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
    // return [media] if reply body contains image for obvious reasons
    public class ReplyBodyConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (String.IsNullOrEmpty(value as string))
                return "[media]";
            string s = value.ToString();
            return s.Replace("\r", " ").Replace("\n", " ");
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