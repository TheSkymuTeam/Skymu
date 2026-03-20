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
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using Microsoft.Win32;
using MiddleMan;
using QRCoder;
using Skymu.Helpers;
using Skymu.Views;
using Skymu.Views.Pages;

namespace Skymu.Skyaeris
{
    public partial class Login : Window
    {
        private PluginListing selectedListing;
        private Main _Main;
        internal bool noCloseEvent;
        private SavedCredential pendingAutoLogin = null;
        private const string DISCORD_SERVER_INVITE = "https://discord.gg/PcfsGyz2";

        public Login()
        {
            InitializeComponent();
            ThemeManager.Load("default");
            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;
            LoginButton.MouseLeftButtonUp += buttonLaunch;

            this.ContentRendered += Login_ContentRendered;

            Sounds.Init();
            Tray.PushIcon(UserConnectionStatus.Offline);
        }

        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            LoginToggleAnimation(true);
            if (comboProtocolBox.SelectedIndex != -1)
            {
                var result = await Universal.Plugin.Authenticate(
                    selectedListing.AuthenticationType,
                    usernameBox.Text,
                    passwordTokenBox.Password
                );
                if (result == LoginResult.Success)
                {
                    InitiateMain();
                }
                else if (result == LoginResult.TwoFARequired)
                {
                    string totp = null;
                    if (selectedListing.AuthenticationType == AuthenticationMethod.QRCode)
                    {
                        string qr = await Universal.Plugin.GetQRCode();

                        if (!string.IsNullOrEmpty(qr))
                        {
                            Dialog qrDialog = new Dialog(
                                WindowBase.IconType.ContactRequest,
                                null,
                                "Scan code to authenticate",
                                Properties.Settings.Default.BrandingName + " - Login",
                                null,
                                "Close",
                                false,
                                null,
                                null,
                                false,
                                FrozenImage.GenerateFromArray(
                                    new PngByteQRCode(
                                        new QRCodeGenerator().CreateQrCode(
                                            qr,
                                            QRCodeGenerator.ECCLevel.Q
                                        )
                                    ).GetGraphic(20)
                                )
                            );
                            qrDialog.Show();

                            if (
                                await Universal.Plugin.AuthenticateTwoFA(null)
                                != LoginResult.Success
                            )
                                SetHeaderToFail();
                            else
                                InitiateMain();
                            qrDialog.Close();
                        }
                        else
                        {
                            LoginToggleAnimation(false);
                            SetHeaderToFail();
                        }
                    }
                    else
                    {
                        var dlg = new Dialog(
                            WindowBase.IconType.Information,
                            Universal.Plugin.Name
                                + " has requested that you provide a 2FA code to log in. Please enter it below.",
                            "Two-factor authentication required",
                            Properties.Settings.Default.BrandingName + " - Login",
                            null,
                            Universal.Lang["sZAPBUTTON_SIGNIN"],
                            false,
                            null,
                            null,
                            true
                        );
                        var dlgResult = dlg.ShowDialog();

                        if (dlgResult == true)
                        {
                            totp = dlg.TextBoxText;
                        }
                    }
                    var optResult = await Universal.Plugin.AuthenticateTwoFA(totp);

                    if (optResult == LoginResult.Success)
                    {
                        InitiateMain();
                    }
                    else
                    {
                        LoginToggleAnimation(false);
                        SetHeaderToFail();
                    }
                }
                else
                {
                    LoginToggleAnimation(false);
                    SetHeaderToFail();
                }
            }
        }

        private void SetHeaderToFail()
        {
            header.Text = Universal.Lang["sF_USERENTRY_ERROR_1101"];
        }

        private void Main_Ready(object sender, EventArgs e)
        {
            _Main.Ready -= Main_Ready;
            Tray.PushIcon(Main.CurrentUser.ConnectionStatus);
            Universal.HasLoggedIn = true;
            _Main.Show();
            Sounds.Play("login", true);
            new Updater();
            if (!Properties.Settings.Default.FirstRunCompleted)
            {
                // public user server prompt
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

                // platform warnings
                string message = null;
                string brand = Properties.Settings.Default.BrandingName;
                PlatformType platform = Platform.Detect();

                if (platform == PlatformType.Unknown)
                {
                    message =
                        brand
                        + " could not determine your operating system. If you are using an unsupported platform, you may encounter bugs.";
                }
                else if (platform < PlatformType.Windows2000) // WINE
                {
                    if (platform == PlatformType.WineLegacy)
                        message =
                            brand
                            + " does not support Wine versions below 10.0. You may encounter significant bugs.";
                    else if (platform == PlatformType.Wine10)
                        message =
                            brand
                            + " has limited support for Wine 10. Some features may not work as expected.";
                    else if (platform == PlatformType.Wine11)
                        message =
                            brand
                            + " does not have complete support for Wine 11. Some features may not work as expected.";
                }
                else if (platform < PlatformType.WindowsVista) // Legacy windows
                {
                    if (platform == PlatformType.WindowsXP)
                        message =
                            brand
                            + " does not officially support Windows XP or the One Core API, and you may encounter significant bugs. However, if you are"
                            + " using Projek01, you should not expect any problems.";
                    else if (platform == PlatformType.Windows2000)
                        message =
                            brand
                            + " does not officially support Windows 2000 or any extended kernels, and you may encounter significant bugs.";
                }
                else if (platform > PlatformType.Windows11) // Future windows
                {
                    message =
                        brand
                        + " has not yet been tested on your version of Windows. You may encounter bugs.";
                }

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
                (
                    usernameBox.Text.Trim() != string.Empty
                    && (
                        passwordTokenBox.Password.Trim() != string.Empty
                        || !passwordTokenBox.IsEnabled
                    )
                )
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
                Universal.Lang["sMAINMENU_SKYPE_CLOSE"]
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
                Universal.Lang["sMAINMENU_HELP_HELP"],
                "$",
                Universal.Lang["sMAINMENU_HELP_UPDATES"],
                "$",
                Universal.Lang["sMAINMENU_HELP_PRIVACY"],
                Universal.Lang["sMAINMENU_HELP_ABOUT"]
            );

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";
            Plugins.DisposeAll();
            Universal.PluginList = Plugins.Load("Plugins");
            int pluginIndex = 0;
            SavedCredential[] savedCredentials = Credentials.GetAll();
            foreach (var plugin in Universal.PluginList)
            {
                SavedCredential match = null;
                foreach (SavedCredential cred in savedCredentials)
                {
                    if (cred.Plugin == plugin.InternalName)
                    {
                        match = cred;
                        break;
                    }
                }

                if (
                    match != null
                    && pendingAutoLogin == null
                    && Properties.Settings.Default.AutoLogin
                )
                {
                    pendingAutoLogin = match;
                    Universal.Plugin = plugin;
                }

                if (plugin.AuthenticationTypes.Length <= 1)
                {
                    comboProtocolBox.Items.Add(
                        new PluginListing(
                            plugin.Name,
                            pluginIndex,
                            plugin.AuthenticationTypes[0].AuthType,
                            plugin.AuthenticationTypes[0].CustomTextUsername
                        )
                    );
                }
                else
                {
                    foreach (AuthTypeInfo ati in plugin.AuthenticationTypes)
                    {
                        string name = plugin.Name;
                        if (ati.CustomTextAuthType != null)
                            name += " - " + ati.CustomTextAuthType;
                        else
                        {
                            switch (ati.AuthType)
                            {
                                case AuthenticationMethod.Password:
                                    name += " - username & password";
                                    break;
                                case AuthenticationMethod.QRCode:
                                    name += " - QR code";
                                    break;
                                case AuthenticationMethod.Passwordless:
                                    name += " - passwordless";
                                    break;
                                case AuthenticationMethod.External:
                                    name += " - external login";
                                    break;
                                case AuthenticationMethod.Token:
                                    name += " - token login";
                                    break;
                                default:
                                    continue;
                            }
                        }
                        comboProtocolBox.Items.Add(
                            new PluginListing(
                                name,
                                pluginIndex,
                                ati.AuthType,
                                ati.CustomTextUsername
                            )
                        );
                    }
                }
                pluginIndex++;
            }

            if (pendingAutoLogin != null)
                LoginToggleAnimation(true);
            else
                comboProtocolBox.SelectedIndex = 0;
        }

        private void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            selectedListing = (PluginListing)comboProtocolBox.SelectedItem;
            Universal.Plugin = Universal.PluginList[selectedListing.PluginIndex];

            Password.Foreground = new SolidColorBrush(Colors.Black);
            passwordTokenBox.IsEnabled = true;
            Password.FontStyle = FontStyles.Normal;
            Password.Text = Universal.Lang["sF_USERENTRY_LABEL_PASSWORD"];
            LoginButton.Text = Universal.Lang["sZAPBUTTON_SIGNIN"];

            SkypeName.Foreground = new SolidColorBrush(Colors.Black);
            usernameBox.IsEnabled = true;
            SkypeName.FontStyle = FontStyles.Normal;
            SkypeName.Text =
                ((PluginListing)comboProtocolBox.SelectedItem).TextUsername ?? SkypeName.Text;

            if (selectedListing.AuthenticationType != AuthenticationMethod.Password)
            {
                Password.Foreground = new SolidColorBrush(Colors.DarkGray);
                passwordTokenBox.IsEnabled = false;
                Password.Text = "field not required";
                Password.FontStyle = FontStyles.Italic;

                switch (selectedListing.AuthenticationType)
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

        private async void Login_ContentRendered(object sender, EventArgs e)
        {
            if (pendingAutoLogin != null)
            {
                LoginResult lr = await Task.Run(async () =>
                    await Universal.Plugin.Authenticate(pendingAutoLogin)
                );
                if (lr == LoginResult.Success)
                {
                    InitiateMain();
                    return;
                }
                else
                {
                    LoginToggleAnimation(false);
                    if (lr == LoginResult.Failure)
                    {
                        SetHeaderToFail();
                        comboProtocolBox.SelectedIndex = 0;
                    }
                }
            }
            else
            {
                LoginToggleAnimation(false);
                return;
            }
        }

        private async void InitiateMain()
        {
            if (SaveCredentials.IsChecked == true)
            {
                SavedCredential cred = await Universal.Plugin.StoreCredential();
                if (cred != null)
                    Credentials.Save(cred);
            }
            header.Text = "Loading user data";
            _Main = new Main();
            _Main.Ready += Main_Ready;
            _ = _Main.InitSidebar();
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
                Universal.Close(ev);
        }

        public class PluginListing
        {
            public PluginListing(
                string name,
                int index,
                AuthenticationMethod authType,
                string text_username
            )
            {
                DisplayName = name;
                PluginIndex = index;
                AuthenticationType = authType;
                TextUsername = text_username;
            }

            public string DisplayName { get; private set; }
            public string TextUsername { get; private set; }
            public int PluginIndex { get; private set; }
            public AuthenticationMethod AuthenticationType { get; private set; }
        }
    }
}
