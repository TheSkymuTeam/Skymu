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
            Information,
            Error,
            Question,
            Picture
        }

        public Dialog(Type type, string content, string header, string title = null, Action brAction = null, string brText = null, bool blEnabled = false, Action blAction = null, string blText = null, bool enableTextBox = false)
        {
            try
            {
                InitializeComponent();

                foreach (var btn in new[] { ButtonLeft, ButtonRight })
                {
                    TextOptions.SetTextRenderingMode(btn, TextRenderingMode.ClearType);
                    TextOptions.SetTextFormattingMode(btn, TextFormattingMode.Display);
                    TextOptions.SetTextHintingMode(btn, TextHintingMode.Fixed);
                }

                if (brAction is null) brAction = () => Close();
                if (blAction is null) blAction = () => { Close(); Application.Current.Shutdown(); };
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
                        case Type.Skype: break;
                    }
                }

                Title = title;
                Header.Text = header;
                Description.Text = content;
                BRAction = brAction;
                BLAction = blAction;
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
