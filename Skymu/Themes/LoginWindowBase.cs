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
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Controls.Templates;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Styling;
using Avalonia.Threading;
using Skymu.AvaloniaTools;
using Skymu.Crossplatform;
using Skymu.Credentials;

using Skymu.Forms;
using Skymu.Forms.Pages;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.Sounds;
using Skymu.ViewModels;
using System;
using System.ComponentModel;
using System.Linq;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;


namespace Skymu.Theming
{
    public abstract class LoginWindowBase : Window
    {
        private LoginViewModel _viewModel;
        internal bool noCloseEvent;
        private bool switchuser = false;

        protected virtual void OnLoginButtonUpdated(bool enabled) { }

        protected LoginWindowBase(bool switchuser)
        {
            this.switchuser = switchuser;
        }

        protected void InitializeLoginWindow(LoginViewModel viewModel)
        {
            AvaloniaHelpers.SetMainWindow(this);
            UsernameBox.KeyUp += BoxKeyUp;
            PasswordTokenBox.KeyUp += BoxKeyUp;
            LoginButton.PointerReleased += buttonLaunch;

            _viewModel = viewModel;
            _viewModel.AnimationToggleRequested += LoginToggleAnimation;
            _viewModel.HeaderTextRequested += text => header.Text = text;
            _viewModel.PluginSelectionUpdated += OnPluginSelectionUpdated;
            _viewModel.MainWindowReady += OnMainWindowReady;

            StartSpinnerAnimation();
            SoundManager.Init();
            Tray.Init();
            Tray.SetStatus(PresenceStatus.Offline);
        }

        private async void buttonLaunch(object state, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            if (ProtocolComboBox.SelectedIndex == -1) return;
            await _viewModel.Login(
                UsernameBox.Text,
                PasswordTokenBox.Text
            );
        }

        private void OnPluginSelectionUpdated(LoginViewModel.PluginListing listing)
        {
            PasswordLabel.Foreground = new SolidColorBrush(Colors.Black);
            PasswordTokenBox.IsEnabled = true;
            PasswordLabel.FontStyle = FontStyle.Normal;
            PasswordLabel.Text = listing.TextPassword ?? Universal.Lang["sF_USERENTRY_LABEL_PASSWORD"];
            LoginButton.Text = Universal.Lang["sZAPBUTTON_SIGNIN"];

            SkypeName.Foreground = new SolidColorBrush(Colors.Black);
            UsernameBox.IsEnabled = true;
            SkypeName.FontStyle = FontStyle.Normal;
            SkypeName.Text = listing.TextUsername ?? SkypeName.Text;

            if (listing.AuthenticationType != AuthenticationMethod.Password)
            {
                PasswordLabel.Foreground = new SolidColorBrush(Colors.DarkGray);
                PasswordTokenBox.IsEnabled = false;
                PasswordLabel.Text = "field not required";
                PasswordLabel.FontStyle = FontStyle.Italic;

                switch (listing.AuthenticationType)
                {
                    case AuthenticationMethod.QRCode:
                        LoginButton.Text = "Scan QR code";
                        SkypeName.Foreground = new SolidColorBrush(Colors.DarkGray);
                        UsernameBox.IsEnabled = false;
                        SkypeName.FontStyle = FontStyle.Italic;
                        SkypeName.Text = "field not required";
                        break;
                    case AuthenticationMethod.Passwordless:
                        LoginButton.Text = "Send code";
                        break;
                    case AuthenticationMethod.External:
                        LoginButton.Text = "External login";
                        break;
                    default:
                        LoginButton.Text = Universal.Lang["sZAPBUTTON_SIGNIN"];
                        break;
                }
            }

            CheckEnableLoginButton();
        }

        private void OnMainWindowReady(IMainWindowHolder mainWindow)
        {
            _viewModel.RunPostLogin(mainWindow);
            noCloseEvent = true;
            Close();
        }

        private void BoxKeyUp(object sender, KeyEventArgs e)
        {
            CheckEnableLoginButton();
        }

        private void CheckEnableLoginButton()
        {
            bool enabled = (!string.IsNullOrWhiteSpace(UsernameBox.Text)
                    && (!string.IsNullOrWhiteSpace(PasswordTokenBox.Text) || !PasswordTokenBox.IsEnabled))
                || (!PasswordTokenBox.IsEnabled && !UsernameBox.IsEnabled);
            LoginButton.IsEnabled = enabled;
            OnLoginButtonUpdated(enabled);
        }

        protected void OnChangeLanguage(object sender, EventArgs e) { Universal.NotImplemented(Universal.Lang["sLOGIN_CHANGE_LANGUAGE"]); }
        protected void OnConnectionOptions(object sender, EventArgs e) { new Options().Show(); }
        protected void OnAccessibility(object sender, EventArgs e) { Universal.NotImplemented(Universal.Lang["sMAINMENU_TOOLS_ACCESSIBILITY"]); }
        protected void OnHelp(object sender, EventArgs e) { Universal.OpenURL(Universal.SKYMU_WEBSITE_HELP); }
        protected void OnCheckUpdates(object sender, EventArgs e) { new Updater(true); }
        protected void OnPrivacy(object sender, EventArgs e) { Universal.OpenURL(Universal.SKYMU_WEBSITE_PRIVACY); }
        protected void OnAbout(object sender, EventArgs e) { new About().Show(); }
        protected void OnClose(object sender, EventArgs e) { Universal.Close(false); }

        private static (string, EventHandler) MI(string label, EventHandler handler) { return (label, handler); }
        private static (string, EventHandler) SEP() { return ("$", null); }

        protected async void Login_Loaded(object sender, RoutedEventArgs e)
        {
            if (Settings.StartMinimized)
                WindowState = WindowState.Minimized;

            ProtocolComboBox.ItemTemplate = new FuncDataTemplate<LoginViewModel.PluginListing>((item, _) =>
                new TextBlock { Text = item?.DisplayName });
            _viewModel.LoadPlugins();

            foreach (var item in _viewModel.PluginItems)
                ProtocolComboBox.Items.Add(item);

            if (_viewModel.PendingAutoLogin != null && !switchuser)
                LoginToggleAnimation(true);
            else
                SelectDefaultProtocol();

            if (switchuser && _viewModel.PendingAutoLogin != null)
            {
                var pal = _viewModel.PendingAutoLoginListing;
                var pa = _viewModel.PendingAutoLogin;
                _viewModel.ClearPendingAutoLogin();
                ProtocolComboBox.SelectedItem = pal;
                ProtocolSelectionChanged(null, null);
                SetProtocolSelection(pal, pa);
            }

            // WPF used ContentRendered so plugins were loaded before auto-login; Opened can fire too early in Avalonia.
            if (!switchuser)
                await _viewModel.TryAutoLogin();
            if (_viewModel.PendingAutoLogin != null && ProtocolComboBox.SelectedIndex == -1)
                SelectDefaultProtocol();
        }

        private void SelectDefaultProtocol()
        {
            var preferred = _viewModel.GetPreferredDefaultListing();
            if (preferred != null)
                ProtocolComboBox.SelectedItem = preferred;
            else
                ProtocolComboBox.SelectedIndex = 0;
        }

        private void StartSpinnerAnimation()
        {
            if (Spinner == null) return;
            var transform = new RotateTransform();
            Spinner.RenderTransform = transform;
            Spinner.RenderTransformOrigin = RelativePoint.Center;
            var animation = new Animation
            {
                Duration = TimeSpan.FromSeconds(2.133333),
                IterationCount = IterationCount.Infinite,
                Children =
        {
            new KeyFrame { Cue = new Cue(0.0), Setters = { new Setter(RotateTransform.AngleProperty, 0.0) } },
            new KeyFrame { Cue = new Cue(1.0), Setters = { new Setter(RotateTransform.AngleProperty, 360.0) } },
        },
            };
            _ = animation.RunAsync(Spinner);
        }

        private void SetProtocolSelection(LoginViewModel.PluginListing listing, SavedCredential creds)
        {
            _viewModel.HandleProtocolSelected(listing);
            OnPluginSelectionUpdated(listing);
            if (creds.AuthenticationType == AuthenticationMethod.QRCode) return;
            if (creds.AuthenticationType == AuthenticationMethod.Token)
            {
                UsernameBox.Text = !String.IsNullOrEmpty(creds.PasswordOrToken) ? creds.PasswordOrToken : creds.User.Username;
                CheckEnableLoginButton();
                return;
            }
            UsernameBox.Text = creds.User.Username;
            PasswordTokenBox.Text = creds.PasswordOrToken;
            CheckEnableLoginButton();
        }

        protected void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var listing = (LoginViewModel.PluginListing)ProtocolComboBox.SelectedItem;
            foreach (var cred in _viewModel.SavedCredentials)
            {
                if (cred.Plugin.ToLowerInvariant() == listing.InternalName.ToLowerInvariant())
                {
                    SetProtocolSelection(listing, cred);
                }
            }
            if (listing != null)
                _viewModel.HandleProtocolSelected(listing);
        }

        private void LoginToggleAnimation(bool anim)
        {
            if (anim)
            {
                LoginControls.IsVisible = false;
                Spinner.IsVisible = true;
                header.Text = Universal.Lang["sSTATUSTEXT_PROFILE_LOGGING_IN"];
            }
            else
            {
                LoginControls.IsVisible = true;
                Spinner.IsVisible = false;
                header.Text = Universal.Lang["sF_LOGIN_WELCOME"];
            }
        }

        protected void Hyperlink_Click(object sender, RoutedEventArgs e)
        {
            Universal.OpenURL(Universal.DISCORD_SERVER_INVITE);
            e.Handled = true;
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
        }

        protected void Login_Closing(object sender, WindowClosingEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }

        #region Parts

        protected T Part<T>(string name) where T : class => (T)NameScope.GetNameScope(this)?.Find(name);

        protected global::Avalonia.Controls.TextBlock header => Part<global::Avalonia.Controls.TextBlock>(nameof(header));
        protected global::Avalonia.Controls.Grid LoginControls => Part<global::Avalonia.Controls.Grid>(nameof(LoginControls));
        protected global::Avalonia.Controls.TextBlock PasswordLabel => Part<global::Avalonia.Controls.TextBlock>(nameof(PasswordLabel));
        protected global::Avalonia.Controls.TextBox PasswordTokenBox => Part<global::Avalonia.Controls.TextBox>(nameof(PasswordTokenBox));
        protected global::Avalonia.Controls.ComboBox ProtocolComboBox => Part<global::Avalonia.Controls.ComboBox>(nameof(ProtocolComboBox));
        protected global::Avalonia.Controls.TextBlock SkypeName => Part<global::Avalonia.Controls.TextBlock>(nameof(SkypeName));
        protected global::Avalonia.Controls.Image Spinner => Part<global::Avalonia.Controls.Image>(nameof(Spinner));
        protected global::Avalonia.Controls.TextBox UsernameBox => Part<global::Avalonia.Controls.TextBox>(nameof(UsernameBox));
        protected global::Skymu.Controls.SliceControl LoginButton => Part<global::Skymu.Controls.SliceControl>(nameof(LoginButton));

        #endregion
    }
}