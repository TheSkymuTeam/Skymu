/*
The MIT License (MIT)

Copyright (c) 2015 Microsoft

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

using Skymu.Properties;
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
            var wp = Settings.Default.WindowPlacement;
            if (wp.Top != 0 ||
                wp.Left != 0 ||
                wp.Width != 0 ||
                wp.Height != 0 ||
                wp.sidebarWidth != 0)
            {
                return wp;
            } else
            {
                Debug.WriteLine("Window position not restoring, as one or more field(s) is/are set to 0");
            }
            return null;
        }

        public static void Save(Window window, ColumnDefinition sidebar)
        {
            Settings.Default.WindowPlacement = new WindowPlacement
            {
                Left = window.Left,
                Top = window.Top,
                Width = window.Width,
                Height = window.Height,
                sidebarWidth = sidebar.ActualWidth
            };
            Settings.Default.Save(); // Force save now. Otherwise, it simply refuses to save.
        }
    }
}
