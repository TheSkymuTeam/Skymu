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
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace Skymu.Converters
{
    // decides chat bubble color based on who message is from (for SeanKype)
    public class SenderToBubbleColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string id && id == Universal.CurrentUser?.Identifier)
                return (SolidColorBrush)Application.Current.Resources["Message.Bubble.Me"];
            return (SolidColorBrush)Application.Current.Resources["Message.Bubble.Other"];
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        ) => Binding.DoNothing;
    }
}