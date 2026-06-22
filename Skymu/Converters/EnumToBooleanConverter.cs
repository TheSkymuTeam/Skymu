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
using System.Windows.Data;

namespace Skymu.Converters
{
    public class EnumToBooleanConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value == null || parameter == null) return false;
            return value.ToString().Equals(parameter.ToString(), StringComparison.InvariantCultureIgnoreCase);
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value == null || parameter == null) return Binding.DoNothing;
            if ((bool)value)
            {
                var param = parameter.ToString();
                foreach (var enumType in new[] { targetType })
                {
                    if (enumType.IsEnum)
                        return Enum.Parse(enumType, param);
                }
                throw new ArgumentException($"targetType {targetType} is not an enum. Use x:Static or ensure binding targets an enum property.");
            }
            return Binding.DoNothing;
        }
    }
}
