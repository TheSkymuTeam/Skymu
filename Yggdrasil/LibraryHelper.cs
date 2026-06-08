/*==========================================================*/
// Yggdrasil is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;

namespace Yggdrasil.Tools.Windows
{
    public class LibraryHelper
    {
        const uint LOAD_WITH_ALTERED_SEARCH_PATH = 0x00000008;

        [DllImport("kernel32", SetLastError = true, CharSet = CharSet.Unicode)]
        static extern IntPtr LoadLibraryEx(
            string lpFileName,
            IntPtr hFile,
            uint dwFlags
        );

        public static void ImportDllFromArchedFolder(string dll, string x86 = "x86", string x64 = "x64", string arm32 = "arm32", string arm64 = "arm64")
        {
            string arch;

            if (RuntimeInformation.ProcessArchitecture == Architecture.X64)
                arch = x64;
            else if (RuntimeInformation.ProcessArchitecture == Architecture.X86)
                arch = x86;
            else if (RuntimeInformation.ProcessArchitecture == Architecture.Arm64)
                arch = arm64;
            else if (RuntimeInformation.ProcessArchitecture == Architecture.Arm)
                arch = arm32;
            else
            {
                Debug.WriteLine($"[YGGDRASIL-TOOLS-WINDOWS] Could not load DLL: your runtime architecture is not supported by Yggdrasil.");
                throw new PlatformNotSupportedException();
            }

            string path = Path.Combine(Path.GetDirectoryName(Assembly.GetCallingAssembly().Location), arch, dll); // XXX Windows only!
            Debug.WriteLine($"[YGGDRASIL-TOOLS] Loading native DLL ({dll}) from path ({path})");
            IntPtr handle = LoadLibraryEx(
                path,
                IntPtr.Zero,
                LOAD_WITH_ALTERED_SEARCH_PATH
            );

            if (handle == IntPtr.Zero)
            {
                Debug.WriteLine($"[YGGDRASIL-TOOLS-WINDOWS] DLL not found. This probably means that binaries for your platform ({arch}) are not distributed with this plugin.");
                throw new DllNotFoundException(path);
            }
        }

    }
}
