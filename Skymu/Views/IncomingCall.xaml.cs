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
        public CallEventArgs call;

        public IncomingCall(CallEventArgs e)
        {
            InitializeComponent();
            call = e;
            var animation = new DoubleAnimation
            { 
                From = 1,
                To = 0.7,
                Duration = TimeSpan.FromSeconds(1.5),
                AutoReverse = true,
                RepeatBehavior = RepeatBehavior.Forever,
                EasingFunction = new SineEase { EasingMode = EasingMode.EaseInOut }
            };
            BeginAnimation(OpacityProperty, animation);
            Sounds.PlayLoop("call-in");
            if (call.Caller.ProfilePicture != null) CallerAvatar.Source = FrozenImage.GenerateFromArray(call.Caller.ProfilePicture);
            else CallerAvatar.Source = Universal.AnonymousAvatar;
            CallerName.Text = Universal.Lang.Format("sCALLNOTIF_TITLE", call.Caller.DisplayName);
        }

        private void OnClose(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Sounds.StopPlayback("call-in");
            Close();
        }

        private void OnAnswer(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Answered?.Invoke(this, new EventArgs());
            Sounds.StopPlayback("call-in");
            Close();
        }

        private void OnDrag(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            var source = e.OriginalSource as DependencyObject;
            while (source != null)
            {
                if (source is FrameworkElement fe && (string)fe.Tag == "NoDrag") return;
                source = VisualTreeHelper.GetParent(source);
            }
            DragMove();
        }

        private void OnDecline(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Sounds.StopPlayback("call-in");
            _ = Universal.CallPlugin.DeclineCall(call.ConversationId);
            Sounds.Play("call-end", true);
            Close();
        }
    }
}
