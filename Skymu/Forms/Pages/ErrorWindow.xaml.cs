using System.Windows;
using System.Windows.Controls;

namespace Skymu.Forms.Pages
{
    /// <summary>
    /// Interaction logic for ErrorWindow.xaml
    /// </summary>
    public partial class ErrorWindow : Page
    {
        public ErrorWindow(string text, string context = null)
        {
            InitializeComponent();
            DetailsBox.Text = text;
            if (!string.IsNullOrEmpty(context))
                ContextBlock.Text = context;
        }

        public void CopyToClipboard()
        {
            Clipboard.SetText(DetailsBox.Text);
        }
    }
}
