using Avalonia;
using Avalonia.Controls;
using Skymu.AvaloniaHelpers;

namespace Skymu.Forms.Pages
{
    /// <summary>
    /// Interaction logic for ErrorWindow.xaml
    /// </summary>
    public partial class ErrorWindow : UserControl
    {
        public ErrorWindow() { InitializeComponent(); }   
        public ErrorWindow(string text) : this()
        {
            DetailsBox.Text = text;
        }

        public async void CopyToClipboard()
        {
            await AHelpers.SetClipboardText(DetailsBox.Text);
        }
    }
}
