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

using System;
using System.Windows;
using System.Windows.Media;

namespace Skymu
{
    // Dialog Types:
    // 0 = Default (Just Skype logo, use for messageboxes, etc)
    // 1 = Error
    // 2 = Warning
    // 3 = Quit Skype Dialog
    // 4 = Picture (use unknown)
    // 5 = Exception Handling
    // 6 = Not Implemented
    // 7 = Two-factor authentication

    public partial class Dialog : Window
    {
        private Action bLAction;
        private Action bRAction;
        public string TextBoxText { get; private set; }

        public Dialog(byte dialogType, string content = "Placeholder text", string header = "Placeholder text", bool autoShow = true)
        {
            try
            {
                InitializeComponent();

                foreach (var btn in new[] { buttonLeft, buttonRight })
                {
                    TextOptions.SetTextRenderingMode(btn, TextRenderingMode.ClearType);
                    TextOptions.SetTextFormattingMode(btn, TextFormattingMode.Display);
                    TextOptions.SetTextHintingMode(btn, TextHintingMode.Fixed);
                }

                DialogImage.DefaultIndex = TypeChooser(dialogType, content, header);

                try
                {
                    /*try
                    {
                        this.Owner = Application.Current.Windows.OfType<Window>().SingleOrDefault(x => x.IsActive);
                    }

                    catch
                    {
                        this.Owner = Application.Current.MainWindow;
                    }*/

                    this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                    if (autoShow)
                    {
                        this.ShowDialog();
                    }
                }

                catch { Application.Current.Shutdown(); } // to stop infinite exception loop in rare cases
            }

            catch { }
        }

        private void ExitStager()
        {
            this.Close();
            Application.Current.Shutdown();
        }

        private byte TypeChooser(byte dialogType, string content, string headerText)
        {
            switch (dialogType)
            {
                case 0:
                    Title = Properties.Settings.Default.BrandingName;
                    header.Text = headerText;
                    sub.Text = content;
                    buttonLeft.Visibility = Visibility.Hidden;
                    buttonRight.Content = "OK";
                    bRAction = () => Close();
                    return 0;

                case 1:
                    Title = Properties.Settings.Default.BrandingName + " Error";
                    header.Text = headerText;
                    sub.Text = content;
                    buttonLeft.Visibility = Visibility.Hidden;
                    buttonRight.Content = "Ignore";
                    bRAction = () => Close();
                    return 1;

                case 2:
                    Title = Properties.Settings.Default.BrandingName + " Warning";
                    header.Text = headerText;
                    sub.Text = content;
                    buttonLeft.Visibility = Visibility.Hidden;
                    buttonRight.Content = "Ignore";
                    bRAction = () => Close();
                    return 2;

                case 3:
                    Title = "Quit " + Properties.Settings.Default.BrandingName + "?";
                    header.Text = "Sure you want to quit " + Properties.Settings.Default.BrandingName + "?";
                    sub.Text =
                        "You won't be able to send or recieve instant\n" +
                        "messages and calls if you do.";
                    buttonLeft.Visibility = Visibility.Visible;
                    buttonLeft.Content = "Quit";
                    buttonRight.Content = "Cancel";
                    bLAction = () => { Close(); Application.Current.Shutdown(); };
                    bRAction = () => Close();
                    return 3;

                case 4:
                    Title = Properties.Settings.Default.BrandingName + " Picture";
                    header.Text = headerText;
                    sub.Text = content;
                    buttonLeft.Visibility = Visibility.Visible;
                    buttonLeft.Content = "Quit";
                    buttonRight.Content = "Cancel";
                    bLAction = () => Application.Current.Shutdown();
                    bRAction = () => Close();
                    return 4;

                case 5:
                    Title = "Skymu Exception Handling";
                    header.Text = "Exception thrown in " + Properties.Settings.Default.BrandingName;
                    sub.Text =
                        content +
                        "\n\nReport this (and any observable issues) on the Discord / GitHub.";
                    buttonLeft.Visibility = Visibility.Visible;
                    buttonLeft.Content = "Exit";
                    buttonRight.Content = "Ignore";
                    bLAction = () => Application.Current.Shutdown();
                    bRAction = () => Close();
                    return 1;

                case 6:
                    Title = "Warning";
                    header.Text = "Feature not implemented";
                    sub.Text =
                        content + " hasn't been added to Skymu yet.";
                    buttonLeft.Visibility = Visibility.Hidden;
                    buttonLeft.Content = "";
                    buttonRight.Content = "OK";
                    bLAction = () => Application.Current.Shutdown();
                    bRAction = () => Close();
                    return 2;

                case 7:
                    Title = Properties.Settings.Default.BrandingName + " Login";
                    header.Text = "Two-factor authentication required";
                    sub.Text = content + " has requested that you provide a 2FA code to log in. Please enter it below.";
                    DialogTextBox.Visibility = Visibility.Visible;
                    buttonLeft.Visibility = Visibility.Hidden;
                    buttonRight.Content = "Log In";
                    bRAction = () =>
                    {
                        TextBoxText = DialogTextBox.Text;
                        DialogResult = true;
                    };
                    return 2;
            }

            Title = "Fallback Dialog";
            header.Text = "DEVELOPER: Fallback Dialog";
            sub.Text =
                "Dialog window called but null or invalid\n" +
                "dialog type specified. Please correct your code.";
            buttonLeft.Visibility = Visibility.Visible;
            buttonLeft.Content = "Exit";
            buttonRight.Content = "Return";
            return 1;
        }


        private void bLClick(object sender, RoutedEventArgs e) { bLAction.Invoke(); }
        private void bRClick(object sender, RoutedEventArgs e) { bRAction.Invoke(); }
    }
}
