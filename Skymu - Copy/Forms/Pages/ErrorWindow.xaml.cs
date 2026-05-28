using System.Windows;
using System.Windows.Controls;

namespace Skymu.Views.Pages
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

        public void CopyToClipboard()
        {
            Clipboard.SetText(DetailsBox.Text);
        }
    }
}
