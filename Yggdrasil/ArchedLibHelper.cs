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
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Yggdrasil.Tools.Windows
{
    public class ArchedLibHelper
    {
        const uint LOAD_WITH_ALTERED_SEARCH_PATH = 0x00000008;

        [DllImport("kernel32", SetLastError = true, CharSet = CharSet.Unicode)]
        static extern IntPtr LoadLibraryEx(
            string lpFileName,
            IntPtr hFile,
            uint dwFlags
        );

        public static void ImportLibraryFromPath(string library, string x86_suffix = "32", string x64_suffix = "64",  string arm64_suffix = "arm64")
        {
            string arch;

            if (RuntimeInformation.ProcessArchitecture == Architecture.X64)
                arch = x64_suffix;
            else if (RuntimeInformation.ProcessArchitecture == Architecture.X86)
                arch = x86_suffix;
            else if (RuntimeInformation.ProcessArchitecture == Architecture.Arm64)
                arch = arm64_suffix;
            else
                throw new PlatformNotSupportedException();

            library += arch;
            string dll = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), library);
            Debug.WriteLine($"[YGGDRASIL-TOOLS] Loading the native DLL ({library}) from path ({dll})");
            IntPtr handle = LoadLibraryEx(
                dll,
                IntPtr.Zero,
                LOAD_WITH_ALTERED_SEARCH_PATH
            );

            if (handle == IntPtr.Zero)
                throw new DllNotFoundException(dll);
        }
    }
}
