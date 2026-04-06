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

using MiddleMan;
using Skymu.Classes;
using Skymu.Helpers;
using Skymu.Properties;
using Skymu.ViewModels;
using Skymu.Views;
using Skymu.Views.Pages;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Linq;
using System.Runtime;
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

namespace Skymu.Pontis
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
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private NativeMenuBar _menuBar;
        private bool _userScrolledUp = false;
        private Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        internal static bool IsWindowActive = false;
        private bool is_loading_conversation => vmodel?.IsLoadingConversation ?? false;
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

        #endregion

        #region BitmapImage generators
        private BitmapImage GenerateTitlebarButtonImage(string name)
        {
            return FrozenImage.Generate(
                $"pack://application:,,,/Pontis/Assets/Universal/Window Frame/Aero/{name}.png"
            );
        }

        private BitmapImage GenerateAvatarImage(string avatar)
        {
            string AvatarPath = Converters.Helpers.GetAssetBasePrefix("Pontis") + "Profile Pictures/" + avatar + ".png";
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

                    Topbar.Text = Universal.Lang["sZAPBUTTON_SKYPEHOME"];
                    ChatProfileArea.Visibility = Visibility.Collapsed;
                    MessageWindow.Visibility = Visibility.Collapsed;

                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    browser.Visibility = Visibility.Visible;
                    ConversationList.SelectedItem = null;
                    ClearTreeSelection(ServersList);
                    break;

                case WindowType.Chat:
                    ToggleStatusBoxSelection(false);

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
            HomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
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

        #region Menu bar

        private static (string, EventHandler) MI(string label, EventHandler handler) { return (label, handler); }
        private static (string, EventHandler) MI(string label) { return (label, null); }
        private static (string, EventHandler) SEP() { return ("$", null); }

        private void Window_SourceInitialized(object sender, EventArgs e)
        {
            string L(string key) => Universal.Lang[key];

            _menuBar = new NativeMenuBar(this);

            _menuBar.Create(L("sMAINMENU_SKYPE"),
                MI(L("sMAINMENU_SKYPE_ONLINESTATUS")),
                SEP(),
                MI(L("sMAINMENU_SKYPE_PRIVACY")),
                MI(L("sMAINMENU_SKYPE_ACCOUNT")),
                MI(L("sMAINMENU_SKYPE_BUYCREDIT")),
                SEP(),
                MI(L("sMAINMENU_SKYPE_CHANGEPASSWORD")),
                MI(L("sMAINMENU_SKYPE_SIGN_OUT"), (s, e2) => OnSignOut(null, null)),
                MI(L("sMAINMENU_SKYPE_SWITCH_USER")),
                MI(L("sMAINMENU_SKYPE_CLOSE"), (s, e2) => OnClose(null, null))
            );

            _menuBar.Create(L("sMAINMENU_CONTACTS"),
                MI(L("sMAINMENU_CONTACTS_ADD_CONTACT")),
                MI(L("sMAINMENU_CONTACTS_NEW_CONTACT")),
                MI(L("sMAINMENU_CONTACTS_SEARCH")),
                MI(L("sMAINMENU_CONTACTS_IMPORT")),
                MI(L("sMAINMENU_CONTACTS_NEW_GROUP")),
                SEP(),
                MI(L("sMAINMENU_CONTACTS_GROUPS")),
                MI(L("sMAINMENU_CONTACTS_SHOW_OUTLOOK")),
                SEP(),
                MI(L("sBUDDYMENU_REMOVE"))
            );

            _menuBar.Create(L("sMAINMENU_CONVERSATION"),
                MI(L("sMAINMENU_CONVERSATION_PROFILE_PANEL")),
                MI(L("sMAINMENU_CONVERSATION_ADD_TO_CONTACTS")),
                MI(L("sMAINMENU_CONVERSATION_ADD_PEOPLE")),
                MI(L("sMAINMENU_CONVERSATION_RENAME")),
                MI(L("sMAINMENU_CONVERSATION_LEAVE")),
                MI(L("sMAINMENU_CONVERSATION_BLOCK")),
                MI(L("sMAINMENU_CONVERSATION_UNBLOCK")),
                MI(L("sCONVERSATION_MENU_NOTIFICATIONS")),
                SEP(),
                MI(L("sMAINMENU_CONVERSATION_SEARCH")),
                MI(L("sMAINMENU_CONVERSATION_OLD_MESSAGES")),
                SEP(),
                MI(L("sCONVERSATION_MARK_UNREAD")),
                MI(L("sCONVERSATION_MARK_READ")),
                MI(L("sMAINMENU_CONVERSATION_HIDE"))
            );

            _menuBar.Create(L("sMAINMENU_CALL"),
                MI(L("sMAINMENU_CALL")),
                MI(L("sMAINMENU_CALL_START_VIDEO")),
                MI(L("sMAINMENU_CALL_ANSWER")),
                SEP(),
                MI(L("sMAINMENU_CALL_IGNORE")),
                MI(L("sMAINMENU_CALL_MUTE")),
                MI(L("sMAINMENU_CALL_UNMUTE")),
                MI(L("sMAINMENU_CALL_HOLD")),
                MI(L("sMAINMENU_CALL_RESUME")),
                MI(L("sMAINMENU_CALL_TRANSFER")),
                MI(L("sMAINMENU_CALL_HANG_UP")),
                SEP(),
                MI(L("sMAINMENU_CALL_CALL_A_PHONE_NUMBER")),
                SEP(),
                MI(L("sMAINMENU_CALL_AUDIO")),
                MI(L("sMAINMENU_CALL_VIDEO_SETTINGS")),
                MI(L("sMAINMENU_CALL_VIDEO_SNAPSHOT")),
                SEP(),
                MI(L("sMAINMENU_CALL_QUALITY")),
                MI(L("sCALL_TOOLBAR_TECHNICAL_INFO"))
            );

            _menuBar.Create(L("sMAINMENU_VIEW"),
                MI(L("sMAINMENU_VIEW_CONTACTS")),
                MI(L("sMAINMENU_VIEW_CONVERSATIONS")),
                MI(L("sMAINMENU_VIEW_VOICEMAILS")),
                MI(L("sMAINMENU_VIEW_FILESSENT")),
                MI(L("sMAINMENU_VIEW_SMSMESSAGES")),
                MI(L("sMAINMENU_VIEW_INSTANT_MESSAGES")),
                SEP(),
                MI(L("sMAINMENU_VIEW_HOME")),
                MI(L("sMAINMENU_VIEW_PROFILE")),
                MI(L("sMAINMENU_VIEW_CALL_PHONES")),
                MI(L("sMAINMENU_VIEW_SNAPSHOTS_GALLERY")),
                SEP(),
                MI(L("sMAINMENU_VIEW_SINGLE_WINDOW_MODE")),
                MI(L("sMAINMENU_VIEW_MULTI_WINDOW_MODE")),
                MI(L("sMAINMENU_VIEW_FULLSCREEN")),
                SEP(),
                MI(L("sMAINMENU_SHOW_HIDDEN_CONV"))
            );

            _menuBar.Create(L("sMAINMENU_TOOLS"),
                MI(L("sMAINMENU_TOOLS_EXTRAS")),
                SEP(),
                MI(L("sMAINMENU_TOOLS_LANGUAGE")),
                SEP(),
                MI(L("sMAINMENU_TOOLS_ACCESSIBILITY")),
                MI(L("sMAINMENU_TOOLS_SHARE")),
                SEP(),
                MI(L("sMAINMENU_TOOLS_OPTIONS"), (s, e2) => OnOptions(null, null))
            );

            _menuBar.Create(L("sMAINMENU_HELP"),
                MI(L("sMAINMENU_HELP_HELP")),
                MI(L("sMAINMENU_HELP_HEARTBEAT")),
                SEP(),
                MI(L("sMAINMENU_HELP_QUALITY")),
                MI(L("sMAINMENU_HELP_UPDATES"), (s, e2) => OnCheckUpdates(null, null)),
                MI(L("sZAPBUTTON_FEEDBACK")),
                SEP(),
                MI(L("sMAINMENU_HELP_ABOUT"), (s, e2) => OnAbout(null, null)),
                MI(L("sMAINMENU_HELP_PRIVACY"))
            );
        }

        #endregion

        #region Custom window logic

        private void SetTheme() // TODO add pontis theme support
        {
            //ContentBgTop.Fill = (Brush)Application.Current.Resources["Active.WindowBrush"];
            //ContentBgBottom.Fill = (Brush)Application.Current.Resources["Active.StandardBrush"];
           // MainMenuBar.Background = (Brush)Application.Current.Resources["Active.MenuBarBrush"];
           // MainMenuBarDivider.Fill = (Brush)Application.Current.Resources["Active.StandardBrush"];
           // this.Background = (Brush)Application.Current.Resources["Active.StandardBrush"];
        }

        private void HandleWindowActivated()
        {
            IsWindowActive = true;
            if (vmodel != null)
                vmodel.IsWindowActive = true;
        }

        private void HandleWindowDeactivated()
        {
            IsWindowActive = false;
            if (vmodel != null)
                vmodel.IsWindowActive = false;
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
                    ConfigureCompactRecentsList();
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
        }

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

        private async void SidebarTab_BtnDown(object sender, MouseButtonEventArgs e)
        {
            await SelectTab(sender as SliceControl);
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
        }

        private void OnClose(object sender, RoutedEventArgs e)
        {
            Universal.Close();
        }

        private void OnOptions(object sender, RoutedEventArgs e)
        {
            new Options().Show();
        }

        private void OnAbout(object sender, RoutedEventArgs e)
        {
            new About().Show();
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

        private void CallDropdownButtonClick(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Voice calling");
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
            if (rtb?.Document == null) return false;
            if (rtb.Tag as string == TAG_PLACEHOLDER) return false;

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
            Topbar.Text = vmodel.SelectedConversation?.DisplayName;
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
        }

        private void HandleConversationItems()
        {
            ConversationItemsList.ApplyTemplate();
            if (_conversationScrollViewer != null)
                _conversationScrollViewer.ScrollChanged -= ConversationScrollChanged;

            _conversationScrollViewer = ConversationItemsList.Template
                .FindName("ScrollViewer", ConversationItemsList) as ScrollViewer;
            _conversationScrollViewer.ScrollChanged += ConversationScrollChanged;
        }

        private void ConversationScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            if (e.ExtentHeightChange == 0)
                _userScrolledUp = _conversationScrollViewer.VerticalOffset
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
                    border.MouseEnter += (s, ev) => ((Border)s).Background = new SolidColorBrush(Color.FromArgb(0x40, 0xFF, 0xFF, 0xFF));
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
            if (sliceControlInside == null) return;

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
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(Universal.CurrentUser.ConnectionStatus);
                ConfigureCompactRecentsList();
                if (Properties.Settings.Default.EnableSkypeHome) SkypeHome.Generate(browser, Universal.CurrentUser, Universal.Plugin.ContactsList.ToArray());
                WindowTitle = Properties.Settings.Default.BrandingName + "™ - " + Universal.CurrentUser.Username;
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
                    Dispatcher.Invoke(() => TypingIndicator.Visibility =
                        vmodel.IsTypingVisible ? Visibility.Visible : Visibility.Collapsed);
            };

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
            };
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
            if (status == UserConnectionStatus.Unknown) return;

            StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
            Tray.PushIcon(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                status = currentStatus;
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
                Tray.PushIcon(status);
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
