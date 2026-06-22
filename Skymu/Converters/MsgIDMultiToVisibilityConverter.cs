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

namespace Skymu.Converters
{
    public class MsgIDMultiToVisibilityConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values.Length < 2)
                return Visibility.Collapsed;

            // if PreviousMessageIsAction is true, the visibility is always Visible
            if (values[2] != null && (bool)values[2])
                return Visibility.Visible;
            
            return values[0] as string == values[1] as string
                ? Visibility.Hidden
                : Visibility.Visible;
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