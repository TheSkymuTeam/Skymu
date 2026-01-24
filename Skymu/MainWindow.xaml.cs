using System;
using System.Windows;
using System.Diagnostics;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Controls;
using System.Windows.Shell;

namespace Skymu
{
    public partial class MainWindow : Window
    {
        public static MainWindow Instance;
        private bool deactivatedWindow;

        public MainWindow()
        {
            InitializeComponent();
            Instance = this;

            this.MinHeight = 450;
            this.MinWidth = 800;

            SetWindowTitle("Skype™ - thegamingkart");
            UI.themeSetterMain();

            SetClickable(close, minimize, maximize, split, tbli);

            if (!UI.nativeBorder)
            {
                this.WindowStyle = WindowStyle.None;
                var chrome = new WindowChrome
                {
                    GlassFrameThickness = new Thickness(8, 30, 8, 8),
                    ResizeBorderThickness = new Thickness(8)
                };

                WindowChrome.SetWindowChrome(this, chrome);
            }

            else if (UI.nativeBorder)
            {
                this.WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(0, 0, 0, 0);
            }
            
            Tray.PushIcon("online", "Skype (Online)");            
        }        

        private void SetClickable(params Image[] buttons)
        {
            foreach (Image button in buttons)
            {
                WindowChrome.SetIsHitTestVisibleInChrome(button, true);
            }
        }

        private void SetWindowTitle(string newtitle)
        {
            TitleMain.Text = newtitle;
            TitleShadow.Text = newtitle;
            TitleShadow2.Text = newtitle;
            TitleShadow3.Text = newtitle;
            this.Title = newtitle;
        }

        private readonly DropShadowEffect glowEffectCyan = new DropShadowEffect
        {
            Color = Colors.Cyan,
            BlurRadius = 16,
            ShadowDepth = 0,
            Opacity = 0.8
        };

        private readonly DropShadowEffect glowEffectRed = new DropShadowEffect
        {
            Color = Colors.Red,
            BlurRadius = 16,
            ShadowDepth = 0,
            Opacity = 0.8
        };

        private void WindowActivationToggle(byte span, byte bigmarge, byte smallmarge, byte position, byte positionClose)
        {
            UI.ImageCropper(new Image[] { close }, close.Name, 42, 18, positionClose, UI.CropType.VerticalStack);
            UI.ImageCropper(new Image[] { split }, split.Name, 26, span, position, UI.CropType.VerticalStack);
            UI.ImageCropper(new Image[] { minimize }, minimize.Name, 24, span, position, UI.CropType.VerticalStack);
            UI.ImageCropper(new Image[] { maximize }, maximize.Name, 24, span, position, UI.CropType.VerticalStack);
            minimize.Margin = new Thickness(minimize.Margin.Left, bigmarge, minimize.Margin.Right, minimize.Margin.Bottom);
            maximize.Margin = new Thickness(maximize.Margin.Left, bigmarge, maximize.Margin.Right, maximize.Margin.Bottom);
            split.Margin = new Thickness(split.Margin.Left, bigmarge, split.Margin.Right, split.Margin.Bottom);
            close.Margin = new Thickness(close.Margin.Left, smallmarge, close.Margin.Right, close.Margin.Bottom);
        }
       
        private void Window_Deactivated(object sender, EventArgs e) 
        {
            close.Effect = null;
            Image[] buttons = { close, minimize, maximize, split };
            foreach (Image img in buttons) 
            {
                img.Effect = null;
            }
            WindowActivationToggle(17, 2, 1, 19, 18);
            deactivatedWindow = true;           
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            WindowActivationToggle(18, 1, 0, 0, 0);
            deactivatedWindow = false;           
        }

       private void Window_StateChanged(object sender, EventArgs e)
        {
            if (this.WindowState == WindowState.Maximized)
            {
                this.WindowState = WindowState.Normal;
            }

            /*if (this.WindowState != WindowState.Maximized)
            {
                var chrome = new WindowChrome
                {
                    GlassFrameThickness = new Thickness(8, 29, 8, 8),
                    ResizeBorderThickness = new Thickness(8)
                };

                WindowChrome.SetWindowChrome(this, chrome);
            }*/
        } 


        private void TitleButton_MouseEnter(object sender, RoutedEventArgs e)
        {
            var img = sender as Image;
            int width = 0;
            int height;
            int span;

            if (deactivatedWindow)
            {
                height = 38;
                span = 16;
            }

            else
            {
                height = 37;
                span = 17;
            }
            
            if (img != null)
            {
                img.Effect = glowEffectCyan;
                switch (img.Name)
                {
                    case "close": img.Effect = glowEffectRed; width = 42; height--; span++; break;
                    case "split": width = 26; break;
                    case "minimize": width = 24; break;
                    case "maximize": width = 24; break;
                    case "titleBarLongIcon": img.Effect = glowEffectCyan; break;
                }
                UI.ImageCropper(new Image[] { img }, img.Name, width, span, height, UI.CropType.VerticalStack);
            }
        }

        private void TitleButton_MouseLeave(object sender, RoutedEventArgs e) 
        {
            var img = sender as Image;
            int width = 0;
            int height = 0;
            if (!deactivatedWindow)
            {
                if (img != null)
                {
                    img.Effect = null;
                    switch (img.Name)
                    {
                        case "close": width = 42; break;
                        case "split": width = 26; break;
                        case "minimize": width = 24; break;
                        case "maximize": width = 24; break;
                        case "titleBarLongIcon": img.Effect = null; break;
                    }

                    UI.ImageCropper(new Image[] { img }, img.Name, width, 18, height, UI.CropType.VerticalStack);
                }
            }
            else if (deactivatedWindow)
            {
                img.Effect = null;
                WindowActivationToggle(17, 2, 1, 19, 18);
            }
            
        }

        private void TitleButton_Pressed(object sender, RoutedEventArgs e)
        {
            var img = sender as Image;
            int width = 0;
            int height = 55;
            int span = 17;
            if (img != null)
            {
                switch (img.Name)
                {
                    case "close": width = 42; height--; span++; break;
                    case "split": width = 26; break;
                    case "minimize": width = 24; break;
                    case "maximize": width = 24; break;
                }
                UI.ImageCropper(new Image[] { img }, img.Name, width, span, height, UI.CropType.VerticalStack);
            }
        }

        private void TitleButton_Click(object sender, RoutedEventArgs e)
        {
            var img = sender as Image;
            if (img != null)
            {
                switch (img.Name)
                {
                    case "close": Close(); break;
                    case "split": Universal.NotImplemented("Split Window"); break;
                    case "minimize": WindowState = WindowState.Minimized; break;
                    // case "maximize": width = 24; if (WindowState == WindowState.Normal) { WindowState = WindowState.Maximized; } else { WindowState = WindowState.Normal; } break;
                    case "maximize": Universal.NotImplemented("Maximizing and Fullscreen"); break;
                }
            }
        }

        private void tbli_Click(object sender, RoutedEventArgs e) { Process.Start("https://www.youtube.com/watch?v=kVsH_ySm5_E"); }
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs ev) { Universal.Shutdown(ev); }
        // For menu bars
        private void mn_New(object sender, RoutedEventArgs e) { }
        private void mn_Open(object sender, RoutedEventArgs e) { }
        private void mn_Close(object sender, RoutedEventArgs e) { }
        private void mn_Apps(object sender, RoutedEventArgs e) { }
        private void mn_Language(object sender, RoutedEventArgs e) { }
        private void mn_Accessibility(object sender, RoutedEventArgs e) { }
        private void mn_ShareWithFriend(object sender, RoutedEventArgs e) { }
        private void mn_SkypeWifi(object sender, RoutedEventArgs e) { }
        private void mn_Options(object sender, RoutedEventArgs e) { }     
      
    }
}