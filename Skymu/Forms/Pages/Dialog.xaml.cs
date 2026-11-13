using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Skymu.Forms.Pages
{
    public partial class Dialog : Page
    {
        // The frame window
        public WindowBase window;
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
    FrameworkElement img = null,
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

                window = new WindowBase(this)
                {
                    MaxHeight = 800,
                    MinHeight = 225,
                    Width = 373,
                    Height = 539, 
                    ResizeMode = ResizeMode.NoResize,
                    SizeToContent = SizeToContent.Height,
                    Title = "Dialog",
                    ButtonLeftText = Universal.Lang["sZAPBUTTON_CLOSE"],
                    ButtonRightText = Universal.Lang["sF_CONFIRM_OK_BTN"]
                };

                window.ButtonLeft.Visibility = Visibility.Collapsed;

                if (img != null)
                {
                    tb.Visibility = Visibility.Collapsed;
                    BodyCC.Content = img;
                    BodyCC.Visibility = Visibility.Visible;
                }

                if (customDimensions != null)
                {
                    this.Width = customDimensions.Value.Width;
                    this.Height = customDimensions.Value.Height;
                }

                if (brAction == null)
                    brAction = () => window.Close();
                if (bmAction == null)
                    bmAction = () => window.Close();
                if (blAction == null)
                    blAction = () =>
                    {
                        window.Close();
                        Universal.Terminate();
                    };
                if (bmEnabled)
                    window.ButtonMiddle.Visibility = Visibility.Visible;
                if (blEnabled)
                {
                    window.ButtonLeft.Visibility = Visibility.Visible;
                    window.ButtonLeft.IsDefault = true;
                    window.ButtonRight.IsDefault = false;
                }
                if (cbEnabled)
                {
                    window.DialogCheckBox.Visibility = Visibility.Visible;
                }
                if (enableTextBox)
                {
                    window.DialogTextBox.Visibility = Visibility.Visible;
                    brAction = () =>
                    {
                        TextBoxText = window.DialogTextBox.Text;
                        window.DialogResult = true;
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

                window.Title = title;
                window.Header.Text = header;
                Description.Text = content;
                window.ButtonRightAction = brAction;
                window.ButtonMiddleAction = bmAction;
                window.ButtonLeftAction = blAction;
                if (onClosing != null)
                    window.Closing += onClosing;
                window.HeaderImage.DefaultIndex = Settings.NikoIcons ? (int)WindowBase.IconType.Niko : (int)type;
                if (blText != null)
                    window.ButtonLeft.Content = blText;
                if (bmText != null)
                    window.ButtonMiddle.Content = bmText;
                if (brText != null)
                    window.ButtonRight.Content = brText;

                window.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            }
            catch
            {
                Universal.Terminate();
            }
        }

        public void Close()
        {
            window.Close();
        }

        public void Show()
        {
            window.Show();
        }

        public bool? ShowDialog()
        {
            return window.ShowDialog();
        }

        public void SetRightButtonAsDefault()
        {
            window.ButtonLeft.IsDefault = false;
            window.ButtonRight.IsDefault = true;
        }

        public bool? IsCheckBoxTicked()
        {
            return window.DialogCheckBox.IsChecked;
        }
    }
}
