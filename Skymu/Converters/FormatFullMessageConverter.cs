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

using Skymu.Formatting;
using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using Yggdrasil.Models;

namespace Skymu.Converters
{
    public sealed class FormatFullMessageConverter : IValueConverter
    {
        public Style ViewerStyle { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var msg = value as Message;
            if (msg == null)
                return DependencyProperty.UnsetValue;

            return Formatter.Parse(msg.Author.Core, msg.Text, false, ViewerStyle);
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        ) => throw new NotSupportedException();
    }
}
