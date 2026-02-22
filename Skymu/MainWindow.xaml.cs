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
using Skymu.Pages;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;

using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Shell;
using System.Windows.Threading;

# pragma warning disable CS4014, CA1416

namespace Skymu
{
    public partial class MainWindow : Window
    {
        // String constants
        private const string VONAGE = "Hahahahaha... nice try. Get a damn Vonage.";
        private const string VONAGE_CAPTION = "Can't you just use your smartphone?";
        private const string NOTIMPL_ADD_CONTACTS_CHATS = "Adding contacts to conversations";
        private const string TAG_PLACEHOLDER = "PLACEHOLDER";
        private const string MSG_SEND_ERR = "Error sending message.";
        private const string SKYMU_PREFIX = "@skymu/";
        private const string SKYMU_SENDING = SKYMU_PREFIX + "sending";

        // Other file-level variables
        private static readonly WindowFrame border = (WindowFrame)Properties.Settings.Default.WindowFrame;
        private static Thickness OriginalWindowAreaMargin = new Thickness(0);
        private SkymuApi api;
        internal static Conversation SelectedConversation = null;
        private Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        internal static bool IsWindowActive = false;
        private bool is_loading_conversation;
        private NotifyCollectionChangedEventHandler _activeConversationChangedHandler;
        private WindowType current_window = WindowType.Chat;
        private static readonly Brush DefaultTextBrush = (Brush)new BrushConverter().ConvertFromString("#333333");
        private static readonly Brush PlaceholderBrush = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#999999"));
        private string PlaceholderTextMTB = String.Empty;

        private static readonly Dictionary<UserConnectionStatus, int> status_map = new()
        {
            { UserConnectionStatus.Online, 2 },
            { UserConnectionStatus.Away, 3 },
            { UserConnectionStatus.DoNotDisturb, 5 },
            { UserConnectionStatus.Invisible, 19 },
            { UserConnectionStatus.Offline, 19 }
        };

        private enum WindowType
        {
            Home,
            Chat
        }


        public event EventHandler Ready;

        public MainWindow()
        {
            noCloseEvent = false;
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
            if (border != WindowFrame.Native) // using Skype's custom border
            {
                OriginalWindowAreaMargin = WindowArea.Margin; // for maximization stuff
                WindowChrome chrome = new WindowChrome();
                WindowChrome.SetWindowChrome(this, chrome); // WindowChrome configuration ensures that system frame is not drawn
                SetClickable(tbli, close, minimize, maximize, split);

                if (border == WindowFrame.SkypeAero) // switch configuration from Skype Basic to Aero
                {
                    Thickness AeroThickness = new Thickness(8, 30, 8, 8);
                    OriginalWindowAreaMargin = AeroThickness;
                    chrome.GlassFrameThickness = AeroThickness;
                    // Set up the window background and margin
                    this.Background = Brushes.Transparent;
                    TitleBar.Background = Brushes.Transparent;
                    WindowArea.Margin = AeroThickness;

                    // Titlebar font styling
                    TitleMain.FontFamily = new FontFamily("Segoe UI");
                    TitleMain.FontWeight = FontWeights.Normal;
                    TitleMain.FontSize = 12;
                    TitleMain.Foreground = Brushes.Black;

                    // Titlebar drop shadow (Imitates the Windows 7 glow effect)
                    TitleMain.Effect = new DropShadowEffect
                    {
                        ShadowDepth = 0,
                        Direction = 330,
                        Color = Colors.White,
                        Opacity = 1,
                        BlurRadius = 20
                    };

                    TitleShadow.Visibility = Visibility.Visible;
                    TitleShadow2.Visibility = Visibility.Visible;
                    TitleShadow3.Visibility = Visibility.Visible;
                }
            }

            else if (border == WindowFrame.Native) // using system native border
            {
                WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(0);
            }

            buttonToColumn = new Dictionary<SliceControl, ColumnDefinition>
            {
                { btnContacts, ContactsColumn },
                { btnServers, ServersColumn },
                { btnRecents, RecentsColumn }
            };
            SelectTab(btnRecents);
            ApplyPlaceholderTb(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
            InitializeEmojiPicker();

            Universal.Plugin.TypingUsersList.CollectionChanged += (s, e) =>
            {
                UpdateTypingIndicator();
            };
        }


        private void UpdateTypingIndicator()
        {
            int count = Universal.Plugin.TypingUsersList.Count;
            if (count <= 0)
            {
                TypingIndicator.Visibility = Visibility.Collapsed;
                return;
            }
            else
            {
                string typing_text = String.Empty;
                User[] profiles = Universal.Plugin.TypingUsersList.Take(3).ToArray();
                switch (count)
                {
                    case 1:
                        typing_text = $"{profiles.First().DisplayName} is typing..."; break;

                    case 2:
                        typing_text = string.Join(" and ",
                            profiles.Take(2).Select(p => p.DisplayName)) + " are typing..."; break;

                    case 3:
                        {
                            var names = profiles.Take(3).Select(p => p.DisplayName).ToArray();
                            typing_text = $"{names[0]}, {names[1]}, and {names[2]} are typing..."; break;
                        }

                    default:
                        typing_text = "Multiple people are typing..."; break;
                }
                TypingIndicatorText.Text = typing_text;
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

        private static void SetClickable(params IInputElement[] buttons)
        {
            foreach (var b in buttons)
                WindowChrome.SetIsHitTestVisibleInChrome(b, true);
        }

        private static BitmapImage LoadAvatar(string avatar)
        {
            string AvatarPath = "pack://application:,,," + Properties.Settings.Default.ThemeRoot + "/Profile Pictures/profile_" + avatar + ".png";

            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.UriSource = new Uri(AvatarPath, UriKind.Absolute);
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.EndInit();
            bitmap.Freeze();

            return bitmap;
        }

        internal static readonly BitmapImage AnonymousAvatar = LoadAvatar("anonymous");
        internal static readonly BitmapImage GroupAvatar = LoadAvatar("group");

        internal static string Username, Identifier = String.Empty;
        internal static UserConnectionStatus Status = UserConnectionStatus.Offline;

        private void Window_StateChanged(object sender, EventArgs e)
        {
            if (OriginalWindowAreaMargin.Top != 0)
            {
                if (WindowState == WindowState.Maximized)
                {
                    FrameArea.Margin = new Thickness(0, 5, 0, 0);
                    Thickness ReducedWinAreaMargin = OriginalWindowAreaMargin;
                    ReducedWinAreaMargin.Top -= 5;
                    WindowArea.Margin = ReducedWinAreaMargin;
                }
                else
                {
                    FrameArea.Margin = new Thickness(0);
                    WindowArea.Margin = OriginalWindowAreaMargin;
                }
            }
        }


        private void TitleButton_MouseEnter(object sender, MouseEventArgs e)
        {
            var button = sender as SliceControl;

            if (button is not null)
            {
                if (button.Name == "close")
                {
                    button.Effect = CreateDropShadow(Colors.Red);
                }
                else
                {
                    button.Effect = CreateDropShadow(Colors.Cyan);
                }
            }
        }

        private void TitleButton_MouseLeave(object sender, MouseEventArgs e)
        {
            var button = sender as SliceControl;

            if (IsWindowActive)
            {
                if (button is not null)
                {
                    button.Effect = null;

                }
            }
            else if (!IsWindowActive)
            {
                button.Effect = null;
            }

        }

        private void TitleButton_Pressed(object sender, MouseButtonEventArgs e)
        {
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
                    case "maximize": if (WindowState == WindowState.Normal) { WindowState = WindowState.Maximized; } else { WindowState = WindowState.Normal; } break;
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
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs ev) { if (!noCloseEvent) Universal.Close(ev); }
        // For the menu bar at the top of the Skymu window
        private void mn_New(object sender, RoutedEventArgs e) { }
        private void mn_Open(object sender, RoutedEventArgs e) { }
        private void mn_Close(object sender, RoutedEventArgs e) { Universal.Close(); }
        private void mn_Apps(object sender, RoutedEventArgs e) { }
        private void mn_Language(object sender, RoutedEventArgs e) { }
        private void mn_Accessibility(object sender, RoutedEventArgs e) { }
        private void mn_ShareWithFriend(object sender, RoutedEventArgs e) { }
        private void mn_SkypeWifi(object sender, RoutedEventArgs e) { }
        private void mn_Options(object sender, RoutedEventArgs e) { new Options().Show(); }
        private void mn_About(object sender, RoutedEventArgs e) { new About().Show(); }

        private void Window_Deactivated(object sender, EventArgs e)
        {
            IsWindowActive = true;
            WindowArea.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillPrimary : SkypeColors.Inactive.Window;
            MBDivider.Fill = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillSecondary : SkypeColors.Inactive.Fill;
            if ((WindowFrame)Properties.Settings.Default.WindowFrame == WindowFrame.Native) return;
            menu1.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillTertiary : new SolidColorBrush(Colors.Transparent);

            foreach (SliceControl button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 1;
                button.Effect = null;
            }

            if (this.Background == System.Windows.Media.Brushes.Transparent) return;

            TitleBar.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillPrimary : SkypeColors.Inactive.Titlebar;
            this.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillPrimary : SkypeColors.Inactive.Fill;

        }

        private void Window_Activated(object sender, EventArgs e)
        {
            IsWindowActive = true;
            WindowArea.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillPrimary : SkypeColors.Active.Window;
            MBDivider.Fill = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillSecondary : SkypeColors.Active.Fill;
            menu1.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillTertiary : new SolidColorBrush(Colors.Transparent);

            if ((WindowFrame)Properties.Settings.Default.WindowFrame == WindowFrame.Native) return;

            foreach (SliceControl button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }

            if (this.Background == Brushes.Transparent) return;

            TitleBar.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillPrimary : SkypeColors.Active.Titlebar;
            this.Background = Properties.Settings.Default.FallbackFillColors ? SkypeColors.Fallback.FillPrimary : SkypeColors.Active.Fill;
        }



        private static T FindVisualChild<T>(DependencyObject parent) where T : DependencyObject
        {
            if (parent is null)
                return null;

            int childCount = VisualTreeHelper.GetChildrenCount(parent);

            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);

                if (child is T matchedChild)
                    return matchedChild;

                var result = FindVisualChild<T>(child);
                if (result is not null)
                    return result;
            }

            return null;
        }

        private async void SetConversation()
        {
            Universal.Plugin.ActiveConversation.Clear();
            Universal.Plugin.TypingUsersList.Clear();
            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = Universal.Lang.Format("sCHAT_TYPE_HERE_DIALOG", SelectedConversation.DisplayName);
            ApplyPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
            UpdateSendButtonState();
            throbber.Visibility = Visibility.Visible;
            is_loading_conversation = true;

            if (await Universal.Plugin.SetActiveConversation(SelectedConversation))
            {
                var conversation = Universal.Plugin.ActiveConversation;

                for (int i = 0; i < conversation.Count; i++)
                {
                    if (conversation[i] is Message message)
                    {
                        for (int j = i - 1; j >= 0; j--)
                        {
                            if (conversation[j] is Message previousMessage)
                            {
                                message.PreviousMessageIdentifier = previousMessage.Sender.Identifier;
                                break;
                            }
                        }
                    }
                }

                if (_activeConversationChangedHandler is not null)
                    conversation.CollectionChanged -= _activeConversationChangedHandler;

                _activeConversationChangedHandler = (s, args) =>
                {
                    if (is_loading_conversation || args.Action != NotifyCollectionChangedAction.Add)
                        return;

                    foreach (var item in args.NewItems)
                    {
                        if (item is Message message && message.Sender.Identifier != MainWindow.Identifier && IsWindowActive)
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
            is_loading_conversation = false; // add break point here to benchmark message rendering (this is when server finishes loading)
        }

        private async void ContactList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var listBox = (ListBox)sender;
            if (listBox.SelectedItem is null) return;

            ChatArea.DataContext = listBox.SelectedItem;
            SelectedConversation = (Conversation)listBox.SelectedItem;
            SetConversation();         
        }

        private void Chat_Close(object sender, MouseButtonEventArgs e)
        {
            SetWindow(WindowType.Home);
        }



        private void SetWindow(WindowType type)
        {
            if (type == current_window)
                return;

            current_window = type;

            switch (type)
            {
                case WindowType.Home:
                    ToggleStBSelection(true);

                    HomeTopbar.Visibility = Visibility.Visible;
                    ChatTopbar.Visibility = Visibility.Collapsed;
                    ChatProfileArea.Visibility = Visibility.Collapsed;
                    MessageWindow.Visibility = Visibility.Collapsed;

                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    Browser.Visibility = Visibility.Visible;
                    InitiateWebview();
                    MainPageButton.SetState(ButtonVisualState.Pressed);
                    ContactsList.SelectedItem = null;
                    break;

                case WindowType.Chat:
                    ToggleStBSelection(false);
                    StatusBox.SetState(ButtonVisualState.Default);

                    HomeTopbar.Visibility = Visibility.Collapsed;
                    ChatTopbar.Visibility = Visibility.Visible;
                    ChatProfileArea.Visibility = Visibility.Visible;
                    MessageWindow.Visibility = Visibility.Visible;
                    Browser.Visibility = Visibility.Collapsed;

                    TopbarWindowRow.Height = new GridLength(120);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    break;
            }
        }


        private async Task InitiateWebview()
        {
            await Browser.EnsureCoreWebView2Async();

            Browser.CoreWebView2.NewWindowRequested += (sender, args) =>
            {
                args.Handled = true;
                Browser.CoreWebView2.Navigate(args.Uri);
            };

            Browser.CoreWebView2.NavigationCompleted += async (s, e) =>
            {
                if (!Properties.Settings.Default.HomepageScroll)
                {
                    await Browser.CoreWebView2.ExecuteScriptAsync(@"
            document.documentElement.style.overflow = 'hidden';
            document.body.style.overflow = 'hidden';
        ");
                }
            };

            Browser.CoreWebView2.Navigate(Properties.Settings.Default.Homepage);
        }

        private void ToggleStBSelection(bool selected)
        {
            StatusBox.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
            StatusBox.TextColor = selected ? Brushes.White : DefaultTextBrush;
            SBHomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        private bool isDragging = false;
        private Point dragStart;
        private UIElement capturedElement = null; // Store reference to the captured element

        private void SkypeSplitter_MouseMove(object sender, MouseEventArgs e)
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

        private void SkypeSplitter_Press(object sender, MouseButtonEventArgs e)
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

        private void MouseRelease(object sender, MouseButtonEventArgs e)
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

            User data = Universal.Plugin.MyInformation;
            GlobalUserCount.Text = Universal.Lang["sCALLPHONES_RATES_LOADING"];

            SkymuApiStatusHandler();
            api.OnUserCountUpdate += usrCount =>
            {
                Dispatcher.Invoke(() =>
                {
                    GlobalUserCount.Text = Universal.Lang.Format("sTOTAL_USERS_ONLINE", usrCount);
                });
            };

            WindowTitle = Properties.Settings.Default.BrandingName + "™ - " + data.Username;
            this.Title = WindowTitle;

            Username = data.Username;
            Identifier = data.Identifier;
            StatusBox.Text = data.DisplayName;
            StatusIcon.DefaultIndex = GetIntFromStatus(data.PresenceStatus);
            Status = data.PresenceStatus;

            ContactsList.ItemsSource = Universal.Plugin.RecentsList;

            SpeedTester();

            Ready?.Invoke(this, EventArgs.Empty);
        }

        private async void OnMsgSendClickButton(object sender, MouseButtonEventArgs e)
        {
            SendMessage();
        }

        private readonly Dictionary<string, Message> _pendingPreviewMessages = new Dictionary<string, Message>();

        private async Task SendMessage(string message = null)
        {
            if (!SendMsgButton.IsEnabled && message is null)
                return;

            string message_body = message ?? ExtractMessageFromRichTextBox();

            MessageTextBox.Document.Blocks.Clear();
            MessageTextBox.Document.Blocks.Add(new Paragraph { Margin = new Thickness(0) });
            CheckIfMTBUnfocused();

            string temp_id = SKYMU_SENDING + "/" + Guid.NewGuid().ToString();

            var previewMessage = new Message(
                temp_id,
                Universal.Plugin.MyInformation,
                DateTime.Now,
                message_body,
                null,
                null
            );

            _pendingPreviewMessages[temp_id] = previewMessage;
            Universal.Plugin.ActiveConversation.Add(previewMessage);

            bool didSend = false;

            try
            {
                didSend = await Universal.Plugin.SendMessage(
                    SelectedConversation.Identifier,
                    message_body
                );
            }
            catch
            {
                didSend = false;
            }

            if (didSend)
            {
                Sounds.Play("message-sent");
            }
            else
            {
                if (_pendingPreviewMessages.TryGetValue(temp_id, out var pending))
                {
                    _pendingPreviewMessages.Remove(temp_id);

                    Dispatcher.Invoke(() =>
                    {
                        Universal.Plugin.ActiveConversation.Remove(pending);
                    });
                }

                Universal.ShowMsg(MSG_SEND_ERR);
            }
        }


        private async void WifiButton_Click(object sender, MouseButtonEventArgs e)
        {
            await SpeedTester();
        }

        private async Task SpeedTester()
        {
            const string TestFileUrl = "https://speed.cloudflare.com/__down?bytes=10485760";

            string[] speedButtonIcons = new[]
            {
        "btn_pill_small_network_bad.png",
        "btn_pill_small_network_med2.png",
        "btn_pill_small_network_med.png",
        "btn_pill_small_network_best.png",
        "btn_pill_small_network_good.png"
    };

            var cts = new CancellationTokenSource();
            var token = cts.Token;

            var animTask = Task.Run(async () =>
            {
                int index = 0;
                while (!token.IsCancellationRequested)
                {
                    string icon_filename = speedButtonIcons[index % speedButtonIcons.Length];
                    string icon_uri = "pack://application:,,," + Properties.Settings.Default.ThemeRoot + "/Chat/" + icon_filename;

                    Application.Current.Dispatcher.Invoke(() =>
                    {
                        var bmp = new BitmapImage();
                        bmp.BeginInit();
                        bmp.UriSource = new Uri(icon_uri, UriKind.Absolute);
                        bmp.CacheOption = BitmapCacheOption.OnLoad;
                        bmp.EndInit();
                        bmp.Freeze();

                        WifiButton.Source = bmp;
                    });

                    index++;
                    await Task.Delay(100); // 100ms per frame
                }
            }, token);

            string final_icon;
            try
            {
                var stopwatch = Stopwatch.StartNew();
                var data = await Universal.HttpClient.GetByteArrayAsync(TestFileUrl);
                stopwatch.Stop();

                double speedMbps = (data.Length * 8.0) / 1_000_000 / stopwatch.Elapsed.TotalSeconds;

                final_icon = speedMbps switch
                {
                    >= 50 => speedButtonIcons[4],
                    >= 20 => speedButtonIcons[3],
                    >= 10 => speedButtonIcons[2],
                    >= 5 => speedButtonIcons[1],
                    _ => speedButtonIcons[0]
                };
            }
            catch
            {
                final_icon = "btn_pill_small_network_unavailable.png";
            }
            finally
            {
                cts.Cancel();
                await animTask;
            }

            string fianl_uri = "pack://application:,,," + Properties.Settings.Default.ThemeRoot + "/Chat/" + final_icon;
            var final_bmp = new BitmapImage();
            final_bmp.BeginInit();
            final_bmp.UriSource = new Uri(fianl_uri, UriKind.Absolute);
            final_bmp.CacheOption = BitmapCacheOption.OnLoad;
            final_bmp.EndInit();
            final_bmp.Freeze();

            WifiButton.Source = final_bmp;
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

                            if (item is Message message)
                            {
                                if (message.Sender.Identifier == MainWindow.Identifier
                                    && message.Identifier != null
                                    && !message.Identifier.StartsWith(SKYMU_SENDING))
                                {
                                    // try exact text match first
                                    var match = _pendingPreviewMessages
                                        .Values
                                        .LastOrDefault(p => p.Text == message.Text);

                                    // fallback: remove most recent preview
                                    if (match == null)
                                    {
                                        match = _pendingPreviewMessages
                                            .Values
                                            .LastOrDefault();
                                    }

                                    if (match != null)
                                    {
                                        _pendingPreviewMessages.Remove(match.Identifier);

                                        Dispatcher.BeginInvoke(() =>
                                        {
                                            Universal.Plugin.ActiveConversation.Remove(match);
                                        });

                                    }
                                }
                                int currentIndex = listBox.Items.IndexOf(message);

                                for (int i = currentIndex - 1; i >= 0; i--)
                                {
                                    if (listBox.Items[i] is not Message previousMessage)
                                        continue;

                                    // ignore preview messages
                                    if (previousMessage.Identifier.StartsWith(SKYMU_SENDING))
                                        continue;

                                    // only assign a real message's identifier as prev identifier
                                    message.PreviousMessageIdentifier = previousMessage.Sender.Identifier;
                                    break;
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
                if (scrollViewer is not null)
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
            if (element is null)
                return null;

            if (element is ScrollViewer scrollViewer)
                return scrollViewer;

            int childCount = VisualTreeHelper.GetChildrenCount(element);
            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(element, i);
                var result = FindScrollViewer(child);
                if (result is not null)
                    return result;
            }

            return null;
        }

        private void UpdateSendButtonState()
        {
            if (SendMsgButton is null) return;


            if (MessageTextBox.Tag as string == TAG_PLACEHOLDER)
            {
                SendMsgButton.IsEnabled = false;
                return;
            }


            bool hasContent = HasAnyContent(MessageTextBox);
            SendMsgButton.IsEnabled = hasContent;
        }

        private void CheckIfMTBUnfocused(bool force = false)
        {
            if (!MessageTextBox.IsKeyboardFocused || force)
            {

                bool hasContent = HasAnyContent(MessageTextBox);

                if (!hasContent)
                {
                    ApplyPlaceholder(MessageTextBox, PlaceholderTextMTB);
                }
                UpdateSendButtonState();
            }
        }

        private static bool HasAnyContent(RichTextBox rtb)
        {
            if (rtb?.Document is null)
                return false;

            if (rtb.Tag as string == TAG_PLACEHOLDER)
                return false;

            var flowDoc = rtb.Document;

            foreach (var block in flowDoc.Blocks)
            {
                if (block is Paragraph para)
                {
                    foreach (var inline in para.Inlines)
                    {
                        if (inline is Run run && !string.IsNullOrWhiteSpace(run.Text))
                        {
                            return true;
                        }
                        else if (inline is InlineUIContainer)
                        {
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        private static void ApplyPlaceholder(RichTextBox rtb, string text, bool force = false)
        {
            if (rtb.Tag as string == TAG_PLACEHOLDER && !force)
                return;

            var flowDoc = rtb.Document;
            flowDoc.Blocks.Clear();

            var para = new Paragraph(new Run(text))
            {
                Margin = new Thickness(0),
                Foreground = PlaceholderBrush
            };

            flowDoc.Blocks.Add(para);
            rtb.Tag = TAG_PLACEHOLDER;
        }

        private void RemovePlaceholder(RichTextBox rtb)
        {
            if (rtb.Tag as string == TAG_PLACEHOLDER)
            {
                var flowDoc = rtb.Document;
                flowDoc.Blocks.Clear();
                flowDoc.Blocks.Add(new Paragraph { Margin = new Thickness(0) });
                rtb.Tag = null;
            }
        }

        private static void ApplyPlaceholderTb(TextBox tb, string text)
        {
            if (tb.Tag as string == TAG_PLACEHOLDER)
                return;

            if (!string.IsNullOrEmpty(tb.Text))
                return;

            tb.Text = text;
            tb.Foreground = PlaceholderBrush;
            tb.Tag = TAG_PLACEHOLDER;
        }

        private void RemovePlaceholderTb(TextBox tb)
        {
            if (tb.Tag as string == TAG_PLACEHOLDER)
            {
                tb.Text = string.Empty;
                tb.Foreground = Brushes.Black;
                tb.Tag = null;
            }
        }

        private void SearchBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Pressed);

            RemovePlaceholderTb(SearchBox);
        }

        private void SearchBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);

            ApplyPlaceholderTb(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
        }

        private void MessageTextBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            RemovePlaceholder(MessageTextBox);
            UpdateSendButtonState();
        }

        private void MessageTextBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            CheckIfMTBUnfocused(true);
        }

        private string ExtractMessageFromRichTextBox()
        {
            var sb = new StringBuilder();
            var flow_document = MessageTextBox.Document;

            bool first_paragraph = true;

            foreach (var block in flow_document.Blocks)
            {
                if (block is Paragraph paragraph)
                {
                    if (!first_paragraph)
                        sb.Append(Environment.NewLine);

                    first_paragraph = false;

                    foreach (var inline in paragraph.Inlines)
                    {
                        if (inline is Run run)
                        {
                            sb.Append(run.Text);
                        }
                        else if (inline is LineBreak)
                        {
                            sb.Append(Environment.NewLine);
                        }
                        else if (inline is InlineUIContainer container)
                        {
                            if (container.Tag is string emojiFilename)
                            {
                                var emojiKey = EmojiDictionary.Map
                                    .FirstOrDefault(kvp => kvp.Value == emojiFilename).Key;

                                if (!string.IsNullOrEmpty(emojiKey))
                                {
                                    string unicode_emoji = ConvertHexKeyToUnicode(emojiKey);
                                    sb.Append(unicode_emoji);
                                }
                            }
                        }
                    }
                }
            }

            return sb.ToString();
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
            Universal.ShowMsg(VONAGE, VONAGE_CAPTION);
        }

        private void AddButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented(NOTIMPL_ADD_CONTACTS_CHATS);

            /*Universal.ShowMsg("Skymu file transfer is peer-to-peer, meaning no third party intercepts your data, and uses the Magic Wormhole protocol. If the recipient does not have Skymu, they " +
                "will need to download a Magic Wormhole client and complete the transfer manually.", "Wormhole file transfer");

            var dlg = new OpenFileDialog
            {
                Title = "Select a file to send",
                CheckFileExists = true
            };

            if (dlg.ShowDialog() == true)
            {
                RunWormholeSendAsync(dlg.FileName);
            }*/

        }

        private async Task RunWormholeSendAsync(string filePath)
        {
            var psi = new ProcessStartInfo
            {
                FileName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "python", "python.exe"),
                Arguments = $"-u -m wormhole send \"{filePath}\"",
                UseShellExecute = false,
                CreateNoWindow = true,
                RedirectStandardOutput = true,
                RedirectStandardError = true
            };

            var process = new Process { StartInfo = psi };
            const string prefix = "wormhole receive ";
            StringBuilder output = new StringBuilder();

            process.ErrorDataReceived += (s, e) =>
            {
                if (!string.IsNullOrEmpty(e.Data))
                {
                    output.AppendLine(e.Data);
                    if (e.Data.StartsWith(prefix))
                    {
                        Dispatcher.Invoke(() =>
                        {
                            SendMessage("&SKYMU-START&TransferWormhole," + e.Data.Substring(prefix.Length) + "&SKYMU-END&");
                        });
                    }
                    else if (e.Data.Contains("TransferError"))
                    {
                        Dispatcher.Invoke(() => { Universal.ShowMsg(e.Data, "File transfer error"); });
                    }
                    else if (e.Data.Contains("Transfer complete"))
                    {
                        Dispatcher.Invoke(() => { Universal.ShowMsg("The file was transferred successfully.", "File transfer complete"); });
                    }
                }
            };

            process.Start();
            process.BeginOutputReadLine();
            process.BeginErrorReadLine();
            await process.WaitForExitAsync();
        }

        private void CallButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Voice calling");
        }

        private void VideoCallButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Video calling");
        }

        private void EmojiButton_Click(object sender, MouseButtonEventArgs e)
        {
            EmojiFlyout.IsOpen = true;
        }

        private static string ConvertHexKeyToUnicode(string hexKey)
        {
            try
            {
                var parts = hexKey.Split('-');
                var sb = new StringBuilder();
                foreach (var part in parts)
                {
                    int codePoint = Convert.ToInt32(part, 16);
                    sb.Append(char.ConvertFromUtf32(codePoint));
                }
                return sb.ToString();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Failed to convert hex key to unicode: {hexKey} - {ex.Message}");
                return string.Empty;
            }
        }

        private void InitializeEmojiPicker()
        {
            // get unique emoji filenames only (skip duplicates)
            var uniqueEmojis = EmojiDictionary.Map
                .GroupBy(kvp => kvp.Value)
                .Select(g => g.First()) // take only the first occurrence
                .ToList();

            foreach (var kvp in uniqueEmojis)
            {
                string emojiKey = kvp.Key;
                string emojiFilename = kvp.Value;

                // create border container for each emoji
                var border = new Border
                {
                    Width = 28,
                    Height = 28,
                    Margin = new Thickness(1),
                    Background = Brushes.Transparent,
                    Cursor = Cursors.Hand,
                    ToolTip = ConvertHexKeyToUnicode(emojiKey)
                };

                try
                {
                    // ceate emoji using the shared method
                    var sliceControl = MessageTools.FormAnimatedEmoji(emojiFilename);
                    sliceControl.Tag = emojiFilename;  // store FILENAME

                    border.Child = sliceControl;
                    border.MouseLeftButtonUp += EmojiBox_Click;

                    // ooh,fancy hover effect
                    border.MouseEnter += (s, ev) =>
                    {
                        ((Border)s).Background = new SolidColorBrush(Color.FromArgb(0x40, 0xFF, 0xFF, 0xFF));
                    };
                    border.MouseLeave += (s, ev) =>
                    {
                        ((Border)s).Background = Brushes.Transparent;
                    };

                    EmojiWrapPanel.Children.Add(border);
                }
                catch (Exception ex)
                {
                    // Skip emojis that fail to load
                    System.Diagnostics.Debug.WriteLine($"Failed to load emoji: {emojiFilename} - {ex.Message}");
                    continue;
                }
            }
        }


        private void EmojiBox_Click(object sender, MouseButtonEventArgs e)
        {
            var border = sender as Border;
            if (border?.Child is not SliceControl sliceControlInside)
                return;

            EmojiFlyout.IsOpen = false;

            RemovePlaceholder(MessageTextBox);

            string emojiFilename = sliceControlInside.Tag as string;
            var sliceControl = MessageTools.FormAnimatedEmoji(emojiFilename);

            // Replace selected text if any
            if (!MessageTextBox.Selection.IsEmpty)
            {
                MessageTextBox.Selection.Text = string.Empty;
            }

            TextPointer caret = MessageTextBox.CaretPosition;

            // Normalize insertion position
            if (!caret.IsAtInsertionPosition)
            {
                caret = caret.GetInsertionPosition(LogicalDirection.Forward);
            }

            // Insert emoji at caret 
            var container = new InlineUIContainer(sliceControl, caret)
            {
                BaselineAlignment = BaselineAlignment.Center,
                Tag = emojiFilename // store FILENAME for later extraction
            };

            // Insert trailing space safely
            var spaceRun = new Run(" ");
            container.SiblingInlines.InsertAfter(container, spaceRun);

            // Move caret after space
            MessageTextBox.CaretPosition = spaceRun.ElementEnd;

            MessageTextBox.Focus();
            UpdateSendButtonState();
        }

        internal static int GetIntFromStatus(UserConnectionStatus status)
    => status_map.TryGetValue(status, out int value) ? value : 0;

        internal static UserConnectionStatus GetStatusFromInt(int value)
            => status_map.FirstOrDefault(x => x.Value == value).Key;

        private void SelectTab(SliceControl selected_tab)
        {
            if (selected_tab.Name == "btnServers")
            {
                ContactsList.Visibility = Visibility.Collapsed;
                ServersList.Visibility = Visibility.Visible;
            }
            else
            {
                ContactsList.Visibility = Visibility.Visible;
                ServersList.Visibility = Visibility.Collapsed;
            }
                GridLength dynamic = new GridLength(1, GridUnitType.Star);
            GridLength small = new GridLength(32);

            buttonToColumn[selected_tab].Width = dynamic;
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
            {
                if (tab == selected_tab) continue;
                tab.SetState(ButtonVisualState.Default);
                buttonToColumn[tab].Width = Properties.Settings.Default.DynamicSidebarTabs ? small : dynamic;
            }
        }
        private async void Contacts_BtnDown(object sender, MouseButtonEventArgs e)
        {
            SelectTab(btnContacts);

            SetWindow(WindowType.Home);
            ContactsList.ItemsSource = null;
            if (Universal.Plugin.ContactsList is null || Universal.Plugin.ContactsList.Count < 1) await Universal.Plugin.PopulateContactsList();
            ContactsList.ItemsSource = Universal.Plugin.ContactsList;
        }

        private async void Servers_BtnDown(object sender, MouseButtonEventArgs e)
        {
            SelectTab(btnServers);
            SetWindow(WindowType.Home);
            ContactsList.ItemsSource = null;
            if (Universal.Plugin.ServerList is null || Universal.Plugin.ServerList.Count < 1) await Universal.Plugin.PopulateServerList();
            ServersList.ItemsSource = Universal.Plugin.ServerList;
        }

        private async void Recents_BtnDown(object sender, MouseButtonEventArgs e)
        {
            SelectTab(btnRecents);

            SetWindow(WindowType.Home);
            ContactsList.ItemsSource = null;
            if (Universal.Plugin.RecentsList is null || Universal.Plugin.RecentsList.Count < 1) await Universal.Plugin.PopulateRecentsList();
            ContactsList.ItemsSource = Universal.Plugin.RecentsList;
        }

        private void ServersList_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            ChatArea.DataContext = e.NewValue;
            if (e.NewValue is ServerChannel channel)
            {
               SelectedConversation = channel;
               SetConversation();
            }
        }

        private static bool noCloseEvent;

        private void mn_SignOut(object sender, RoutedEventArgs e)
        {
            CredentialsHelper.Purge(Universal.Plugin.InternalName, false);
            Sounds.Play("logout");
            Universal.HasLoggedIn = false;
            new Login(true).Show();
            noCloseEvent = true;
            this.Close();
        }

        private void MakeGroup_Click(object sender, MouseButtonEventArgs e)
        {

        }

        private void AddContact_Click(object sender, MouseButtonEventArgs e)
        {

        }

        private void StatusArea_Click(object sender, MouseButtonEventArgs e)
        {
            var menu = (ContextMenu)StatusArea.Resources["StatusMenu"];

            menu.PlacementTarget = StatusArea;
            menu.Placement = System.Windows.Controls.Primitives.PlacementMode.Bottom;

            menu.IsOpen = true;
        }

        private async void StatusMenuItemClick(object sender, RoutedEventArgs e)
        {
            if (sender is MenuItem item)
            {
                string name = item.Name.Substring(3);
                int old_default_index = StatusIcon.DefaultIndex;
                UserConnectionStatus status;
                switch (name)
                {
                    case "online": status = UserConnectionStatus.Online; break;
                    case "offline": status = UserConnectionStatus.Offline; break;
                    case "invisible": status = UserConnectionStatus.Invisible; break;
                    case "away": status = UserConnectionStatus.Away; break;
                    case "dnd": status = UserConnectionStatus.DoNotDisturb; break;
                    default: case "call_forwarding": Universal.NotImplemented(Universal.Lang["sF_OPTIONS_PAGE_FORWARDINGANDVOICEMAIL"]); return;
                }
                if (status == GetStatusFromInt(old_default_index)) return;
                StatusIcon.DefaultIndex = GetIntFromStatus(status);
                Tray.PushIcon(status);
                if (!await Universal.Plugin.SetPresenceStatus(status))
                {
                    StatusIcon.DefaultIndex = old_default_index;
                    Tray.PushIcon(GetStatusFromInt(old_default_index));
                }
            }
        }

        private void chatHeader_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void mn_CheckUpdates(object sender, RoutedEventArgs e)
        {
            new Updater(true);
        }
    }

    // Converters used in the MainWindow XAML
    public class ByteArrayToImageSourceConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            var bytes = values[0] as byte[];
            var type = values[1] as string;

            if (bytes != null && bytes.Length > 0)
            {
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

            if (type == "group") return MainWindow.GroupAvatar;
            else return MainWindow.AnonymousAvatar;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            return new object[] { Binding.DoNothing, Binding.DoNothing };
        }
    }

    public class MsgByteArrayToImageConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not byte[] bytes || bytes.Length == 0 || value is null)
                return null;

            try
            {
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
            catch { return null; }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class PreviewVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool isPreview = value is string id && id.StartsWith("@skymu/sending");
            bool invert = parameter as string == "invert";
            return (isPreview ^ invert) ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotSupportedException();
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


        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is not UserConnectionStatus statInt)
                return Universal.Lang["sTRAYHINT_USER_OFFLINE"];

            return Tray.StatusMap.TryGetValue(statInt, out var statusText) ? statusText : Universal.Lang["sTRAYHINT_USER_OFFLINE"];
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

            if (TextBlockStyle is not null)
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
            return value is null ? Visibility.Collapsed : Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }
    public class PresenceStatusConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is UserConnectionStatus stat)
            {
                return MainWindow.GetIntFromStatus(stat);
            }
            return 21;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class TextStatusConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values[1] is int count)
            {
                return count.ToString() + " members";
            }
            else return values[0] ?? String.Empty;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }

    public class ReplyBodyConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (String.IsNullOrEmpty(value as string)) return "[media]";
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
            else if (value is null) return Visibility.Collapsed;
            else return Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class NullDependentBoolean : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string s && String.IsNullOrEmpty(s)) return false;
            else if (value is null) return false;
            else return true;
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
            if (value is null || parameter is null) return null;

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