/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using Skymu.Skyaeris;
using System;
using System.Globalization;
using System.IO;
using System.Collections.Generic;
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

            if (type == "group") return Main.GroupAvatar;
            else return Main.AnonymousAvatar;
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
            var bytes = value as byte[];
            if (bytes == null || bytes.Length == 0)
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
        private static readonly SolidColorBrush MyIdentifierBrush =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#999999"));

        private static readonly SolidColorBrush AnotherIdentifierBrush =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#3399ff"));

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value is string identifier && identifier == Main.CurrentUser?.Identifier
                ? MyIdentifierBrush
                : AnotherIdentifierBrush;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }


    public class StatusToTextConverter : IValueConverter
    {
        public static readonly Dictionary<UserConnectionStatus, string> StatusMap = new Dictionary<UserConnectionStatus, string>()
        {
            { UserConnectionStatus.Online, Universal.Lang["sSTATUS_ONLINE"] },
            { UserConnectionStatus.OnlineMobile, Universal.Lang["sSTATUS_ONLINE_MOBILE"] },
            { UserConnectionStatus.Away, Universal.Lang["sSTATUS_AWAY"] },
            { UserConnectionStatus.AwayMobile, Universal.Lang["sSTATUS_AWAY_MOBILE"] },
            { UserConnectionStatus.DoNotDisturb, Universal.Lang["sSTATUS_DND"] },
            { UserConnectionStatus.DoNotDisturbMobile, Universal.Lang["sSTATUS_DND_MOBILE"] },
            { UserConnectionStatus.Blocked, Universal.Lang["sSTATUS_BLOCKED"] },
            { UserConnectionStatus.Offline, Universal.Lang["sSTATUS_OFFLINE"] },
            { UserConnectionStatus.Unknown, Universal.Lang["sSTATUS_UNKNOWN"] /* fallback */ }
        };
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            UserConnectionStatus statInt;

            if (!(value is UserConnectionStatus))
                return Universal.Lang["sTRAYHINT_USER_OFFLINE"];

            statInt = (UserConnectionStatus)value;

            return StatusMap.TryGetValue(statInt, out var statusText) ? statusText : Universal.Lang["sSTATUS_UNKNOWN"];
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
                return values[0] + " (forwarded)";

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
            var text = value as string;
            if (text == null)
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
            return value == null ? Visibility.Collapsed : Visibility.Visible;
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
                return Main.GetIntFromStatus(stat);
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
                return Main.GetIntFromChannelType(chan);
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
            else if (value == null) return Visibility.Collapsed;
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
            else if (value == null) return false;
            else return true;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class ThemedAssetPathGenerator : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var image_path = value as string;
            if (image_path == null)
            {
                return null;
            }
            else return Helpers.AssetPathGenerator(image_path, false);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class SharedAssetPathGenerator : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var image_path = value as string;
            if (image_path == null)
                return null;


            else return Helpers.AssetPathGenerator(image_path, true);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class CompactConversationTypeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is DirectMessage dm)
            {
                return Main.GetIntFromStatus(dm.Partner.PresenceStatus);
            }
            else if (value is Group)
            {
                return 21; // group icon index
            }
            return 0; // unknown status icon index
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    class Helpers
    {
        internal static BitmapImage AssetPathGenerator(string image_path, bool is_shared)
        {
            string theme_root;
            if (is_shared) theme_root = "Universal";
            else theme_root = Properties.Settings.Default.ThemeRoot;

            string fullPath = $"/{Universal.SkypeEra}/Assets/{theme_root}/{image_path}".Replace("//", "/");

            string packUri = $"pack://application:,,,/Skymu;component{fullPath}";

            return FrameworkExtensions.FreezeImage(packUri);
        }
    }

}
