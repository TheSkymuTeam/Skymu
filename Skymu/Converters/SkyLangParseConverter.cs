using Skymu.Formatting;
using System;
using System.Globalization;
using System.Linq;
using Avalonia;
using System.Collections.Generic;
using Avalonia.Data.Converters;

namespace Skymu.Converters
{
    public sealed class SkyLangParseConverter : IMultiValueConverter
    {
        public object Convert(IList<object?> values, Type targetType, object? parameter, CultureInfo culture)
        {
            if (parameter is string lanp)
                return Formatter.ProcessLangText(Universal.Lang[lanp], values.ToArray());

            if (values.Count == 0 || !(values[0] is string lang))
                return AvaloniaProperty.UnsetValue;

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
