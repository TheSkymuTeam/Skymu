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


using Avalonia;
using Avalonia.Controls;
using Avalonia.Data.Converters;
using Avalonia.Media;
using System;
using System.Collections.Generic;
using System.Globalization;

namespace Skymu.Converters
{
    // decides username color based on who message is from
    public class SenderToColorConverter : IMultiValueConverter
    {
        public object Convert(
            IList<object?> values,
            Type targetType,
            object? parameter,
            CultureInfo culture
        )
        {
            if (values[0] is string identifier && identifier == Universal.CurrentUser?.Identifier)
                return (SolidColorBrush)Application.Current.FindResource("Message.Author.Me");
            else if (values[1] is bool isForwarded && isForwarded)
                return (SolidColorBrush)Application.Current.FindResource("Message.Author.Forward");
            else
                return (SolidColorBrush)Application.Current.FindResource("Message.Author.Other");
        }

        public object ConvertBack(
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