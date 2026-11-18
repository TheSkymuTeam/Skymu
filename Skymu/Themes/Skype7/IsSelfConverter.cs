using System;
using System.Globalization;
using Avalonia;
using Avalonia.Data.Converters;
using Avalonia.Data;
using Skymu;

namespace Skymu.Skype7
{
    public class IsSelfConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var id = value as string;
            return !string.IsNullOrEmpty(id) && id == Universal.CurrentUser?.Identifier;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return AvaloniaProperty.UnsetValue;
        }
    }
}
