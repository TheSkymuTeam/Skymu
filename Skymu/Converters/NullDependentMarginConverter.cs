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
    public class NullDependentMarginConverter : IValueConverter
    {
        public Thickness NotNullMargin { get; set; } = new Thickness(0, 5, 0, 0);

        public Thickness NullMargin { get; set; } = new Thickness(0);

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s))
                return NullMargin;
            else if (value == null)
                return NullMargin;
            else
                return NotNullMargin;
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