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
using System.Threading;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using MiddleMan;
using Skymu.Helpers;

namespace Skymu.Views
{
    public partial class CallScreen : Page
    {
        private BitmapImage pill,
            rectangle,
            logo_small,
            logo_big,
            unmuted,
            muted,
            chat_active,
            chat_inactive,
            sidebar_expand,
            sidebar_collapse,
            screen_contract,
            screen_expand;
        private bool isPillMode;
        private bool isLogoBig;
        private bool isMuted;
        private bool _silent;
        private bool _hangUpRequested = false;
        private ActiveCall _call;
        private LocationChangeEventArgs location;
        private DispatcherTimer _callTimer;
        private TimeSpan _callElapsed;

        public CallScreen(
            User partner,
            CallScreen.LocationChangeEventArgs initial_location,
            bool silent = false
        )
        {
            InitializeComponent();
            if (Universal.CurrentUser.ProfilePicture != null)
                MyAvatar.Source = FrozenImage.GenerateFromArray(Universal.CurrentUser.ProfilePicture);
            if (partner.ProfilePicture != null)
                PartnerAvatar.Source = FrozenImage.GenerateFromArray(partner.ProfilePicture);
            _silent = silent;
            if (_silent) CallStatus.Text = Universal.Lang["sF_OPTIONS_SOUNDS_CONNECTING"];
            MyAvatar.Source = FrozenImage.GenerateFromArray(Universal.CurrentUser.ProfilePicture);
            PartnerAvatar.Source = FrozenImage.GenerateFromArray(partner.ProfilePicture);
            PartnerDisplayName.Text = partner.DisplayName;
            isMuted = true;

            const string prefix = // TODO make less repetitive
                "pack://application:,,,/Skymu;component/Skyaeris/Assets/Universal/";
            rectangle = FrozenImage.Generate(prefix + "Call Screen/rectangle.png");
            pill = FrozenImage.Generate(prefix + "Call Screen/pill.png");
            logo_small = FrozenImage.Generate(prefix + "Branding/logo-call-small.png");
            logo_big = FrozenImage.Generate(prefix + "Branding/logo-call-big.png");
            unmuted = FrozenImage.Generate(prefix + "Call Screen/btn_mic.png");
            muted = FrozenImage.Generate(prefix + "Call Screen/btn_mic_off.png");
            chat_active = FrozenImage.Generate(prefix + "Call Screen/btn_chat_active.png");
            chat_inactive = FrozenImage.Generate(prefix + "Call Screen/btn_chat_inactive.png");
            sidebar_expand = FrozenImage.Generate(prefix + "Call Screen/btn_sidebar_expand.png");
            sidebar_collapse = FrozenImage.Generate(
                prefix + "Call Screen/btn_sidebar_collapse.png"
            );
            screen_contract = FrozenImage.Generate(prefix + "Call Screen/btn_screen_contract.png");
            screen_expand = FrozenImage.Generate(prefix + "Call Screen/btn_screen_expand.png");

            isPillMode = !(this.ActualWidth >= 1025.0);
            isLogoBig = !(this.ActualWidth >= 700 && this.ActualHeight >= 700);
            Resized(null, null);
            location = initial_location;
        }
        private CancellationTokenSource _ringCts;


        public async Task StartCall(Conversation conversation, bool is_video)
        {
            Universal.CallPlugin.OnCallStateChanged += OnCallStateChanged;
            _call = new ActiveCall(
                "INIT",
                conversation.Identifier,
                is_video,
                new User[] { Universal.CurrentUser }
            );

            _ringCts = new CancellationTokenSource();
            var token = _ringCts.Token;

            _ = Task.Run(async () =>
            {
                await Sounds.PlayAsync("call-init", token);
                if (_silent) return;
                while (!token.IsCancellationRequested)
                {
                    await Sounds.PlayAsync("call-out", token);
                }
            });

            ActiveCall call = await Universal.CallPlugin.StartCall(conversation.Identifier, is_video, true);

            if (_hangUpRequested) return; // in case user has already hung up before the call is established

            _ringCts.Cancel();   
            Sounds.StopPlayback("call-out");   
            Sounds.StopPlayback("call-init");

            if (call == null)
            {
                Sounds.Play("call-error", true);
                HangUpRequested(this, EventArgs.Empty);
            }
            else
            {
                SwitchToOngoingCallUI();
                _call = call;
            }
        }

        public void SwitchToOngoingCallUI()
        {
            MyAvatar.Visibility = Visibility.Collapsed;
            MyAvatar = null;
            ConnectionAnimation.Visibility = Visibility.Collapsed;
            ConnectionAnimation = null;

            _callElapsed = TimeSpan.Zero;
            CallStatus.Text = "00:00";

            _callTimer = new DispatcherTimer { Interval = TimeSpan.FromSeconds(1) };
            _callTimer.Tick += (s, e) =>
            {
                _callElapsed = _callElapsed.Add(TimeSpan.FromSeconds(1));
                CallStatus.Text = _callElapsed.ToString(@"mm\:ss");
            };
            _callTimer.Start();
        }

        #region Events / event handlers

        public event EventHandler HangUpRequested;
        public event EventHandler<LocationChangeEventArgs> LocationChangeRequested;

        public class LocationChangeEventArgs : EventArgs
        {
            public bool SidebarToggle;
            public bool ChatToggle;
            public bool FullscreenToggle;

            public LocationChangeEventArgs(bool sidebar, bool chat, bool fullscreen)
            {
                SidebarToggle = sidebar;
                ChatToggle = chat;
                FullscreenToggle = fullscreen;
            }
        }

        private void OnCallStateChanged(object sender, CallEventArgs e)
        {
            if (e.State == CallState.Ended)
            {
                Dispatcher.Invoke(() =>
                {
                    OnHangUp(null, null);
                });
            }
        }

        private async void OnMuteToggled(object sender, MouseButtonEventArgs e)
        {
            isMuted = !isMuted;
            if (isMuted)
                MuteButton.Source = muted;
            else
                MuteButton.Source = unmuted;
            await Universal.CallPlugin.SetMuted(_call, isMuted);
        }

        private void OnSidebarToggled(object sender, MouseButtonEventArgs e)
        {
            location.SidebarToggle = !location.SidebarToggle;
            SetButtonSource(SidebarButton, location.SidebarToggle);
            if (LocationChangeRequested != null)
                LocationChangeRequested(this, location);
        }

        private void OnChatToggled(object sender, MouseButtonEventArgs e)
        {
            location.ChatToggle = !location.ChatToggle;
            SetButtonSource(ChatButton, location.ChatToggle);
            if (LocationChangeRequested != null)
                LocationChangeRequested(this, location);
        }

        private void OnFullscreenToggled(object sender, MouseButtonEventArgs e)
        {
            location.FullscreenToggle = !location.FullscreenToggle;
            SetButtonSource(FullscreenButton, location.FullscreenToggle);
            if (LocationChangeRequested != null)
                LocationChangeRequested(this, location);
        }

        private void SetButtonSource(SliceControl button, bool active)
        {
            if (button == SidebarButton)
            {
                button.Source = active ? sidebar_collapse : sidebar_expand;
            }
            else if (button == ChatButton)
            {
                button.Source = active ? chat_active : chat_inactive;
            }
            else if (button == FullscreenButton)
            {
                button.Source = active ? screen_contract : screen_expand;
            }
        }

        private void OnHangUp(object sender, MouseButtonEventArgs e)
        {
            _hangUpRequested = true;
            _ringCts?.Cancel();
            Sounds.StopPlayback("call-out");
            Sounds.StopPlayback("call-init");
            Universal.CallPlugin.OnCallStateChanged -= OnCallStateChanged;
            _ = Universal.CallPlugin.EndCall(_call);
            _callTimer?.Stop();
            _callTimer = null;
            Sounds.Play("call-end", true);
            HangUpRequested(this, EventArgs.Empty);
        }

        #endregion

        private void Resized(object sender, RoutedEventArgs e)
        {
            bool newPillMode = this.ActualWidth >= 1025.0;
            if (newPillMode != isPillMode)
            {
                if (newPillMode) // pill
                {
                    ActionBar.Margin = new Thickness(0, 0, 0, 16);
                    ActionBar.HorizontalAlignment = HorizontalAlignment.Center;
                    ActionBarContainer.Source = pill;
                    ActionBarContainer.SliceMode = 1;
                    ActionBarContainer.ClearValue(HeightProperty);
                }
                else // rectangle
                {
                    ActionBar.Margin = new Thickness(0);
                    ActionBar.HorizontalAlignment = HorizontalAlignment.Stretch;
                    ActionBarContainer.Source = rectangle;
                    ActionBarContainer.SliceMode = 2;
                    ActionBarContainer.Height = 88;
                }

                isPillMode = newPillMode;
            }

            bool newLogoBig = this.ActualWidth >= 700 && this.ActualHeight >= 700;
            if (newLogoBig != isLogoBig)
            {
                if (newLogoBig) // big logo
                {
                    Logo.Width = 169;
                    Logo.Source = logo_big;
                }
                else // small logo
                {
                    Logo.Width = 52;
                    Logo.Source = logo_small;
                }

                isLogoBig = newLogoBig;
            }
        }
    }
}
