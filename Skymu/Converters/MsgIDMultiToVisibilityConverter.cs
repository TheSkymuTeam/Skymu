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
using Avalonia.Data.Converters;
using System;
using System.Collections.Generic;
using System.Globalization;

namespace Skymu.Converters
{
    public class MsgIDMultiToVisibilityConverter : IMultiValueConverter
    {
        public object Convert(
            IList<object?> values,
            Type targetType,
            object? parameter,
            CultureInfo culture
        )
        {
            if (values.Count < 2)
                return false;

            // if PreviousMessageIsAction is true, the visibility is always Visible
            if (values[2] is bool previousIsAction && previousIsAction)
                return true;

            string? previousId = values[0] as string;
            string? currentId = values[1] as string;

            return currentId == null || previousId != currentId;
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