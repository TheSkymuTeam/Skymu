using MiddleMan;
using Skymu.Skyaeris;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu.Converters
{

    public class StringToDoubleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is double doubleValue)
            {
                return doubleValue.ToString(CultureInfo.InvariantCulture);
            }
            return "30";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string stringValue && double.TryParse(stringValue, NumberStyles.Float, CultureInfo.InvariantCulture, out double result))
            {
                return result;
            }
            return 30.0; // Default fallback
        }
    }

    public class ByteArrayToImageSourceConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            var bytes = values[0] as byte[];
            var type = values[1] as string;

            if (bytes != null && bytes.Length > 0)
            {
                var bmp = new BitmapImage();
                using (var stream = new MemoryStream(bytes))
                {
                    bmp.BeginInit();
                    bmp.CacheOption = BitmapCacheOption.OnLoad;
                    bmp.StreamSource = stream;
                    bmp.EndInit();
                }
                bmp.Freeze();
                return bmp;
            }

            if (type == "group") return MainWindow.GroupAvatar;
            else return MainWindow.AnonymousAvatar;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            return new object[] { Binding.DoNothing, Binding.DoNothing };
        }
    }

    public class MsgByteArrayToImageConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not byte[] bytes || bytes.Length == 0 || value is null)
                return null;

            try
            {
                var bmp = new BitmapImage();
                using (var stream = new MemoryStream(bytes))
                {
                    bmp.BeginInit();
                    bmp.CacheOption = BitmapCacheOption.OnLoad;
                    bmp.StreamSource = stream;
                    bmp.EndInit();
                }
                bmp.Freeze();

                return bmp;
            }
            catch { return null; }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class PreviewVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool isPreview = value is string id && id.StartsWith("@skymu/sending");
            bool invert = parameter as string == "invert";
            return (isPreview ^ invert) ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotSupportedException();
    }
    public class IdentifierToColorConverter : IValueConverter
    {
        private static readonly SolidColorBrush ActiveBrush =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#3399ff"));

        private static readonly SolidColorBrush InactiveBrush =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#999999"));

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value is string identifier && identifier == MainWindow.Identifier
                ? ActiveBrush
                : InactiveBrush;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class StatusToTextConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not UserConnectionStatus statInt)
                return Universal.Lang["sTRAYHINT_USER_OFFLINE"];

            return Tray.StatusMap.TryGetValue(statInt, out var statusText) ? statusText : Universal.Lang["sTRAYHINT_USER_OFFLINE"];
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class ForwardedChecker : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values[1] is bool isForwarded && isForwarded)
                return values[0] + " (forwarded message)";

            return values[0];
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public sealed class FormatFullTextConverter : IValueConverter
    {
        public Style ViewerStyle { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not string text)
                return DependencyProperty.UnsetValue;

            return MessageTools.FormTextblock(text, false, ViewerStyle);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotSupportedException();
    }

    public class MsgIDToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value is null ? Visibility.Collapsed : Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }
    public class PresenceStatusConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is UserConnectionStatus stat)
            {
                return MainWindow.GetIntFromStatus(stat);
            }
            return 0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class ChannelTypeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is ChannelType chan)
            {
                return MainWindow.GetIntFromChannelType(chan);
            }
            return 0;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class TextStatusConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values[1] is int count)
            {
                return count.ToString() + " members";
            }
            else return values[0] ?? String.Empty;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }

    public class ReplyBodyConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (String.IsNullOrEmpty(value as string)) return "[media]";
            string s = value.ToString();
            return s.Replace("\r", " ").Replace("\n", " ");
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class MsgIDMultiToVisibilityConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values.Length < 2) return Visibility.Collapsed;

            return values[0] as string == values[1] as string
                ? Visibility.Hidden
                : Visibility.Visible;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }

    public class NullDependentVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s)) return Visibility.Collapsed;
            else if (value is null) return Visibility.Collapsed;
            else return Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class NullDependentBoolean : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s)) return false;
            else if (value is null) return false;
            else return true;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class ThemeImageConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is null || parameter is null) return null;

            string themeRoot = value.ToString();
            string imagePath = parameter.ToString();

            string fullPath = $"/Skyaeris/{themeRoot}/{imagePath}".Replace("//", "/");

            string assemblyName = System.Reflection.Assembly.GetExecutingAssembly().GetName().Name;
            string packUri = $"pack://application:,,,/{assemblyName};component{fullPath}";

            return new BitmapImage(new Uri(packUri));
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

}
