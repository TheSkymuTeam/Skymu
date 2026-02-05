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
