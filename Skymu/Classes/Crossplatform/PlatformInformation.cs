/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Microsoft.Win32;
using System;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;

namespace Skymu.Crossplatform
{
    public enum OS
    {
        Unknown,
        Windows,
        Linux,
        MacOS,
        FreeBSD
    }

    public enum DisplayServer
    {
        Unspecified,
        X11,
        Wayland
    }

    public class Platform
    {
        public OS OS { get; }

        // The display name as reported by the operating system (e.g. "Windows 11 Pro",
        // "Ubuntu 24.04 LTS", "macOS 14.5").
        public string OSDisplayName { get; }

        // The real NT version (e.g. 10.0, 6.1, 5.1) on Windows; 0.0 everywhere else.
        public double NTVersion { get; }

        // Either X11 or Wayland on Linux/FreeBSD when it can be determined; Unspecified if not.
        public DisplayServer DisplayServer { get; }

        // True only on Windows NT 6.0+ (Vista and later) when DWM composition is enabled.
        // Always false on older Windows and on other operating systems.
        public bool DwmIsCompositionEnabled { get; }

        public int NetVersion { get; }

        public Platform(
            OS os,
            string osDisplayName,
            double ntVersion,
            DisplayServer displayServer,
            int netVersion,
            bool isDwmEnabled = false
        )
        {
            OS = os;
            OSDisplayName = osDisplayName;
            NTVersion = ntVersion;
            DisplayServer = displayServer;
            NetVersion = netVersion;
            DwmIsCompositionEnabled = isDwmEnabled;
        }
    }

    class Runtime
    {
        [DllImport("ntdll.dll", SetLastError = true)]
        private static extern int RtlGetVersion(ref OSVERSIONINFOEX versionInfo);

        [DllImport("dwmapi.dll")]
        private static extern int DwmIsCompositionEnabled(out bool enabled);

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

        public static Platform GetPlatformInfo()
        {
            if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
                return DetectWindows();

            if (RuntimeInformation.IsOSPlatform(OSPlatform.Linux))
                return new Platform(OS.Linux, GetLinuxDisplayName(), 0.0, DetectDisplayServer(), GetDotNetVersionNumber());

            if (RuntimeInformation.IsOSPlatform(OSPlatform.OSX))
                return new Platform(OS.MacOS, GetMacDisplayName(), 0.0, DisplayServer.Unspecified, GetDotNetVersionNumber());

            if (RuntimeInformation.IsOSPlatform(OSPlatform.Create("FREEBSD")))
                return new Platform(
                    OS.FreeBSD,
                    RuntimeInformation.OSDescription,
                    0.0,
                    DetectDisplayServer(),
                    GetDotNetVersionNumber()
                );

            return new Platform(
                OS.Unknown,
                RuntimeInformation.OSDescription,
                0.0,
                DisplayServer.Unspecified,
                GetDotNetVersionNumber()
            );
        }

        private static Platform DetectWindows()
        {
            var info = new OSVERSIONINFOEX();
            info.dwOSVersionInfoSize = Marshal.SizeOf(info);
            RtlGetVersion(ref info);

            double ntVersion = double.Parse(
                info.dwMajorVersion.ToString(CultureInfo.InvariantCulture)
                    + "."
                    + info.dwMinorVersion.ToString(CultureInfo.InvariantCulture),
                CultureInfo.InvariantCulture
            );

            return new Platform(
                OS.Windows,
                GetWindowsDisplayName(info.dwBuildNumber),
                ntVersion,
                DisplayServer.Unspecified,
                GetDotNetVersionNumber(),
                ntVersion >= 6.0 && IsDwmCompositionEnabled()
            );
        }

        private static bool IsDwmCompositionEnabled()
        {
            try
            {
                return DwmIsCompositionEnabled(out bool enabled) == 0 && enabled;
            }
            catch
            {
                return false;
            }
        }

        private static string GetWindowsDisplayName(int build)
        {
            string name = null;

            try
            {
                using (
                    var key = Registry.LocalMachine.OpenSubKey(
                        @"SOFTWARE\Microsoft\Windows NT\CurrentVersion"
                    )
                )
                {
                    name = key?.GetValue("ProductName") as string;
                }
            }
            catch { }

            if (string.IsNullOrWhiteSpace(name))
                return RuntimeInformation.OSDescription;

            // Windows 11 still reports "Windows 10 ..." as its ProductName in the registry.
            // Genuinely fuck yourself third party developers who checked version based on this string.
            if (build >= 22000 && name.StartsWith("Windows 10", StringComparison.Ordinal))
                name = "Windows 11" + name.Substring("Windows 10".Length);

            return name.Trim();
        }

        private static string GetLinuxDisplayName()
        {
            string pretty = ReadOsReleaseValue("PRETTY_NAME");
            if (!string.IsNullOrWhiteSpace(pretty))
                return pretty;

            string name = ReadOsReleaseValue("NAME");
            string version = ReadOsReleaseValue("VERSION");
            if (!string.IsNullOrWhiteSpace(name))
                return string.IsNullOrWhiteSpace(version) ? name : name + " " + version;

            return RuntimeInformation.OSDescription;
        }

        private static string ReadOsReleaseValue(string key)
        {
            foreach (string path in new[] { "/etc/os-release", "/usr/lib/os-release" })
            {
                try
                {
                    if (!File.Exists(path))
                        continue;

                    foreach (string line in File.ReadLines(path))
                    {
                        if (line.StartsWith(key + "=", StringComparison.Ordinal))
                            return line.Substring(key.Length + 1).Trim().Trim('"', '\'');
                    }
                }
                catch { }
            }

            return null;
        }

        private static string GetMacDisplayName()
        {
            try
            {
                string xml = File.ReadAllText("/System/Library/CoreServices/SystemVersion.plist");
                string product = ReadPlistString(xml, "ProductName");
                string version = ReadPlistString(xml, "ProductVersion");

                if (!string.IsNullOrWhiteSpace(product))
                    return string.IsNullOrWhiteSpace(version) ? product : product + " " + version;
            }
            catch { }

            return RuntimeInformation.OSDescription;
        }

        private static string ReadPlistString(string xml, string key)
        {
            var match = Regex.Match(
                xml,
                "<key>" + Regex.Escape(key) + @"</key>\s*<string>(.*?)</string>",
                RegexOptions.Singleline
            );
            return match.Success ? match.Groups[1].Value.Trim() : null;
        }

        private static DisplayServer DetectDisplayServer()
        {
            string session = Environment.GetEnvironmentVariable("XDG_SESSION_TYPE");

            if (string.Equals(session, "wayland", StringComparison.OrdinalIgnoreCase))
                return DisplayServer.Wayland;
            if (string.Equals(session, "x11", StringComparison.OrdinalIgnoreCase))
                return DisplayServer.X11;

            if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("WAYLAND_DISPLAY")))
                return DisplayServer.Wayland;
            if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("DISPLAY")))
                return DisplayServer.X11;

            return DisplayServer.Unspecified;
        }

        private static int GetDotNetVersionNumber()
        {
            string description = RuntimeInformation.FrameworkDescription;

            if (description.StartsWith(".NET Framework")) // TODO(LEGACY): remove? This shouldn't apply anymore
            {
                string versionPart = description.Substring(15).Split('.')[0];
                if (int.TryParse(versionPart, out int major))
                    return major;
            }
            else if (description.StartsWith(".NET"))
            {
                string versionPart = description.Substring(5).Split('.')[0];
                if (int.TryParse(versionPart, out int major))
                    return major;
            }

            return 0;
        }
    }
}