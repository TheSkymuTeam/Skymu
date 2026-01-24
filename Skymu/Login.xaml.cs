using System;
using System.Windows;
using System.ComponentModel;
using System.Windows.Media;
using System.Collections.Generic;
using MiddleMan;
using System.Runtime.CompilerServices;

namespace Skymu
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public static Login Instance;
        public static bool noCloseEvent = false;
        
        private enum Position { Default = 0, Hover = 25, HeavyDepressed = 50, GlossDefault = 75, Depressed = 100 }
   
        public Login()
        {                     
            InitializeComponent();
            Instance = this;

            usernameBox.KeyUp += ChangeOpacity;
            passwordTokenBox.KeyUp += ChangeOpacity;
            BBuilderGrid.MouseLeftButtonDown += buttonPressed;
            BBuilderGrid.MouseEnter += buttonHover;
            BBuilderGrid.MouseLeftButtonUp += buttonLaunch;
            BBuilderGrid.MouseLeave += ButtonExit;

            UI.themeSetterLogin();
            Tray.PushIcon("offline", "Skype (Not signed in)");
        }

        private void SetImagePosition(Position position) 
        { 
            UI.ImageCropper(new[] { lBI, mBI, rBI }, "plain", 130, 25, (int)position, UI.CropType.VerticalTriSplit);
        }

        private void buttonPressed(object state, RoutedEventArgs e)
        {
            if (mBI.Opacity == 1)
            {
                SetImagePosition(Position.Depressed);
                signInText.Margin = new Thickness(-1, 7, 0, 0);
            }
        }
      
        private async void buttonLaunch(object state, RoutedEventArgs e)
        {
            if (mBI.Opacity == 1)
            {
                if (comboProtocolBox.SelectedIndex != -1)
                {
                    var plugin = Universal.Plugins[comboProtocolBox.SelectedIndex];
                    LoginResult result = await plugin.LoginMainStep(usernameBox.Text, passwordTokenBox.Password);
                    if (result == LoginResult.Success)
                    {
                        SwitchToMain();
                    }
                    else if (result == LoginResult.OptStepRequired)
                    {
                        var dlg = new Dialog(7, plugin.Name, null, false);
                        bool? dlgResult = dlg.ShowDialog();

                        if (dlgResult == true)
                        {
                            string totp = dlg.TextBoxText;       
                            LoginResult optResult = await plugin.LoginOptStep(totp);

                            if (optResult == LoginResult.Success)
                            {
                                SwitchToMain();
                            }
                            else
                            {
                                ResetLoginButton();
                            }
                        }
                    }
                    else
                    {
                        ResetLoginButton();
                    }
                }                           
            }
        }

        private void ResetLoginButton()
        {
            SetImagePosition(Position.Default);
            signInText.Margin = new Thickness(-1, 6, 0, 0);
        }

        private void SwitchToMain()
        {
            noCloseEvent = true;
            SetImagePosition(Position.Default);
            new MainWindow().Show();
            this.Close();
            Universal.ShowMsg("You are now logged in to Skymu. We hope you enjoy our client.", "Login successful");
        }

        private void buttonHover(object state, RoutedEventArgs e)
        {
            if (mBI.Opacity == 1)
            {
                SetImagePosition(Position.Hover);
            }
        }

        private void ButtonExit(object state, RoutedEventArgs e)
        {
            if (mBI.Opacity == 1 && noCloseEvent == false)
            {
                ResetLoginButton();
            }
        }

        private void Opacifier(double opacity)
        {
            lBI.Opacity = opacity;
            mBI.Opacity = opacity;
            rBI.Opacity = opacity;
        }

        private void ChangeOpacity(object sender, RoutedEventArgs e)
        {
            if (usernameBox.Text.Trim() != String.Empty && (passwordTokenBox.Password.Trim() != String.Empty || passwordTokenBox.IsEnabled == false))
            {
                Opacifier(1); // full opacity
            }

            else
            {
                Opacifier(0.38); // reduced opacity
            }
        }

        public class ProtocolItem
        {
            public string DisplayName { get; private set; }
            public string InternalName { get; private set; }
            public string UsernameText { get; private set; }
            public AuthenticationMethod AuthenticationType { get; private set; }
            public ProtocolItem(string name, string intName, string usertext, AuthenticationMethod authType)
            {
                DisplayName = name;
                InternalName = intName;
                UsernameText = usertext;
                AuthenticationType = authType;
            }
        }

        private void Login_Loaded(object sender, EventArgs e)
        {
            MenuBar.MenuInit(this);
            MenuBar.MenuCreator("&Skype", "Close");
            MenuBar.MenuCreator("&Tools", "Change language", "$", "Connection options...", "$", "Accessibility");
            MenuBar.MenuCreator("&Help", "Get Help: Answers and Support", "$", "Check for Updates", "$", "Privacy Policy", "About Skype");

            comboProtocolBox.DisplayMemberPath = "DisplayName";
            comboProtocolBox.SelectedValuePath = "DisplayName";

            Universal.Plugins = PluginLoader.LoadPlugins("plugins");
            foreach (var plugin in Universal.Plugins)
            {
                comboProtocolBox.Items.Add(new ProtocolItem(plugin.Name, plugin.InternalName, plugin.TextUsername, plugin.AuthenticationType));
            }

            comboProtocolBox.SelectedIndex = 0; // selects first loaded plugin (otherwise it would be blank)
        }

        private void ProtocolSelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            ProtocolItem protocol = (ProtocolItem)comboProtocolBox.SelectedItem;
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
        }

        private void Hyperlink_RequestNavigate(object sender, System.Windows.Navigation.RequestNavigateEventArgs e)
        {
            System.Diagnostics.Process.Start("https://skymu.app/");
            e.Handled = true;
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
            Instance = null;            
        }

        private void Login_Closing(object sender, System.ComponentModel.CancelEventArgs ev)
        {
            if (!noCloseEvent)
            {
                Universal.Shutdown(ev);
            }
        }
    }
}
