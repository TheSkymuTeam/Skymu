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
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Media;
using Yggdrasil.Models;

namespace Skymu.Converters
{
    public sealed class FormatFullActionMessageConverter : IValueConverter
    {
        public Style ViewerStyle { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var msg = value as Message;
            if (msg == null)
                return DependencyProperty.UnsetValue;

            var tb = Formatter.Parse(msg.Text, false, ViewerStyle);

            tb.Inlines.InsertBefore(tb.Inlines.FirstInline, new InlineUIContainer()
            {
                Child = new Border()
                {
                    Width = 4
                }
            });
            tb.Inlines.InsertBefore(tb.Inlines.FirstInline, new Run()
            {
                Text = msg.Author.DisplayName,
                Foreground = (SolidColorBrush)new SenderToColorConverter().Convert(new object[] { msg.Author.Identifier, msg.IsForwarded }, null, null, null)
            });

            return tb;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        ) => throw new NotSupportedException();
    }
}
