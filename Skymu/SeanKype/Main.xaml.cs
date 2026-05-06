/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/
// This code is EXPIREMENTAL and has not been reviewed by
// persfidious, patricktbp, or HUBAXE.
// It is a port of logic that previously lived in the old
// "SeanKype" project.
/*==========================================================*/

using Skymu.Converters;
using Skymu.Emoticons;
using Skymu.Formatting;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.ViewModels;
using Skymu.Views;
using System;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;


namespace Skymu.SeanKype
{
    public partial class Main : Window, IMainWindowHolder
    {
        private MainViewModel vmodel;
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private bool _userScrolledUp;
        private bool is_loading_conversation => vmodel?.IsLoadingConversation ?? false;

        public event EventHandler Ready;

        public Main()
        {
            noCloseEvent = false;

            InitializeComponent();
            Application.Current.MainWindow = this;

            Universal.GroupAvatar = GenerateAvatarImage("group");
            Universal.AnonymousAvatar = GenerateAvatarImage("anonymous");

            vmodel = new MainViewModel();
            this.DataContext = vmodel;

            vmodel.Ready += (s, e) =>
            {
                LabelUsername.Content = Universal.CurrentUser?.DisplayName;
                LabelStatus.Text = Universal.CurrentUser?.Status;
                this.Title =
                    Settings.BrandingName
                    + "\u2122 - "
                    + Universal.CurrentUser?.Username;
                ConversationList.ItemsSource = Universal.Plugin.RecentsList;
                GlobalUserCount.Text = string.Empty;
                if (Universal.CurrentUser?.ProfilePicture?.Length > 0)
                    UserPicture.Source = ImageHelper.GenerateFromArray(
                        Universal.CurrentUser.ProfilePicture
                    );
                else
                    UserPicture.Source = Universal.AnonymousAvatar;
                _ = vmodel.RunSpeedTest();
                Universal.CurrentUser.PropertyChanged += (ss, ee) =>
                {
                    if (ee.PropertyName == nameof(User.ConnectionStatus))
                        Dispatcher.Invoke(() => _currentStatusIndex = MainViewModel.GetIntFromStatus(Universal.CurrentUser.ConnectionStatus));
                };
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
                Dispatcher.Invoke(() => WifiButton.Source = ImageHelper.Generate(uri));
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

            vmodel.SubscribeTypingIndicator();
            InitializeEmojiPicker();
        }

        public Task BeginLoading() => vmodel.InitSidebar();

        private async void HandleConversationSelection(object selected_item)
        {
            if (selected_item == null)
                return;

            if (selected_item is Server srv)
            {
                ConversationList.ItemsSource = srv.Channels;
                return;
            }

            vmodel.SelectedConversation = (Conversation)selected_item;
            await SetConversation();
        }

        private void ClearConversation()
        {
            Universal.Plugin?.TypingUsersList?.Clear();
            ConversationItemsList.ItemsSource = null;
            vmodel.ClearActiveConversation();
        }

        private async Task SetConversation()
        {
            _userScrolledUp = false;
            ClearConversation();

            var conv = vmodel.SelectedConversation;
            LabelUsername1.Content = conv?.DisplayName;
            LabelStatus1.Text = (conv is DirectMessage dm) ? dm.Partner?.Status : null;
            if (conv?.ProfilePicture?.Length > 0)
                ChatHeaderAvatar.Source = ImageHelper.GenerateFromArray(conv.ProfilePicture);
            else
                ChatHeaderAvatar.Source =
                    (conv is Group) ? Universal.GroupAvatar : Universal.AnonymousAvatar;
            throbber.Visibility = Visibility.Visible;

            await vmodel.SetConversation();

            if (vmodel.SelectedConversation == null)
                return;

            ConversationItemsList.ItemsSource = vmodel.GroupedConversation;
            throbber.Visibility = Visibility.Collapsed;
            _conversationScrollViewer?.ScrollToEnd();
        }

        private async Task SendMessage()
        {
            string message_body = TextBoxMessage.Text.Trim();
            if (string.IsNullOrEmpty(message_body))
                return;

            TextBoxMessage.Clear();
            await vmodel.SendMessage(message_body);
        }

        private void InitiateSignOut() => vmodel.InitiateSignOut();

        #region Event handlers

        private NativeMenuBar _menuBar;

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

        #region Menu bar event handlers

        private void OnNew(object sender, RoutedEventArgs e) { }

        private void OnOpen(object sender, RoutedEventArgs e) { }

        private void OnClose(object sender, RoutedEventArgs e)
        {
            Universal.Close();
        }

        private void OnApps(object sender, RoutedEventArgs e) { }

        private void OnLanguage(object sender, RoutedEventArgs e) { }

        private void OnAccessibility(object sender, RoutedEventArgs e) { }

        private void OnShareWithFriend(object sender, RoutedEventArgs e) { }

        private void OnSkypeWifi(object sender, RoutedEventArgs e) { }

        private void OnOptions(object sender, RoutedEventArgs e)
        {
            new Options("Metro.Background").Show();
        }

        private void OnAbout(object sender, RoutedEventArgs e)
        {
            new About().Show();
        }

        private void OnCheckUpdates(object sender, RoutedEventArgs e)
        {
            new Views.Pages.Updater(true);
        }

        private void OnSignOut(object sender, RoutedEventArgs e)
        {
            InitiateSignOut();
        }

        #endregion

        private void ConversationList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            HandleConversationSelection(((ListBox)sender).SelectedItem);
        }

        private async void SendButton_Click(object sender, MouseButtonEventArgs e)
        {
            await SendMessage();
        }

        private async void TextBoxMessage_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter && !Keyboard.Modifiers.HasFlag(ModifierKeys.Shift))
            {
                e.Handled = true;
                await SendMessage();
            }
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            if (vmodel != null)
                vmodel.IsWindowActive = true;
        }

        private void Window_Deactivated(object sender, EventArgs e)
        {
            if (vmodel != null)
                vmodel.IsWindowActive = false;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }

        private void MessageScrollFeed_Loaded(object sender, RoutedEventArgs e)
        {
            _conversationScrollViewer = sender as ScrollViewer;
            if (_conversationScrollViewer != null)
            {
                _conversationScrollViewer.ScrollChanged += (sv, se) =>
                {
                    if (se.ExtentHeightChange == 0)
                        _userScrolledUp =
                            _conversationScrollViewer.VerticalOffset
                            < _conversationScrollViewer.ScrollableHeight - 10;
                };
            }
        }

        #endregion

        #region Avatar helpers

        private BitmapImage GenerateAvatarImage(string avatar)
        {
            string AvatarPath = ConversionHelpers.GetAssetBasePrefix("SeanKype") + "Profile Pictures/" + avatar + ".png";
            return ImageHelper.Generate(AvatarPath);
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
                    var sc = Formatter.MakeEmoji(emojiFilename);
                    sc.Tag = emojiFilename;
                    border.Child = sc;
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

        private void EmojiBox_Click(object sender, MouseButtonEventArgs e)
        {
            var sc = (sender as Border)?.Child as SliceControl;
            if (sc == null)
                return;

            EmojiFlyout.IsOpen = false;

            string filename = sc.Tag as string;
            string key = EmojiDictionary.Map.FirstOrDefault(kvp => kvp.Value == filename).Key;
            if (string.IsNullOrEmpty(key))
                return;

            string unicode = vmodel.ConvertHexKeyToUnicode(key);
            int caret = TextBoxMessage.CaretIndex;
            TextBoxMessage.Text = TextBoxMessage.Text.Insert(caret, unicode);
            TextBoxMessage.CaretIndex = caret + unicode.Length;
            TextBoxMessage.Focus();
        }

        private void EmojiButton_Click(object sender, MouseButtonEventArgs e)
        {
            EmojiFlyout.IsOpen = true;
        }

        #endregion

        #region Speed test

        private async void WifiButton_Click(object sender, MouseButtonEventArgs e)
        {
            await vmodel.RunSpeedTest();
        }

        #endregion

        #region Status

        private int _currentStatusIndex = 0;

        private async void StatusMenuItemClick(object sender, RoutedEventArgs e)
        {
            var item = sender as MenuItem;
            if (item == null)
                return;

            string name = item.Name.Substring(3); // strip "sm_" prefix → "online", "away", "dnd", "invisible", "offline"
            var current = vmodel.GetStatusFromInt(_currentStatusIndex);

            if (name == "dnd")
            {
                new Views.Dialog(
                    Views.WindowBase.IconType.Information,
                    Universal.Lang["sINFORM_DND"],
                    Universal.Lang["sINFORM_DND_CAP"],
                    Universal.Lang["sINFORM_DND_TITLE"],
                    brText: "OK"
                ).ShowDialog();
            }

            PresenceStatus status = vmodel.GetConnectionStatusFromName(name);
            if (status == PresenceStatus.Unknown) return;

            _currentStatusIndex = MainViewModel.GetIntFromStatus(status);
            Tray.PushIcon(status);
            LabelStatus.Text = status.ToString();

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                status = current;
                _currentStatusIndex = MainViewModel.GetIntFromStatus(status);
                Tray.PushIcon(status);
                LabelStatus.Text = status.ToString();
            }
        }

        #endregion

        #region Tab switching

        private void SetActiveTab(int tab)
        {
            var blue = (Brush)FindResource("SkDarkBlue");
            var black = (Brush)FindResource("SkBlack");
            TabContactsText.Foreground = tab == 0 ? blue : black;
            TabRecentText.Foreground = tab == 1 ? blue : black;
            TabServersText.Foreground = tab == 2 ? blue : black;
            // CONTACTS centre ≈ 48px  → leftMargin = 48-280 = -232
            // RECENT   centre ≈ 135px → leftMargin = -141.5 (original)
            // SERVERS  centre ≈ 216px → leftMargin = 216-280 = -64
            double waveLeft;
            if (tab == 0)
                waveLeft = -232;
            else if (tab == 1)
                waveLeft = -141.5;
            else
                waveLeft = -64;
            TabWave.Margin = new Thickness(waveLeft, 185, 0, 0);
        }

        private async void TabContacts_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(0);
            if (Universal.Plugin.ContactsList == null || Universal.Plugin.ContactsList.Count < 1)
                await Universal.Plugin.PopulateContactsList();
            ConversationList.ItemsSource = Universal.Plugin.ContactsList;
        }

        private void TabRecent_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(1);
            ConversationList.ItemsSource = Universal.Plugin.RecentsList;
        }

        private async void TabServers_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(2);
            if (Universal.Plugin.ServerList == null || Universal.Plugin.ServerList.Count < 1)
                await Universal.Plugin.PopulateServerList();
            ConversationList.ItemsSource = Universal.Plugin.ServerList;
        }

        #endregion
    }

    public class SeanKypeSidebarTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DirectMessageTemplate { get; set; }
        public DataTemplate GroupTemplate { get; set; }
        public DataTemplate ServerTemplate { get; set; }
        public DataTemplate ServerChannelTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item is ServerChannel)
                return ServerChannelTemplate;
            if (item is DirectMessage)
                return DirectMessageTemplate;
            if (item is Group)
                return GroupTemplate;
            if (item is Server)
                return ServerTemplate;
            return base.SelectTemplate(item, container);
        }
    }
}
