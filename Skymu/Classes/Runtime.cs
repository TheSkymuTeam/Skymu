using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Win32;

namespace Skymu.Helpers
{
    public enum PlatformType
    {
        Unknown,
        WineLegacy,
        Wine10,
        Wine11,
        Windows2000,
        WindowsXP,
        WindowsVista,
        Windows7,
        Windows8,
        Windows81,
        Windows10,
        Windows11,
        WindowsFuture,
    }

    class Runtime
    {
        [DllImport("ntdll.dll", SetLastError = true)]
        private static extern int RtlGetVersion(ref OSVERSIONINFOEX versionInfo);

        [StructLayout(LayoutKind.Sequential)]
        private struct OSVERSIONINFOEX
        {
            public int dwOSVersionInfoSize;
            public int dwMajorVersion;
            public int dwMinorVersion;
            public int dwBuildNumber;
            public int dwPlatformId;

            [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
            public string szCSDVersion;
            public short wServicePackMajor;
            public short wServicePackMinor;
            public short wSuiteMask;
            public byte wProductType;
            public byte wReserved;
        }

        public static PlatformType DetectOS()
        {
            string wineVersion = GetWineVersion();
            if (wineVersion != null)
            {
                if (int.TryParse(wineVersion.Split('.')[0], out int wineMajor))
                {
                    if (wineMajor >= 11)
                        return PlatformType.Wine11;
                    if (wineMajor >= 10)
                        return PlatformType.Wine10;
                }
                return PlatformType.WineLegacy;
            }

            var info = new OSVERSIONINFOEX();
            info.dwOSVersionInfoSize = Marshal.SizeOf(info);
            RtlGetVersion(ref info);

            int major = info.dwMajorVersion;
            int minor = info.dwMinorVersion;
            int build = info.dwBuildNumber;

            if (major > 10)
                return PlatformType.WindowsFuture;
            else if (major == 10)
            {
                if (build >= 22000)
                    return PlatformType.Windows11;
                return PlatformType.Windows10;
            }
            else if (major == 6)
            {
                if (minor == 3)
                    return PlatformType.Windows81;
                if (minor == 2)
                    return PlatformType.Windows8;
                if (minor == 1)
                    return PlatformType.Windows7;
                if (minor == 0)
                    return PlatformType.WindowsVista;
            }
            else if (major == 5)
            {
                if (minor >= 1)
                    return PlatformType.WindowsXP;
                if (minor == 0)
                    return PlatformType.Windows2000;
            }
            return PlatformType.Unknown;
        }

        public static int DetectNetVersion()
        {
            string description = RuntimeInformation.FrameworkDescription;
            if (description.StartsWith(".NET "))
            {
                string versionPart = description.Substring(5).Split('.')[0];
                if (int.TryParse(versionPart, out int major))
                    return major;
            }
            if (description.StartsWith(".NET Framework"))
            {
                string versionPart = description.Substring(15).Split('.')[0];
                if (int.TryParse(versionPart, out int major))
                    return major;
            }

            return 0; 
        }

        private static string GetWineVersion()
        {
            try
            {
                IntPtr ntdll = GetModuleHandle("ntdll.dll");
                if (ntdll == IntPtr.Zero)
                    return null;

                IntPtr proc = GetProcAddress(ntdll, "wine_get_version");
                if (proc == IntPtr.Zero)
                    return null;

                var del = Marshal.GetDelegateForFunctionPointer<WineGetVersionDelegate>(proc);
                return del();
            }
            catch
            {
                return null;
            }
        }

        [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
        private delegate string WineGetVersionDelegate();

        [DllImport("kernel32.dll", CharSet = CharSet.Auto)]
        private static extern IntPtr GetModuleHandle(string moduleName);

        [DllImport("kernel32.dll", CharSet = CharSet.Ansi, SetLastError = true)]
        private static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    }
}
