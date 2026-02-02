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
using System.Collections.Specialized;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Shell;
using System.Windows.Threading;

namespace Skymu
{
    public partial class MainWindow : Window
    {
        private static WindowFrame border = (WindowFrame)Properties.Settings.Default.WindowFrame;
        private SkymuApi api;

        public static MainWindow Instance;
        private System.Timers.Timer _pingTimer;
        private System.Timers.Timer _usersOnlineTimer;
        private bool deactivatedWindow;
        public event EventHandler Ready;
        public MainWindow()
        {
            InitializeComponent();
            Instance = this;
            this.MinHeight = 450;
            this.MinWidth = 800;

            UI.themeSetterMain();
            api = new SkymuApi();

            SetClickable(close, minimize, maximize, split, tbli);

            if (border != WindowFrame.Native)
            {
                this.WindowStyle = WindowStyle.None;
                var chrome = new WindowChrome
                {
                    GlassFrameThickness = new Thickness(8, 30, 8, 8),
                    ResizeBorderThickness = new Thickness(8)
                };

                WindowChrome.SetWindowChrome(this, chrome);
                if (DwmHelper.IsDwmEnabled() && border == WindowFrame.SkypeAero)
                {
                    this.Background = Brushes.Transparent;
                    TitleBar.Background = Brushes.Transparent;
                    WindowArea.Margin = new Thickness(8, 30, 8, 8);
                    TitleMain.FontFamily = new FontFamily("Segoe UI");
                    TitleMain.FontWeight = FontWeights.Normal;
                    TitleMain.Foreground = Brushes.Black;
                    TitleMain.Margin = new Thickness(50, 7, 0, 0);
                    TextOptions.SetTextRenderingMode(TitleMain, TextRenderingMode.ClearType);
                    TitleMain.Effect = new DropShadowEffect
                    {
                        ShadowDepth = 0,
                        Direction = 330,
                        Color = Colors.White,
                        Opacity = 1,
                        BlurRadius = 20
                    };
                    TitleMain.FontSize = 12;
                    TitleShadow.Visibility = Visibility.Visible;
                    TitleShadow2.Visibility = Visibility.Visible;
                    TitleShadow3.Visibility = Visibility.Visible;
                }
            }

            else if (border == WindowFrame.Native)
            {
                this.WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(0, 0, 0, 0);
            }

            this.MouseLeftButtonUp += MouseRelease;
            this.SizeChanged += MainWindow_SizeChanged;
            this.Closed += MainWindow_Closed;
            SetWindow(WindowType.Home);
        }

        public async Task InitializeAsync()
        {
            await InitSidebar();
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

        private enum WindowFrame
        {
            Native,
            SkypeAero,
            SkypeBasic
        };

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

        internal static readonly BitmapImage AnonymousAvatar = LoadAvatar();

        internal static string Identifier = String.Empty;

        static BitmapImage LoadAvatar()
        {
            var bmp = new BitmapImage();
            bmp.BeginInit();
            bmp.UriSource = new Uri(
                "pack://application:,,,/Resources/Light/Profile Pictures/profile_anonymous.png",
                UriKind.Absolute);
            bmp.CacheOption = BitmapCacheOption.OnLoad;
            bmp.EndInit();
            bmp.Freeze();
            return bmp;
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

            if (img is not null)
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
                if (img is not null)
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
            if (img is not null)
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
            if (img is not null)
            {
                switch (img.Name)
                {
                    case "close": Close(); break;
                    case "split": Universal.NotImplemented("Split Window"); break;
                    case "minimize": WindowState = WindowState.Minimized; break;
                    // case "maximize": if (WindowState == WindowState.Normal) { WindowState = WindowState.Maximized; } else { WindowState = WindowState.Normal; } break;
                    case "maximize": Universal.NotImplemented("Maximizing and Fullscreen"); break;
                }
            }
        }

        private void tbli_Click(object sender, RoutedEventArgs e) {
            Process.Start(new ProcessStartInfo
            {
                FileName = "https://www.youtube.com/watch?v=kVsH_ySm5_E",
                UseShellExecute = true
            });
        }
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs ev) { Universal.Shutdown(ev); }
        // For menu bars
        private void mn_New(object sender, RoutedEventArgs e) { }
        private void mn_Open(object sender, RoutedEventArgs e) { }
        private void mn_Close(object sender, RoutedEventArgs e) { Universal.Shutdown(); }
        private void mn_Apps(object sender, RoutedEventArgs e) { }
        private void mn_Language(object sender, RoutedEventArgs e) { }
        private void mn_Accessibility(object sender, RoutedEventArgs e) { }
        private void mn_ShareWithFriend(object sender, RoutedEventArgs e) { }
        private void mn_SkypeWifi(object sender, RoutedEventArgs e) { }
        private void mn_Options(object sender, RoutedEventArgs e) { }

        private ProfileData selectedContact;

        private static T FindVisualChild<T>(DependencyObject parent)
    where T : DependencyObject
        {
            if (parent is null)
                return null;

            int count = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < count; i++)
            {
                DependencyObject child = VisualTreeHelper.GetChild(parent, i);

                if (child is T typedChild)
                    return typedChild;

                T result = FindVisualChild<T>(child);
                if (result is not null)
                    return result;
            }

            return null;
        }

        private NotifyCollectionChangedEventHandler _activeConversationChangedHandler;
        private async void ContactList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Universal.Plugin.ActiveConversation.Clear();
            var listBox = (ListBox)sender;
            if (listBox.SelectedItem is null)
                return;

            selectedContact = (ProfileData)listBox.SelectedItem;

            SetWindow(WindowType.Chat);

            PlaceholderTextMTB = "Type a message to " + selectedContact.DisplayName + " here";
            MessageTextBox.Text = PlaceholderTextMTB;

            var container = (ListBoxItem)listBox.ItemContainerGenerator
                .ContainerFromItem(selectedContact);

            Image sourceImage = FindVisualChild<Image>(container);

            if (await Universal.Plugin.SetActiveConversation(selectedContact.Identifier))
            {
                var collection = Universal.Plugin.ActiveConversation;

                for (int i = 0; i < collection.Count; i++)
                {
                    if (collection[i] is MessageItem msg)
                    {
                        string prevID = null;
                        for (int j = i - 1; j >= 0; j--)
                        {
                            if (collection[j] is MessageItem prevMsg)
                            {
                                prevID = prevMsg.SentByID;
                                break;
                            }
                        }
                        msg.PreviousMessageIdentifier = prevID;
                    }
                }

                if (_activeConversationChangedHandler != null)
                    collection.CollectionChanged -= _activeConversationChangedHandler;

                _activeConversationChangedHandler = new NotifyCollectionChangedEventHandler((s, args) =>
                {
                    if (args.Action == NotifyCollectionChangedAction.Add)
                    {
                        foreach (var newItem in args.NewItems)
                        {
                            if (newItem is MessageItem msg)
                            {
                                if (msg.SentByID != MainWindow.Identifier)
                                {
                                    Sounds.Play("message-recieved");
                                    break;
                                }
                            }
                        }
                    }
                });

                collection.CollectionChanged += _activeConversationChangedHandler;
                ConversationItemsList.ItemsSource = collection;
            }
        }



        private void Chat_Close(object sender, MouseButtonEventArgs e)
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

            if (capturedElement is not null)
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
                if (capturedElement is not null && capturedElement.IsMouseCaptured)
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
            await api.GenerateUID();
            await api.SetUsrStatus(CanSetStatus());
            await api.ConnectWS();

            _ = Task.Run(async () =>
            {
                while (true)
                {
                    await Task.Delay(60000);
                    await api.SendPingToServ();
                }
            });
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

        private async Task InitSidebar()
        {
            await Universal.Plugin.PopulateSidebarInformation();
            await Universal.Plugin.PopulateRecentsList();

            SidebarData data = Universal.Plugin.SidebarInformation;
            GlobalUserCount.Text = "Loading online user count...";
            await SkymuApiStatusHandler();
            api.OnUserCountUpdate += usrCount =>
            {
                Dispatcher.Invoke(() =>
                {
                    GlobalUserCount.Text = $"{usrCount} online users";
                });
            };

            WindowTitle = Properties.Settings.Default.BrandingName + "™ - " + data.DisplayName;

            Identifier = data.Identifier;
            StatusBox.Text = data.DisplayName;
            SkypeCreditBox.Text = data.SkypeCreditText;
            StatusIcon.DefaultIndex = data.ConnectionStatus;

            ContactsList.ItemsSource = Universal.Plugin.RecentsList;

            SpeedTester();

            Ready?.Invoke(this, EventArgs.Empty);
        }

        private void MainWindow_Closed(object sender, EventArgs e)
        {
            try
            {
                if (_pingTimer is not null)
                {
                    _pingTimer.Stop();
                    _pingTimer.Dispose();
                    _pingTimer = null;
                }

                if (_usersOnlineTimer is not null)
                {
                    _usersOnlineTimer.Stop();
                    _usersOnlineTimer.Dispose();
                    _usersOnlineTimer = null;
                }
            }
            catch { }
        }

        private async void OnMsgSendClickButton(object sender, MouseButtonEventArgs e)
        {
            SendMessage();
        }

        private async Task SendMessage()
        {            
            string body = MessageTextBox.Text;
            MessageTextBox.Clear();
            bool didSend = await Universal.Plugin.SendMessage(selectedContact.Identifier, body);
            if (didSend)
            {
                Sounds.Play("message-sent");
            }
            else
            {
                Sounds.Play("error");
            }
        }

        public static string GetDisplayName(string identifier)
        {
            return "";
        }

        private async void WifiButton_Click(object sender, MouseButtonEventArgs e)
        {
            SpeedTester();
        }

        private async Task SpeedTester()
        {
            string iconUri;
            string testFile = "https://speed.cloudflare.com/__down?bytes=5242880";
            try
            {


                var stopwatch = new Stopwatch();
                stopwatch.Start();

                var data = await Universal.HttpClient.GetByteArrayAsync(testFile);

                stopwatch.Stop();

                double seconds = stopwatch.Elapsed.TotalSeconds;
                double megabits = (data.Length * 8.0) / 1_000_000;
                double speedMbps = megabits / seconds;

                // Map speed to bars

                if (speedMbps >= 50)
                    iconUri = "pack://application:,,,/Skymu;component/Resources/Light/Chat/btn_pill_small_network_good.png";
                else if (speedMbps >= 20)
                    iconUri = "pack://application:,,,/Skymu;component/Resources/Light/Chat/btn_pill_small_network_best.png";
                else if (speedMbps >= 10)
                    iconUri = "pack://application:,,,/Skymu;component/Resources/Light/Chat/btn_pill_small_network_med.png";
                else if (speedMbps >= 5)
                    iconUri = "pack://application:,,,/Skymu;component/Resources/Light/Chat/btn_pill_small_network_med2.png";
                else
                    iconUri = "pack://application:,,,/Skymu;component/Resources/Light/Chat/btn_pill_small_network_bad.png";

            }
            catch
            {
                iconUri = "pack://application:,,,/Skymu;component/Resources/Light/Chat/btn_pill_small_network_unavailable.png";
            }
            var uri = new Uri(
     iconUri,
     UriKind.Absolute);

            var bmp = new BitmapImage();
            bmp.BeginInit();
            bmp.UriSource = uri;
            bmp.CacheOption = BitmapCacheOption.OnLoad;
            bmp.EndInit();
            bmp.Freeze();

            WifiButton.Source = bmp;
        }

        private void ConversationItemsList_Loaded(object sender, RoutedEventArgs e)
        {
            var listBox = (ListBox)sender;

            ScrollToBottom(listBox);

            if (listBox.Items is INotifyCollectionChanged notifyCollection)
            {
                notifyCollection.CollectionChanged += (s, args) =>
                {
                    if (args.Action == NotifyCollectionChangedAction.Add)
                    {
                        foreach (var newItem in args.NewItems)
                        {
                            if (newItem is MessageItem msg)
                            {
                                int index = listBox.Items.IndexOf(msg);
                                string prevID = null;
                                for (int j = index - 1; j >= 0; j--)
                                {
                                    if (listBox.Items[j] is MessageItem prevMsg)
                                    {
                                        prevID = prevMsg.SentByID;
                                        break;
                                    }
                                }
                                msg.PreviousMessageIdentifier = prevID;
                            }
                        }
                    }

                    Dispatcher.BeginInvoke(
                        DispatcherPriority.Background,
                        new Action(() => ScrollToBottom(listBox)));
                };
            }
            var sv = FindScrollViewer(listBox); // use the helper

            if (false)
            {
                // LayoutUpdated fires whenever the ScrollViewer changes size/content
                sv.LayoutUpdated += (s, args) =>
                {
                    if (sv.ExtentHeight > sv.ViewportHeight)
                    {
                        // Scrollbar needed → remove extra margin
                        listBox.Margin = new Thickness(0, 0, 0, 0);
                    }
                    else
                    {
                        // No scrollbar → reserve 16px for overlay/reserved space
                        listBox.Margin = new Thickness(0, 0, 16, 0);
                    }
                };
            }
        }
        public static ScrollViewer FindScrollViewer(DependencyObject d)
        {
            if (d == null) return null;
            if (d is ScrollViewer sv) return sv;

            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(d); i++)
            {
                var child = VisualTreeHelper.GetChild(d, i);
                var result = FindScrollViewer(child);
                if (result != null) return result;
            }
            return null;
        }
        private void ScrollToBottom(ListBox listBox)
        {
            if (listBox.Items.Count > 0)
            {
                listBox.ScrollIntoView(
                    listBox.Items[listBox.Items.Count - 1]);
            }
        }

        private static readonly Brush PlaceholderBrush = new SolidColorBrush(Color.FromRgb(0x99, 0x99, 0x99));
        private bool _isPlaceholderActiveSB = true;
        private bool _isPlaceholderActiveMTB = true;
        private string PlaceholderTextSB = "Search";
        private string PlaceholderTextMTB = String.Empty;

        private void ApplyPlaceholder(
    TextBox textBox,
    ref bool isPlaceholderActive,
    string placeholderText)
        {
            if (!string.IsNullOrEmpty(textBox.Text))
                return;

            textBox.Text = placeholderText;
            textBox.Foreground = PlaceholderBrush;
            isPlaceholderActive = true;
            SendMsgButton.IsEnabled = !isPlaceholderActive;
        }

        private void RemovePlaceholder(
            TextBox textBox,
            ref bool isPlaceholderActive)
        {
            if (!isPlaceholderActive)
                return;

            textBox.Text = string.Empty;
            textBox.Foreground = Brushes.Black;
            isPlaceholderActive = false;
            SendMsgButton.IsEnabled = !isPlaceholderActive;
        }

        private void SearchBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Pressed);

            RemovePlaceholder(SearchBox, ref _isPlaceholderActiveSB);
        }

        private void SearchBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);

            ApplyPlaceholder(SearchBox, ref _isPlaceholderActiveSB, PlaceholderTextSB);
        }

        private void MessageTextBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            RemovePlaceholder(MessageTextBox, ref _isPlaceholderActiveMTB);
        }

        private void MessageTextBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            ApplyPlaceholder(MessageTextBox, ref _isPlaceholderActiveMTB, PlaceholderTextMTB);
        }


        private void WindowArea_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Keyboard.ClearFocus();
        }

        private void MessageTextBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                // Shift+Enter → allow newline
                if ((Keyboard.Modifiers & ModifierKeys.Shift) == ModifierKeys.Shift)
                    return;

                // Enter alone → treat as "send"
                e.Handled = true;

                SendMessage();
            }
        }
        internal static string LastMessageIdentifier;

        private void mn_About(object sender, RoutedEventArgs e)
        {
            new About().Show();
        }

        private void CallPhones_Click(object sender, MouseButtonEventArgs e)
        {
            Sounds.Play("error");
            Universal.ShowMsg("Hahahahaha... nice try. Get a damn Vonage.");
        }

        private void AddButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Adding contacts to conversations");
        }

        private void CallButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Voice calling");
        }

        private void VideoCallButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Video calling");
        }
    }

    public class ByteArrayToImageSourceConverter : IValueConverter
    {
        public object Convert(object value, Type targetType,
                              object parameter, CultureInfo culture)
        {
            byte[] bytes = value as byte[];

            if (bytes is null || bytes.Length == 0)
                return MainWindow.AnonymousAvatar;

            BitmapImage bmp = new BitmapImage();
            bmp.BeginInit();
            bmp.CacheOption = BitmapCacheOption.OnLoad;
            bmp.StreamSource = new MemoryStream(bytes);
            bmp.EndInit();

            bmp.Freeze();

            return bmp;
        }

        public object ConvertBack(object value, Type targetType,
                                  object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }



    public class IdentifierToColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType,
                              object parameter, CultureInfo culture)
        {
            string identifier = value as string;
            if (identifier == MainWindow.Identifier)
            {
                return new SolidColorBrush((Color)ColorConverter.ConvertFromString("#3399ff"));
            }

            else
            {
                return new SolidColorBrush((Color)ColorConverter.ConvertFromString("#999999"));
            }
        }

        public object ConvertBack(object value, Type targetType,
                                  object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class StatusToTextConverter : IValueConverter
    {
        public object Convert(object value, Type targetType,
                              object parameter, CultureInfo culture)
        {
            int statInt = (Int32)value;


            switch (statInt)
            {
                case 2: return "Online";
                case 3: return "Away";
                case 19: return "Offline";
                case 5: return "Do not disturb";
                case 21: return "Group chat";
                default: return "Unknown";
            }
        }

        public object ConvertBack(object value, Type targetType,
                                  object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public sealed class FormatFullTextConverter : IValueConverter
    {
        public Style TextBlockStyle { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not string text)
                return null;

            var tb = MessageTools.MarkdownFormat(text);

            if (TextBlockStyle != null)
                tb.Style = TextBlockStyle;

            return tb;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotSupportedException();
    }

    public class ReplyIDToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType,
                              object parameter, CultureInfo culture)
        {
            if (value is null) return Visibility.Collapsed;
            return Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType,
                                  object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class MessageIDToVisibilityConverter : IMultiValueConverter
    {
        public object Convert(
            object[] values,
            Type targetType,
            object parameter,
            CultureInfo culture)
        {
            if (values[0] as string == values[1] as string) return Visibility.Hidden;
            else return Visibility.Visible;
        }

        public object[] ConvertBack(object value,
    Type[] targetTypes,
    object parameter, CultureInfo culture) =>
            throw new NotSupportedException();
    }

}