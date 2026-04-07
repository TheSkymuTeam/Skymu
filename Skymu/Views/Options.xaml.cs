/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace Skymu.Views
{
    public partial class Options : Window
    {
        public Options(string background_hex)
        {
            InitializeComponent();
            Background = (Brush)new BrushConverter().ConvertFrom(background_hex);
            LoadVisualSettings();
        }

        private void LoadVisualSettings()
        {
            var settings = Properties.Settings.Default;

            if (settings.WindowFrame == 0 && !settings.FallbackFillColors)
            {
                RadioSkype.IsChecked = true;
            }
            else if (settings.WindowFrame == 2 && settings.FallbackFillColors)
            {
                RadioClassic.IsChecked = true;
            }
        }

        private void RadioSkype_Checked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.WindowFrame = 0;
            Properties.Settings.Default.FallbackFillColors = false;
        }

        private void RadioClassic_Checked(object sender, RoutedEventArgs e)
        {
            Properties.Settings.Default.WindowFrame = 2;
            Properties.Settings.Default.FallbackFillColors = true;
        }

        private void CarouselGrid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { }

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
            LoadVisualSettings(); 
        }
    }
}