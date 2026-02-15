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
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu
{
    public partial class Dialog : Window
    {
        private Action BLAction;
        private Action BRAction;
        public string TextBoxText { get; private set; }

        public enum Type
        {
            Skype,
            Error,
            Information,
            Question,
            Picture,
            ContactAdd,
            ContactSearch,
            ContactBlocked,
            Chat,
            NewChat,
            Video,
            VideoWarning,
            SkypeWifi,
            SkypeWifiWarning,
            GroupChat,
            PackageCheckmark,
            PackageStar,
            PackageWarning,
            MultipleContactCall,
            ContactRequest,
            ContactFlat,
            UploadFile,
            SkypeOut,
            PayPal,
            SkypeCredit,
            eBay,
            Facebook,
            MultipleContactVideoCall,
            TelephoneFlat
        }

        public Dialog(Type type, string content, string header, string title = null, Action brAction = null, string brText = null, bool blEnabled = false, Action blAction = null, string blText = null, bool enableTextBox = false, BitmapImage img = null, Size? customDimensions = null)
        {
            try
            {
                InitializeComponent();

                if (img is not null)
                {
                    tb.Visibility = Visibility.Collapsed;
                    BodyImg.Source = img;
                    BodyImg.Visibility = Visibility.Visible;
                }

                if (customDimensions is not null)
                {
                    this.Width = customDimensions.Value.Width;
                    this.Height = customDimensions.Value.Height;
                }

                brAction ??= () => Close();
                blAction ??= () => { Close(); Application.Current.Shutdown(); };
                if (blEnabled) ButtonLeft.Visibility = Visibility.Visible;
                if (enableTextBox)
                {
                    DialogTextBox.Visibility = Visibility.Visible;
                    brAction ??= () =>
                    {
                        TextBoxText = DialogTextBox.Text;
                        DialogResult = true;
                    };
                    brText ??= "Save";

                }
                if (title is null)
                {
                    title = Properties.Settings.Default.BrandingName;
                    switch (type)
                    {
                        case Type.Information: title += " - Information"; break;
                        case Type.Error: title += " - Error"; break;
                        case Type.Question: title += " - Confirm action"; break;
                        case Type.Picture: title += " - Media"; break;
                        case Type.PackageCheckmark: case Type.PackageStar: case Type.PackageWarning: title += "™ - Update"; break;
                        default: case Type.Skype: break;
                    }
                }

                Title = title;
                Header.Text = header;
                Description.Text = content;
                BRAction = brAction;
                BLAction = blAction;
                DialogImage.DefaultIndex = (int)type;
                if (blText is not null) ButtonLeft.Content = blText;
                if (brText is not null) ButtonRight.Content = brText;

                this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            }

            catch { Application.Current.Shutdown(); }
        }

        private void bLClick(object sender, RoutedEventArgs e) { BLAction.Invoke(); }
        private void bRClick(object sender, RoutedEventArgs e) { BRAction.Invoke(); }
    }
}
