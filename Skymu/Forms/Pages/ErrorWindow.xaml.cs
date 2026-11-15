using System.Windows;
using Avalonia.Controls;
using Skymu.Avalonia;

namespace Skymu.Forms.Pages
{
    /// <summary>
    /// Interaction logic for ErrorWindow.xaml
    /// </summary>
    public partial class ErrorWindow : Page
    {
        public ErrorWindow(string text)
        {
            InitializeComponent();
            DetailsBox.Text = text;
        }

        public async void CopyToClipboard()
        {
            await AHelpers.SetClipboardText(DetailsBox.Text);
        }
    }
}
