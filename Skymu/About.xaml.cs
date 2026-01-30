using System.Windows;

namespace Skymu
{
    /// <summary>
    /// Interaction logic for About.xaml
    /// </summary>
    public partial class About : Window
    {
        private bool _closing;
        public About()
        {
            InitializeComponent();

            PreviewMouseDown += (_, __) => RequestClose();
            Deactivated += (_, __) => RequestClose();
        }

        private void RequestClose()
        {
            if (_closing)
                return;

            _closing = true;
            Close();
        }
    }
}
