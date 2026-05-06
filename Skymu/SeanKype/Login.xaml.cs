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

/*==========================================================*/
// This code is EXPIREMENTAL and has not been reviewed by
// persfidious, patricktbp, or HUBAXE. Port is by Xaero.
// This also applies to the associated XAML file.
/*==========================================================*/

using Skymu.ViewModels;
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using Yggdrasil.Enumerations;



namespace Skymu.SeanKype
{
    public partial class Login : Window
    {
        private LoginViewModel _viewModel;
        internal bool noCloseEvent;
        private const string DISCORD_SERVER_INVITE = "https://discord.gg/PcfsGyz2";

        public Login()
        {
            InitializeComponent();
            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;

            _viewModel = new LoginViewModel(() => new Main());
            _viewModel.AnimationToggleRequested += LoginToggleAnimation;
            _viewModel.HeaderTextRequested += text => header.Text = text;
            _viewModel.PluginSelectionUpdated += OnPluginSelectionUpdated;
            _viewModel.MainWindowReady += OnMainWindowReady;

            Sounds.Init();
            Tray.PushIcon(PresenceStatus.LoggedOut, false);
        }

        private async void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            if (comboProtocolBox.SelectedIndex == -1)
                return;
            await _viewModel.Login(
                usernameBox.Text,
                passwordTokenBox.Password,
                SaveCredentials.IsChecked == true
            );
        }

        private void OnPluginSelectionUpdated(LoginViewModel.PluginListing listing)
        {
            Password.Foreground = new SolidColorBrush(Colors.White);
            passwordTokenBox.IsEnabled = true;
            Password.FontStyle = FontStyles.Normal;
            Password.Text = Universal.Lang["sF_USERENTRY_LABEL_PASSWORD"];

            string buttonText = Universal.Lang["sZAPBUTTON_SIGNIN"];

            SkypeName.Foreground = new SolidColorBrush(Colors.White);
            usernameBox.IsEnabled = true;
            SkypeName.FontStyle = FontStyles.Normal;
            SkypeName.Text = listing.TextUsername ?? SkypeName.Text;

            if (listing.AuthenticationType != AuthenticationMethod.Password)
            {
                Password.Foreground = new SolidColorBrush(Colors.LightGray);
                passwordTokenBox.IsEnabled = false;
                Password.Text = "field not required";
                Password.FontStyle = FontStyles.Italic;

                switch (listing.AuthenticationType)
                {
                    case AuthenticationMethod.QRCode:
                        buttonText = "Scan QR code";
                        SkypeName.Foreground = new SolidColorBrush(Colors.LightGray);
                        usernameBox.IsEnabled = false;
                        SkypeName.FontStyle = FontStyles.Italic;
                        SkypeName.Text = "field not required";
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

            LoginButton.Content = buttonText;
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
                    usernameBox.Text.Trim() != string.Empty
                    && (
                        passwordTokenBox.Password.Trim() != string.Empty
                        || !passwordTokenBox.IsEnabled
                    )
                ) || (!passwordTokenBox.IsEnabled && !usernameBox.IsEnabled)
            )
            {
                LoginButton.IsEnabled = true;
                LoginButton.Opacity = 1;
            }
            else
            {
                LoginButton.IsEnabled = false;
                LoginButton.Opacity = 0.4;
            }
        }

        private void Login_Loaded(object sender, RoutedEventArgs e)
        {
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
                N4.Visibility = Visibility.Collapsed;
                throbber.Visibility = Visibility.Visible;
                header.Text = Universal.Lang["sSTATUSTEXT_PROFILE_LOGGING_IN"];
            }
            else
            {
                N4.Visibility = Visibility.Visible;
                throbber.Visibility = Visibility.Collapsed;
                header.Text = Universal.Lang["sF_LOGIN_WELCOME"];
            }
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Universal.OpenUrl(e.Uri.AbsoluteUri);
            e.Handled = true;
        }

        private void FooterLink_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
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
    }
}
