/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Skymu.Helpers;
using Skymu.Sounds;
using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using Yggdrasil;
using Yggdrasil.Bottles;

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
            if (_call.Caller.Avatar != null)
                CallerAvatar.Source = ImageHelper.GenerateFromArray(_call.Caller.Avatar);
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
            _ = ((ICall)_call.Caller.Core).DeclineCall(_call.ConversationId); // TODO: Anything better? This technically works but looks shit. I am talking about the call.Caller.Core and casting it.
            SoundManager.Play("HANGUP");
            Close();
        }
    }
}
