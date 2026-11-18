using Avalonia;
using Avalonia.Controls;
using Avalonia.Data.Converters;
using Avalonia.Media;
using System;
using System.Globalization;

namespace Skymu.Converters
{
    public class BoolToWhiteForegroundConverter : IValueConverter
    {
        public IBrush TrueBrush { get; set; }
        public IBrush FalseBrush { get; set; }
        public string FalseBrushResourceKey { get; set; }

        private IBrush ResolveFalseBrush()
        {
            if (FalseBrush != null)
                return FalseBrush;
            if (!string.IsNullOrEmpty(FalseBrushResourceKey)
                && Application.Current != null
                && Application.Current.TryGetResource(FalseBrushResourceKey, null, out var resource)
                && resource is IBrush brush)
                return brush;
            return Brushes.Black;
        }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            => value is true ? TrueBrush : ResolveFalseBrush();
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }
}
