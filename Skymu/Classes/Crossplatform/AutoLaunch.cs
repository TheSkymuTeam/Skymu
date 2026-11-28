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
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;

namespace Skymu.Crossplatform
{
    internal class AutoLaunch
    {
        private const string KEY = @"Software\Microsoft\Windows\CurrentVersion\Run";

        internal static bool Get()
        {
            if (OperatingSystem.IsWindows())
                return GetWindows();
            if (OperatingSystem.IsMacOS())
                return GetMac();
            if (OperatingSystem.IsLinux() || OperatingSystem.IsFreeBSD())
                return GetXdg();
            return false;
        }

        internal static void Set(bool yes)
        {
            if (OperatingSystem.IsWindows())
                SetWindows(yes);
            else if (OperatingSystem.IsMacOS())
                SetMac(yes);
            else if (OperatingSystem.IsLinux() || OperatingSystem.IsFreeBSD())
                SetXdg(yes);
        }

        private static string GetExecutablePath()
        {
            return Process.GetCurrentProcess().MainModule.FileName;
        }

        private static string SafeName()
        {
            var sb = new StringBuilder();
            foreach (char c in Universal.NAME)
            {
                if (char.IsLetterOrDigit(c) || c == '-' || c == '_')
                    sb.Append(c);
            }
            return sb.Length == 0 ? "app" : sb.ToString();
        }

        private static bool GetWindows()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(KEY, false))
            {
                object value = key?.GetValue(Universal.NAME);

                if (value == null)
                {
                    return false;
                }

                string currentPath = "\"" + GetExecutablePath() + "\"";

                return string.Equals(
                    value.ToString(),
                    currentPath,
                    StringComparison.OrdinalIgnoreCase
                );
            }
        }

        private static void SetWindows(bool yes)
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(KEY, true))
            {
                if (yes)
                    key.SetValue(
                        Universal.NAME,
                        // TODO proper escapes? Although very rare if not never that we have to deal with it.
                        "\"" + GetExecutablePath() + "\""
                    );
                else
                    key.DeleteValue(Universal.NAME, false);
            }
        }

        private static string XdgDesktopFile()
        {
            string configHome = Environment.GetEnvironmentVariable("XDG_CONFIG_HOME");
            if (string.IsNullOrEmpty(configHome))
                configHome = Path.Combine(
                    Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                    ".config"
                );

            return Path.Combine(configHome, "autostart", SafeName() + ".desktop");
        }

        private static string XdgExecValue()
        {
            string path = GetExecutablePath()
                .Replace("\\", "\\\\")
                .Replace("\"", "\\\"")
                .Replace("`", "\\`")
                .Replace("$", "\\$")
                .Replace("%", "%%");

            return "\"" + path + "\"";
        }

        private static bool GetXdg()
        {
            string file = XdgDesktopFile();
            if (!File.Exists(file))
                return false;

            string expected = "Exec=" + XdgExecValue();

            foreach (string line in File.ReadAllLines(file))
            {
                if (string.Equals(line.Trim(), expected, StringComparison.Ordinal))
                    return true;
            }

            return false;
        }

        private static void SetXdg(bool yes)
        {
            string file = XdgDesktopFile();

            if (!yes)
            {
                if (File.Exists(file))
                    File.Delete(file);
                return;
            }

            Directory.CreateDirectory(Path.GetDirectoryName(file));

            string contents =
                "[Desktop Entry]\n"
                + "Type=Application\n"
                + "Name=" + Universal.NAME + "\n"
                + "Exec=" + XdgExecValue() + "\n"
                + "Terminal=false\n"
                + "X-GNOME-Autostart-enabled=true\n";

            File.WriteAllText(file, contents, new UTF8Encoding(false));
        }

        private static string MacLabel()
        {
            return "app." + Universal.NAME.ToLowerInvariant() + "." + SafeName();
        }

        private static string MacPlistFile()
        {
            return Path.Combine(
                Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
                "Library",
                "LaunchAgents",
                MacLabel() + ".plist"
            );
        }

        private static bool GetMac()
        {
            string file = MacPlistFile();
            if (!File.Exists(file))
                return false;

            string expected = "<string>" + SecurityElement.Escape(GetExecutablePath()) + "</string>";
            return File.ReadAllText(file).Contains(expected);
        }

        private static void SetMac(bool yes)
        {
            string file = MacPlistFile();

            if (!yes)
            {
                if (File.Exists(file))
                    File.Delete(file);
                return;
            }

            Directory.CreateDirectory(Path.GetDirectoryName(file));

            string contents =
                "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                + "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n"
                + "<plist version=\"1.0\">\n"
                + "<dict>\n"
                + "    <key>Label</key>\n"
                + "    <string>" + SecurityElement.Escape(MacLabel()) + "</string>\n"
                + "    <key>ProgramArguments</key>\n"
                + "    <array>\n"
                + "        <string>" + SecurityElement.Escape(GetExecutablePath()) + "</string>\n"
                + "    </array>\n"
                + "    <key>RunAtLoad</key>\n"
                + "    <true/>\n"
                + "</dict>\n"
                + "</plist>\n";

            File.WriteAllText(file, contents, new UTF8Encoding(false));
        }
    }
}