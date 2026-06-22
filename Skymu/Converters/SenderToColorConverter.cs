/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
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