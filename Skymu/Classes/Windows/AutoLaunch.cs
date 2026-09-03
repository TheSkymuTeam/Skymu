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

using System;
using System.Diagnostics;
using Microsoft.Win32;

namespace Skymu.Native.Windows
{
    internal class AutoLaunch
    {
        private const string KEY = @"Software\Microsoft\Windows\CurrentVersion\Run";

        internal static bool Get()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(KEY, false))
            {
                object value = key.GetValue(Universal.NAME);

                if (value == null)
                {
                    return false;
                }

                string currentPath = "\"" + Process.GetCurrentProcess().MainModule.FileName + "\"";

                return string.Equals(
                    value.ToString(),
                    currentPath,
                    StringComparison.OrdinalIgnoreCase
                );
            }
        }

        internal static void Set(bool yes)
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(KEY, true))
            {
                if (yes)
                    key.SetValue(
                        Universal.NAME,
                        // TODO proper escapes? Although very rare if not never that we have to deal with it.
                        "\"" + Process.GetCurrentProcess().MainModule.FileName + "\""
                    );
                else
                    key.DeleteValue(Universal.NAME, false);
            }
        }
    }
}
