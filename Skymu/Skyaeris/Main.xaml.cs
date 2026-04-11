/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using Skymu.Classes;
using Skymu.Emoticons;
using Skymu.Formatting;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.ViewModels;
using Skymu.Views;
using Skymu.Views.Pages;

namespace Skymu.Skyaeris
{
    public partial class Main : Window, IMainWindowHolder
    {
        #region Variables

        // Constants
        private const string VONAGE = "Hahahahaha... nice try. Get a damn Vonage.";
        private const string VONAGE_CAPTION = "Can't you just use your smartphone?";
        private const string NOTIMPL_ADD_CONTACTS_CHATS = "Adding contacts to conversations";
        private const string TAG_PLACEHOLDER = "PLACEHOLDER";
        private const string MSG_SEND_ERR = "Error sending message.";

        // ViewModel
        private MainViewModel vmodel;

        // Other file-level variables
        private readonly WindowFrame border = (WindowFrame)Settings.WindowFrame;
        private Thickness OriginalWindowAreaMargin = new Thickness(0);
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private bool _userScrolledUp = false;
        private BitmapImage img_maximize,
            img_restore,
            img_split,
            img_join;
        private Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        internal static bool IsWindowActive = false;
        private bool is_loading_conversation => vmodel?.IsLoadingConversation ?? false;
        private WindowType current_window = WindowType.Chat;
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
            Native,
            SkypeAero,
            SkypeBasic,
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

        private BitmapImage sendBtnSmall = FrozenImage.Generate(
            "pack://application:,,,/Skyaeris/Assets/Universal/Chat/msg-send-button.png"
        );
        private BitmapImage sendBtnFull = FrozenImage.Generate(
            "pack://application:,,,/Skyaeris/Assets/Universal/Chat/msg-send-button-full.png"
        );

        private BitmapImage contactsBtnImage = Converters.Helpers.AssetPathGenerator(
            "Sidebar/contacts.png",
            false
        );
        private BitmapImage recentsBtnImage = Converters.Helpers.AssetPathGenerator(
            "Sidebar/recents.png",
            false
        );
        private BitmapImage contactsBtnImageEmpty = Converters.Helpers.AssetPathGenerator(
            "Sidebar/contacts-empty.png",
            false
        );
        private BitmapImage recentsBtnImageEmpty = Converters.Helpers.AssetPathGenerator(
            "Sidebar/recents-empty.png",
            false
        );

        private Metadata SelectedContact;

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
                Converters.Helpers.GetAssetBasePrefix("Skyaeris")
                + "Profile Pictures/"
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
                    ClearConversation();
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
                    SelectedContact = null;
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
            StatusBox.TextColor = selected
                ? Brushes.White
                : (SolidColorBrush)Application.Current.Resources["Text.HighContrast"];
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
                WindowStyle = WindowStyle.SingleBorderWindow;
                TitleBar.Visibility = Visibility.Collapsed;
                WindowArea.Margin = new Thickness(0);
            }
        }

        private DropShadowEffect CreateDropShadow(string color)
        {
            return new DropShadowEffect()
            {
                Color = (Color)Application.Current.Resources[color],
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
                    button.Effect = CreateDropShadow("WindowFrame.Button.Close.Glow");
                }
                else
                {
                    button.Effect = CreateDropShadow("WindowFrame.Button.Generic.Glow");
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

        private void FillSolid()
        {
            ContentBgTop.Fill = (Brush)Application.Current.Resources["Background"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Background"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Card.Background"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Background"];
            if (border == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Background"];
                this.Background = (Brush)Application.Current.Resources["Background"];
            }
        }

        private void HandleWindowActivated()
        {
            IsWindowActive = true;
            if (vmodel != null)
                vmodel.IsWindowActive = true;

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 0;
            }

            if (Settings.FallbackFillColors)
            {
                FillSolid();
                return;
            }

            ContentBgTop.Fill = (Brush)Application.Current.Resources["Active.Window"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Active.Background"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Active.Menubar"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Active.Background"];

            if (border == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Active.Titlebar"];
                this.Background = (Brush)Application.Current.Resources["Active.Background"];
            }
        }

        private void HandleWindowDeactivated()
        {
            IsWindowActive = false;
            if (vmodel != null)
                vmodel.IsWindowActive = false;

            foreach (var button in new[] { close, minimize, maximize, split })
            {
                button.DefaultIndex = 1;
            }

            if (Settings.FallbackFillColors)
            {
                FillSolid();
                return;
            }

            ContentBgTop.Fill = (Brush)Application.Current.Resources["Inactive.Window"];
            ContentBgBottom.Fill = (Brush)Application.Current.Resources["Inactive.Background"];
            MainMenuBar.Background = (Brush)Application.Current.Resources["Inactive.Menubar"];
            MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Inactive.Background"];

            if (border == WindowFrame.SkypeBasic)
            {
                TitleBar.Background = (Brush)Application.Current.Resources["Inactive.Titlebar"];
                this.Background = (Brush)Application.Current.Resources["Inactive.Background"];
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
        internal async Task InitSidebar() => await vmodel.InitSidebar();

        public Task BeginLoading() => vmodel.InitSidebar();

        private async void HandleConversationSelection(object selected_item)
        {
            if (selected_item == null)
                return;

            ChatArea.DataContext = selected_item;
            vmodel.SelectedConversation = (Conversation)selected_item;
            await SetConversation();
        }

        private async void HandleServerItemSelection(RoutedPropertyChangedEventArgs<object> e)
        {
            if (e.NewValue is CategoryHeaderItem)
                return;

            ChatArea.DataContext = e.NewValue;
            if (e.NewValue is ServerChannel channel)
            {
                vmodel.SelectedConversation = channel;
                await SetConversation();
            }
        }

        private void ConfigureCompactRecentsList()
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
                mainWindow.Dispatcher.Invoke(mainWindow.ConfigureCompactRecentsList);
            }
        }

        private async Task SelectTab(SliceControl tab_to_select)
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
                    Settings.DynamicSidebarTabs && Universal.Plugin.SupportsServers
                        ? small
                        : dynamic;
            }

            //SetWindow(WindowType.Home); Okay - this was here before, but why? Isn't this inaccurate?

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
                    ConfigureCompactRecentsList();
                    break;
            }
            if (
                tab_to_select.Name != "btnServers"
                && SelectedContact != null
                && SelectedContact is Metadata
            )
            {
                foreach (object item in ConversationList.Items)
                {
                    if (
                        item is Conversation
                        && ((Metadata)item).Identifier == ((Metadata)SelectedContact).Identifier
                    )
                    {
                        ConversationList.SelectedItem = item;
                    }
                }
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

                Sidebar_SizeChanged_Refresh();
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

        private void Sidebar_SizeChanged_Refresh()
        {
            if (btnServers.Visibility == Visibility.Collapsed)
            {
                if (SidebarColumn.Width.Value <= 185)
                {
                    btnContacts.Source = contactsBtnImageEmpty;
                    btnRecents.Source = recentsBtnImageEmpty;
                    btnContacts.TextLeftMargin = 5;
                    btnRecents.TextLeftMargin = 5;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Center;
                    btnRecents.TextHorizontalAlignment = HorizontalAlignment.Center;
                }
                else
                {
                    btnContacts.Source = contactsBtnImage;
                    btnRecents.Source = recentsBtnImage;
                    btnContacts.TextLeftMargin = 30;
                    btnRecents.TextLeftMargin = 30;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Left;
                    btnRecents.TextHorizontalAlignment = HorizontalAlignment.Left;
                }
            }
            if (SidebarColumn.Width.Value < 195)
            {
                MakeGroupButton.OverlayText.Visibility = Visibility.Collapsed;
                MakeGroupButton.TextLeftMargin = 0;
            }
            else
            {
                MakeGroupButton.OverlayText.Visibility = Visibility.Visible;
                MakeGroupButton.TextLeftMargin = 41;
            }
            if (SidebarColumn.Width.Value < 245)
                MakeGroupButton.Text = Universal.Lang["sCREATE_GROUP_SHORT"];
            else
                MakeGroupButton.Text = Universal.Lang["sCREATE_GROUP_LONG"];
        }

        #endregion

        #region User count API

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

        private void Main_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            SidebarColumn.MaxWidth = this.ActualWidth / 2;

            Main_SizeChanged_Refresh();
        }

        private void Main_SizeChanged_Refresh()
        {
            MessageWindow.UpdateLayout();
            if (MessageWindow.ActualWidth <= 720 && MessageWindow.ActualWidth != 0)
            {
                SendMsgButton.Text = "";
                SendMsgButton.Source = sendBtnSmall;
            }
            else
            {
                SendMsgButton.Text = Universal.Lang["sZAPBUTTON_SENDMESSAGE"];
                SendMsgButton.Source = sendBtnFull;
            }
        }

        private void ServersList_SelectedItemChanged(
            object sender,
            RoutedPropertyChangedEventArgs<object> e
        )
        {
            SelectedContact = null;
            HandleServerItemSelection(e);
        }

        private void ContactList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selected = ((ListBox)sender).SelectedItem;
            if (selected != null && selected is Metadata)
                SelectedContact = (Metadata)selected;
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

        private async void SidebarTab_BtnDown(object sender, MouseButtonEventArgs e)
        {
            await SelectTab(sender as SliceControl);
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
            using (_tbliHoldTokenSource = new CancellationTokenSource())
            {
                try
                {
                    await Task.Delay(1500, _tbliHoldTokenSource.Token); // holding for 2 sec? I hope??

                    string url;
                    if (_random.Next(0, 100) < 12) // oh hello im le underscore yeah I change everything and it totally makes sense guys
                        url = "https://www.youtube.com/watch?v=cdtNIyx10DM"; // one of the uploads called him ksi bruh are we dead ass ... french ksi wtf......
                    else
                        url = "https://www.youtube.com/watch?v=kVsH_ySm5_E";

                    Universal.OpenUrl(url);
                }
                catch (TaskCanceledException)
                {
                    // ass
                }
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
                Universal.Hide(ev);
        }

        protected override void OnClosed(EventArgs e)
        {
            WindowPlacementHelper.Save(this, SidebarColumn);

            Settings.Default.PropertyChanged -= RefreshCreds;
        }

        private void OnClose(object sender, RoutedEventArgs e)
        {
            Universal.Close();
        }

        private void OnOptions(object sender, RoutedEventArgs e)
        {
            new Views.Options("Background").Show();
        }

        private void OnAbout(object sender, RoutedEventArgs e)
        {
            new Views.About().Show();
        }

        private void OnCheckUpdates(object sender, RoutedEventArgs e)
        {
            new Updater(true);
        }

        private void OnSignOut(object sender, RoutedEventArgs e)
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
            await vmodel.RunSpeedTest();
        }

        private void ConversationItemsList_Loaded(object sender, RoutedEventArgs e)
        {
            HandleConversationItems();
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

        private void CallButtonClick(object sender, MouseButtonEventArgs e)
        {
            StartCall();
        }

        private void EmojiButton_Click(object sender, MouseButtonEventArgs e)
        {
            EmojiFlyout.IsOpen = true;
        }

        #endregion

        #region Message sending

        private async Task SendMessage(string message = null)
        {
            if (!SendMsgButton.IsEnabled && message == null)
                return;

            string message_body = message ?? ExtractMessageFromRichTextBox();

            MessageTextBox.Document.Blocks.Clear();
            MessageTextBox.Document.Blocks.Add(new Paragraph { Margin = new Thickness(0) });
            CheckIfMTBUnfocused();

            await vmodel.SendMessage(message_body);
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

            var start = rtb.Document.ContentStart;
            var end = rtb.Document.ContentEnd;

            return start.GetOffsetToPosition(end) > 2;
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
                                    string unicode_emoji = vmodel.ConvertHexKeyToUnicode(emojiKey);
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

        #region Calls

        private Frame frame;
        private CallScreen screen;

        private async void StartCall(User partner = null)
        {
            bool silent = false;
            if (Universal.CallPlugin == null)
                return;
            var dm = vmodel.SelectedConversation as DirectMessage;
            if (dm == null)
                return; // group calls not supported yet

            if (partner == null) { partner = dm.Partner; silent = true; }
            CallScreen.LocationChangeEventArgs initial_location =
                new CallScreen.LocationChangeEventArgs(false, false, false);
            screen = new CallScreen(partner, Universal.CallPlugin, initial_location, silent);
            screen.HangUpRequested += OnHangUp;
            screen.LocationChangeRequested += OnLocationChanged;
            frame = new Frame();
            frame.Navigate(screen);
            SetCallPageLocation(initial_location);

            await screen.StartCall(vmodel.SelectedConversation, false);
        }

        private void OnLocationChanged(object sender, CallScreen.LocationChangeEventArgs e)
        {
            SetCallPageLocation(e);
        }

        private void OnHangUp(object sender, EventArgs e)
        {
            SetCallPageLocation(null);
        }

        private void SetCallPageLocation(CallScreen.LocationChangeEventArgs location)
        {
            frame.HorizontalContentAlignment = HorizontalAlignment.Stretch;
            frame.VerticalContentAlignment = VerticalAlignment.Stretch;
            frame.HorizontalAlignment = HorizontalAlignment.Stretch;
            frame.VerticalAlignment = VerticalAlignment.Stretch;

            if (location == null)
            {
                if (screen != null)
                {
                    screen.HangUpRequested -= OnHangUp;
                    screen.LocationChangeRequested -= OnLocationChanged;
                    screen.Visibility = Visibility.Collapsed;
                    frame.Visibility = Visibility.Collapsed;
                    screen = null;
                    frame.Content = null;
                    frame = null;
                }
                if (FillWindowHost.Content == frame)
                    FillWindowHost.Content = null;
                if (FillMessagePanelHost.Content == frame)
                    FillMessagePanelHost.Content = null;
                ContentArea.Visibility = Visibility.Visible;
                SetWindow(WindowType.Chat);
            }
            else
            {
                if (location.SidebarToggle)
                {
                    if (FillWindowHost.Content == frame)
                        FillWindowHost.Content = null;
                    ContentArea.Visibility = Visibility.Visible;
                    ChatProfileArea.Visibility = Visibility.Collapsed;
                    FillMessagePanelHost.Visibility = Visibility.Visible;
                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    FillMessagePanelHost.Content = frame;
                }
                else if (!location.SidebarToggle)
                {
                    if (FillMessagePanelHost.Content == frame)
                        FillMessagePanelHost.Content = null;
                    ContentArea.Visibility = Visibility.Collapsed;
                    FillWindowHost.Content = frame;
                }
            }
        }

        #endregion

        #region Conversation

        private void ClearConversation()
        {
            Universal.Plugin.TypingUsersList.Clear();
            ConversationItemsList.ItemsSource = null;
            vmodel.ClearActiveConversation();
        }

        private async Task SetConversation()
        {
            _userScrolledUp = false;
            ClearConversation();
            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = Universal.Lang.Format(
                "sCHAT_TYPE_HERE_DIALOG",
                vmodel.SelectedConversation?.DisplayName
            );
            ApplyPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
            UpdateSendButtonState();
            throbber.Visibility = Visibility.Visible;

            await vmodel.SetConversation();

            if (vmodel.SelectedConversation == null)
                return;

            ConversationItemsList.ItemsSource = vmodel.ActiveConversation;
            throbber.Visibility = Visibility.Collapsed;
            _conversationScrollViewer?.ScrollToEnd();
            Main_SizeChanged_Refresh();
        }

        private void HandleConversationItems()
        {
            ConversationItemsList.ApplyTemplate();
            if (_conversationScrollViewer != null)
                _conversationScrollViewer.ScrollChanged -= ConversationScrollChanged;

            _conversationScrollViewer =
                ConversationItemsList.Template.FindName("ScrollViewer", ConversationItemsList)
                as ScrollViewer;
            _conversationScrollViewer.ScrollChanged += ConversationScrollChanged;
        }

        private void ConversationScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            if (e.ExtentHeightChange == 0)
                _userScrolledUp =
                    _conversationScrollViewer.VerticalOffset
                    < _conversationScrollViewer.ScrollableHeight - 10;
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
                Foreground = (SolidColorBrush)Application.Current.Resources["Text.LowContrast"],
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
            tb.Foreground = (SolidColorBrush)Application.Current.Resources["Text.LowContrast"];
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

        #region Emoji picker

        private void InitializeEmojiPicker()
        {
            foreach (var (emojiKey, emojiFilename) in vmodel.GetUniqueEmojiList())
            {
                var border = new Border
                {
                    Width = 28,
                    Height = 28,
                    Margin = new Thickness(1),
                    Background = Brushes.Transparent,
                    Cursor = Cursors.Hand,
                    ToolTip = vmodel.ConvertHexKeyToUnicode(emojiKey),
                };
                try
                {
                    var sliceControl = MessageTools.FormAnimatedEmoji(emojiFilename);
                    sliceControl.Tag = emojiFilename;
                    border.Child = sliceControl;
                    border.MouseLeftButtonUp += EmojiBox_Click;
                    border.MouseEnter += (s, ev) =>
                        ((Border)s).Background = new SolidColorBrush(
                            Color.FromArgb(0x40, 0xFF, 0xFF, 0xFF)
                        );
                    border.MouseLeave += (s, ev) => ((Border)s).Background = Brushes.Transparent;
                    EmojiWrapPanel.Children.Add(border);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Failed to load emoji: {emojiFilename} - {ex.Message}");
                }
            }
        }

        private void SetEmojiPickerAnimation(bool animate)
        {
            foreach (var child in EmojiWrapPanel.Children)
            {
                if (child is Border border && border.Child is SliceControl sc)
                {
                    sc.IsAnimation = animate;
                }
            }
        }

        private void EmojiBox_Click(object sender, MouseButtonEventArgs e)
        {
            var border = sender as Border;
            var sliceControlInside = border?.Child as SliceControl;
            if (sliceControlInside == null)
                return;

            EmojiFlyout.IsOpen = false;
            RemovePlaceholder(MessageTextBox);

            string emojiFilename = sliceControlInside.Tag as string;
            var sliceControl = MessageTools.FormAnimatedEmoji(emojiFilename);

            if (!MessageTextBox.Selection.IsEmpty)
                MessageTextBox.Selection.Text = string.Empty;

            TextPointer caret = MessageTextBox.CaretPosition;
            if (!caret.IsAtInsertionPosition)
                caret = caret.GetInsertionPosition(LogicalDirection.Forward);

            var container = new InlineUIContainer(sliceControl, caret)
            {
                BaselineAlignment = BaselineAlignment.Center,
                Tag = emojiFilename,
            };
            var spaceRun = new Run(" ");
            container.SiblingInlines.InsertAfter(container, spaceRun);
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

            vmodel = new MainViewModel();
            this.DataContext = vmodel;

            vmodel.Ready += (s, e) =>
            {
                StatusBox.Text = Universal.CurrentUser.DisplayName;
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(
                    Universal.CurrentUser.ConnectionStatus
                );
                ConfigureCompactRecentsList();
                if (Settings.EnableSkypeHome)
                    SkypeHome.Generate(
                        browser,
                        Universal.CurrentUser,
                        Universal.Plugin.ContactsList.ToArray()
                    );
                WindowTitle = Settings.BrandingName + "™ - " + Universal.CurrentUser.Username;
                this.Title = WindowTitle;
                vmodel.RunSpeedTestCommand.Execute(null);
                Ready?.Invoke(this, EventArgs.Empty);
            };

            vmodel.UserCountUpdated += text =>
            {
                Dispatcher.Invoke(() => GlobalUserCount.Text = text);
            };

            vmodel.SignOutRequested += (s, e) =>
            {
                new Login().Show();
                noCloseEvent = true;
                Close();
            };

            vmodel.ConversationItemChanged += (s, e) =>
            {
                if (!is_loading_conversation && !_userScrolledUp)
                    _conversationScrollViewer?.ScrollToEnd();
            };

            vmodel.SpeedTestIconUpdated += uri =>
            {
                Dispatcher.Invoke(() => WifiButton.Source = FrozenImage.Generate(uri));
            };

            vmodel.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == nameof(MainViewModel.TypingText))
                    Dispatcher.Invoke(() => TypingIndicatorText.Text = vmodel.TypingText);
                else if (e.PropertyName == nameof(MainViewModel.IsTypingVisible))
                    Dispatcher.Invoke(() =>
                        TypingIndicator.Visibility = vmodel.IsTypingVisible
                            ? Visibility.Visible
                            : Visibility.Collapsed
                    );
            };

            InitializeWindowFrame();
            if (Settings.FallbackFillColors)
                this.Background = (Brush)Application.Current.Resources["Background"];

            Universal.GroupAvatar = GenerateAvatarImage("group");
            Universal.AnonymousAvatar = GenerateAvatarImage("anonymous");

            EmojiFlyout.Opened += (s, e) => SetEmojiPickerAnimation(true);
            EmojiFlyout.Closed += (s, e) => SetEmojiPickerAnimation(false);

            this.MouseLeftButtonUp += MouseRelease;
            this.SizeChanged += Main_SizeChanged;
            buttonToColumn = new Dictionary<SliceControl, ColumnDefinition>
            {
                { btnContacts, ContactsColumn },
                { btnServers, ServersColumn },
                { btnRecents, RecentsColumn },
            };
            _ = SelectTab(btnRecents);
            ApplyPlaceholderTb(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
            InitializeEmojiPicker();

            if (!Universal.Plugin.SupportsServers)
            {
                btnServers.Visibility = Visibility.Collapsed;
                ServersColumn.Width = new GridLength(0);
            }

            vmodel.SubscribeTypingIndicator();

            SetWindow(WindowType.Home);
            Main_SizeChanged_Refresh();
            // seanFinx Crazy Hack
            AddContactButton.OverlayText.TextTrimming = TextTrimming.None;
            MakeGroupButton.OverlayText.TextTrimming = TextTrimming.None;

            Settings.Default.PropertyChanged += RefreshCreds;
            RefreshCreds();

            SourceInitialized += (s, e) =>
            {
                WindowPlacement? wplc = WindowPlacementHelper.Load(this, SidebarColumn);
                if (wplc != null)
                {
                    WindowPlacement wp = (WindowPlacement)wplc;
                    this.Top = wp.Top;
                    this.Left = wp.Left;
                    this.Width = wp.Width;
                    this.Height = wp.Height;
                    SidebarColumn.Width = new GridLength(wp.sidebarWidth);
                }
                Sidebar_SizeChanged_Refresh();
            };

            if (Universal.CallPlugin != null)
            {
                Universal.CallPlugin.OnIncomingCall += (sender, e) =>
                {
                    Application.Current.Dispatcher.Invoke(() =>
                    {
                        Sounds.PlayLoop("call-in");
                        Dialog dlg = null;
                        dlg = new Dialog(
                            WindowBase.IconType.MultipleContactCall,
                            $"You have an incoming call. Would you like to answer it?\n\nCaller: {e.Caller.DisplayName} ({e.Caller.Username})\n"
                                + $"In channel: {e.ConversationId}",
                            "Incoming call", 
                            Settings.BrandingName + " Call",
                            new Action(() =>
                            {
                                Sounds.StopPlayback("call-in");

                                dlg.Close();
                            }),
                            Universal.Lang["sZAPBUTTON_DECLINE"],
                            true,
                            new Action(() =>
                            {
                                Sounds.StopPlayback("call-in");
                                StartCall(e.Caller);
                                dlg.Close();
                            }),
                            Universal.Lang["sZAPBUTTON_ACCEPT"]
                        );
                        dlg.ShowDialog();
                    });
                };
            }

            this.AllowsTransparency = false;
        }

        private void InitiateSignOut() => vmodel.InitiateSignOut();

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
            var currentStatus = vmodel.GetStatusFromInt(StatusIcon.DefaultIndex);

            if (name == "dnd")
            {
                new Dialog(
                    WindowBase.IconType.Information,
                    Universal.Lang["sINFORM_DND"],
                    Universal.Lang["sINFORM_DND_CAP"],
                    Universal.Lang["sINFORM_DND_TITLE"],
                    brText: "OK"
                ).ShowDialog();
            }

            UserConnectionStatus status = vmodel.GetConnectionStatusFromName(name);
            if (status == UserConnectionStatus.Unknown)
                return;

            StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
            Tray.PushIcon(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                status = currentStatus;
                if (Universal.CurrentUser != null)
                    Universal.CurrentUser.ConnectionStatus = status;
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
                Tray.PushIcon(status);
            }
        }

        #endregion

        private void RefreshCreds(object sender = null, PropertyChangedEventArgs e = null)
        {
            string subtext = Universal.Lang["sACCOUNT_PANEL_NR_OF_SUBSCRIPTIONS"];
            switch (Settings.CredsSubCount)
            {
                case 0:
                    subtext = Universal.Lang["sACCOUNT_PANEL_NO_SUBSCRIPTION"];
                    break;
                case 1:
                    subtext = Universal.Lang["sACCOUNT_PANEL_ONE_SUBSCRIPTION"];
                    break;
            }
            SkypeCreditBox.Text =
                Settings.CredsText
                + " - "
                + subtext.Replace("%d", Settings.CredsSubCount.ToString());
        }
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
