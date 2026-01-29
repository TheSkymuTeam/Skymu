using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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
