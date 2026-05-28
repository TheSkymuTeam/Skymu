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
            // We don't need to convert back from UpperCase to original text 
            // for read-only UI labels, so this remains unimplemented.
            throw new NotImplementedException();
        }
    }
}