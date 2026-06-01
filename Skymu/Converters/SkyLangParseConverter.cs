using Skymu.Formatting;
using System;
using System.Globalization;
using System.Linq;
using System.Windows;
using System.Windows.Data;

namespace Skymu.Converters
{
    public sealed class SkyLangParseConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (parameter is string lanp)
                return Formatter.ProcessLangText(Universal.Lang[lanp], values);

            if (values.Length == 0 || !(values[0] is string lang))
                return DependencyProperty.UnsetValue;

            return Formatter.ProcessLangText(Universal.Lang[lang], values.Skip(1).ToArray());
        }

        public object[] ConvertBack(
            object value,
            Type[] targetType,
            object parameter,
            CultureInfo culture
        ) => throw new NotSupportedException();
    }
}
