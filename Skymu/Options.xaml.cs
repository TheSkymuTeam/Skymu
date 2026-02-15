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
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;

namespace Skymu
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Options : Window
    {
        public Options()
        {
            InitializeComponent();
        }

        private void CarouselGrid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void SaveButtonClick(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.Save();
            this.Close();
        }

        private void RestartButtonClick(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.Save();
            Universal.Restart();
        }

        private void ResetButtonClick(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.Reset();
            Properties.Settings.Default.Save();
        }
    }

    public class StringToDoubleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is double doubleValue)
            {
                return doubleValue.ToString(CultureInfo.InvariantCulture);
            }
            return "30";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string stringValue && double.TryParse(stringValue, NumberStyles.Float, CultureInfo.InvariantCulture, out double result))
            {
                return result;
            }
            return 30.0; // Default fallback
        }
    }
}
