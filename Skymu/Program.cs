using Avalonia;
using System;

namespace Skymu
{
    internal static class Program
    {
        [STAThread]
        public static void Main(string[] args)
        {
            DWriteGdiClassicHook.Install();
            BuildAvaloniaApp().StartWithClassicDesktopLifetime(args);
        }

        public static AppBuilder BuildAvaloniaApp() =>
            AppBuilder.Configure<Universal>()
                .UsePlatformDetect()
                .LogToTrace();
    }
}