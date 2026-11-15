using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Media;
using Avalonia.Threading;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using static QRCoder.PayloadGenerator.SwissQrCode;

namespace Skymu.AvaloniaHelpers
{
    internal static class AHelpers
    {

        public static async Task SetClipboardText(string text)
        {
            if (GetMainWindow()?.Clipboard is { } clipboard)
                await clipboard.SetTextAsync(text);
        }

        public static void ShutdownApp()
        {
            ((IClassicDesktopStyleApplicationLifetime)Application.Current.ApplicationLifetime).Shutdown();
        }

        public static Window GetMainWindow()
        {
            return ((IClassicDesktopStyleApplicationLifetime)
                Application.Current.ApplicationLifetime).MainWindow;
        }

        public static void SetMainWindow(Window window)
        {
            ((IClassicDesktopStyleApplicationLifetime)
                Application.Current.ApplicationLifetime).MainWindow = window;
        }

        public static void UpdateTextRendering()
        {
            var resources = Application.Current.Resources;

            if (Skymu.Preferences.Settings  .UseClearType)
            {
                resources["AppTextRenderingMode"] = TextRenderingMode.SubpixelAntialias;
            }
            else
            {
                resources["AppTextRenderingMode"] = TextRenderingMode.Antialias;
            }
        }
    }

}