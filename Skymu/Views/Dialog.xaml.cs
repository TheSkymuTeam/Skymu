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

using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu.Views
{
    public partial class Dialog : Window
    {
        private Action BLAction;
        private Action BRAction;
        public string TextBoxText { get; private set; }

        public Dialog(WindowBase.IconType type, string content, string header, string title = null, Action brAction = null, string brText = null, bool blEnabled = false, Action blAction = null, string blText = null, bool enableTextBox = false, BitmapImage img = null, Size? customDimensions = null)
        {
            try
            {
                InitializeComponent();

                if (img != null)
                {
                    tb.Visibility = Visibility.Collapsed;
                    BodyImg.Source = img;
                    BodyImg.Visibility = Visibility.Visible;
                }

                if (customDimensions != null)
                {
                    this.Width = customDimensions.Value.Width;
                    this.Height = customDimensions.Value.Height;
                }

                if (brAction == null) brAction = () => Close();
                if (blAction == null) blAction = () => { Close(); Universal.Terminate(); };
                if (blEnabled) { ButtonLeft.Visibility = Visibility.Visible; ButtonLeft.IsDefault = true; ButtonRight.IsDefault = false; };
                if (enableTextBox)
                {
                    DialogTextBox.Visibility = Visibility.Visible;
                    brAction = () =>
                    {
                        TextBoxText = DialogTextBox.Text;
                        DialogResult = true;
                    };
                    brText = brText ?? "Save";

                }
                if (title == null)
                {
                    title = Properties.Settings.Default.BrandingName;
                    switch (type)
                    {
                        case WindowBase.IconType.Information: title += " - Information"; break;
                        case WindowBase.IconType.Error: title += " - Error"; break;
                        case WindowBase.IconType.Question: title += " - Confirm action"; break;
                        case WindowBase.IconType.Picture: title += " - Media"; break;
                        case WindowBase.IconType.PackageCheckmark: case WindowBase.IconType.PackageStar: case WindowBase.IconType.PackageWarning: title += "™ - Update"; break;
                        default: case WindowBase.IconType.Skype: break;
                    }
                }

                Title = title;
                Header.Text = header;
                Description.Text = content;
                BRAction = brAction;
                BLAction = blAction;
                DialogImage.DefaultIndex = (int)type;
                if (blText != null) ButtonLeft.Content = blText;
                if (brText != null) ButtonRight.Content = brText;

                this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            }

            catch { Universal.Terminate(); }
        }

        private void bLClick(object sender, RoutedEventArgs e) { BLAction.Invoke(); }
        private void bRClick(object sender, RoutedEventArgs e) { BRAction.Invoke(); }
    }
}
