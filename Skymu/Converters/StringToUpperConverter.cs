using System;
using System.Globalization;
using System.Windows.Data;

namespace Skymu.Converters
{
    public class StringToUpperConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            // Safely convert the object to a string and make it uppercase.
            // If the value is null, return an empty string to prevent crashes.
            return value?.ToString().ToUpper(culture) ?? string.Empty;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            // This is not possible unless you store the original values in a dictionary somewhere.
            throw new NotImplementedException();
        }
    }
}