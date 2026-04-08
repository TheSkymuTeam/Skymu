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
using Skymu.Preferences;

namespace Skymu.Views
{
    public partial class Options : Window
    {
        public Options(string brush)
        {
            InitializeComponent();
            Background = (SolidColorBrush)Application.Current.Resources[brush];
            LoadVisualSettings();
        }

        private void LoadVisualSettings()
        {
            if (Settings.WindowFrame == 0 && !Settings.FallbackFillColors)
            {
                RadioSkype.IsChecked = true;
            }
            else if (Settings.WindowFrame == 2 && Settings.FallbackFillColors)
            {
                RadioClassic.IsChecked = true;
            }
        }

        private void RadioSkype_Checked(object sender, RoutedEventArgs e)
        {
            Settings.WindowFrame = 0;
            Settings.FallbackFillColors = false;
        }

        private void RadioClassic_Checked(object sender, RoutedEventArgs e)
        {
            Settings.WindowFrame = 2;
            Settings.FallbackFillColors = true;
        }

        private void CarouselGrid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e) { }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void SaveButtonClick(object sender, RoutedEventArgs e)
        {
            Settings.Save();
            this.Close();
        }

        private void RestartButtonClick(object sender, RoutedEventArgs e)
        {
            Settings.Save();
            Universal.Restart();
        }

        private void ResetButtonClick(object sender, RoutedEventArgs e)
        {
            Settings.Reset();
            Settings.Save();
            LoadVisualSettings(); 
        }
    }
}