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

using Skymu.Forms;
using Skymu.Forms.Pages;
using Skymu.Helpers;
using Skymu.Native.Windows;
using Skymu.Preferences;
using Skymu.Sounds;
using Skymu.ViewModels;
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Threading;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using Skymu.Credentials;
using System.Linq;

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
            UsernameBox.KeyUp += BoxKeyUp;
            PasswordTokenBox.KeyUp += BoxKeyUp;
            LoginButton.MouseLeftButtonUp += buttonLaunch;
            this.ContentRendered += Login_ContentRendered;

            _viewModel = viewModel;
            _viewModel.AnimationToggleRequested += LoginToggleAnimation;
            _viewModel.HeaderTextRequested += text => header.Text = text;
            _viewModel.PluginSelectionUpdated += OnPluginSelectionUpdated;
            _viewModel.MainWindowReady += OnMainWindowReady;

            SoundManager.Init();
            Tray.SetStatus(PresenceStatus.Offline);
        }

        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            if (ProtocolComboBox.SelectedIndex == -1) return;
            await _viewModel.Login(
                UsernameBox.Text,
                PasswordTokenBox.Password
            );
        }

        private void OnPluginSelectionUpdated(LoginViewModel.PluginListing listing)
        {
            PasswordLabel.Foreground = new SolidColorBrush(Colors.Black);
            PasswordTokenBox.IsEnabled = true;
            PasswordLabel.FontStyle = FontStyles.Normal;
            PasswordLabel.Text = listing.TextPassword ?? Universal.Lang["sF_USERENTRY_LABEL_PASSWORD"];
            LoginButton.Text = Universal.Lang["sZAPBUTTON_SIGNIN"];

            SkypeName.Foreground = new SolidColorBrush(Colors.Black);
            UsernameBox.IsEnabled = true;
            SkypeName.FontStyle = FontStyles.Normal;
            SkypeName.Text = listing.TextUsername ?? SkypeName.Text;

            if (listing.AuthenticationType != AuthenticationMethod.Password)
            {
                PasswordLabel.Foreground = new SolidColorBrush(Colors.DarkGray);
                PasswordTokenBox.IsEnabled = false;
                PasswordLabel.Text = "field not required";
                PasswordLabel.FontStyle = FontStyles.Italic;

                switch (listing.AuthenticationType)
                {
                    case AuthenticationMethod.QRCode:
                        LoginButton.Text = "Scan QR code";
                        SkypeName.Foreground = new SolidColorBrush(Colors.DarkGray);
                        UsernameBox.IsEnabled = false;
                        SkypeName.FontStyle = FontStyles.Italic;
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

        private void BoxKeyUp(object sender, RoutedEventArgs e)
        {
            CheckEnableLoginButton();
        }

        private void CheckEnableLoginButton()
        {
            bool enabled = (!string.IsNullOrWhiteSpace(UsernameBox.Text)
                    && (!string.IsNullOrWhiteSpace(PasswordTokenBox.Password) || !PasswordTokenBox.IsEnabled))
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

        protected void Login_Loaded(object sender, RoutedEventArgs e)
        {
            if (Settings.StartMinimized)
                WindowState = WindowState.Minimized;

            MenuBarRow.Height = new GridLength(0);
            new MenuBarController(this, true).Build();

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
                LoginControls.Visibility = Visibility.Collapsed;
                Spinner.Visibility = Visibility.Visible;
                header.Text = Universal.Lang["sSTATUSTEXT_PROFILE_LOGGING_IN"];
            }
            else
            {
                LoginControls.Visibility = Visibility.Visible;
                Spinner.Visibility = Visibility.Collapsed;
                header.Text = Universal.Lang["sF_LOGIN_WELCOME"];
            }
        }

        protected void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Universal.OpenURL(Universal.DISCORD_SERVER_INVITE);
            e.Handled = true;
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
        }

        protected void Login_Closing(object sender, CancelEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }

        #region Parts

        private T Part<T>(string name) where T : class => (T)FindName(name);

        private global::System.Windows.Controls.TextBlock header => Part<global::System.Windows.Controls.TextBlock>(nameof(header));
        private global::System.Windows.Controls.Grid LoginControls => Part<global::System.Windows.Controls.Grid>(nameof(LoginControls));
        private global::System.Windows.Controls.RowDefinition MenuBarRow => Part<global::System.Windows.Controls.RowDefinition>(nameof(MenuBarRow));
        private global::System.Windows.Controls.TextBlock PasswordLabel => Part<global::System.Windows.Controls.TextBlock>(nameof(PasswordLabel));
        private global::System.Windows.Controls.PasswordBox PasswordTokenBox => Part<global::System.Windows.Controls.PasswordBox>(nameof(PasswordTokenBox));
        private global::System.Windows.Controls.ComboBox ProtocolComboBox => Part<global::System.Windows.Controls.ComboBox>(nameof(ProtocolComboBox));
        private global::System.Windows.Controls.TextBlock SkypeName => Part<global::System.Windows.Controls.TextBlock>(nameof(SkypeName));
        private global::System.Windows.Controls.Image Spinner => Part<global::System.Windows.Controls.Image>(nameof(Spinner));
        private global::System.Windows.Controls.TextBox UsernameBox => Part<global::System.Windows.Controls.TextBox>(nameof(UsernameBox));
        private global::Skymu.SliceControl LoginButton => Part<global::Skymu.SliceControl>(nameof(LoginButton));

        #endregion
    }
}