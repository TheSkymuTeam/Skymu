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

using Avalonia;
using Avalonia.Animation;
using Avalonia.Animation.Easings;
using Avalonia.Controls;
using Avalonia.Input;
using Avalonia.Media;
using Avalonia.Styling;
using Skymu.Helpers;
using Skymu.Sounds;
using System;
using Yggdrasil.Bottles;
using Yggdrasil.Models;

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
            var animation = new Animation
            {
                Duration = TimeSpan.FromSeconds(1.5),
                IterationCount = IterationCount.Infinite,
                PlaybackDirection = PlaybackDirection.Alternate,
                Easing = new SineEaseInOut(),
                Children =
        {
            new KeyFrame { Cue = new Cue(0.0), Setters = { new Setter(OpacityProperty, 1.0) } },
            new KeyFrame { Cue = new Cue(1.0), Setters = { new Setter(OpacityProperty, 0.7) } },
        },
            };
            _ = animation.RunAsync(this);
            SoundManager.PlayLoop("CALL_IN");
            if (_call.Caller.Avatar != null)
                CallerAvatar.Source = ImageHelper.GenerateAvatarImageFromArray(_call.Caller.Avatar);
            else
                CallerAvatar.Source = Universal.AnonymousAvatar;
            CallerName.Text = Universal.Lang.Format("sCALLNOTIF_TITLE", _call.Caller.DisplayName);
        }

        private void OnClose(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;
            SoundManager.StopPlayback("CALL_IN");
            Close();
        }

        private void OnAnswer(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            Answered?.Invoke(this, new EventArgs());
            SoundManager.StopPlayback("CALL_IN");
            Close();
        }

        private void OnDrag(object sender, PointerPressedEventArgs e)
        {
            if (!e.GetCurrentPoint(this).Properties.IsLeftButtonPressed)
                return;

            var source = e.Source as Control;

            while (source != null)
            {
                if (source.Tag is string tag && tag == "NoDrag")
                    return;

                source = source.Parent as Control;
            }

            BeginMoveDrag(e);
        }

        private void OnDecline(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            SoundManager.StopPlayback("CALL_IN");
            _ = Universal.CallPlugin.DeclineCall(_call.Caller);
            SoundManager.Play("HANGUP");
            Close();
        }
    }
}
