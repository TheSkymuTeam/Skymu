/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using Microsoft.Win32;
using Skymu.Preferences;
using System;
using System.Diagnostics;

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

            Settings.Default.PropertyChanged += Settings_PropertyChanged;
            Settings.StartOnStartup = GetStartOnStartup();
        }

        private static void Settings_PropertyChanged(
            object sender,
            System.ComponentModel.PropertyChangedEventArgs e
        )
        {
            if (e.PropertyName == "StartOnStartup")
                SetSkymuStartOnComputerStart(Settings.StartOnStartup);
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

        private static void SetSkymuStartOnComputerStart(bool yes)
        {
            using (
                RegistryKey key = Registry.CurrentUser.OpenSubKey(
                    @"Software\Microsoft\Windows\CurrentVersion\Run",
                    true
                )
            )
            {
                if (yes)
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
