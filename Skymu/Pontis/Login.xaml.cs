/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using MiddleMan;
using Skymu.Helpers;
using Skymu.ViewModels;
using Skymu.Views;
using Skymu.Views.Pages;

namespace Skymu.Pontis
{
    public partial class Login : Window
    {
        private LoginViewModel _viewModel;
        internal bool noCloseEvent;
        private const string DISCORD_SERVER_INVITE = "https://discord.gg/PcfsGyz2";

        public Login()
        {
            InitializeComponent();
            //ThemeManager.Load("default"); // TODO themes login
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
            Tray.PushIcon(UserConnectionStatus.Offline);
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
            Tray.PushIcon(Universal.CurrentUser.ConnectionStatus);
            Universal.HasLoggedIn = true;
            mainWindow.Show();
            Sounds.Play("login", true);
            new Updater();

            if (!Properties.Settings.Default.FirstRunCompleted)
            {
                Properties.Settings.Default.FirstRunCompleted = true;
                Properties.Settings.Default.Save();

                Dialog dlg = null;
                dlg = new Dialog(
                    WindowBase.IconType.Question,
                    "Skymu sends information such as your display name and username to its user count server by default. This is done to populate the user "
                        + "count at the bottom of the sidebar, and also to form a searchable list of online users.\n\nYour data is not retained, stored, cached, sold, or otherwise used by Skymu in any way. "
                        + "Your username and display name are only used to populate the list.\n\nTo improve the accuracy of the public list, it is recommended that you click 'Yes'.",
                    "Publicly display user statistics?",
                    "Skymu User Statistics",
                    new Action(() =>
                    {
                        Properties.Settings.Default.Anonymize = true;
                        Properties.Settings.Default.Save();
                        dlg.Close();
                    }),
                    Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                    true,
                    new Action(() =>
                    {
                        Properties.Settings.Default.Anonymize = false;
                        Properties.Settings.Default.Save();
                        dlg.Close();
                    }),
                    Universal.Lang["sSKYACCESS_DLG_BTN_YES"]
                );
                dlg.ShowDialog();

                string message = null;
                string brand = Properties.Settings.Default.BrandingName;
                PlatformType platform = Platform.Detect();

                if (platform == PlatformType.Unknown)
                    message = brand + " could not determine your operating system. If you are using an unsupported platform, you may encounter bugs.";
                else if (platform < PlatformType.Windows2000)
                {
                    if (platform == PlatformType.WineLegacy)
                        message = brand + " does not support Wine versions below 10.0. You may encounter significant bugs.";
                    else if (platform == PlatformType.Wine10)
                        message = brand + " has limited support for Wine 10. Some features may not work as expected.";
                    else if (platform == PlatformType.Wine11)
                        message = brand + " does not have complete support for Wine 11. Some features may not work as expected.";
                }
                else if (platform < PlatformType.WindowsVista)
                {
                    if (platform == PlatformType.WindowsXP)
                        message = brand + " does not officially support Windows XP or the One Core API, and you may encounter significant bugs. However, if you are using Projek01, you should not expect any problems.";
                    else if (platform == PlatformType.Windows2000)
                        message = brand + " does not officially support Windows 2000 or any extended kernels, and you may encounter significant bugs.";
                }
                else if (platform > PlatformType.Windows11)
                    message = brand + " has not yet been tested on your version of Windows. You may encounter bugs.";

                if (message != null)
                    Universal.MessageBox(message, "Compatibility warning");
            }

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
                LoginButton.Opacity = 1;
            }
            else
            {
                LoginButton.IsEnabled = false;
                LoginButton.Opacity = 0.4;
            }
        }

        private void Login_Loaded(object sender, EventArgs e)
        {
            MenuBarRow.Height = new GridLength(0);
            MenuBar.MenuInit(this);
            MenuBar.MenuCreator(
                "&" + Universal.Lang["sMAINMENU_SKYPE"],
                new MenuItemDef { subtitle = Universal.Lang["sMAINMENU_SKYPE_CLOSE"], action = Skymu.Universal.Close }
            );
            MenuBar.MenuCreator(
                "&" + Universal.Lang["sMAINMENU_TOOLS"],
                Universal.Lang["sLOGIN_CHANGE_LANGUAGE"],
                "$",
                Universal.Lang["sLOGIN_CONNECTION_OPTIONS"],
                "$",
                Universal.Lang["sMAINMENU_TOOLS_ACCESSIBILITY"]
            );
            MenuBar.MenuCreator(
                "&" + Universal.Lang["sMAINMENU_HELP"],
                new MenuItemDef { subtitle = Universal.Lang["sMAINMENU_HELP_HELP"] },
                MenuItemDef.Sep(),
                new MenuItemDef { subtitle = Universal.Lang["sMAINMENU_HELP_UPDATES"] },
                MenuItemDef.Sep(),
                new MenuItemDef { subtitle = Universal.Lang["sMAINMENU_HELP_PRIVACY"], action = MenuBar.OpenPrivacyPolicy },
                new MenuItemDef { subtitle = Universal.Lang["sMAINMENU_HELP_ABOUT"], action = MenuBar.ShowAbout }
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
            Process.Start(
                new ProcessStartInfo { FileName = DISCORD_SERVER_INVITE, UseShellExecute = true }
            );
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
