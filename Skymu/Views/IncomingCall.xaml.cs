/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Skymu.Preferences;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using Skymu.Formatting;
using System.Windows.Threading;
using MiddleMan;
using Skymu.ViewModels;

namespace Skymu.Views
{
    public partial class IncomingCall : Window
    {

        public IncomingCall(MessageRecievedEventArgs e, int durationSeconds = 5)
        {
           
            
        }

        private void CloseButton_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Close();
        }
    }
}
