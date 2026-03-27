using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Win32;

#pragma warning disable CA1416

namespace Skymu
{
    internal class OS
    {
        private static bool _initialized;

        internal static void Initialize()
        {
            if (_initialized)
                return;
            _initialized = true;

            Properties.Settings.Default.PropertyChanged += Settings_PropertyChanged;
            Properties.Settings.Default.StartOnStartup = GetStartOnStartup();
        }

        private static void Settings_PropertyChanged(
            object sender,
            System.ComponentModel.PropertyChangedEventArgs e
        )
        {
            if (e.PropertyName == "StartOnStartup")
                SetSkymuStartOnComputerStart(Properties.Settings.Default.StartOnStartup);
        }

        private static bool GetStartOnStartup()
        {
            using (
                RegistryKey key = Registry.CurrentUser.OpenSubKey(
                    @"Software\Microsoft\Windows\CurrentVersion\Run",
                    false
                )
            )
            {
                if (key == null)
                    return false;

                object value = key.GetValue(Universal.Name);

                if (value == null)
                    return false;

                string currentPath = "\"" + Process.GetCurrentProcess().MainModule.FileName + "\"";

                return string.Equals(
                    value.ToString(),
                    currentPath,
                    StringComparison.OrdinalIgnoreCase
                );
            }
        }

        private static void SetSkymuStartOnComputerStart(bool toggle)
        {
            using (
                RegistryKey key = Registry.CurrentUser.OpenSubKey(
                    @"Software\Microsoft\Windows\CurrentVersion\Run",
                    true
                )
            )
            {
                if (toggle)
                    key.SetValue(
                        Universal.Name,
                        "\"" + Process.GetCurrentProcess().MainModule.FileName + "\""
                    );
                else
                    key.DeleteValue(Universal.Name, false);
            }
        }
    }
}
