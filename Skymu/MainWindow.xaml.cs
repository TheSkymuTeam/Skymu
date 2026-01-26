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

#pragma warning disable 4014

using MiddleMan;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Security.Principal;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Shell;

namespace Skymu
{
    public partial class MainWindow : Window
    {
        public static MainWindow Instance;
        private bool deactivatedWindow;
        public event EventHandler Ready;
        public MainWindow()
        {
            InitializeComponent();
            Instance = this;
            this.MinHeight = 450;
            this.MinWidth = 800;

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

            this.MouseLeftButtonUp += MouseRelease;
            this.SizeChanged += MainWindow_SizeChanged;

            Tray.PushIcon("online", "Skype (Online)");
            PopulateSidebar();
            btnContacts.SetState(ButtonVisualState.Pressed);
            SetWindow(WindowType.Home);
        }

        public static readonly DependencyProperty WindowTitleProperty =
DependencyProperty.Register(
"WindowTitle",
typeof(string),
typeof(MainWindow));

        public string WindowTitle
        {
            get { return (string)GetValue(WindowTitleProperty); }
            set { SetValue(WindowTitleProperty, value); }
        }

        private void SetClickable(params Image[] buttons)
        {
            foreach (Image button in buttons)
            {
                WindowChrome.SetIsHitTestVisibleInChrome(button, true);
            }
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

        private void ContactList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            if (((ListBox)sender).SelectedItem != null)
            {
                var contact = (ContactData)((ListBox)sender).SelectedItem;
                SetWindow(WindowType.Chat);
                chatHeader.Text = contact.Username;
                if (contact.ProfilePicture != null)
                {
                    CPAProfilePic.Source = contact.ProfilePicture;
                }
                else
                {
                    CPAProfilePic.Source = new BitmapImage(new Uri("pack://application:,,,/ResourcesLight/ProfilePictures/profile_anonymous.png"));
                }
                CPAStatusIcon.DefaultIndex = contact.ConnectionStatus;
                switch (contact.ConnectionStatus)
                {
                    case 2:
                        CPAStatusText.Text = "Online";
                        break;
                    case 3:
                        CPAStatusText.Text = "Away";
                        break;
                    case 19:
                        CPAStatusText.Text = "Offline";
                        break;
                    case 5:
                        CPAStatusText.Text = "Do not disturb";
                        break;
                }
                
            }
        }

        private void ChatWindow_Close(object sender, MouseButtonEventArgs e)
        {
            SetWindow(WindowType.Home);
        }

        private enum WindowType
        {
            Home,
            Chat
        }

        private WindowType currentWindow = WindowType.Chat;
        private void SetWindow(WindowType type)
        {
            if (type == WindowType.Home && currentWindow != WindowType.Home)
            {
                ToggleStBSelection(true);
                HomeTopbar.Visibility = Visibility.Visible;
                ChatTopbar.Visibility = Visibility.Collapsed;
                ChatProfileArea.Visibility = Visibility.Collapsed;
                TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                MessageWindowRow.Height = new GridLength(0);
                MessageWindow.Visibility = Visibility.Collapsed;
                MainPageButton.SetState(ButtonVisualState.Pressed);
                ContactsList.SelectedItem = null;
                currentWindow = WindowType.Home;
            }
            else if (type == WindowType.Chat && currentWindow != WindowType.Chat)
            {
                ToggleStBSelection(false);
                StatusBox.SetState(ButtonVisualState.Default);
                HomeTopbar.Visibility = Visibility.Collapsed;
                ChatTopbar.Visibility = Visibility.Visible;
                ChatProfileArea.Visibility = Visibility.Visible;
                TopbarWindowRow.Height = new GridLength(120);               
                MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                MessageWindow.Visibility = Visibility.Visible;            
                currentWindow = WindowType.Chat;
            }
        }

        private void ToggleStBSelection(bool selected)
        {
            if (selected)
            {
                StatusBox.SetState(ButtonVisualState.Pressed);
                StatusBox.TextColor = Brushes.White;
                SBHomeButton.SetState(ButtonVisualState.Pressed);
            }
            else
            {
                StatusBox.SetState(ButtonVisualState.Default);
                StatusBox.TextColor = (Brush)new BrushConverter().ConvertFromString("#333333");
                SBHomeButton.SetState(ButtonVisualState.Default);
            }
        }

        private bool isDragging = false;
        private Point dragStart;
        private UIElement capturedElement = null; // Store reference to the captured element

        private void SkypeSplitter_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
        {
            if (isDragging)
            {
                Point current = e.GetPosition(this);
                Vector delta = current - dragStart;
                ColumnDefinition sidebarCol = ContentArea.ColumnDefinitions[0];
                double max = sidebarCol.MaxWidth;
                double min = sidebarCol.MinWidth;

                double newWidth = sidebarCol.Width.Value + delta.X;

                if (newWidth < min) newWidth = min;
                if (newWidth > max) newWidth = max;

                sidebarCol.Width = new GridLength(newWidth);
                dragStart = current; // update drag start
            }
        }

        private void SkypeSplitter_Press(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            isDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as UIElement; // Store the element reference

            if (capturedElement != null)
            {
                capturedElement.CaptureMouse();
                e.Handled = true;
            }
        }

        private void MouseRelease(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (isDragging)
            {
                isDragging = false;

                // Use the stored reference instead of sender
                if (capturedElement != null && capturedElement.IsMouseCaptured)
                {
                    capturedElement.ReleaseMouseCapture();
                }
                capturedElement = null; // Clean up the reference
                e.Handled = true;
            }
        }

        private void MainWindow_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            SidebarColumn.MaxWidth = this.ActualWidth / 2;
        }
        private async Task SkymuApiStatusHandler()
        {
            string SkymuClientToken = await SkymuApi.GenerateUID();
            await SkymuApi.SetStatus(CanSetStatus(), SkymuClientToken);

            System.Timers.Timer pingTimer = new System.Timers.Timer(29.5 * 60 * 1000);
            pingTimer.Elapsed += async (sender, e) => await SkymuApi.StatusPing(CanSetStatus(), SkymuClientToken);
            pingTimer.AutoReset = true;
            pingTimer.Enabled = true;

            System.Timers.Timer usersOnlineTimer = new System.Timers.Timer(2 * 60 * 1000);
            usersOnlineTimer.Elapsed += async (sender, e) =>
                await CheckSetUsersOnline();
            usersOnlineTimer.AutoReset = true;
            usersOnlineTimer.Enabled = true;
        }

        private bool CanSetStatus()
        {
            int index = StatusIcon.DefaultIndex;
            if (index == 5 || index == 2 || index == 3 || index == 19)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private async Task CheckSetUsersOnline()
        {
            int count = await SkymuApi.FetchUserCount();

            await Dispatcher.InvokeAsync(() =>
            {
                string label = count == 1 ? "user" : "users";
                GlobalUserCount.Text = count + " " + label + " online";
            });
        }

        private async Task PopulateSidebar()
        {
            SidebarData data = await Universal.Plugin.FetchSidebarData();
            GlobalUserCount.Text = "Loading online user count...";
            SkymuApiStatusHandler();
            CheckSetUsersOnline();
            WindowTitle = "Skype™ - " + data.Username;
            StatusBox.Text = data.Username;
            SkypeCreditBox.Text = data.SkypeCreditText;
            StatusIcon.DefaultIndex = data.ConnectionStatus;
            ContactsList.ItemsSource = data.ContactList;
            Ready?.Invoke(this, EventArgs.Empty);
        }

    }
}