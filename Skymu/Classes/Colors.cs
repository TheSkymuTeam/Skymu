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

using System.Windows.Media;
using System.Windows;

namespace Skymu
{
    public static class Colors
    {
        // Brushes I'm mostly using for dark theme right now, but later the whole program will rely on
        public static SolidColorBrush darkBlue = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#1d3a55"));
        public static SolidColorBrush white = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#f4f4f4"));

        public static class Active
        {
            public static LinearGradientBrush Titlebar = new LinearGradientBrush
            {
                StartPoint = new Point(0, 0),
                EndPoint = new Point(0, 1),
                GradientStops = new GradientStopCollection
    {
        new GradientStop((Color)ColorConverter.ConvertFromString("#FF6B9DE0"), 0.0),
        new GradientStop((Color)ColorConverter.ConvertFromString("#f0f6fe"), 0.0634),
        new GradientStop((Color)ColorConverter.ConvertFromString("#d2e5fe"), 0.0667),
        new GradientStop((Color)ColorConverter.ConvertFromString("#8cbeff"), 1.0)
    }
            };

            public static LinearGradientBrush Window = new LinearGradientBrush
            {
                StartPoint = new Point(0, 0),
                EndPoint = new Point(0, 1),
                GradientStops = new GradientStopCollection
    {
        new GradientStop((Color)ColorConverter.ConvertFromString("#c5defe"), 0.0),
        new GradientStop((Color)ColorConverter.ConvertFromString("#8cbeff"), 0.12),
        new GradientStop((Color)ColorConverter.ConvertFromString("#8cbeff"), 1.0)
    }
            };

            public static SolidColorBrush Fill =
new SolidColorBrush((Color)ColorConverter.ConvertFromString("#8cbeff"));
        }
        public static class Inactive
        {

            public static LinearGradientBrush Titlebar = new LinearGradientBrush
            {
                StartPoint = new Point(0, 0),
                EndPoint = new Point(0, 1),
                GradientStops = new GradientStopCollection
    {
        new GradientStop((Color)ColorConverter.ConvertFromString("#f0f0f0"), 0.0),
new GradientStop((Color)ColorConverter.ConvertFromString("#f8f8f8"), 0.0634),
new GradientStop((Color)ColorConverter.ConvertFromString("#f4f4f4"), 0.0667),
        new GradientStop((Color)ColorConverter.ConvertFromString("#d7d7d7"), 1.0)
    }
            };



            public static LinearGradientBrush Window = new LinearGradientBrush
            {
                StartPoint = new Point(0, 0),
                EndPoint = new Point(0, 1),
                GradientStops = new GradientStopCollection
    {
        new GradientStop((Color)ColorConverter.ConvertFromString("#e8e8e8"), 0.0),
        new GradientStop((Color)ColorConverter.ConvertFromString("#d7d7d7"), 0.12),
        new GradientStop((Color)ColorConverter.ConvertFromString("#d7d7d7"), 1.0)
    }
            };



            public static SolidColorBrush Fill =
                new SolidColorBrush((Color)ColorConverter.ConvertFromString("#d7d7d7"));
        }

        public static class Fallback
        {
            public static SolidColorBrush FillPrimary = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#d4e2f2"));
            public static SolidColorBrush FillSecondary = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#f0f0f0"));
            public static SolidColorBrush FillTertiary = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#f7f7f7"));
        }
    }
}
