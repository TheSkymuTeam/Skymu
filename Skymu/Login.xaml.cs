/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Printing;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;

namespace Skymu
{
    /// <summary>
    ///     Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public static Login Instance;
        private MainWindow _mainWindow;
        public static bool noCloseEvent;
        public static bool useAutoLogin = false; // SET THIS IN CODE

        public Login()
        {
            InitializeComponent();
            Instance = this;

            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;
            BBuilderGrid.MouseLeftButtonUp += buttonLaunch;

            this.ContentRendered += Login_ContentRendered;

            UI.themeSetterLogin();
            Tray.PushIcon("offline", "Skype (Not signed in)");
        }

        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            LoginToggleAnimation(true);
            if (comboProtocolBox.SelectedIndex != -1)
            {
                var result = await Universal.Plugin.LoginMainStep(usernameBox.Text, passwordTokenBox.Password, false);
                if (result == LoginResult.Success)
                {
                    InitiateMainWindow();
                }
                else if (result == LoginResult.OptStepRequired)
                {
                    var dlg = new Dialog(7, Universal.Plugin.Name, null, false);
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
            header.Foreground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#A30000"));
        }

        private void MainWindow_Ready(object sender, EventArgs e)
        {
            _mainWindow.Ready -= MainWindow_Ready;
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

        private async void Login_Loaded(object sender, EventArgs e)
        {
            MenuBar.MenuInit(this);
            MenuBar.MenuCreator("&Skype", "Close");
            MenuBar.MenuCreator("&Tools", "Change language", "$", "Connection options...", "$", "Accessibility");
            MenuBar.MenuCreator("&Help", "Get Help: Answers and Support", "$", "Check for Updates", "$",
                "Privacy Policy", "About Skype");

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";

            Universal.PluginList = PluginLoader.LoadPlugins("plugins");
            foreach (var plugin in Universal.PluginList)
                comboProtocolBox.Items.Add(new ProtocolItem(plugin.Name, plugin.InternalName, plugin.TextUsername,
                    plugin.AuthenticationType));

            comboProtocolBox.SelectedIndex = 0; // selects first loaded plugin (otherwise it would be blank)
            Universal.Plugin = Universal.PluginList[comboProtocolBox.SelectedIndex];
            if (useAutoLogin)
            {
                LoginToggleAnimation(true);
            }
        }

        private async void Login_ContentRendered(object sender, EventArgs e)
        {
            if (useAutoLogin)
            {
                LoginResult lr = await Task.Run(async () =>
             await Universal.Plugin.TryAutoLogin()
         );
                if (lr == LoginResult.Success)
                {
                    InitiateMainWindow();
                    return;
                }
                else
                {
                    LoginToggleAnimation(false);
                }
            }
        }

        private void InitiateMainWindow()
        {
            header.Text = "Loading your data";
            _mainWindow = new MainWindow();
            _mainWindow.Ready += MainWindow_Ready;
            _ = _mainWindow.InitializeAsync();
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
                header.Text = "Welcome to Skype.";
            }
        }

        private void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Universal.Plugin = Universal.PluginList[comboProtocolBox.SelectedIndex];
            skypenameText.Text = Universal.Plugin.TextUsername;
            signInText.Text = Universal.Plugin.CustomLoginButtonText;

            if (Universal.Plugin.AuthenticationType != AuthenticationMethod.Standard)
            {
                passwordTokenBox.IsEnabled = false;
                passwordText.Text = "field not required";
                passwordText.FontStyle = FontStyles.Italic;
                passwordText.Foreground = new SolidColorBrush(Colors.DarkGray);
            }
            else
            {
                passwordText.Foreground = new SolidColorBrush(Colors.Black);
                passwordTokenBox.IsEnabled = true;
                passwordText.Text = "Password";
                passwordText.FontStyle = FontStyles.Normal;
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
            Instance = null;
        }

        private void Login_Closing(object sender, CancelEventArgs ev)
        {
            if (!noCloseEvent) Universal.Shutdown(ev);
        }

        public class ProtocolItem
        {
            public ProtocolItem(string name, string intName, string usertext, AuthenticationMethod authType)
            {
                DisplayName = name;
                InternalName = intName;
                UsernameText = usertext;
                AuthenticationType = authType;  
            }

            public string DisplayName { get; private set; }
            public string InternalName { get; private set; }
            public string UsernameText { get; }
            public AuthenticationMethod AuthenticationType { get; }
        }
    }
}