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

        public static async Task SetClipboardText(string text)
        {
            if (((IClassicDesktopStyleApplicationLifetime)Universal.Current.ApplicationLifetime).MainWindow?.Clipboard is { } clipboard)
                await clipboard.SetTextAsync(text);
        }

        public static void ShutdownApp()
        {
            ((IClassicDesktopStyleApplicationLifetime)Application.Current.ApplicationLifetime).Shutdown();
        }
    }

}