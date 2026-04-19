/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System;
using System.ComponentModel;
using System.Runtime.InteropServices;

namespace Skymu.Helpers
{
    public enum PlatformType
    {
        [Description("Unknown")]
        Unknown,

        [Description("Wine (Legacy)")]
        WineLegacy,

        [Description("Wine 10")]
        Wine10,

        [Description("Wine 11")]
        Wine11,

        [Description("Windows 2000")]
        Windows2000,

        [Description("Windows XP")]
        WindowsXP,

        [Description("Windows Vista")]
        WindowsVista,

        [Description("Windows 7")]
        Windows7,

        [Description("Windows 8")]
        Windows8,

        [Description("Windows 8.1")]
        Windows81,

        [Description("Windows 10")]
        Windows10,

        [Description("Windows 11")]
        Windows11,

        [Description("Future Windows")]
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
