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

using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Navigation;
using MiddleMan;

namespace Skymu
{
    /// <summary>
    ///     Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public static Login Instance;
        public static bool noCloseEvent;

        public Login()
        {
            InitializeComponent();
            Instance = this;

            usernameBox.KeyUp += BoxKeyUp;
            passwordTokenBox.KeyUp += BoxKeyUp;
            BBuilderGrid.MouseLeftButtonUp += buttonLaunch;

            UI.themeSetterLogin();
            Tray.PushIcon("offline", "Skype (Not signed in)");
        }

        private void SetButtonMode(Position position)
        {
            byte marginup = 6;
            if (position == Position.Depressed) marginup = 7;
            signInText.Margin = new Thickness(-1, marginup, 0, 0);
        }

        private void buttonPressed(object state, RoutedEventArgs e)
        {
            SetButtonMode(Position.Depressed);
        }

        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            SetButtonMode(Position.Hover);
            if (comboProtocolBox.SelectedIndex != -1)
            {
                var plugin = Universal.Plugins[comboProtocolBox.SelectedIndex];
                var result = await plugin.LoginMainStep(usernameBox.Text, passwordTokenBox.Password, false);
                if (result == LoginResult.Success)
                {
                    SwitchToMain();
                }
                else if (result == LoginResult.OptStepRequired)
                {
                    var dlg = new Dialog(7, plugin.Name, null, false);
                    var dlgResult = dlg.ShowDialog();

                    if (dlgResult == true)
                    {
                        var totp = dlg.TextBoxText;
                        var optResult = await plugin.LoginOptStep(totp);

                        if (optResult == LoginResult.Success) SwitchToMain();
                    }
                }
            }
        }

        private void ResetLoginButton()
        {
            SetButtonMode(Position.Default);
        }

        private void SwitchToMain()
        {
            noCloseEvent = true;
            SetButtonMode(Position.Default);
            new MainWindow().Show();
            Close();
            Universal.ShowMsg("You are now logged in to Skymu. We hope you enjoy our client.", "Login successful");
        }


        private void ButtonExit(object state, RoutedEventArgs e)
        {
            if (!noCloseEvent) ResetLoginButton();
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
            MenuBar.MenuCreator("&Skype", "Close");
            MenuBar.MenuCreator("&Tools", "Change language", "$", "Connection options...", "$", "Accessibility");
            MenuBar.MenuCreator("&Help", "Get Help: Answers and Support", "$", "Check for Updates", "$",
                "Privacy Policy", "About Skype");

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";

            Universal.Plugins = PluginLoader.LoadPlugins("plugins");
            foreach (var plugin in Universal.Plugins)
                comboProtocolBox.Items.Add(new ProtocolItem(plugin.Name, plugin.InternalName, plugin.TextUsername,
                    plugin.AuthenticationType));

            comboProtocolBox.SelectedIndex = 0; // selects first loaded plugin (otherwise it would be blank)
        }

        private void ProtocolSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var protocol = (ProtocolItem)comboProtocolBox.SelectedItem;
            skypenameText.Text = protocol.UsernameText;

            if (protocol.AuthenticationType != AuthenticationMethod.Standard)
            {
                signInText.Text = "Send code";
                passwordTokenBox.IsEnabled = false;
                passwordText.Text = "field not required";
                passwordText.FontStyle = FontStyles.Italic;
                passwordText.Foreground = new SolidColorBrush(Colors.DarkGray);
            }
            else
            {
                passwordText.Foreground = new SolidColorBrush(Colors.Black);
                signInText.Text = "Sign in";
                passwordTokenBox.IsEnabled = true;
                passwordText.Text = "Password";
                passwordText.FontStyle = FontStyles.Normal;
            }
            CheckEnableLoginButton();
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Process.Start("https://skymu.app/");
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

        private enum Position
        {
            Default = 0,
            Hover = 25,
            HeavyDepressed = 50,
            GlossDefault = 75,
            Depressed = 100
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