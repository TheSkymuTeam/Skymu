/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu
{
    public static class Colors
    {
        // Brushes I'm mostly using for dark theme right now, but later the whole program will rely on
        public static SolidColorBrush darkBlue = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#1d3a55"));
        public static SolidColorBrush white = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#f4f4f4"));          
    }
}
