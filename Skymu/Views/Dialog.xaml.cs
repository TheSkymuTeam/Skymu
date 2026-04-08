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
using Skymu.Preferences;
using System.Windows.Media.Imaging;

namespace Skymu.Views
{
    public partial class Dialog : Window
    {
        public Action BLAction;
        public Action BMAction;
        public Action BRAction;
        public string TextBoxText { get; private set; }

        public Dialog(
            WindowBase.IconType type,
            string content,
            string header,
            string title = null,
            Action brAction = null,
            string brText = null,
            bool blEnabled = false,
            Action blAction = null,
            string blText = null,
            bool enableTextBox = false,
            BitmapImage img = null,
            Size? customDimensions = null,
            bool bmEnabled = false,
            Action bmAction = null,
            string bmText = null,
            bool cbEnabled = false,
            string cbText = null
        )
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

                if (brAction == null)
                    brAction = () => Close();
                if (bmAction == null)
                    bmAction = () => Close();
                if (blAction == null)
                    blAction = () =>
                    {
                        Close();
                        Universal.Terminate();
                    };
                if (bmEnabled)
                    ButtonMiddle.Visibility = Visibility.Visible;
                if (blEnabled)
                {
                    ButtonLeft.Visibility = Visibility.Visible;
                    ButtonLeft.IsDefault = true;
                    ButtonRight.IsDefault = false;
                }
                if (cbEnabled)
                {
                    CheckBox.Visibility = Visibility.Visible;
                }
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
                    title = Settings.BrandingName;
                    switch (type)
                    {
                        case WindowBase.IconType.Information:
                            title += " - Information";
                            break;
                        case WindowBase.IconType.Error:
                            title += " - Error";
                            break;
                        case WindowBase.IconType.Question:
                            title += " - Confirm action";
                            break;
                        case WindowBase.IconType.Picture:
                            title += " - Media";
                            break;
                        case WindowBase.IconType.PackageCheckmark:
                        case WindowBase.IconType.PackageStar:
                        case WindowBase.IconType.PackageWarning:
                            title += "™ - Update";
                            break;
                        default:
                        case WindowBase.IconType.Skype:
                            break;
                    }
                }

                Title = title;
                Header.Text = header;
                Description.Text = content;
                BRAction = brAction;
                BMAction = bmAction;
                BLAction = blAction;
                DialogImage.DefaultIndex = Settings.NikoIcons ? (int)WindowBase.IconType.Niko : (int)type;
                if (blText != null)
                    ButtonLeft.Content = blText;
                if (bmText != null)
                    ButtonMiddle.Content = bmText;
                if (brText != null)
                    ButtonRight.Content = brText;
                if (cbText != null)
                    CheckBox.Content = cbText;

                this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            }
            catch
            {
                Universal.Terminate();
            }
        }

        private void bLClick(object sender, RoutedEventArgs e)
        {
            BLAction.Invoke();
        }

        private void bMClick(object sender, RoutedEventArgs e)
        {
            BMAction.Invoke();
        }

        private void bRClick(object sender, RoutedEventArgs e)
        {
            BRAction.Invoke();
        }
    }
}
