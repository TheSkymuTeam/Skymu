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

using Skymu.Preferences;
using Skymu.ViewModels;
using System;
using System.ComponentModel;
using System.Windows;
using Skymu.Sounds;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Yggdrasil.Enumerations;
using Skymu.Windows;
using System.Windows.Input;
using Yggdrasil.Models;

namespace Skymu.Skype7
{
    public partial class Login : Window
    {
        private LoginViewModel _viewModel;
        internal bool noCloseEvent;
        private const string DISCORD_SERVER_INVITE = "https://discord.gg/PcfsGyz2";
        private bool switchuser = false;

        public Login(bool switchuser = false)
        {
            this.switchuser = switchuser;
            InitializeComponent();
            UsernameBox.KeyUp += BoxKeyUp;
            PasswordTokenBox.KeyUp += BoxKeyUp;

            _viewModel = new LoginViewModel(() => new Main());
            _viewModel.AnimationToggleRequested += LoginToggleAnimation;
            _viewModel.HeaderTextRequested += text => Header.Content = text;
            _viewModel.PluginSelectionUpdated += OnPluginSelectionUpdated;
            _viewModel.MainWindowReady += OnMainWindowReady;

            SoundManager.Init();
            Tray.SetStatus(PresenceStatus.Offline);
        }

        private async void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            if (ProtocolComboBox.SelectedIndex == -1)
                return;
            await _viewModel.Login(
                UsernameBox.Text,
                PasswordTokenBox.Password
            );
        }

        private void OnPluginSelectionUpdated(LoginViewModel.PluginListing listing)
        {
            PasswordHint.Foreground = new SolidColorBrush(Colors.Gray);
            PasswordTokenBox.IsEnabled = true;
            PasswordHint.FontStyle = FontStyles.Normal;
            PasswordHint.Text = listing.TextPassword ?? Universal.Lang["sF_USERENTRY_LABEL_PASSWORD"];

            string buttonText = Universal.Lang["sZAPBUTTON_SIGNIN"];

            UsernameHint.Foreground = new SolidColorBrush(Colors.Gray);
            UsernameBox.IsEnabled = true;
            UsernameHint.FontStyle = FontStyles.Normal;
            UsernameHint.Text = listing.TextUsername ?? UsernameHint.Text;
            SubHeader.Content = $"with {Universal.Plugin.Name} account";

            if (listing.AuthenticationType != AuthenticationMethod.Password)
            {
                PasswordHint.Foreground = new SolidColorBrush(Colors.LightGray);
                PasswordTokenBox.IsEnabled = false;
                PasswordHint.Text = "field not required";
                PasswordHint.FontStyle = FontStyles.Italic;

                switch (listing.AuthenticationType)
                {
                    case AuthenticationMethod.QRCode:
                        buttonText = "Scan QR code";
                        UsernameHint.Foreground = new SolidColorBrush(Colors.LightGray);
                        UsernameBox.IsEnabled = false;
                        UsernameHint.FontStyle = FontStyles.Italic;
                        UsernameHint.Text = "field not required";
                        break;
                    case AuthenticationMethod.Passwordless:
                        buttonText = "Send code";
                        break;
                    case AuthenticationMethod.External:
                        buttonText = "External login";
                        break;
                    default:
                        buttonText = Universal.Lang["sZAPBUTTON_SIGNIN"];
                        break;
                }
            }

            LoginButtonLabel.Text = buttonText;
            CheckEnableLoginButton();
        }

        private void OnMainWindowReady(IMainWindowHolder mainWindow)
        {
            _viewModel.RunPostLogin(mainWindow);
            noCloseEvent = true;
            Close();
        }

        private void BoxKeyUp(object sender, RoutedEventArgs e)
        {
            CheckEnableLoginButton();
        }

        private void CheckEnableLoginButton()
        {
            if (
                (
                    UsernameBox.Text.Trim() != string.Empty
                    && (
                        PasswordTokenBox.Password.Trim() != string.Empty
                        || !PasswordTokenBox.IsEnabled
                    )
                ) || (!PasswordTokenBox.IsEnabled && !UsernameBox.IsEnabled)
            )
            {
                if (!LoginButton.IsEnabled) { LoginButtonLabel.Opacity = 1; LoginButton.Opacity = 1; }
                LoginButton.IsEnabled = true;
            }
            else
            {
                LoginButton.IsEnabled = false;
                LoginButton.Opacity = 0.4;
                LoginButtonLabel.Opacity = 0.4;
            }
        }

        private void Login_Loaded(object sender, RoutedEventArgs e)
        {
            if (Settings.StartMinimized)
                WindowState = WindowState.Minimized;

            ProtocolComboBox.DisplayMemberPath = "DisplayName";
            ProtocolComboBox.SelectedValuePath = "DisplayName";
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
        }

        private void SelectDefaultProtocol()
        {
            var preferred = _viewModel.GetPreferredDefaultListing();
            if (preferred != null)
                ProtocolComboBox.SelectedItem = preferred;
            else
                ProtocolComboBox.SelectedIndex = 0;
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
            PasswordTokenBox.Password = creds.PasswordOrToken;
            CheckEnableLoginButton();
        }

        private void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
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

        private async void Login_ContentRendered(object sender, EventArgs e)
        {
            if (!switchuser)
                await _viewModel.TryAutoLogin();
            if (_viewModel.PendingAutoLogin != null && ProtocolComboBox.SelectedIndex == -1)
                SelectDefaultProtocol();
        }

        private void LoginToggleAnimation(bool anim)
        {
            if (anim)
            {
                ControlsGrid.Visibility = Visibility.Collapsed;
                Spinner.Visibility = Visibility.Visible;

            }
            else
            {
                ControlsGrid.Visibility = Visibility.Visible;
                Spinner.Visibility = Visibility.Collapsed;
                Header.Content = Universal.Lang["sZAPBUTTON_SIGNIN"];
            }
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Universal.OpenUrl(e.Uri.AbsoluteUri);
            e.Handled = true;
        }

        private void FooterLink_Click(object sender, MouseButtonEventArgs e)
        {
            Universal.OpenUrl(DISCORD_SERVER_INVITE);
        }

        private void Login_Closing(object sender, CancelEventArgs e)
        {
            if (!noCloseEvent)
                Application.Current.Shutdown();
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
            if (!noCloseEvent)
                Application.Current.Shutdown();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            MainGrid.Focus();
        }

        private void Grid_KeyDown(object sender, KeyEventArgs e)
        {

        }
    }
}
