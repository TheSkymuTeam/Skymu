using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Media;
using Avalonia.Platform;
using Avalonia.Skia;
using Avalonia.Threading;
using Avalonia.VisualTree;
using HarmonyLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
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

        public static void PresentSkinnedWindow(Window dialog)
        {
            if (dialog == null)
                return;

            dialog.ShowInTaskbar = false;
            dialog.Topmost = true;

            var owner = GetMainWindow();
            if (owner != null && owner.IsVisible && owner.IsEnabled && !ReferenceEquals(owner, dialog))
            {
                dialog.WindowStartupLocation = WindowStartupLocation.CenterOwner;
                dialog.Show(owner);
            }
            else
            {
                dialog.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                dialog.Show();
            }

            dialog.Activate();
            dialog.Focus();
            Dispatcher.UIThread.Post(
                () =>
                {
                    dialog.Activate();
                    dialog.Focus();
                    if (dialog is Forms.SkinnedWindow skinned && skinned.ButtonRight?.IsVisible == true)
                        skinned.ButtonRight.Focus();
                },
                DispatcherPriority.Input);
        }

        public static TextRenderingMode CurrentTextRenderingMode =>
            Skymu.Preferences.Settings.UseClearType
                ? TextRenderingMode.SubpixelAntialias
                : TextRenderingMode.Antialias;

        public static void UpdateTextRendering()
        {
            if (Application.Current == null)
                return;

            var mode = CurrentTextRenderingMode;
            Application.Current.Resources["AppTextRenderingMode"] = mode;

            if (Application.Current.ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
            {
                foreach (var window in desktop.Windows)
                    ApplyTextRenderingToTree(window, mode);
            }
        }

        public static void ApplyTextRenderingToTree(Visual root, TextRenderingMode? mode = null)
        {
            mode ??= CurrentTextRenderingMode;
            if (root is Control control)
                RenderOptions.SetTextRenderingMode(control, mode.Value);
            foreach (var child in root.GetVisualChildren())
                ApplyTextRenderingToTree(child, mode);
        }
    }
}