/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our license.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.ComponentModel;
using System.Windows.Media;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Skymu.Forms
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
            CancelEventHandler onClosing = null
        )
        {
            try
            {
                InitializeComponent();

                if (Universal.Theme == "Skype7" || Universal.Theme == "Skype6")
                {
                    GradientTop.Background = (SolidColorBrush)Application.Current.Resources["Metro.Strip.Background"];
                    GradientBottom.Background = (SolidColorBrush)Application.Current.Resources["Metro.Strip.Background"];
                }

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
                    brText = brText ?? Universal.Lang["sF_OPTIONS_BUTTON_SAVE"];
                }
                if (title == null)
                {
                    string caption = null;
                    switch (type)
                    {
                        default: // All dialogs without a specified or preset title will be "Skype - Information"
                        case WindowBase.IconType.Information:
                            caption = Universal.Lang["sF_INFORM_DEFAULT_CAPTION"];
                            break;
                        case WindowBase.IconType.Error:
                            caption = Universal.Lang["sLANGUAGE_ERROR_CAP"];
                            break;
                        case WindowBase.IconType.Question:
                            caption = Universal.Lang["sF_CONFIRM_DEFAULT_CAPTION"];
                            break;
                        case WindowBase.IconType.Facebook:
                            caption = Universal.Lang["sFLAMINGO_CAPTION"];
                            break;
                        case WindowBase.IconType.GroupVideoCall:
                            caption = Universal.Lang["sPREM_VIDEO_WEB_WINDOW_CAPTION"];
                            break;
                    }
                    title = Settings.BrandingName + " - " + Universal.Lang[caption];
                }

                Title = title;
                Header.Text = header;
                Description.Text = content;
                BRAction = brAction;
                BMAction = bmAction;
                BLAction = blAction;
                if (onClosing != null)
                    Closing += onClosing;
                DialogImage.DefaultIndex = Settings.NikoIcons ? (int)WindowBase.IconType.Niko : (int)type;
                if (blText != null)
                    ButtonLeft.Content = blText;
                if (bmText != null)
                    ButtonMiddle.Content = bmText;
                if (brText != null)
                    ButtonRight.Content = brText;

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
