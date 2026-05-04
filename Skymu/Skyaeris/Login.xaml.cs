/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.ViewModels;
using Skymu.Views;
using Skymu.Views.Pages;
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Yggdrasil.Enumerations;

namespace Skymu.Skyaeris
{
    public partial class Login : Window
    {
        private LoginViewModel _viewModel;
        internal bool noCloseEvent;

        public Login()
        {
            InitializeComponent();
            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;
            LoginButton.MouseLeftButtonUp += buttonLaunch;
            this.ContentRendered += Login_ContentRendered;

            _viewModel = new LoginViewModel(() => new Main());
            _viewModel.AnimationToggleRequested += LoginToggleAnimation;
            _viewModel.HeaderTextRequested += text => header.Text = text;
            _viewModel.PluginSelectionUpdated += OnPluginSelectionUpdated;
            _viewModel.MainWindowReady += OnMainWindowReady;

            Sounds.Init();
            Tray.PushIcon(PresenceStatus.Offline);
        }

        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            if (comboProtocolBox.SelectedIndex == -1) return;
            await _viewModel.Login(
                usernameBox.Text,
                passwordTokenBox.Password,
                SaveCredentials.IsChecked == true
            );
        }

        private void OnPluginSelectionUpdated(LoginViewModel.PluginListing listing)
        {
            Password.Foreground = new SolidColorBrush(Colors.Black);
            passwordTokenBox.IsEnabled = true;
            Password.FontStyle = FontStyles.Normal;
            Password.Text = Universal.Lang["sF_USERENTRY_LABEL_PASSWORD"];
            LoginButton.Text = Universal.Lang["sZAPBUTTON_SIGNIN"];

            SkypeName.Foreground = new SolidColorBrush(Colors.Black);
            usernameBox.IsEnabled = true;
            SkypeName.FontStyle = FontStyles.Normal;
            SkypeName.Text = listing.TextUsername ?? SkypeName.Text;

            if (listing.AuthenticationType != AuthenticationMethod.Password)
            {
                Password.Foreground = new SolidColorBrush(Colors.DarkGray);
                passwordTokenBox.IsEnabled = false;
                Password.Text = "field not required";
                Password.FontStyle = FontStyles.Italic;

                switch (listing.AuthenticationType)
                {
                    case AuthenticationMethod.QRCode:
                        LoginButton.Text = "Scan QR code";
                        SkypeName.Foreground = new SolidColorBrush(Colors.DarkGray);
                        usernameBox.IsEnabled = false;
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
            if (
                (usernameBox.Text.Trim() != string.Empty
                    && (passwordTokenBox.Password.Trim() != string.Empty || !passwordTokenBox.IsEnabled))
                || !passwordTokenBox.IsEnabled && !usernameBox.IsEnabled
            )
            {
                LoginButton.IsEnabled = true;
            }
            else
            {
                LoginButton.IsEnabled = false;
            }
        }

        private void OnChangeLanguage(object sender, EventArgs e) { Universal.NotImplemented(Universal.Lang["sLOGIN_CHANGE_LANGUAGE"]); }
        private void OnConnectionOptions(object sender, EventArgs e) { new Options("Background").Show(); }
        private void OnAccessibility(object sender, EventArgs e) { Universal.NotImplemented(Universal.Lang["sMAINMENU_TOOLS_ACCESSIBILITY"]); }
        private void OnHelp(object sender, EventArgs e) { Universal.OpenUrl(Universal.SKYMU_WEBSITE_HELP); }
        private void OnCheckUpdates(object sender, EventArgs e) { new Updater(true); }
        private void OnPrivacy(object sender, EventArgs e) { Universal.OpenUrl(Universal.SKYMU_WEBSITE_PRIVACY); }
        private void OnAbout(object sender, EventArgs e) { new About().Show(); }
        private void OnClose(object sender, EventArgs e) { Universal.Close(false); }

        private void Login_Loaded(object sender, EventArgs e)
        {
            MenuBarRow.Height = new GridLength(0);
            var menuBar = new NativeMenuBar(this);
            menuBar.Create(
                "&" + Universal.Lang["sMAINMENU_SKYPE"],
                (Universal.Lang["sMAINMENU_SKYPE_CLOSE"], OnClose)
            );
            menuBar.Create(
                "&" + Universal.Lang["sMAINMENU_TOOLS"],
                (Universal.Lang["sLOGIN_CHANGE_LANGUAGE"], OnChangeLanguage),
                ("$", null),
                (Universal.Lang["sLOGIN_CONNECTION_OPTIONS"], OnConnectionOptions),
                ("$", null),
                (Universal.Lang["sMAINMENU_TOOLS_ACCESSIBILITY"], OnAccessibility)
            );
            menuBar.Create(
                "&" + Universal.Lang["sMAINMENU_HELP"],
                (Universal.Lang["sMAINMENU_HELP_HELP"], OnHelp),
                ("$", null),
                (Universal.Lang["sMAINMENU_HELP_UPDATES"], OnCheckUpdates),
                ("$", null),
                (Universal.Lang["sMAINMENU_HELP_PRIVACY"], OnPrivacy),
                (Universal.Lang["sMAINMENU_HELP_ABOUT"], OnAbout)
            );

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";
            _viewModel.LoadPlugins();

            foreach (var item in _viewModel.PluginItems)
                comboProtocolBox.Items.Add(item);

            if (_viewModel.PendingAutoLogin != null)
                LoginToggleAnimation(true);
            else
                comboProtocolBox.SelectedIndex = 0;
        }

        private void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var listing = (LoginViewModel.PluginListing)comboProtocolBox.SelectedItem;
            if (listing != null)
                _viewModel.HandleProtocolSelected(listing);
        }

        private async void Login_ContentRendered(object sender, EventArgs e)
        {
            await _viewModel.TryAutoLogin();
            if (_viewModel.PendingAutoLogin != null && comboProtocolBox.SelectedIndex == -1)
                comboProtocolBox.SelectedIndex = 0;
        }

        private void LoginToggleAnimation(bool anim)
        {
            if (anim)
            {
                LoginControls.Visibility = Visibility.Collapsed;
                throbber.Visibility = Visibility.Visible;
                header.Text = Universal.Lang["sSTATUSTEXT_PROFILE_LOGGING_IN"];
            }
            else
            {
                LoginControls.Visibility = Visibility.Visible;
                throbber.Visibility = Visibility.Collapsed;
                header.Text = Universal.Lang["sF_LOGIN_WELCOME"];
            }
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Universal.OpenUrl(Universal.DISCORD_SERVER_INVITE);
            e.Handled = true;
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
        }

        private void Login_Closing(object sender, CancelEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }
    }
}
