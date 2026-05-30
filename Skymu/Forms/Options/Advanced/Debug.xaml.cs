/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System.Windows.Controls;
using System.Windows.Navigation;

namespace Skymu.Views.OptionPages.Advanced
{
    public partial class Debug : Page
    {
        public Debug()
        {
            InitializeComponent();
        }

        private void OURL(object sender, RequestNavigateEventArgs e) => Universal.OpenUrl(e.Uri.AbsoluteUri);
    }
}