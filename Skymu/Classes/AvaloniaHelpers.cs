using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Threading;

namespace Skymu.AvaloniaHelpers
{
    internal static class AHelpers
    {
        static IClassicDesktopStyleApplicationLifetime Desktop =>
            Application.Current?.ApplicationLifetime as IClassicDesktopStyleApplicationLifetime;

        public static Window MainWindow => Desktop?.MainWindow;
        public static IReadOnlyList<Window> Windows => Desktop?.Windows ?? new List<Window>();

        public static async Task SetClipboardText(string text)
        {
            if (MainWindow?.Clipboard is { } clipboard)
                await clipboard.SetTextAsync(text);
        }

        public static void ShutdownApp()
        {
            ((IClassicDesktopStyleApplicationLifetime)Application.Current.ApplicationLifetime).Shutdown();
        }
    }

}