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
using Skymu.Helpers;
using Skymu.ViewModels;

namespace Skymu.Views
{
    public partial class IncomingCall : Window
    {
        public EventHandler Answered;

        public IncomingCall(CallEventArgs e)
        {
            InitializeComponent();
            var animation = new DoubleAnimation
            {
                From = 0.8,
                To = 0.4,
                Duration = TimeSpan.FromSeconds(1.0),
                AutoReverse = true,
                RepeatBehavior = RepeatBehavior.Forever,
                EasingFunction = new SineEase { EasingMode = EasingMode.EaseInOut }
            };
            BeginAnimation(OpacityProperty, animation);
            Sounds.PlayLoop("call-in");
            if (e.Caller.ProfilePicture != null) CallerAvatar.Source = FrozenImage.GenerateFromArray(e.Caller.ProfilePicture);
            else CallerAvatar.Source = Universal.AnonymousAvatar;
            CallerName.Text = Universal.Lang.Format("sCALLNOTIF_TITLE", e.Caller.DisplayName);
        }

        private void OnClose(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            OnDecline(sender, e); // close does not minimize for now. TODO add this
        }

        private void OnAnswer(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Answered?.Invoke(this, new EventArgs());
            OnDecline(sender, e);
        }

        private void OnDecline(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Sounds.StopPlayback("call-in");
            Close();
        }
    }
}
