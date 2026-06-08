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
