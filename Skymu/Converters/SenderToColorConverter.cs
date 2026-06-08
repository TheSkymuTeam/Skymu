/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
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
using System.Windows.Media;

namespace Skymu.Converters
{
    // decides username color based on who message is from
    public class SenderToColorConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values[0] is string identifier && identifier == Universal.CurrentUser?.Identifier)
                return (SolidColorBrush)Application.Current.Resources["Message.Author.Me"];
            else if (values[1] is bool isForwarded && isForwarded)
                return (SolidColorBrush)Application.Current.Resources["Message.Author.Forward"];
            else
                return (SolidColorBrush)Application.Current.Resources["Message.Author.Other"];
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            return new object[] { Binding.DoNothing, Binding.DoNothing };
        }
    }
}