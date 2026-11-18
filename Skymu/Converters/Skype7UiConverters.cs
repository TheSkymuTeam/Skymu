using System;
using System.Collections.Generic;
using System.Globalization;
using Avalonia;
using Avalonia.Data.Converters;
using Avalonia.Media;
using Skymu;

namespace Skymu.Converters
{
    public sealed class IdentifierToSelfAvatarWidthConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var id = value as string;
            var isSelf = !string.IsNullOrEmpty(id) && id == Universal.CurrentUser?.Identifier;
            return isSelf ? 108.0 : 72.0;
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class NotSelfFromIdentifierConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var id = value as string;
            var isSelf = !string.IsNullOrEmpty(id) && id == Universal.CurrentUser?.Identifier;
            return !isSelf;
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class IdentifierToSelfBubbleBrushConverter : IValueConverter
    {
        private static readonly IBrush Incoming = new SolidColorBrush(Color.Parse("#C7EDFC"));
        private static readonly IBrush Outgoing = new SolidColorBrush(Color.Parse("#E5F7FD"));

        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var id = value as string;
            var isSelf = !string.IsNullOrEmpty(id) && id == Universal.CurrentUser?.Identifier;
            return isSelf ? Outgoing : Incoming;
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class IdentifierToSelfBubbleMarginConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var id = value as string;
            var isSelf = !string.IsNullOrEmpty(id) && id == Universal.CurrentUser?.Identifier;
            return isSelf ? new Thickness(0) : new Thickness(0, 0, 32, 0);
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class IsSelfFromIdentifierConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var id = value as string;
            return !string.IsNullOrEmpty(id) && id == Universal.CurrentUser?.Identifier;
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class CountGreaterThanZeroConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            var count = value switch
            {
                int i => i,
                long l => (int)l,
                uint u => (int)u,
                _ => 0
            };
            return count > 0;
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class CompactRecentsNameForegroundConverter : IMultiValueConverter
    {
        private static readonly IBrush Selected = new SolidColorBrush(Color.Parse("#1A1A1A"));
        private static readonly IBrush Unread = new SolidColorBrush(Color.Parse("#FF8C00"));
        private static readonly IBrush Read = new SolidColorBrush(Color.Parse("#2B2B30"));

        public object? Convert(IList<object?> values, Type targetType, object? parameter, CultureInfo culture)
        {
            var unread = values.Count > 0 && values[0] is int c && c > 0;
            var selected = values.Count > 1 && values[1] is true;
            if (selected)
                return Selected;
            return unread ? Unread : Read;
        }
    }

    public sealed class CompactGroupNameForegroundConverter : IMultiValueConverter
    {
        private static readonly IBrush Selected = new SolidColorBrush(Color.Parse("#1A1A1A"));
        private static readonly IBrush Unread = new SolidColorBrush(Color.Parse("#F07A1A"));
        private static readonly IBrush Read = new SolidColorBrush(Color.Parse("#2B2B30"));

        public object? Convert(IList<object?> values, Type targetType, object? parameter, CultureInfo culture)
        {
            var unread = values.Count > 0 && values[0] is int c && c > 0;
            var selected = values.Count > 1 && values[1] is true;
            if (selected)
                return Selected;
            return unread ? Unread : Read;
        }
    }

    public sealed class CompactRecentsFontWeightConverter : IMultiValueConverter
    {
        public object? Convert(IList<object?> values, Type targetType, object? parameter, CultureInfo culture)
        {
            var unread = values.Count > 0 && values[0] is int c && c > 0;
            var selected = values.Count > 1 && values[1] is true;
            return unread && !selected ? FontWeight.Bold : FontWeight.Normal;
        }
    }

    public sealed class ShowSenderAndNotSelfConverter : IMultiValueConverter
    {
        public object? Convert(IList<object?> values, Type targetType, object? parameter, CultureInfo culture)
        {
            var showSender = values.Count > 0 && values[0] is true;
            var isSelf = values.Count > 1 && values[1] is true;
            return showSender && !isSelf;
        }
    }

    public sealed class SelfMessageBubbleBrushConverter : IValueConverter
    {
        private static readonly IBrush Incoming = new SolidColorBrush(Color.Parse("#C7EDFC"));
        private static readonly IBrush Outgoing = new SolidColorBrush(Color.Parse("#E5F7FD"));

        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
            => value is true ? Outgoing : Incoming;

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class BoolToThicknessConverter : IValueConverter
    {
        public Thickness TrueThickness { get; set; }
        public Thickness FalseThickness { get; set; }

        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
            => value is true ? TrueThickness : FalseThickness;

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }

    public sealed class TextBoxHintVisibilityConverter : IMultiValueConverter
    {
        public object? Convert(IList<object?> values, Type targetType, object? parameter, CultureInfo culture)
        {
            var length = values.Count > 0 ? values[0] : null;
            var textLen = length switch
            {
                int i => i,
                string s => s?.Length ?? 0,
                _ => 1
            };
            var focused = values.Count > 1 && values[1] is true;
            return textLen == 0 && !focused;
        }
    }
}