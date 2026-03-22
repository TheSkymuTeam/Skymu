/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Shell;
using System.Windows.Threading;
using MiddleMan;
using Skymu.Helpers;
using Skymu.Views;
using Skymu.Views.Pages;

namespace Skymu.Skyaeris
{
    public partial class Main : Window
    {
        #region Variables

        // Constants
        private const string VONAGE = "Hahahahaha... nice try. Get a damn Vonage.";
        private const string VONAGE_CAPTION = "Can't you just use your smartphone?";
        private const string NOTIMPL_ADD_CONTACTS_CHATS = "Adding contacts to conversations";
        private const string TAG_PLACEHOLDER = "PLACEHOLDER";
        private const string MSG_SEND_ERR = "Error sending message.";
        private const string SKYMU_PREFIX = "@skymu/";
        private const string SKYMU_SENDING = SKYMU_PREFIX + "sending";
        private const int MESSAGE_LIMIT = 50;

        // Other file-level variables
        internal static ObservableCollection<ConversationItem> ActiveConversation =
            new ObservableCollection<ConversationItem>();
        private DatabaseManager Database;
        private Action<int> _userCountHandler;
        private NotifyCollectionChangedEventHandler _conversationItemsChangedHandler;
        private readonly WindowFrame border = (WindowFrame)Properties.Settings.Default.WindowFrame;
        private Thickness OriginalWindowAreaMargin = new Thickness(0);
        internal static BitmapImage AnonymousAvatar,
            GroupAvatar;
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private bool _userScrolledUp = false;
        internal static User CurrentUser; // static for other code to use it
        private BitmapImage img_maximize,
            img_restore,
            img_split,
            img_join;
        internal static Conversation SelectedConversation = null;
        private Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        internal static bool IsWindowActive = false;
        private bool IsCallPlaying = false;
        private bool is_loading_conversation;
        private NotifyCollectionChangedEventHandler _activeConversationChangedHandler;
        private WindowType current_window = WindowType.Chat;
        private readonly Brush DefaultTextBrush = (Brush)
            new BrushConverter().ConvertFromString("#333333");
        private readonly Brush PlaceholderBrush = new SolidColorBrush(
            (Color)ColorConverter.ConvertFromString("#999999")
        );
        private string PlaceholderTextMTB = String.Empty;
        public event EventHandler Ready;
		
		private CancellationTokenSource _tbliHoldTokenSource;
		private readonly Random _random = new Random(); // what is this bro

        private enum WindowType
        {
            Home,
            Chat,
        }

        private enum WindowFrame
        {
            SkypeAero,
            SkypeBasic,
            Native,
            SkypeAeroCustom,
        };

        public static readonly DependencyProperty WindowTitleProperty = DependencyProperty.Register(
            "WindowTitle",
            typeof(string),
            typeof(Main),
            new PropertyMetadata(
                null,
                (d, e) =>
                {
                    ((Main)d).Title = (string)e.NewValue;
                }
            )
        );

        public string WindowTitle
        {
            get { return (string)GetValue(WindowTitleProperty); }
            set { SetValue(WindowTitleProperty, value); }
        }

        #endregion

        #region BitmapImage generators
        private BitmapImage GenerateTitlebarButtonImage(string name)
        {
            return FrozenImage.Generate(
                $"pack://application:,,,/Skyaeris/Assets/Universal/Window Frame/Aero/{name}.png"
            );
        }

        private BitmapImage GenerateAvatarImage(string avatar)
        {
            string AvatarPath =
                "pack://application:,,,/Skyaeris/Assets/"
                + Properties.Settings.Default.ThemeRoot
                + "/Profile Pictures/"
                + avatar
                + ".png";

            return FrozenImage.Generate(AvatarPath);
        }

        #endregion

        #region Home and Chat window switching

        private void SetWindow(WindowType type)
        {
            if (type == current_window)
                return;

            current_window = type;

            switch (type)
            {
                case WindowType.Home:
                    ActiveConversation.Clear();
                    ToggleStatusBoxSelection(true);

                    HomeTopbar.Visibility = Visibility.Visible;
                    ChatTopbar.Visibility = Visibility.Collapsed;
                    ChatProfileArea.Visibility = Visibility.Collapsed;
                    MessageWindow.Visibility = Visibility.Collapsed;

                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    browser.Visibility = Visibility.Visible;
                    MainPageButton.SetState(ButtonVisualState.Pressed);
                    ConversationList.SelectedItem = null;
                    ClearTreeSelection(ServersList);
                    break;

                case WindowType.Chat:
                    ToggleStatusBoxSelection(false);
                    StatusBox.SetState(ButtonVisualState.Default);

                    HomeTopbar.Visibility = Visibility.Collapsed;
                    ChatTopbar.Visibility = Visibility.Visible;
                    ChatProfileArea.Visibility = Visibility.Visible;
                    MessageWindow.Visibility = Visibility.Visible;
                    browser.Visibility = Visibility.Collapsed;

                    TopbarWindowRow.Height = new GridLength(120);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    break;
            }
        }

        private void ClearTreeSelection(TreeView tree)
        {
            if (tree.SelectedItem == null)
                return;

            TreeViewItem container = GetContainerFromItem(tree, tree.SelectedItem);
            if (container != null)
                container.IsSelected = false;
        }

        private void ToggleStatusBoxSelection(bool selected)
        {
            StatusBox.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
            StatusBox.TextColor = selected ? Brushes.White : DefaultTextBrush;
            SBHomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        private TreeViewItem GetContainerFromItem(ItemsControl parent, object item)
        {
            if (parent == null)
                return null;

            TreeViewItem container =
                parent.ItemContainerGenerator.ContainerFromItem(item) as TreeViewItem;

            if (container != null)
                return container;

            foreach (object child in parent.Items)
            {
                TreeViewItem parentContainer =
                    parent.ItemContainerGenerator.ContainerFromItem(child) as TreeViewItem;

                TreeViewItem result = GetContainerFromItem(parentContainer, item);
                if (result != null)
                    return result;
            }

            return null;
        }

        #endregion

        #region Custom window logic

        public void InitializeWindowFrame()
        {
            if (border != WindowFrame.Native) // using Skype's custom border
            {
                OriginalWindowAreaMargin = WindowArea.Margin; // for maximization stuff
                WindowChrome chrome = new WindowChrome();
                chrome.UseAeroCaptionButtons = false;
                WindowChrome.SetWindowChrome(this, chrome); // WindowChrome configuration ensures that system frame is not drawn
                SetClickable(tbli, close, minimize, maximize, split);

                if (border == WindowFrame.SkypeAero || border == WindowFrame.SkypeAeroCustom) // switch configuration from Skype Basic to Aero
                {
                    Thickness AeroThickness = new Thickness(8, 30, 8, 8);
                    OriginalWindowAreaMargin = AeroThickness;
                    chrome.GlassFrameThickness = AeroThickness;
                    // Set up the window background and margin
                    WindowArea.Margin = AeroThickness;
                    TitleBar.Background = Brushes.Transparent;

                    if (border == WindowFrame.SkypeAero)
                    {
                        this.AllowsTransparency = false;
                        this.Background = Brushes.Transparent;
                    }
                    else if (border == WindowFrame.SkypeAeroCustom) // TODO: finish this
                    {
                        var img = FrozenImage.Generate(
                            "pack://application:,,,/Skyaeris/Assets/Universal/Window Frame/Aero/aero-background.png"
                        );
                        this.Background = new ImageBrush
                        {
                            ImageSource = img,
                            Stretch = Stretch.None,
                            TileMode = TileMode.None,
                            ViewportUnits = BrushMappingMode.Absolute,
                            Viewport = new Rect(0, 0, img.Width, img.Height),
                        };
                    }

                    // Titlebar font styling
                    TitleMain.FontFamily = new FontFamily("Segoe UI");
                    TitleMain.FontWeight = FontWeights.Normal;
                    TitleMain.FontSize = 12;
                    TitleMain.Foreground = Brushes.Black;

                    // Titlebar drop shadow (Imitates the Aero glow effect)
                    TitleMain.Effect = new DropShadowEffect
                    {
                        ShadowDepth = 0,
                        Direction = 330,
                        Color = Colors.White,
                        Opacity = 1,
                        BlurRadius = 20,
                    };

                    TitleShadow.Visibility = Visibility.Visible;
                    TitleShadow2.Visibility = Visibility.Visible;
                    TitleShadow3.Visibility = Visibility.Visible;
                }

                img_maximize = GenerateTitlebarButtonImage("maximize");
                img_restore = GenerateTitlebarButtonImage("restore");
                img_split = GenerateTitlebarButtonImage("split");
                img_join = GenerateTitlebarButtonImage("join");
            }
            else if (border == WindowFrame.Native) // using system native border
            {
                this.AllowsTransparency = false;
                WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(0);
            }
        }

        private DropShadowEffect CreateDropShadow(string hexColor)
        {
            return new DropShadowEffect()
            {
                Color = (Color)ColorConverter.ConvertFromString(hexColor),
                BlurRadius = 15,
                ShadowDepth = 0,
                Opacity = 1,
            };
        }

        private void SetClickable(params IInputElement[] buttons)
        {
            foreach (var b in buttons)
                WindowChrome.SetIsHitTestVisibleInChrome(b, true);
        }

        private void HandleWindowStateChanged()
        {
            if (OriginalWindowAreaMargin.Top != 0)
            {
                if (WindowState == WindowState.Maximized)
                {
                    maximize.Source = img_restore;
                    FrameArea.Margin = new Thickness(0, 5, 0, 0);
                    Thickness ReducedWinAreaMargin = OriginalWindowAreaMargin;
                    ReducedWinAreaMargin.Top -= 4;
                    WindowArea.Margin = ReducedWinAreaMargin;
                }
                else
                {
                    maximize.Source = img_maximize;
                    FrameArea.Margin = new Thickness(0);
                    WindowArea.Margin = OriginalWindowAreaMargin;
                }
            }
        }

        private void HandleWindowButtonEnter(SliceControl button)
        {
            if (button != null)
            {
                if (button.Name == "close")
                {
                    button.Effect = CreateDropShadow("#FF0000");
                }
                else
                {
                    button.Effect = CreateDropShadow("#00C3FF");
                }
            }
        }

        private void HandleWindowButtonLeave(SliceControl button)
        {
            if (IsWindowActive)
            {
                if (button != null)
                {
                    button.Effect = null;
                }
            }
            else if (!IsWindowActive)
            {
                button.Effect = null;
            }
        }

        private void HandleWindowActivated()
        {
            IsWindowActive = true;

            ContentBgTop.Fill = (Brush)Application.Current.Resources["Active.WindowBrush"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Active.StandardBrush"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Active.MenuBarBrush"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Active.StandardBrush"];

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }

            if (border == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Active.TitlebarBrush"];
                this.Background = (Brush)Application.Current.Resources["Active.StandardBrush"];
            }
        }

        private void HandleWindowDeactivated()
        {
            IsWindowActive = false;

            ContentBgTop.Fill = (Brush)Application.Current.Resources["Inactive.WindowBrush"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Inactive.StandardBrush"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Inactive.MenuBarBrush"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Inactive.StandardBrush"];

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }

            if (border == WindowFrame.SkypeBasic)
            {
                this.Background = (Brush)Application.Current.Resources["Inactive.StandardBrush"];
                TitleBar.Background = (Brush)Application.Current.Resources["Inactive.TitlebarBrush"];
            }
        }

        private void HandleWindowButtonClick(SliceControl button)
        {
            if (button != null)
            {
                switch (button.Name)
                {
                    case "close":
                        Close();
                        break;
                    case "split":
                        Universal.NotImplemented("Split Window");
                        break;
                    case "minimize":
                        WindowState = WindowState.Minimized;
                        break;
                    case "maximize":
                        if (WindowState == WindowState.Normal)
                            WindowState = WindowState.Maximized;
                        else
                            WindowState = WindowState.Normal;
                        break;
                }
            }
        }

        #endregion

        #region Sidebar tab selection and population
        internal async Task InitSidebar()
        {
            await Universal.Plugin.PopulateSidebarInformation();
            await Universal.Plugin.PopulateRecentsList();
            CurrentUser = Universal.Plugin.MyInformation;

            Database = new DatabaseManager(CurrentUser);
            Database.Conversations.Write(Universal.Plugin.RecentsList.ToArray());
            _ = LoadAndCacheContacts();

            Database.Accounts.Write(CurrentUser);
            GlobalUserCount.Text = Universal.Lang["sCALLPHONES_RATES_LOADING"];

            if (Properties.Settings.Default.EnableSkypeHome)
                SkypeHome.Generate(browser, CurrentUser, Universal.Plugin.ContactsList.ToArray()); // can be static cos browser is an object so sign out -> sign in still disposes it
            _ = SkymuApiStatusHandler(); // DO NOT AWAIT THIS!!!!!!

            if (_userCountHandler != null)
                UserCountAPI.OnUserCountUpdate -= _userCountHandler;

            _userCountHandler = usrCount =>
            {
                Dispatcher.Invoke(() =>
                {
                    GlobalUserCount.Text = Universal.Lang.Format("sTOTAL_USERS_ONLINE", usrCount);
                });
            };

            UserCountAPI.OnUserCountUpdate += _userCountHandler;

            WindowTitle = Properties.Settings.Default.BrandingName + "™ - " + CurrentUser.Username;
            this.Title = WindowTitle;

            StatusBox.Text = CurrentUser.DisplayName;
            StatusIcon.DefaultIndex = GetIntFromStatus(CurrentUser.ConnectionStatus);

            setupcompactrecentsview();

            SpeedTester();

            Ready?.Invoke(this, EventArgs.Empty);
        }

        private async Task LoadAndCacheContacts()
        {
            await Universal.Plugin.PopulateContactsList();
            Database.Contacts.Write(Universal.Plugin.ContactsList.ToArray());
        }

        private async void HandleConversationSelection(object selected_item)
        {
            if (selected_item == null)
                return;

            ChatArea.DataContext = selected_item;
            SelectedConversation = (Conversation)selected_item;
            await SetConversation();
        }

        private async void HandleServerItemSelection(RoutedPropertyChangedEventArgs<object> e)
        {
            if (e.NewValue is CategoryHeaderItem)
                return;

            ChatArea.DataContext = e.NewValue;
            if (e.NewValue is ServerChannel channel)
            {
                SelectedConversation = channel;
                await SetConversation();
            }
        }

        private void setupcompactrecentsview()
        {
            var grouped = CompactRecentsHelper.GroupByDate(Universal.Plugin.RecentsList);
            var selector = new CompactRecentsTemplateSelector
            {
                DateHeaderTemplate = (DataTemplate)FindResource("DateHeaderTemplate"),
                CompactDirectMessageTemplate = (DataTemplate)FindResource(
                    "CompactDirectMessageTemplate"
                ),
                CompactGroupTemplate = (DataTemplate)FindResource("CompactGroupTemplate"),
            };
            ConversationList.ItemTemplateSelector = selector;
            ConversationList.ItemsSource = grouped;
        }

        public static void RefreshCompactRecentsView()
        {
            var mainWindow = Application.Current.MainWindow as Main;
            if (
                mainWindow?.ConversationList.Visibility == Visibility.Visible
                && mainWindow.ConversationList.ItemTemplateSelector
                    is CompactRecentsTemplateSelector
            )
            {
                mainWindow.Dispatcher.Invoke(mainWindow.setupcompactrecentsview);
            }
        }

        private async void SelectTab(SliceControl tab_to_select)
        {
            if (tab_to_select.Name == "btnServers")
            {
                ConversationList.Visibility = Visibility.Collapsed;
                ServersList.Visibility = Visibility.Visible;
            }
            else
            {
                ConversationList.Visibility = Visibility.Visible;
                ServersList.Visibility = Visibility.Collapsed;
                ConversationList.ItemsSource = null;
            }

            GridLength dynamic = new GridLength(1, GridUnitType.Star);
            GridLength small = new GridLength(32);

            buttonToColumn[tab_to_select].Width = dynamic;
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
            {
                if (tab == tab_to_select)
                    continue;
                if (tab == btnServers && !Universal.Plugin.SupportsServers)
                    continue;
                tab.SetState(ButtonVisualState.Default);
                buttonToColumn[tab].Width =
                    Properties.Settings.Default.DynamicSidebarTabs
                    && Universal.Plugin.SupportsServers
                        ? small
                        : dynamic;
            }

            SetWindow(WindowType.Home);

            switch (tab_to_select.Name)
            {
                case "btnServers":
                    if (
                        Universal.Plugin.ServerList == null
                        || Universal.Plugin.ServerList.Count < 1
                    )
                        await Universal.Plugin.PopulateServerList();

                    foreach (var server in Universal.Plugin.ServerList)
                    {
                        server.GroupedChannels = ServerChannelHelper.GroupByCategory(
                            server.Channels,
                            server.CategoryMap
                        );
                    }

                    ServersList.ItemsSource = Universal.Plugin.ServerList;
                    break;
                case "btnContacts":
                    if (
                        Universal.Plugin.ContactsList == null
                        || Universal.Plugin.ContactsList.Count < 1
                    )
                        await Universal.Plugin.PopulateContactsList();
                    ConversationList.ItemTemplateSelector = null;
                    ConversationList.ItemsSource = Universal.Plugin.ContactsList;
                    break;
                case "btnRecents":
                    if (
                        Universal.Plugin.RecentsList == null
                        || Universal.Plugin.RecentsList.Count < 1
                    )
                        await Universal.Plugin.PopulateRecentsList();
                    setupcompactrecentsview();
                    break;
            }
        }

        #endregion

        #region Sidebar resizing

        private bool isDragging = false;
        private Point dragStart;
        private UIElement capturedElement = null;

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

                if (newWidth < min)
                    newWidth = min;
                if (newWidth > max)
                    newWidth = max;

                sidebarCol.Width = new GridLength(newWidth);
                dragStart = current;
            }
        }

        private void SkypeSplitter_Press(object sender, MouseButtonEventArgs e)
        {
            isDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as UIElement;

            if (capturedElement != null)
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

                if (capturedElement != null && capturedElement.IsMouseCaptured)
                {
                    capturedElement.ReleaseMouseCapture();
                }
                capturedElement = null;
                e.Handled = true;
            }
        }

        private void Main_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            SidebarColumn.MaxWidth = this.ActualWidth / 2;
        }

        #endregion

        #region User count API

        private async Task SkymuApiStatusHandler()
        {
            if (Properties.Settings.Default.DisablePingbacks)
                return;
            await UserCountAPI.GenerateUID();
            await UserCountAPI.SetUsrStatus(
                true,
                CurrentUser?.DisplayName,
                CurrentUser?.Username,
                CurrentUser?.Identifier
            );
            await UserCountAPI.ConnectWS();
            _ = PingLoop();
        }

        private static async Task PingLoop()
        {
            while (true)
            {
                await Task.Delay(45000);
                await UserCountAPI.SendPingToServ();
            }
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

        #endregion

        #region Event handlers

        private void ServersList_SelectedItemChanged(
            object sender,
            RoutedPropertyChangedEventArgs<object> e
        )
        {
            HandleServerItemSelection(e);
        }

        private void ContactList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selected = ((ListBox)sender).SelectedItem;
            if (selected is DateHeaderItem)
            {
                ((ListBox)sender).SelectedItem = null;
                return;
            }
            HandleConversationSelection(selected);
        }

        private void Chat_Close(object sender, MouseButtonEventArgs e)
        {
            SetWindow(WindowType.Home);
        }

        private void StatusArea_Click(object sender, MouseButtonEventArgs e)
        {
            OpenStatusMenu();
        }

        private void SidebarTab_BtnDown(object sender, MouseButtonEventArgs e)
        {
            SelectTab(sender as SliceControl);
        }

        private void TitleButton_Click(object sender, MouseButtonEventArgs e)
        {
            HandleWindowButtonClick(sender as SliceControl);
        }

        private void TitleButton_MouseLeave(object sender, MouseEventArgs e)
        {
            HandleWindowButtonLeave(sender as SliceControl);
        }

        private void TitleButton_MouseEnter(object sender, MouseEventArgs e)
        {
            HandleWindowButtonEnter(sender as SliceControl);
        }

        private void Window_StateChanged(object sender, EventArgs e)
        {
            HandleWindowStateChanged();
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            HandleWindowActivated();
        }

        private void Window_Deactivated(object sender, EventArgs e)
        {
            HandleWindowDeactivated();
        }

		private async void tbli_MouseDown(object sender, MouseButtonEventArgs e) // changed this because just clicking AND it being hand cursor... no bro .... so now u hold 2 seconds - TODO: make it show the actual menu, I fuckin knewww it was like that bro
		{
			_tbliHoldTokenSource = new CancellationTokenSource();
			
			try
			{
				await Task.Delay(1500, _tbliHoldTokenSource.Token); // holding for 2 sec? I hope??
		
				string url;
				if (_random.Next(0, 100) < 12) // oh hello im le underscore yeah I change everything and it totally makes sense guys
					url = "https://www.youtube.com/watch?v=cdtNIyx10DM"; // one of the uploads called him ksi bruh are we dead ass ... french ksi wtf......
				else
					url = "https://www.youtube.com/watch?v=kVsH_ySm5_E";
				
				Process.Start(new ProcessStartInfo { FileName = url, UseShellExecute = true });
			}
			catch (TaskCanceledException)
			{
				// ass
			}
		}
		
		// Method triggered if the user lets go of the click OR moves their mouse away
		private void tbli_CancelHold(object sender, MouseEventArgs e)
		{
			// If a timer is currently running, cancel it
			if (_tbliHoldTokenSource != null && !_tbliHoldTokenSource.IsCancellationRequested)
			{
				_tbliHoldTokenSource.Cancel();
			}
		}

        private void StatusMenuItemClick(object sender, RoutedEventArgs e)
        {
            HandleStatusItemClick(sender as MenuItem);
        }

        private void Main_Closing(object sender, System.ComponentModel.CancelEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Close(ev);
        }

        private void mn_New(object sender, RoutedEventArgs e) { }

        private void mn_Open(object sender, RoutedEventArgs e) { }

        private void mn_Close(object sender, RoutedEventArgs e)
        {
            Universal.Close();
        }

        private void mn_Apps(object sender, RoutedEventArgs e) { }

        private void mn_Language(object sender, RoutedEventArgs e) { }

        private void mn_Accessibility(object sender, RoutedEventArgs e) { }

        private void mn_ShareWithFriend(object sender, RoutedEventArgs e) { }

        private void mn_SkypeWifi(object sender, RoutedEventArgs e) { }

        private void mn_Options(object sender, RoutedEventArgs e)
        {
            new Views.Options().Show();
        }

        private void mn_About(object sender, RoutedEventArgs e)
        {
            new Views.About().Show();
        }

        private void chatHeader_Loaded(object sender, RoutedEventArgs e) { }

        private void mn_CheckUpdates(object sender, RoutedEventArgs e)
        {
            new Updater(true);
        }

        private void mn_SignOut(object sender, RoutedEventArgs e)
        {
            InitiateSignOut();
        }

        private void MakeGroup_Click(object sender, MouseButtonEventArgs e) { }

        private void AddContact_Click(object sender, MouseButtonEventArgs e) { }

        private async void OnMsgSendClickButton(object sender, MouseButtonEventArgs e)
        {
            await SendMessage();
        }

        private async void WifiButton_Click(object sender, MouseButtonEventArgs e)
        {
            await SpeedTester();
        }

        private void ConversationItemsList_Loaded(object sender, RoutedEventArgs e)
        {
            HandleConversationItems((ListBox)sender);
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

        private void WindowArea_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Keyboard.ClearFocus();
        }

        private void MessageTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateSendButtonState();
        }

        private void CallPhones_Click(object sender, MouseButtonEventArgs e)
        {
            Sounds.Play("call-error");
            Universal.MessageBox(VONAGE, VONAGE_CAPTION);
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
                send file logic goes here
            }*/
        }

        private async void CallButtonClick(object sender, MouseButtonEventArgs e)
        {
            await InitiateDummyCall();
        }

        private void CallDropdownButtonClick(object sender, MouseButtonEventArgs e)
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

        #endregion

        #region Typing indicator
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
                        typing_text = $"{profiles.First().DisplayName} is typing...";
                        break;

                    case 2:
                        typing_text =
                            string.Join(" and ", profiles.Take(2).Select(p => p.DisplayName))
                            + " are typing...";
                        break;

                    case 3:
                    {
                        var names = profiles.Take(3).Select(p => p.DisplayName).ToArray();
                        typing_text = $"{names[0]}, {names[1]}, and {names[2]} are typing...";
                        break;
                    }

                    default:
                        typing_text = "Multiple people are typing...";
                        break;
                }
                TypingIndicatorText.Text = typing_text;
                TypingIndicator.Visibility = Visibility.Visible;
            }
        }

        #endregion

        #region Message sending

        private readonly Dictionary<string, Message> _pendingPreviewMessages =
            new Dictionary<string, Message>();

        private async Task SendMessage(string message = null)
        {
            if (!SendMsgButton.IsEnabled && message == null)
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
            ActiveConversation.Add(previewMessage);

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
                        ActiveConversation.Remove(pending);
                    });
                }

                Universal.MessageBox(MSG_SEND_ERR);
            }
        }

        private void UpdateSendButtonState()
        {
            if (SendMsgButton == null)
                return;

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

        private bool HasAnyContent(RichTextBox rtb)
        {
            if (rtb?.Document == null)
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
                                var emojiKey = EmojiDictionary
                                    .Map.FirstOrDefault(kvp => kvp.Value == emojiFilename)
                                    .Key;

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

        #endregion

        #region Internet speed tester
        private async Task SpeedTester()
        {
            const string TEST_FILE_URL = "https://speed.cloudflare.com/__down?bytes=10485760";
            const string FILENAME_PREFIX = "network-";

            var cts = new CancellationTokenSource();
            var token = cts.Token;

            var animTask = Task.Run(
                async () =>
                {
                    int frameCount = 5;
                    int index = 0;

                    while (!token.IsCancellationRequested)
                    {
                        string icon_filename = FILENAME_PREFIX + (index + 1);

                        string icon_uri =
                            "pack://application:,,,/"
                            + Universal.SkypeEra
                            + "/Assets/"
                            + Properties.Settings.Default.ThemeRoot
                            + "/Chat/"
                            + icon_filename + ".png";

                        Application.Current.Dispatcher.Invoke(() =>
                        {
                            WifiButton.Source = FrozenImage.Generate(icon_uri);
                        });

                        index = (index + 1) % frameCount;

                        await Task.Delay(100);
                    }
                },
                token
            );

            string final_icon = FILENAME_PREFIX;
            try
            {
                var stopwatch = Stopwatch.StartNew();
                var data = await Universal.HttpClient.GetByteArrayAsync(TEST_FILE_URL);
                stopwatch.Stop();

                double speedMbps = (data.Length * 8.0) / 1_000_000 / stopwatch.Elapsed.TotalSeconds;

                if (speedMbps >= 50)
                {
                    final_icon += 5;
                }
                else if (speedMbps >= 20)
                {
                    final_icon += 4;
                }
                else if (speedMbps >= 10)
                {
                    final_icon += 3;
                }
                else if (speedMbps >= 5)
                {
                    final_icon += 2;
                }
                else
                {
                    final_icon += 1;
                }
            }
            catch
            {
                final_icon += "none";
            }
            finally
            {
                cts.Cancel();
                await animTask;
            }

            string final_uri =
                "pack://application:,,,/"
                + Universal.SkypeEra
                + "/Assets/"
                + Properties.Settings.Default.ThemeRoot
                + "/Chat/"
                + final_icon + ".png";
            WifiButton.Source = FrozenImage.Generate(final_uri);
        }

        #endregion

        #region Conversation

        private async Task SetConversation()
        {
            _userScrolledUp = false;
            ActiveConversation.Clear();
            Universal.Plugin.TypingUsersList.Clear();
            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = Universal.Lang.Format(
                "sCHAT_TYPE_HERE_DIALOG",
                SelectedConversation.DisplayName
            );
            ApplyPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
            UpdateSendButtonState();
            throbber.Visibility = Visibility.Visible;
            is_loading_conversation = true;

            ConversationItem[] cached = Database.Messages.Read(SelectedConversation, 50);
            ConversationItem[] items;

            if (cached != null && cached.Length > 0)
            {
                items = cached;
                throbber.Visibility = Visibility.Collapsed;
                _ = SyncMessagesInBackground(
                    SelectedConversation,
                    cached[cached.Length - 1].Identifier
                );
            }
            else
            {
                items = await Universal.Plugin.FetchMessages(
                    SelectedConversation,
                    Fetch.Newest,
                    MESSAGE_LIMIT,
                    null
                );
                Database.Messages.Write(items, SelectedConversation);
            }

            if (SelectedConversation == null)
                return;

            if (items != null && items.Length > 0)
            {
                foreach (ConversationItem item in items)
                    ActiveConversation.Add(item);

                for (int i = 0; i < ActiveConversation.Count; i++)
                {
                    if (ActiveConversation[i] is Message message)
                    {
                        for (int j = i - 1; j >= 0; j--)
                        {
                            if (ActiveConversation[j] is Message previousMessage)
                            {
                                message.PreviousMessageIdentifier = previousMessage
                                    .Sender
                                    .Identifier;
                                break;
                            }
                        }
                    }
                }

                if (_activeConversationChangedHandler != null)
                    ActiveConversation.CollectionChanged -= _activeConversationChangedHandler;

                _activeConversationChangedHandler = (s, args) =>
                {
                    if (is_loading_conversation || args.Action != NotifyCollectionChangedAction.Add)
                        return;
                    foreach (var item in args.NewItems)
                    {
                        if (
                            item is Message message
                            && message.Sender.Identifier != CurrentUser?.Identifier
                            && IsWindowActive
                            && !synchronizing
                        )
                        {
                            Sounds.Play("message-recieved");
                            break;
                        }
                    }
                };

                ActiveConversation.CollectionChanged += _activeConversationChangedHandler;
                ConversationItemsList.ItemsSource = ActiveConversation;
            }

            throbber.Visibility = Visibility.Collapsed;
            is_loading_conversation = false;
            _conversationScrollViewer.ScrollToEnd();
        }

        private bool synchronizing = false;

        private async Task SyncMessagesInBackground(Conversation conversation, string afterId)
        {
            ConversationItem[] items = await Universal.Plugin.FetchMessages(
                conversation,
                Fetch.NewestAfterIdentifier, // TODO: Make fetch all
                MESSAGE_LIMIT,
                afterId
            );
            if (items == null || items.Length == 0)
                return;
            Database.Messages.Write(items, conversation);

            if (SelectedConversation != conversation)
                return;
            synchronizing = true;
            foreach (ConversationItem item in items)
                ActiveConversation.Add(item);
            synchronizing = false;
        }

        private void HandleConversationItems(ListBox listBox)
        {
            ConversationItemsList.ApplyTemplate();
            _conversationScrollViewer =
                ConversationItemsList.Template.FindName("ScrollViewer", ConversationItemsList)
                as ScrollViewer;
            _conversationScrollViewer.ScrollChanged += (s, e) =>
            {
                if (e.ExtentHeightChange == 0)
                    _userScrolledUp =
                        _conversationScrollViewer.VerticalOffset
                        < _conversationScrollViewer.ScrollableHeight - 10;
            };

            if (listBox.Items is INotifyCollectionChanged notifyCollection)
            {
                if (_conversationItemsChangedHandler != null)
                    notifyCollection.CollectionChanged -= _conversationItemsChangedHandler;

                _conversationItemsChangedHandler = (s, args) =>
                {
                    if (args.Action == NotifyCollectionChangedAction.Add)
                    {
                        foreach (var item in args.NewItems)
                        {
                            if (item is Message message)
                            {
                                if (
                                    message.Identifier != null
                                    && !message.Identifier.StartsWith(SKYMU_SENDING)
                                    && !is_loading_conversation
                                )
                                {
                                    var msg = new ConversationItem[] { message };
                                    Task.Run(() =>
                                        Database.Messages.Write(msg, SelectedConversation)
                                    );
                                }
                                if (
                                    message.Sender.Identifier == CurrentUser?.Identifier
                                    && message.Identifier != null
                                    && !message.Identifier.StartsWith(SKYMU_SENDING)
                                )
                                {
                                    // try exact text match first
                                    var match = _pendingPreviewMessages.Values.LastOrDefault(p =>
                                        p.Text == message.Text
                                    );

                                    // fallback: remove most recent preview
                                    if (match == null)
                                    {
                                        match = _pendingPreviewMessages.Values.LastOrDefault();
                                    }

                                    if (match != null)
                                    {
                                        _pendingPreviewMessages.Remove(match.Identifier);

                                        Dispatcher.BeginInvoke(
                                            new Action(
                                                delegate()
                                                {
                                                    ActiveConversation.Remove(match);
                                                }
                                            )
                                        );
                                    }
                                }
                                int currentIndex = ActiveConversation.IndexOf(message);
                                for (int i = currentIndex - 1; i >= 0; i--)
                                {
                                    if (
                                        ActiveConversation[i] is Message previousMessage
                                        && !previousMessage.Identifier.StartsWith(SKYMU_SENDING)
                                    )
                                    {
                                        message.PreviousMessageIdentifier = previousMessage
                                            .Sender
                                            .Identifier;
                                        break;
                                    }
                                }
                            }
                        }
                    }

                    if (!is_loading_conversation && !_userScrolledUp)
                        _conversationScrollViewer?.ScrollToEnd();
                };

                notifyCollection.CollectionChanged += _conversationItemsChangedHandler;
            }
        }

        #endregion

        #region Text box placeholders

        private void ApplyPlaceholder(RichTextBox rtb, string text, bool force = false)
        {
            if (rtb.Tag as string == TAG_PLACEHOLDER && !force)
                return;

            var flowDoc = rtb.Document;
            flowDoc.Blocks.Clear();

            var para = new Paragraph(new Run(text))
            {
                Margin = new Thickness(0),
                Foreground = PlaceholderBrush,
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

        private void ApplyPlaceholderTb(TextBox tb, string text)
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

        #endregion

        #region Calling

        private async Task InitiateDummyCall()
        {
            if (IsCallPlaying)
            {
                IsCallPlaying = false;
                Sounds.StopPlayback("call-ring");
                Sounds.Play("call-end");
                CallDropdown.Visibility = Visibility.Visible;
                CallButton.TextLeftMargin = 26;
                CallButton.RightWidth = 4;
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALL"];
            }
            else
            {
                WindowBase callwin = new WindowBase(new CallScreen());
                callwin.HeaderText = "DU DU DUN. DU DU DOO";
                callwin.HeaderIcon = WindowBase.IconType.SkypeOut;
                callwin.Show();
                IsCallPlaying = true;
                CallButton.IsEnabled = false;
                CallButton.Text = Universal.Lang["sPARTICIPANT_ACTIVE_PHONE"];
                await Task.Run(() =>
                {
                    Sounds.PlaySynchronous("call-init");
                });
                CallButton.IsEnabled = true;
                CallButton.Text = Universal.Lang["sZAP_ACTIONBUTTON_HANGUP"];
                CallDropdown.Visibility = Visibility.Collapsed;
                CallButton.TextLeftMargin = 30;
                CallButton.RightWidth = 23;
                Sounds.PlayLoop("call-ring");
            }
        }

        #endregion

        #region Emoji picker
        private string ConvertHexKeyToUnicode(string hexKey)
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
                Debug.WriteLine($"Failed to convert hex key to unicode: {hexKey} - {ex.Message}");
                return string.Empty;
            }
        }

        private void InitializeEmojiPicker()
        {
            // get unique emoji filenames only (skip duplicates)
            var uniqueEmojis = EmojiDictionary
                .Map.GroupBy(kvp => kvp.Value)
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
                    ToolTip = ConvertHexKeyToUnicode(emojiKey),
                };

                try
                {
                    // ceate emoji using the shared method
                    var sliceControl = MessageTools.FormAnimatedEmoji(emojiFilename);
                    sliceControl.Tag = emojiFilename; // store FILENAME

                    border.Child = sliceControl;
                    border.MouseLeftButtonUp += EmojiBox_Click;

                    // ooh,fancy hover effect
                    border.MouseEnter += (s, ev) =>
                    {
                        ((Border)s).Background = new SolidColorBrush(
                            Color.FromArgb(0x40, 0xFF, 0xFF, 0xFF)
                        );
                    };
                    border.MouseLeave += (s, ev) =>
                    {
                        ((Border)s).Background = Brushes.Transparent;
                    };

                    EmojiWrapPanel.Children.Add(border);
                }
                catch (Exception ex)
                {
                    // skip emojis that fail to load
                    Debug.WriteLine($"Failed to load emoji: {emojiFilename} - {ex.Message}");
                    continue;
                }
            }
        }

        private void EmojiBox_Click(object sender, MouseButtonEventArgs e)
        {
            var border = sender as Border;
            var sliceControlInside = border != null ? border.Child as SliceControl : null;
            if (sliceControlInside == null)
                return;

            EmojiFlyout.IsOpen = false;

            RemovePlaceholder(MessageTextBox);

            string emojiFilename = sliceControlInside.Tag as string;
            var sliceControl = MessageTools.FormAnimatedEmoji(emojiFilename);

            // replace selected text if any
            if (!MessageTextBox.Selection.IsEmpty)
            {
                MessageTextBox.Selection.Text = string.Empty;
            }

            TextPointer caret = MessageTextBox.CaretPosition;

            // normalize insertion position
            if (!caret.IsAtInsertionPosition)
            {
                caret = caret.GetInsertionPosition(LogicalDirection.Forward);
            }

            // insert emoji at caret
            var container = new InlineUIContainer(sliceControl, caret)
            {
                BaselineAlignment = BaselineAlignment.Center,
                Tag = emojiFilename, // store FILENAME for later extraction
            };

            // insert trailing space
            var spaceRun = new Run(" ");
            container.SiblingInlines.InsertAfter(container, spaceRun);

            // move caret after space
            MessageTextBox.CaretPosition = spaceRun.ElementEnd;

            MessageTextBox.Focus();
            UpdateSendButtonState();
        }

        #endregion

        #region Initialization and closing

        public Main()
        {
            noCloseEvent = false;

            InitializeComponent();
            Application.Current.MainWindow = this;
            InitializeWindowFrame();

            GroupAvatar = GenerateAvatarImage("group");
            AnonymousAvatar = GenerateAvatarImage("anonymous");

            this.MouseLeftButtonUp += MouseRelease;
            this.SizeChanged += Main_SizeChanged;
            buttonToColumn = new Dictionary<SliceControl, ColumnDefinition>
            {
                { btnContacts, ContactsColumn },
                { btnServers, ServersColumn },
                { btnRecents, RecentsColumn },
            };
            SelectTab(btnRecents);
            ApplyPlaceholderTb(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
            InitializeEmojiPicker();

            if (!Universal.Plugin.SupportsServers)
            {
                btnServers.Visibility = Visibility.Collapsed;
                ServersColumn.Width = new GridLength(0);
            }

            Universal.Plugin.TypingUsersList.CollectionChanged += (s, e) =>
            {
                UpdateTypingIndicator();
            };

            SetWindow(WindowType.Home);
        }

        private void InitiateSignOut()
        {
            Credentials.Purge(CurrentUser, Universal.Plugin.InternalName);
            Sounds.Play("logout");
            Universal.HasLoggedIn = false;
            new Login().Show();
            noCloseEvent = true;
            this.Close();
        }

        #endregion

        #region Icon dictionaries with helper methods

        private readonly static Dictionary<UserConnectionStatus, int> status_map = new Dictionary<
            UserConnectionStatus,
            int
        >()
        {
            { UserConnectionStatus.Online, 2 },
            { UserConnectionStatus.OnlineMobile, 2 },
            { UserConnectionStatus.Away, 3 },
            { UserConnectionStatus.AwayMobile, 3 },
            { UserConnectionStatus.DoNotDisturb, 5 },
            { UserConnectionStatus.DoNotDisturbMobile, 5 },
            { UserConnectionStatus.Invisible, 19 },
            { UserConnectionStatus.Blocked, 9 },
            { UserConnectionStatus.Offline, 14 },
            { UserConnectionStatus.Unknown, 0 },
        };

        private static readonly Dictionary<ChannelType, int> channel_type_map = new Dictionary<
            ChannelType,
            int
        >()
        {
            { ChannelType.Standard, 2 },
            { ChannelType.ReadOnly, 2 },
            { ChannelType.Announcement, 6 },
            { ChannelType.Voice, 1 },
            { ChannelType.Restricted, 2 },
            { ChannelType.Forum, 9 },
            { ChannelType.NoAccess, 4 },
        };

        internal static int GetIntFromChannelType(ChannelType channel) =>
            channel_type_map.TryGetValue(channel, out int value) ? value : 0;




        internal static int GetIntFromStatus(UserConnectionStatus status) =>
            status_map.TryGetValue(status, out int value) ? value : 0;

        internal UserConnectionStatus GetStatusFromInt(int value) =>
            status_map.FirstOrDefault(x => x.Value == value).Key;

        #endregion

        #region Status change menu

        private void OpenStatusMenu()
        {
            var menu = (ContextMenu)StatusArea.Resources["StatusMenu"];

            menu.PlacementTarget = StatusArea;
            menu.Placement = System.Windows.Controls.Primitives.PlacementMode.Bottom;

            menu.IsOpen = true;
        }

        private async void HandleStatusItemClick(MenuItem item)
        {
            string name = item.Name.Substring(3);
            int old_default_index = StatusIcon.DefaultIndex;
            UserConnectionStatus status;
            switch (name)
            {
                case "online":
                    status = UserConnectionStatus.Online;
                    break;
                case "offline":
                    status = UserConnectionStatus.Offline;
                    break;
                case "invisible":
                    status = UserConnectionStatus.Invisible;
                    break;
                case "away":
                    status = UserConnectionStatus.Away;
                    break;
                case "dnd":
                    // jim: localized dnd warning
                    status = UserConnectionStatus.DoNotDisturb;
                    var dialog = new Dialog(
                        WindowBase.IconType.Information,
                        Universal.Lang["sINFORM_DND"],
                        Universal.Lang["sINFORM_DND_CAP"],
                        Universal.Lang["sINFORM_DND_TITLE"],
                        brText: "OK"
                    );
                    dialog.ShowDialog();
                    break;
                default:
                case "call_forwarding":
                    Universal.NotImplemented(
                        Universal.Lang["sF_OPTIONS_PAGE_FORWARDINGANDVOICEMAIL"]
                    );
                    return;
            }
            if (status == GetStatusFromInt(old_default_index))
                return;
            StatusIcon.DefaultIndex = GetIntFromStatus(status);
            Tray.PushIcon(status);
            CurrentUser.ConnectionStatus = status;
            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                StatusIcon.DefaultIndex = old_default_index;
                Tray.PushIcon(GetStatusFromInt(old_default_index));
            }
        }

        #endregion
    }

    public class CompactRecentsTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DateHeaderTemplate { get; set; }
        public DataTemplate CompactDirectMessageTemplate { get; set; }
        public DataTemplate CompactGroupTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item is DateHeaderItem)
                return DateHeaderTemplate;
            else if (item is DirectMessage)
                return CompactDirectMessageTemplate;
            else if (item is Group)
                return CompactGroupTemplate;
            return base.SelectTemplate(item, container);
        }
    }

    public class ServerChannelTemplateSelector : DataTemplateSelector
    {
        public DataTemplate CategoryHeaderTemplate { get; set; }
        public DataTemplate ChannelTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item is CategoryHeaderItem)
                return CategoryHeaderTemplate;
            else if (item is ServerChannel)
                return ChannelTemplate;
            return base.SelectTemplate(item, container);
        }
    }
}
