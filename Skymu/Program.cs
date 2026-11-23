using Avalonia;
using Skymu.AvaloniaTools;
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
                .With(new SkiaOptions
                {
                    MaxGpuResourceSizeBytes = 128L * 1024 * 1024 * 4
                })
                .With(new Win32PlatformOptions
                {
                    CompositionMode = new[] { Win32CompositionMode.RedirectionSurface }
                })
                //.AfterSetup(_ => GdiAdvancePatch.Install(new Harmony("skymu.gdi.advances")))
                .LogToTrace();
    }
}