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

using Skymu.Preferences;
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Controls;

namespace Skymu.Classes
{
    [Serializable]
    [StructLayout(LayoutKind.Sequential)]
    public struct WindowPlacement
    {
        public double Top;
        public double Left;
        public double Width;
        public double Height;
        public double sidebarWidth;
    };

    public class WindowPlacementHelper
    {
        public static WindowPlacement? Load(Window window, ColumnDefinition sidebar)
        {
            var wp = Settings.WindowPlacement;
            if (wp.Top != 0 ||
                wp.Left != 0 ||
                wp.Width != 0 ||
                wp.Height != 0 ||
                wp.sidebarWidth != 0)
            {
                return wp;
            }
            else
            {
                Debug.WriteLine("Window position not restoring, as one or more field(s) is/are set to 0");
            }
            return null;
        }

        public static void Save(Window window, ColumnDefinition sidebar)
        {
            Settings.WindowPlacement = new WindowPlacement
            {
                Left = window.Left,
                Top = window.Top,
                Width = window.Width,
                Height = window.Height,
                sidebarWidth = sidebar.ActualWidth
            };
            Settings.Save();
        }
    }
}