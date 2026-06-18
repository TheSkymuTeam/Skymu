/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Helpers;
using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using Yggdrasil.Models;
using Yggdrasil.Bottles;
using Skymu.Sounds;

namespace Skymu.Forms
{
    public partial class IncomingCall : Window
    {
        public EventHandler Answered;
        private readonly CallBottle _call;

        public IncomingCall(CallBottle e)
        {
            InitializeComponent();
            _call = e;
            var animation = new DoubleAnimation
            {
                From = 1,
                To = 0.7,
                Duration = TimeSpan.FromSeconds(1.5),
                AutoReverse = true,
                RepeatBehavior = RepeatBehavior.Forever,
                EasingFunction = new SineEase { EasingMode = EasingMode.EaseInOut },
            };
            BeginAnimation(OpacityProperty, animation);
            SoundManager.PlayLoop("CALL_IN");
            if (_call.Caller.ProfilePicture != null)
                CallerAvatar.Source = ImageHelper.GenerateFromArray(_call.Caller.ProfilePicture);
            else
                CallerAvatar.Source = Universal.AnonymousAvatar;
            CallerName.Text = Universal.Lang.Format("sCALLNOTIF_TITLE", _call.Caller.DisplayName);
        }

        private void OnClose(object sender, MouseButtonEventArgs e)
        {
            SoundManager.StopPlayback("CALL_IN");
            Close();
        }

        private void OnAnswer(object sender, MouseButtonEventArgs e)
        {
            Answered?.Invoke(this, new EventArgs());
            SoundManager.StopPlayback("CALL_IN");
            Close();
        }

        private void OnDrag(object sender, MouseButtonEventArgs e)
        {
            var source = e.OriginalSource as DependencyObject;
            while (source != null)
            {
                if (source is FrameworkElement fe && (string)fe.Tag == "NoDrag")
                    return;
                source = VisualTreeHelper.GetParent(source);
            }
            DragMove();
        }

        private void OnDecline(object sender, MouseButtonEventArgs e)
        {
            SoundManager.StopPlayback("CALL_IN");
            _ = Universal.CallPlugin.DeclineCall(_call.ConversationId);
            SoundManager.Play("HANGUP");
            Close();
        }
    }
}
