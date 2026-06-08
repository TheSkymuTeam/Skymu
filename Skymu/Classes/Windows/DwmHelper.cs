/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System;
using System.Runtime.InteropServices;

namespace Skymu.Windows
{
    public class DwmHelper
    {
        [DllImport("dwmapi.dll", CharSet = CharSet.Unicode)]
        private static extern int DwmIsCompositionEnabled(out bool enabled);

        public static bool IsDwmEnabled()
        {
            if (Environment.OSVersion.Version.Major < 6)
                return false;

            bool enabled;
            return DwmIsCompositionEnabled(out enabled) == 0 && enabled;
        }
    }
}
