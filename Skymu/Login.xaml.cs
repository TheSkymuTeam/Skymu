/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using Microsoft.Win32;
using MiddleMan;
using QRCoder;
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

# pragma warning disable CA1416

namespace Skymu
{
    /// <summary>
    ///     Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        private static PluginListing selectedListing;
        private MainWindow _mainWindow;
        public static bool noCloseEvent, useAutoLogin = Properties.Settings.Default.AutoLoginEnabled;


        public Login() : this(false)
        {
        }


        public Login(bool forceManualLogin = false)
        {
            InitializeComponent();

            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;
            BBuilderGrid.MouseLeftButtonUp += buttonLaunch;

            this.ContentRendered += Login_ContentRendered;

            Sounds.Init();

            if (forceManualLogin) useAutoLogin = false;
            Tray.PushIcon(UserConnectionStatus.Offline);
        }

        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            LoginToggleAnimation(true);
            if (comboProtocolBox.SelectedIndex != -1)
            {
                var result = await Universal.Plugin.LoginMainStep(selectedListing.AuthenticationType, usernameBox.Text, passwordTokenBox.Password, false);
                if (result == LoginResult.Success)
                {
                    if (SaveCredentials.IsChecked == true)
                    {
                        SavedCredential cred = await Universal.Plugin.StoreCredential();
                        if (cred is not null) CredentialsHelper.Write(cred, Universal.Plugin.InternalName);
                    }
                    InitiateMainWindow();
                }
                else if (result == LoginResult.OptStepRequired)
                {
                    string totp = null;
                    if (selectedListing.AuthenticationType == AuthenticationMethod.QRCode)
                    {
                        string qr = await Universal.Plugin.GetQRCode();

                        if (!string.IsNullOrEmpty(qr))
                        {
                            QRCodeGenerator qrGenerator = new QRCodeGenerator();
                            QRCodeData qrCodeData = qrGenerator.CreateQrCode(qr, QRCodeGenerator.ECCLevel.Q);
                            PngByteQRCode qrCode = new PngByteQRCode(qrCodeData);
                            byte[] qrCodeImage = qrCode.GetGraphic(20);

                            BitmapImage bitmap = new BitmapImage();
                            using (var mem = new MemoryStream(qrCodeImage))
                            {
                                mem.Position = 0;
                                bitmap.BeginInit();
                                bitmap.CreateOptions = BitmapCreateOptions.PreservePixelFormat;
                                bitmap.CacheOption = BitmapCacheOption.OnLoad;
                                bitmap.UriSource = null;
                                bitmap.StreamSource = mem;
                                bitmap.EndInit();
                            }
                            bitmap.Freeze();

                            Dialog qrDialog = new Dialog(Dialog.Type.Information, null,
                            "Scan code to authenticate", Properties.Settings.Default.BrandingName + " - Login", null, "Close", false, null, null, false, bitmap);
                            qrDialog.ShowDialog();

                            if (await Universal.Plugin.LoginOptStep(null) == LoginResult.Success)
                            {
                                qrDialog.Close();
                            }

                        }
                        else
                        {
                            LoginToggleAnimation(false);
                            SetHeaderToFail();
                        }
                    }
                    else
                    {
                        var dlg = new Dialog(Dialog.Type.Information, Universal.Plugin.Name + " has requested that you provide a 2FA code to log in. Please enter it below.",
                            "Two-factor authentication required", Properties.Settings.Default.BrandingName + " - Login", null, Universal.Lang["sZAPBUTTON_SIGNIN"], false, null, null, true);
                        var dlgResult = dlg.ShowDialog();

                        if (dlgResult == true)
                        {
                            totp = dlg.TextBoxText;

                        }
                    }
                    var optResult = await Universal.Plugin.LoginOptStep(totp);

                    if (optResult == LoginResult.Success) InitiateMainWindow();
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
            header.Foreground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#D10000"));
        }

        private void MainWindow_Ready(object sender, EventArgs e)
        {
            _mainWindow.Ready -= MainWindow_Ready;
            Tray.PushIcon(MainWindow.Status);
            Universal.HasLoggedIn = true;
            _mainWindow.Show();
            Sounds.Play("login", true);
            new Updater();
            noCloseEvent = true;
            Close();
        }

        private void BoxKeyUp(object sender, RoutedEventArgs e)
        {
            CheckEnableLoginButton();
        }

        private void CheckEnableLoginButton()
        {
            if (usernameBox.Text.Trim() != string.Empty &&
                (passwordTokenBox.Password.Trim() != string.Empty || !passwordTokenBox.IsEnabled))
            {
                LoginButton.IsEnabled = true;
            }
            else
            {
                LoginButton.IsEnabled = false;
            }
        }

        private void Login_Loaded(object sender, EventArgs e)
        {
            MenuBar.MenuInit(this);
            MenuBar.MenuCreator("&" + Universal.Lang["sMAINMENU_SKYPE"], Universal.Lang["sMAINMENU_SKYPE_CLOSE"]);
            MenuBar.MenuCreator("&" + Universal.Lang["sMAINMENU_TOOLS"], Universal.Lang["sLOGIN_CHANGE_LANGUAGE"], "$", Universal.Lang["sLOGIN_CONNECTION_OPTIONS"], "$", Universal.Lang["sMAINMENU_TOOLS_ACCESSIBILITY"]);
            MenuBar.MenuCreator("&" + Universal.Lang["sMAINMENU_HELP"], Universal.Lang["sMAINMENU_HELP_HELP"], "$", Universal.Lang["sMAINMENU_HELP_UPDATES"], "$",
                Universal.Lang["sMAINMENU_HELP_PRIVACY"], Universal.Lang["sMAINMENU_HELP_ABOUT"]);

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";
            Plugins.DisposeAll();
            Universal.PluginList = Plugins.Load("plugins");
            int pluginIndex = 0;
            string[] autoLoginCandidates = CredentialsHelper.GetSavedCredentialPlugins();
            foreach (var plugin in Universal.PluginList)
            {
                if (autoLoginCandidates.Contains(plugin.InternalName))
                {
                    Universal.Plugin = plugin;
                }
                if (plugin.AuthenticationType.Length <= 1) comboProtocolBox.Items.Add(new PluginListing(plugin.Name, pluginIndex, plugin.AuthenticationType[0]));
                else
                {
                    foreach (var authMethod in plugin.AuthenticationType)
                    {
                        string name = plugin.Name;
                        switch (authMethod)
                        {
                            case AuthenticationMethod.Password:
                                name += " (username & password)";
                                break;
                            case AuthenticationMethod.QRCode:
                                name += " (QR code)";
                                break;
                            case AuthenticationMethod.Passwordless:
                                name += " (passwordless)";
                                break;
                            case AuthenticationMethod.External:
                                name += " (external login)";
                                break;
                            case AuthenticationMethod.Token:
                                name += " (token login)";
                                break;
                            default:
                                continue;
                        }
                        comboProtocolBox.Items.Add(new PluginListing(name, pluginIndex, authMethod));
                    }
                }
                pluginIndex++;
            }
            if (Universal.Plugin is null) { useAutoLogin = false; }
            if (useAutoLogin) LoginToggleAnimation(true);
            else comboProtocolBox.SelectedIndex = 0;
        }

        private void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            selectedListing = (PluginListing)comboProtocolBox.SelectedItem;
            Universal.Plugin = Universal.PluginList[selectedListing.PluginIndex];
            SkypeName.Text = Universal.Plugin.TextUsername;
            if (selectedListing.AuthenticationType != AuthenticationMethod.Password)
            {
                passwordTokenBox.IsEnabled = false;
                Password.Text = "field not required";
                Password.FontStyle = FontStyles.Italic;
                Password.Foreground = new SolidColorBrush(System.Windows.Media.Colors.DarkGray);
                switch (selectedListing.AuthenticationType)
                {
                    case AuthenticationMethod.QRCode:
                        SignIn.Text = "Scan QR code";
                        break;
                    case AuthenticationMethod.Passwordless:
                        SignIn.Text = "Send code";
                        break;
                    case AuthenticationMethod.External:
                        SignIn.Text = "External login";
                        break;
                }
            }
            else
            {
                Password.Foreground = new SolidColorBrush(System.Windows.Media.Colors.Black);
                passwordTokenBox.IsEnabled = true;
                Password.FontStyle = FontStyles.Normal;
            }
            CheckEnableLoginButton();
        }

        private async void Login_ContentRendered(object sender, EventArgs e)
        {
            if (useAutoLogin)
            {
                SavedCredential credentials = CredentialsHelper.Read(Universal.Plugin.InternalName);
                if (credentials is null)
                {
                    LoginToggleAnimation(false);                    
                    CredentialsHelper.Purge(Universal.Plugin.InternalName, false);                   
                    return;
                }
                LoginResult lr = await Task.Run(async () =>
             await Universal.Plugin.TryAutoLogin(credentials)
         );
                if (lr == LoginResult.Success)
                {
                    InitiateMainWindow();
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
        }

        private async void InitiateMainWindow()
        {
            header.Text = "Loading user data";
            _mainWindow = new MainWindow();
            _mainWindow.Ready += MainWindow_Ready;
            _ = _mainWindow.InitSidebar();
        }

        private void LoginToggleAnimation(bool anim)
        {
            if (anim)
            {
                signInControls.Visibility = Visibility.Collapsed;
                throbber.Visibility = Visibility.Visible;
                header.Foreground = new BrushConverter().ConvertFromString("#00AFF0") as SolidColorBrush;
                header.Text = Universal.Lang["sSTATUSTEXT_PROFILE_LOGGING_IN"];
            }
            else
            {
                signInControls.Visibility = Visibility.Visible;
                throbber.Visibility = Visibility.Collapsed;
                header.Text = Universal.Lang["sF_LOGIN_WELCOME"];
            }
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Process.Start("https://discord.gg/VnGdqRNfSr");
            e.Handled = true;
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
        }

        private void Login_Closing(object sender, CancelEventArgs ev)
        {
            if (!noCloseEvent) Universal.Close(ev);
        }

        public class PluginListing
        {
            public PluginListing(string name, int index, AuthenticationMethod authType)
            {
                DisplayName = name;
                PluginIndex = index;
                AuthenticationType = authType;
            }

            public string DisplayName { get; private set; }
            public int PluginIndex { get; private set; }
            public AuthenticationMethod AuthenticationType { get; private set; }
        }
    }
}