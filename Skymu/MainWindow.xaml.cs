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

using MiddleMan;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
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

# pragma warning disable CS4014
namespace Skymu
{
    public partial class MainWindow : Window
    {
        private static WindowFrame border = (WindowFrame)Properties.Settings.Default.WindowFrame;
        private SkymuApi api;

        private bool deactivatedWindow;
        public event EventHandler Ready;

        public MainWindow()
        {
            api = new SkymuApi();

            InitializeComponent();

            InitializeWindow();

            this.MouseLeftButtonUp += MouseRelease;
            this.SizeChanged += MainWindow_SizeChanged;
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

        private enum WindowFrame
        {
            SkypeAero,
            SkypeBasic,
            Native
        };

        public void InitializeWindow()
        {
            this.MinHeight = 450;
            this.MinWidth = 800;

            SetClickable(close, minimize, maximize, split);
            WindowChrome.SetIsHitTestVisibleInChrome(tbli, true);

            if (border != WindowFrame.Native)
            {
                this.WindowStyle = WindowStyle.None;

                // Setup WindowChrome
                var chrome = new WindowChrome
                {
                    GlassFrameThickness = new Thickness(8, 30, 8, 8),
                    ResizeBorderThickness = new Thickness(8)
                };
                WindowChrome.SetWindowChrome(this, chrome);

                // This checks if composition is enabled and if the frame is the custom frame used by Skype.
                if (DwmHelper.IsDwmEnabled() && border == WindowFrame.SkypeAero)
                {
                    // Setup the window background and margin
                    this.Background = Brushes.Transparent;
                    TitleBar.Background = Brushes.Transparent;
                    WindowArea.Margin = new Thickness(8, 30, 8, 8);

                    // Titlebar font styling
                    TitleMain.FontFamily = new FontFamily("Segoe UI");
                    TitleMain.FontWeight = FontWeights.Normal;
                    TitleMain.FontSize = 12;
                    TitleMain.Foreground = Brushes.Black;
                    TitleMain.Margin = new Thickness(50, 7, 0, 0);
                    TextOptions.SetTextRenderingMode(TitleMain, TextRenderingMode.ClearType);

                    // Titlebar drop shadow (Imitates the Windows 7 glow effect)
                    TitleMain.Effect = new DropShadowEffect
                    {
                        ShadowDepth = 0,
                        Direction = 330,
                        Color = System.Windows.Media.Colors.White,
                        Opacity = 1,
                        BlurRadius = 20
                    };

                    TitleShadow.Visibility = Visibility.Visible;
                    TitleShadow2.Visibility = Visibility.Visible;
                    TitleShadow3.Visibility = Visibility.Visible;
                }
            }
            else if (border == WindowFrame.Native)
            {
                WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(); // 0, 0, 0, 0
            }

            Universal.Plugin.TypingUsersList.CollectionChanged += (s, e) =>
            {
                UpdateTypingIndicator();
            };
        }

        private void UpdateTypingIndicator()
        {
            int count = Universal.Plugin.TypingUsersList.Count;
            if (count == 0)
            {
                TypingIndicator.Visibility = Visibility.Collapsed;
                return;
            }
            else
            {
                string typingText = String.Empty;
                ProfileData[] profiles = Universal.Plugin.TypingUsersList.Take(3).ToArray();
                switch (count)
                {
                    case 1:
                        typingText = $"{profiles.First().DisplayName} is typing..."; break;

                    case 2:
                        typingText = string.Join(" and ",
                            profiles.Take(2).Select(p => p.DisplayName)) + " are typing..."; break;

                    case 3:
                        {
                            var names = profiles.Take(3).Select(p => p.DisplayName).ToArray();
                            typingText = $"{names[0]}, {names[1]}, and {names[2]} are typing..."; break;
                        }

                    default:
                        typingText = "Multiple people are typing..."; break;
                }
                TypingIndicatorText.Text = typingText;
                TypingIndicator.Visibility = Visibility.Visible;
            }
        }

        private static DropShadowEffect CreateDropShadow(Color color) => new()
        {
            Color = color,
            BlurRadius = 16,
            ShadowDepth = 0,
            Opacity = 0.8
        };

        private static void SetClickable(params SliceControl[] buttons)
        {
            foreach (var b in buttons)
                WindowChrome.SetIsHitTestVisibleInChrome(b, true);
        }

        private void Window_Deactivated(object sender, EventArgs e)
        {
            foreach (SliceControl button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 1;
                button.Effect = null;
            }
            deactivatedWindow = true;
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            foreach (SliceControl button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }
            deactivatedWindow = false;
        }

        private static BitmapImage LoadAvatar()
        {
            string AvatarPath = "pack://application:,,," + Properties.Settings.Default.ThemeRoot + "/Profile Pictures/profile_anonymous.png";

            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.UriSource = new Uri(AvatarPath, UriKind.Absolute);
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.EndInit();
            bitmap.Freeze();

            return bitmap;
        }

        internal static readonly BitmapImage AnonymousAvatar = LoadAvatar();

        internal static string Identifier = String.Empty;

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


        private void TitleButton_MouseEnter(object sender, MouseEventArgs e)
        {
            var button = sender as SliceControl;

            if (button is not null)
            {
                if (button.Name == "close")
                {
                    button.Effect = CreateDropShadow(System.Windows.Media.Colors.Red);
                }
                else
                {
                    button.Effect = CreateDropShadow(System.Windows.Media.Colors.Cyan);
                }
            }
        }

        private void TitleButton_MouseLeave(object sender, MouseEventArgs e)
        {
            var button = sender as SliceControl;

            if (!deactivatedWindow)
            {
                if (button is not null)
                {
                    button.Effect = null;

                }
            }
            else if (deactivatedWindow)
            {
                button.Effect = null;
            }

        }

        private void TitleButton_Pressed(object sender, MouseButtonEventArgs e)
        {
            if (sender is not SliceControl button) return;
        }

        private void TitleButton_Click(object sender, MouseButtonEventArgs e)
        {
            var button = sender as SliceControl;
            if (button is not null)
            {
                switch (button.Name)
                {
                    case "close": Close(); break;
                    case "split": Universal.NotImplemented("Split Window"); break;
                    case "minimize": WindowState = WindowState.Minimized; break;
                    // case "maximize": if (WindowState == WindowState.Normal) { WindowState = WindowState.Maximized; } else { WindowState = WindowState.Normal; } break;
                    case "maximize": Universal.NotImplemented("Maximizing and Fullscreen"); break;
                }
            }
        }

        private void tbli_Click(object sender, MouseEventArgs e)
        {
            Process.Start(new ProcessStartInfo
            {
                FileName = "https://www.youtube.com/watch?v=kVsH_ySm5_E",
                UseShellExecute = true
            });
        }
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs ev) { Universal.Shutdown(ev); }
        // For the menu bar at the top of the Skymu window
        private void mn_New(object sender, RoutedEventArgs e) { }
        private void mn_Open(object sender, RoutedEventArgs e) { }
        private void mn_Close(object sender, RoutedEventArgs e) { Universal.Shutdown(); }
        private void mn_Apps(object sender, RoutedEventArgs e) { }
        private void mn_Language(object sender, RoutedEventArgs e) { }
        private void mn_Accessibility(object sender, RoutedEventArgs e) { }
        private void mn_ShareWithFriend(object sender, RoutedEventArgs e) { }
        private void mn_SkypeWifi(object sender, RoutedEventArgs e) { }
        private void mn_Options(object sender, RoutedEventArgs e) { new Options().Show(); }
        private void mn_About(object sender, RoutedEventArgs e) { new About().Show(); }

        private ProfileData selectedContact;


        private static T FindVisualChild<T>(DependencyObject parent) where T : DependencyObject
        {
            if (parent == null)
                return null;

            int childCount = VisualTreeHelper.GetChildrenCount(parent);

            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);

                if (child is T matchedChild)
                    return matchedChild;

                var result = FindVisualChild<T>(child);
                if (result != null)
                    return result;
            }

            return null;
        }

        private bool _isLoadingConversation;
        private NotifyCollectionChangedEventHandler _activeConversationChangedHandler;

        private async void ContactList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var listBox = (ListBox)sender;
            if (listBox.SelectedItem is null)
                return;

            Universal.Plugin.ActiveConversation.Clear();
            Universal.Plugin.TypingUsersList.Clear();
            selectedContact = (ProfileData)listBox.SelectedItem;

            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = $"Type a message to {selectedContact.DisplayName} here";
            MessageTextBox.Text = PlaceholderTextMTB;
            throbber.Visibility = Visibility.Visible;
            _isLoadingConversation = true;

            if (await Universal.Plugin.SetActiveConversation(selectedContact.Identifier))
            {
                var conversation = Universal.Plugin.ActiveConversation;

                for (int i = 0; i < conversation.Count; i++)
                {
                    if (conversation[i] is MessageItem message)
                    {
                        for (int j = i - 1; j >= 0; j--)
                        {
                            if (conversation[j] is MessageItem previousMessage)
                            {
                                message.PreviousMessageIdentifier = previousMessage.SentByID;
                                break;
                            }
                        }
                    }
                }

                if (_activeConversationChangedHandler != null)
                    conversation.CollectionChanged -= _activeConversationChangedHandler;

                _activeConversationChangedHandler = (s, args) =>
                {
                    if (_isLoadingConversation || args.Action != NotifyCollectionChangedAction.Add)
                        return;

                    foreach (var item in args.NewItems)
                    {
                        if (item is MessageItem message && message.SentByID != MainWindow.Identifier)
                        {
                            Sounds.Play("message-recieved");
                            break;
                        }
                    }
                };

                conversation.CollectionChanged += _activeConversationChangedHandler;
                ConversationItemsList.ItemsSource = conversation;
            }
            throbber.Visibility = Visibility.Collapsed;
            _isLoadingConversation = false; // add break point here to benchmark message rendering (this is when server finishes loading)
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
            if (type == currentWindow)
                return;

            currentWindow = type;

            switch (type)
            {
                case WindowType.Home:
                    SetHomeWindow();
                    break;

                case WindowType.Chat:
                    SetChatWindow();
                    break;
            }
        }

        private void SetHomeWindow()
        {
            ToggleStBSelection(true);

            HomeTopbar.Visibility = Visibility.Visible;
            ChatTopbar.Visibility = Visibility.Collapsed;
            ChatProfileArea.Visibility = Visibility.Collapsed;
            MessageWindow.Visibility = Visibility.Collapsed;

            TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
            MessageWindowRow.Height = new GridLength(0);

            MainPageButton.SetState(ButtonVisualState.Pressed);
            ContactsList.SelectedItem = null;
        }

        private void SetChatWindow()
        {
            ToggleStBSelection(false);
            StatusBox.SetState(ButtonVisualState.Default);

            HomeTopbar.Visibility = Visibility.Collapsed;
            ChatTopbar.Visibility = Visibility.Visible;
            ChatProfileArea.Visibility = Visibility.Visible;
            MessageWindow.Visibility = Visibility.Visible;

            TopbarWindowRow.Height = new GridLength(120);
            MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
        }

        private static readonly Brush DefaultTextBrush =
            (Brush)new BrushConverter().ConvertFromString("#333333");

        private void ToggleStBSelection(bool selected)
        {
            StatusBox.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
            StatusBox.TextColor = selected ? Brushes.White : DefaultTextBrush;
            SBHomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
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
            if (index == 5 || index == 2 || index == 3 || index == 19) { return true; } else { return false; }
        }

        internal async Task InitSidebar()
        {
            await Universal.Plugin.PopulateSidebarInformation();
            await Universal.Plugin.PopulateRecentsList();

            SidebarData data = Universal.Plugin.SidebarInformation;
            GlobalUserCount.Text = "Loading online user count...";

            SkymuApiStatusHandler();
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

        private async void OnMsgSendClickButton(object sender, MouseButtonEventArgs e)
        {
            SendMessage();
        }

        private async Task SendMessage()
        {
            if (SendMsgButton.IsEnabled)
            {
                string messageBody = MessageTextBox.Text;
                MessageTextBox.Clear();

                bool didSend = await Universal.Plugin.SendMessage(selectedContact.Identifier, messageBody);

                if (didSend)
                {
                    Sounds.Play("message-sent");
                }
            }
        }

        private async void WifiButton_Click(object sender, MouseButtonEventArgs e)
        {
            await SpeedTester();
        }

        private async Task SpeedTester()
        {
            const string TestFileUrl = "https://speed.cloudflare.com/__down?bytes=5242880";

            string iconFileName;
            try
            {
                var stopwatch = Stopwatch.StartNew();
                var data = await Universal.HttpClient.GetByteArrayAsync(TestFileUrl);
                stopwatch.Stop();

                double speedMbps = (data.Length * 8.0) / 1_000_000 / stopwatch.Elapsed.TotalSeconds;

                iconFileName = speedMbps switch
                {
                    >= 50 => "btn_pill_small_network_good.png",
                    >= 20 => "btn_pill_small_network_best.png",
                    >= 10 => "btn_pill_small_network_med.png",
                    >= 5 => "btn_pill_small_network_med2.png",
                    _ => "btn_pill_small_network_bad.png"
                };
            }
            catch
            {
                iconFileName = "btn_pill_small_network_unavailable.png";
            }

            var iconUri = "pack://application:,,," + Properties.Settings.Default.ThemeRoot + "/Chat/" + iconFileName;
            var bmp = new BitmapImage();
            bmp.BeginInit();
            bmp.UriSource = new Uri(iconUri, UriKind.Absolute);
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
                        foreach (var item in args.NewItems)
                        {
                            if (item is MessageItem message)
                            {
                                int currentIndex = listBox.Items.IndexOf(message);

                                for (int i = currentIndex - 1; i >= 0; i--)
                                {
                                    if (listBox.Items[i] is MessageItem previousMessage)
                                    {
                                        message.PreviousMessageIdentifier = previousMessage.SentByID;
                                        break;
                                    }
                                }
                            }
                        }
                    }

                    Dispatcher.BeginInvoke(DispatcherPriority.Background,
                        new Action(() => ScrollToBottom(listBox)));
                };
            }
        }

        private void ScrollToBottom(ListBox listBox)
        {
            if (listBox?.Items.Count > 0)
            {
                var scrollViewer = FindScrollViewer(listBox);
                if (scrollViewer != null)
                {
                    scrollViewer.ScrollToEnd();
                }
                else
                {
                    listBox.ScrollIntoView(listBox.Items[^1]);
                }
            }
        }

        private static ScrollViewer FindScrollViewer(DependencyObject element)
        {
            if (element == null)
                return null;

            if (element is ScrollViewer scrollViewer)
                return scrollViewer;

            int childCount = VisualTreeHelper.GetChildrenCount(element);
            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(element, i);
                var result = FindScrollViewer(child);
                if (result != null)
                    return result;
            }

            return null;
        }

        private static readonly Brush PlaceholderBrush = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#999999"));
        private string PlaceholderTextMTB = String.Empty;
        private bool IsMsgBoxPlaceholderActive = true;

        private void ApplyPlaceholder(TextBox textBox, string placeholderText, bool isMTB = false)
        {
            if (!string.IsNullOrEmpty(textBox.Text))
                return;

            textBox.Text = placeholderText;
            textBox.Foreground = PlaceholderBrush;
            IsMsgBoxPlaceholderActive = isMTB;
            UpdateSendButtonState();
        }

        private void RemovePlaceholder(TextBox textBox, bool isMTB = false)
        {
            textBox.Text = string.Empty;
            textBox.Foreground = Brushes.Black;
            IsMsgBoxPlaceholderActive = !isMTB;
            UpdateSendButtonState();
        }

        private void UpdateSendButtonState()
        {          
            if ((String.IsNullOrWhiteSpace(MessageTextBox.Text) || IsMsgBoxPlaceholderActive)) SendMsgButton.IsEnabled = false;
            else SendMsgButton.IsEnabled = true;
        }

        private void SearchBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Pressed);

            RemovePlaceholder(SearchBox);
        }

        private void SearchBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);

            ApplyPlaceholder(SearchBox, "Search");
        }

        private void MessageTextBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            RemovePlaceholder(MessageTextBox, true);           
        }

        private void MessageTextBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            ApplyPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
        }

        private void WindowArea_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Keyboard.ClearFocus();
        }

        private void MessageTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateSendButtonState();
        }

        private async void MessageTextBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Enter)
                return;

            // Shift+Enter for newline
            if (Keyboard.Modifiers.HasFlag(ModifierKeys.Shift))
                return;

            e.Handled = true;
            await SendMessage();
        }

        private void CallPhones_Click(object sender, MouseButtonEventArgs e)
        {
            Sounds.Play("call-error");
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

    // Converters used in the MainWindow XAML
    public class ByteArrayToImageSourceConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not byte[] bytes || bytes.Length == 0)
                return MainWindow.AnonymousAvatar;

            var bmp = new BitmapImage();
            using (var stream = new MemoryStream(bytes))
            {
                bmp.BeginInit();
                bmp.CacheOption = BitmapCacheOption.OnLoad;
                bmp.StreamSource = stream;
                bmp.EndInit();
            }
            bmp.Freeze();

            return bmp;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class MsgByteArrayToImageConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not byte[] bytes || bytes.Length == 0)
                return null;

            var bmp = new BitmapImage();
            using (var stream = new MemoryStream(bytes))
            {
                bmp.BeginInit();
                bmp.CacheOption = BitmapCacheOption.OnLoad;
                bmp.StreamSource = stream;
                bmp.EndInit();
            }
            bmp.Freeze();

            return bmp;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class IdentifierToColorConverter : IValueConverter
    {
        private static readonly SolidColorBrush ActiveBrush =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#3399ff"));

        private static readonly SolidColorBrush InactiveBrush =
            new SolidColorBrush((Color)ColorConverter.ConvertFromString("#999999"));

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value is string identifier && identifier == MainWindow.Identifier
                ? ActiveBrush
                : InactiveBrush;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class StatusToTextConverter : IValueConverter
    {
        private static readonly Dictionary<int, string> StatusMap = new()
        {
            { 2, "Online" },
            { 3, "Away" },
            { 19, "Offline" },
            { 5, "Do not disturb" },
            { 21, "Group chat" }
        };

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not int statInt)
                return "Unknown";

            return StatusMap.TryGetValue(statInt, out var statusText) ? statusText : "Unknown";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
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
                return DependencyProperty.UnsetValue;
            var tb = MessageTools.FormTextblock(text);

            if (TextBlockStyle != null)
                tb.Style = TextBlockStyle;

            return tb;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotSupportedException();
    }

    public class MsgIDToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value == null ? Visibility.Collapsed : Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }





    public class StripNewlinesConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return string.Empty;
            string s = value.ToString();
            return s.Replace("\r", " ").Replace("\n", " ");
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class MsgIDMultiToVisibilityConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values.Length < 2) return Visibility.Collapsed;

            return values[0] as string == values[1] as string
                ? Visibility.Hidden
                : Visibility.Visible;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }

    public class NullDependentVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s)) return Visibility.Collapsed;
            else if (value == null) return Visibility.Collapsed;
            else return Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class ThemeImageConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null || parameter == null) return null;

            string themeRoot = value.ToString();
            string imagePath = parameter.ToString();

            string fullPath = $"{themeRoot}/{imagePath}".Replace("//", "/");

            string assemblyName = System.Reflection.Assembly.GetExecutingAssembly().GetName().Name;
            string packUri = $"pack://application:,,,/{assemblyName};component{fullPath}";

            return new BitmapImage(new Uri(packUri));
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}