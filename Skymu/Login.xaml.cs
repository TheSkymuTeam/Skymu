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
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
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
        public static bool noCloseEvent;
        public static bool useAutoLogin = Properties.Settings.Default.AutoLoginEnabled;

        public Login()
        {
            InitializeComponent();

            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;
            BBuilderGrid.MouseLeftButtonUp += buttonLaunch;

            this.ContentRendered += Login_ContentRendered;

            Sounds.Init();
            Tray.PushIcon("offline", Properties.Settings.Default.BrandingName + " (Not signed in)");
        }

        private async Task WriteCredentials()
        {
            string[] credentials = await Universal.Plugin.SaveAutoLoginCredential();
            using (RegistryKey key = Registry.CurrentUser.CreateSubKey(@"Software\Skymu\Credentials\" + Universal.Plugin.InternalName))
            {
                if (key != null)
                {
                    for (int i = 0; i < credentials.Length; i++)
                    {
                        key.SetValue(i.ToString(), EncryptToString(credentials[i]));
                    }
                }
            }
        }

        private string[] ReadCredentials()
        {
            string[] credentials;
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(
       @"Software\Skymu\Credentials\" + Universal.Plugin.InternalName))
            {
                if (key != null)
                {
                    string[] valueNames = key.GetValueNames();
                    credentials = new string[valueNames.Length];

                    for (int i = 0; i < valueNames.Length; i++)
                    {
                        credentials[i] = DecryptFromString(key.GetValue(valueNames[i])?.ToString());
                    }

                    if (credentials.Length <= 0)
                    {
                        credentials = new string[1];
                    }
                }
                else
                {
                    credentials = new string[1];
                }
            }
            return credentials;
        }


        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            LoginToggleAnimation(true);
            if (comboProtocolBox.SelectedIndex != -1)
            {
                var result = await Universal.Plugin.LoginMainStep(selectedListing.AuthenticationType, usernameBox.Text, passwordTokenBox.Password, false);
                if (result == LoginResult.Success)
                {
                    await WriteCredentials();
                    InitiateMainWindow();
                }
                else if (result == LoginResult.OptStepRequired)
                {
                    var dlg = new Dialog(Dialog.Type.Information, Universal.Plugin.Name + " has requested that you provide a 2FA code to log in. Please enter it below.", 
                        "Two-factor authentication required", Properties.Settings.Default.BrandingName + " - Login", null, "Log in", false, null, null, true);
                    var dlgResult = dlg.ShowDialog();

                    if (dlgResult == true)
                    {
                        var totp = dlg.TextBoxText;
                        var optResult = await Universal.Plugin.LoginOptStep(totp);

                        if (optResult == LoginResult.Success) InitiateMainWindow();
                        else
                        {
                            LoginToggleAnimation(false);
                            SetHeaderToFail();

                        }
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
            header.Text = "Authentication failed";
            header.Foreground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#D10000"));
        }

        private void MainWindow_Ready(object sender, EventArgs e)
        {
            _mainWindow.Ready -= MainWindow_Ready;
            Tray.PushIcon("online", Properties.Settings.Default.BrandingName + " (Online)");
            Sounds.Play("login");
            _mainWindow.Show();
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
            MenuBar.MenuCreator("&" + Properties.Settings.Default.BrandingName, "Close");
            MenuBar.MenuCreator("&Tools", "Change language", "$", "Connection options...", "$", "Accessibility");
            MenuBar.MenuCreator("&Help", "Get Help: Answers and Support", "$", "Check for Updates", "$",
                "Privacy Policy", "About " + Properties.Settings.Default.BrandingName);

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";

            Universal.PluginList = PluginLoader.LoadPlugins("plugins");
            int pluginIndex = 0;
            foreach (var plugin in Universal.PluginList)
            {
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
            comboProtocolBox.SelectedIndex = 0; // selects first loaded plugin (otherwise it would be blank)
            Universal.Plugin = Universal.PluginList[comboProtocolBox.SelectedIndex];
            if (useAutoLogin)
            {
                LoginToggleAnimation(true);
            }
        }

        public static string EncryptToString(string plaintext)
        {
            byte[] data = Encoding.UTF8.GetBytes(plaintext);
            byte[] encrypted = ProtectedData.Protect(data, null, DataProtectionScope.CurrentUser);
            return Convert.ToBase64String(encrypted);
        }

        public static string DecryptFromString(string encryptedString)
        {
            if (encryptedString != null)
            {
                byte[] encryptedData = Convert.FromBase64String(encryptedString);
                byte[] decrypted = ProtectedData.Unprotect(encryptedData, null, DataProtectionScope.CurrentUser);
                return Encoding.UTF8.GetString(decrypted);
            }
            else
            {
                return String.Empty;
            }
        }

        private async void Login_ContentRendered(object sender, EventArgs e)
        {
            if (useAutoLogin)
            {
                string[] credentials = ReadCredentials();
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
                    }
                }
            }
        }

        private void InitiateMainWindow()
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
                header.Text = "Signing in";
            }
            else
            {
                signInControls.Visibility = Visibility.Visible;
                throbber.Visibility = Visibility.Collapsed;
                header.Text = "Welcome to " + Properties.Settings.Default.BrandingName + ".";
            }
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
                    case AuthenticationMethod.Token:
                        SignIn.Text = "Sign in";
                        break;
                }
            }
            else
            {
                Password.Foreground = new SolidColorBrush(System.Windows.Media.Colors.Black);
                passwordTokenBox.IsEnabled = true;
                Password.Text = "Password";
                Password.FontStyle = FontStyles.Normal;
                SignIn.Text = "Sign in";
            }
            CheckEnableLoginButton();
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
            if (!noCloseEvent) Universal.Shutdown(ev);
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