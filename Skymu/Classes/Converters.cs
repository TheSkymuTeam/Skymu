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

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using MiddleMan;
using Skymu.Helpers;
using Skymu.ViewModels;

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
            return "0";
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (
                value is string stringValue
                && double.TryParse(
                    stringValue,
                    NumberStyles.Float,
                    CultureInfo.InvariantCulture,
                    out double result
                )
            )
            {
                return result;
            }
            return 0.0;
        }
    }

    public class StringToIntegerConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int intValue)
            {
                return intValue.ToString(CultureInfo.InvariantCulture);
            }
            return "0";
        }

    
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string stringValue
                && int.TryParse(stringValue, NumberStyles.Integer, CultureInfo.InvariantCulture, out int result))
            {
                return result;
            }
            return 0;
        }
    }

    public class ByteArrayToImageSourceConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            var bytes = values[0] as byte[];
            var type = values[1] as string;

            if (bytes != null && bytes.Length > 0)
            {
                return FrozenImage.GenerateFromArray(bytes);
            }

            if (type == "group")
                return Universal.GroupAvatar;
            else
                return Universal.AnonymousAvatar;
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            return new object[] { Binding.DoNothing, Binding.DoNothing };
        }
    }

    public class HalfValueConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            double height = value is double d ? d : 0;
            return Math.Max((height / 2) - 30, 0);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class MsgByteArrayToImageConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            byte[] raw = Helpers.RetrieveImageAttachment(value);
            if (raw == null) return null;

            try
            {
                return FrozenImage.GenerateFromArray(raw);
            }
            catch
            {
                return null;
            }
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
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

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        ) => throw new NotSupportedException();
    }

    public class SenderToColorConverter : IMultiValueConverter
    {
        private static readonly SolidColorBrush MyColor = new SolidColorBrush(
            (Color)ColorConverter.ConvertFromString("#999999")
        );

        private static readonly SolidColorBrush OtherUserColor = new SolidColorBrush(
            (Color)ColorConverter.ConvertFromString("#3399ff")
        );

        private static readonly SolidColorBrush ForwardedMessageColor = new SolidColorBrush(
            (Color)ColorConverter.ConvertFromString("#00cc88")
        );

        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values[0] is string identifier && identifier == Universal.CurrentUser?.Identifier)
                return MyColor;
            else if (values[1] is bool isForwarded && isForwarded)
                return ForwardedMessageColor;
            else
                return OtherUserColor;
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            return new object[] { Binding.DoNothing, Binding.DoNothing };
        }
    }

    public class StatusToTextConverter : IValueConverter
    {
        public static readonly Dictionary<UserConnectionStatus, string> StatusMap = new Dictionary<
            UserConnectionStatus,
            string
        >()
        {
            { UserConnectionStatus.Online, Universal.Lang["sSTATUS_ONLINE"] },
            { UserConnectionStatus.OnlineMobile, Universal.Lang["sSTATUS_ONLINE_MOBILE"] },
            { UserConnectionStatus.Away, Universal.Lang["sSTATUS_AWAY"] },
            { UserConnectionStatus.AwayMobile, Universal.Lang["sSTATUS_AWAY_MOBILE"] },
            { UserConnectionStatus.DoNotDisturb, Universal.Lang["sSTATUS_DND"] },
            { UserConnectionStatus.DoNotDisturbMobile, Universal.Lang["sSTATUS_DND_MOBILE"] },
            { UserConnectionStatus.Blocked, Universal.Lang["sSTATUS_BLOCKED"] },
            { UserConnectionStatus.Offline, Universal.Lang["sSTATUS_OFFLINE"] },
            {
                UserConnectionStatus.Unknown,
                Universal.Lang["sSTATUS_UNKNOWN"] /* fallback */
            },
        };

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            UserConnectionStatus statInt;

            if (!(value is UserConnectionStatus))
                return Universal.Lang["sTRAYHINT_USER_OFFLINE"];

            statInt = (UserConnectionStatus)value;

            return StatusMap.TryGetValue(statInt, out var statusText)
                ? statusText
                : Universal.Lang["sSTATUS_UNKNOWN"];
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            return Binding.DoNothing;
        }
    }

    public class ForwardedChecker : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values[1] is bool isForwarded && isForwarded)
                return !String.IsNullOrEmpty(values[0] as string)
                    ? values[0] + " (forwarded message)"
                    : "Forwarded message";

            return values[0];
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
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

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        ) => throw new NotSupportedException();
    }

    public class MsgIDToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value == null ? Visibility.Collapsed : Visibility.Visible;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            return Binding.DoNothing;
        }
    }

    public class NullDependentMargin : IValueConverter
    {
        public Thickness NotNullMargin { get; set; } = new Thickness(0, 5, 0, 0);

        public Thickness NullMargin { get; set; } = new Thickness(0);

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s))
                return NullMargin;
            else if (value == null)
                return NullMargin;
            else
                return NotNullMargin;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class ConnectionStatusConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is UserConnectionStatus stat)
            {
                return MainViewModel.GetIntFromStatus(stat);
            }
            return 0;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
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
                return MainViewModel.GetIntFromChannelType(chan);
            }
            return 0;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            return Binding.DoNothing;
        }
    }

    public class TextStatusConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values[1] is int count)
            {
                return count.ToString() + " members";
            }
            else
                return values[0] ?? String.Empty;
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotSupportedException();
        }
    }

    public class ReplyBodyConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (String.IsNullOrEmpty(value as string))
                return "[media]";
            string s = value.ToString();
            return s.Replace("\r", " ").Replace("\n", " ");
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotImplementedException();
        }
    }

    public class MsgIDMultiToVisibilityConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            if (values.Length < 2)
                return Visibility.Collapsed;

            return values[0] as string == values[1] as string
                ? Visibility.Hidden
                : Visibility.Visible;
        }

        public object[] ConvertBack(
            object value,
            Type[] targetTypes,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotSupportedException();
        }
    }

    public class NullDependentVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s))
                return Visibility.Collapsed;
            else if (value is Attachment[] && Helpers.RetrieveImageAttachment(value) == null)
                return Visibility.Collapsed;
            else if (value == null)
                return Visibility.Collapsed;
            else
                return Visibility.Visible;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            throw new NotImplementedException();
        }
    }

    public class NullDependentBoolean : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s))
                return false;
            else if (value == null)
                return false;
            else
                return true;
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
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
            else
                return Helpers.AssetPathGenerator(image_path, false);
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
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
            else
                return Helpers.AssetPathGenerator(image_path, true);
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
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
                return MainViewModel.GetIntFromStatus(dm.Partner.ConnectionStatus);
            }
            else if (value is Group)
            {
                return 21; // group icon index
            }
            return 0; // unknown status icon index
        }

        public object ConvertBack(
            object value,
            Type targetType,
            object parameter,
            CultureInfo culture
        )
        {
            return Binding.DoNothing;
        }
    }

    internal class Helpers
    {
        internal static byte[] RetrieveImageAttachment(object value)
        {
            Attachment[] arr = value as Attachment[];
            if (arr == null || arr.Length < 1 ||
     (arr[0].Type != AttachmentType.Image && arr[0].Type != AttachmentType.ThumbnailImage))
                return null;

            byte[] bytes = arr[0].File;
            if (bytes == null || bytes.Length == 0)
                return null;

            return bytes;
        }

        // Returns "pack://application:,,,/Skymu;component/{base}/Assets/{theme}/"
        // SkypeEra="Skyaeris6" always routes to Pontis/Assets/Light/.
        // Otherwise, ThemeRoot="Pontis/Light" routes to Pontis/Assets/Light/,
        // and a plain ThemeRoot like "Light" routes to Skyaeris/Assets/Light/.
        internal static string GetAssetBasePrefix()
        {
            if (Properties.Settings.Default.SkypeEra == "Skyaeris6")
                return "pack://application:,,,/Skymu;component/Pontis/Assets/Light/";
            string theme_root = Properties.Settings.Default.ThemeRoot;
            int slash = theme_root.IndexOf('/');
            if (slash >= 0)
            {
                string baseFolder = theme_root.Substring(0, slash);
                string themeFolder = theme_root.Substring(slash + 1);
                return $"pack://application:,,,/Skymu;component/{baseFolder}/Assets/{themeFolder}/";
            }
            return $"pack://application:,,,/Skymu;component/Skyaeris/Assets/{theme_root}/";
        }

        internal static BitmapImage AssetPathGenerator(string image_path, bool is_shared)
        {
            string packUri;
            if (is_shared)
            {
                packUri = $"pack://application:,,,/Skymu;component/Skyaeris/Assets/Universal/{image_path}";
            }
            else
            {
                packUri = GetAssetBasePrefix() + image_path;
            }
            return FrozenImage.Generate(packUri);
        }
    }

    public class SenderToHAlignConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string id && id == Universal.CurrentUser?.Identifier)
                return HorizontalAlignment.Right;
            return HorizontalAlignment.Left;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    public class SenderToBubbleColorConverter : IValueConverter
    {
        private static readonly SolidColorBrush SentColor =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#E5F7FD"));
        private static readonly SolidColorBrush ReceivedColor =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#C7EDFC"));

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string id && id == Universal.CurrentUser?.Identifier)
                return SentColor;
            return ReceivedColor;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    public class SeanKypeSidebarTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DirectMessageTemplate { get; set; }
        public DataTemplate GroupTemplate { get; set; }
        public DataTemplate ServerTemplate { get; set; }
        public DataTemplate ServerChannelTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item is ServerChannel) return ServerChannelTemplate;
            if (item is DirectMessage) return DirectMessageTemplate;
            if (item is Group) return GroupTemplate;
            if (item is Server) return ServerTemplate;
            return base.SelectTemplate(item, container);
        }
    }

    public class SenderToSentVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string id && id == Universal.CurrentUser?.Identifier)
                return Visibility.Visible;
            return Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    public class SenderToReceivedVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string id && id == Universal.CurrentUser?.Identifier)
                return Visibility.Collapsed;
            return Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    // Converts bool → Visibility: true=Hidden (keeps layout space), false=Visible.
    // Used to hide avatar/arrow in merged bubbles while preserving alignment.
    public class BoolToHiddenVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            => (value is bool b && b) ? Visibility.Hidden : Visibility.Visible;

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    // Converts bool → Visibility: true=Visible, false=Collapsed.
    public class BoolToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            => (value is bool b && b) ? Visibility.Visible : Visibility.Collapsed;

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    // Converts bool → Visibility: true=Collapsed, false=Visible.
    public class InverseBoolToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            => (value is bool b && b) ? Visibility.Collapsed : Visibility.Visible;

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => Binding.DoNothing;
    }

    public class MessageGroup
    {
        public ObservableCollection<Message> Messages { get; }
        public bool ShowSenderName { get; }
        public User Sender => Messages.Count > 0 ? Messages[0].Sender : null;
        public DateTime Time => Messages.Count > 0 ? Messages[Messages.Count - 1].Time : default(DateTime);

        public bool IsImageGroup
        {
            get
            {
                if (Messages.Count != 1 || Messages[0].Attachments == null) return false;
                foreach (var a in Messages[0].Attachments)
                    if (a.Type == AttachmentType.Image || a.Type == AttachmentType.ThumbnailImage) return true;
                return false;
            }
        }

        public MessageGroup(IList<Message> messages, bool showSenderName)
        {
            Messages = new ObservableCollection<Message>(messages);
            ShowSenderName = showSenderName;
        }
    }
}
