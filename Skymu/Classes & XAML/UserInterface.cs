/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

/*==========================================================*/
// IMPORTANT INFORMATION FOR DEVELOPERS, PROJECT MAINTAINERS
// AND CONTRIBUTORS TO SKYMU, CONCERNING THIS PARTICULAR FILE
/*==========================================================*/
// The following code is considered legacy. Its (prior) functions
// have been migrated to XAML with the newer SliceControl.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu
{
    public static class UI
    {
        // Change this bool to true for a dark theme
        public static bool darkTheme = false;

        // Brushes I'm mostly using for dark theme right now, but later the whole program will rely on
        public static SolidColorBrush darkBlue = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#1d3a55"));
        public static SolidColorBrush white = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#f4f4f4"));

        public static void themeSetterLogin()
        {
            if (darkTheme) // checks if Dark theme is enabled
            {
                Login.Instance.footerPanel.Fill = darkBlue;
                Login.Instance.LoginButton.TextColor = white;
                Login.Instance.SkypeName.Foreground = white;
                Login.Instance.Password.Foreground = white;
                Login.Instance.autoSignInCheck.Foreground = white;
                Login.Instance.startupSeanKypeCheck.Foreground = white;
            }
        }          

    }
}
