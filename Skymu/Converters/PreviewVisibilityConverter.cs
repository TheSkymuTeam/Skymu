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
using System.Windows;
using System.Windows.Data;



namespace Skymu.Converters
{
    // controls visibility based on whether the message is a preview (sending..) or not
    public class PreviewVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool isPreview = value is string id && id.StartsWith("@skymu/sending");
            bool invert = parameter as string == "invert";
            return (isPreview ^ invert) ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        ) => throw new NotSupportedException();
    }
}