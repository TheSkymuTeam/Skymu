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
using Skymu.Forms;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.ViewModels;
using Skymu.Windows;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Yggdrasil;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Skymu.SeanKype
{
    public partial class Main : Window, IMainWindowHolder
    {
        private MainViewModel vmodel;
        private MessageGrouper _grouper;
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private bool _userScrolledUp;
        private MMBController _mmbController;
        private bool is_loading_conversation => vmodel?.IsLoadingConversation ?? false;

        public event EventHandler Ready;

        public Main()
        {
            noCloseEvent = false;

            InitializeComponent();
            Application.Current.MainWindow = this;

            Universal.GroupAvatar = GenerateAvatarImage("group");
            Universal.AnonymousAvatar = GenerateAvatarImage("anonymous");
            Universal.UnknownAvatar = GenerateAvatarImage("unknown");

            vmodel = new MainViewModel();
            this.DataContext = vmodel;

            _grouper = new MessageGrouper(vmodel.ActiveConversation);

            vmodel.Ready += (s, e) =>
            {
                LabelUsername.Text = Universal.CurrentUser?.DisplayName;
                LabelStatus.Text = Universal.CurrentUser?.Status;
                this.Title = Settings.BrandingName + "\u2122 - " + Universal.CurrentUser?.Username;
                ConversationList.ItemsSource = Universal.Plugin.ConversationList;
                GlobalUserCount.Text = string.Empty;
                if (Universal.CurrentUser?.ProfilePicture?.Length > 0)
                    UserPicture.Source = ImageHelper.GenerateFromArray(
                        Universal.CurrentUser.ProfilePicture
                    );
                else
                    UserPicture.Source = Universal.AnonymousAvatar;
                if (Settings.AutoSpeedTest)
                    vmodel.RunSpeedTestCommand.Execute(null);
                Universal.CurrentUser.PropertyChanged += (ss, ee) =>
                {
                    if (ee.PropertyName == nameof(User.ConnectionStatus))
                        Dispatcher.Invoke(() =>
                            _currentStatusIndex = MainViewModel.GetIntFromStatus(
                                Universal.CurrentUser.ConnectionStatus
                            )
                        );
                };
                if (Settings.EnableSkypeHome)
                    SkypeHome.Generate(
                        browser,
                        Universal.CurrentUser,
                        Universal.Plugin.ContactList.ToArray()
                    );
                Ready?.Invoke(this, EventArgs.Empty);
            };

            vmodel.UserCountUpdated += text =>
            {
                Dispatcher.Invoke(() => GlobalUserCount.Text = text);
            };

            vmodel.SignOutRequested += (s, e) =>
            {
                new Login(e.switchuser).Show();
                noCloseEvent = true;
                Close();
            };

            vmodel.ConversationItemChanged += (s, e) =>
            {
                if (!is_loading_conversation && !_userScrolledUp)
                    _conversationScrollViewer?.ScrollToEnd();
            };

            vmodel.ConversationChanged += async (s, e) =>
            {
                if (!(s is Conversation sc))
                    return;
                DirectMessage sdm = null;
                if (sc is DirectMessage)
                    sdm = sc as DirectMessage;
                bool found = false;
                foreach (var item in ConversationList.Items)
                    if (item is Conversation c && c.Identifier == sc.Identifier)
                    {
                        ConversationList.SelectedItem = item as Conversation;
                        found = true;
                        break;
                    }
                if (!found)
                {
                    if (ConversationList.ItemsSource == Universal.Plugin.ContactList)
                        SetActiveTab(1);
                    else
                        SetActiveTab(0);
                    foreach (var item in ConversationList.Items)
                        if (item is Conversation c && c.Identifier == sc.Identifier)
                        {
                            ConversationList.SelectedItem = item as Conversation;
                            break;
                        }
                }
                _ = SetConversation();
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

            HomeUnavailable.Navigate(new Forms.HomeUnavailable());

            SourceInitialized += (s, e) =>
            {
                _mmbController = new MMBController(this);
                _mmbController.ActionRequested += (s2, action) =>
                {
                    switch (action)
                    {
                        case MMBController.Action.Home:
                            break; // TODO add code to transition back to Home
                        case MMBController.Action.Contacts:
                            TabContacts_Click(null, null);
                            break;
                        case MMBController.Action.Servers:
                            TabServers_Click(null, null);
                            break;
                        case MMBController.Action.Recents:
                            TabRecent_Click(null, null);
                            break;
                        case MMBController.Action.Call:
                            break; // TODO add calling to SeanKype
                        case MMBController.Action.AddContact:
                            AddContact_Click(null, null);
                            break;
                    }
                };
                _mmbController.Build();
                if (!(Universal.Plugin is IExtras ep) || ep.ExtraConfigurations.Count == 0)
                    _mmbController.DisableExtras();
                else
                {
                    var mitems = new (string, EventHandler)[ep.ExtraConfigurations.Count];
                    int i = 0;
                    foreach (var extra in ep.ExtraConfigurations)
                    {
                        mitems[i] = (extra.title, (ss, ee) => extra.onRun());
                        i++;
                    }
                    _mmbController.RedoExtras(mitems);
                }

                if (Settings.SaveWindowPosition && Settings.Width >= 0.0)
                {
                    this.Top = Settings.Y;
                    this.Left = Settings.X;
                    this.Width = Settings.Width;
                    this.Height = Settings.Height;
                    this.WindowState = Settings.Maximized
                        ? WindowState.Maximized
                        : this.WindowState;
                    LeftColumnDefinition.Width = new GridLength(Settings.ConvListWidth);
                }
            };

            if (!Universal.Plugin.SupportsServers)
                TabServersText.Visibility = Visibility.Collapsed;

            SetActiveTab(3); // default to Home tab
        }

        public Task BeginLoading() => vmodel.InitSidebar();

        private async void HandleConversationSelection(object selected_item)
        {
            if (selected_item == null)
            {
                ConversationList.SelectedIndex = -1;
                return;
            }

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
            _grouper?.Clear();
            vmodel.ClearActiveConversation();
        }

        private async Task SetConversation()
        {
            _userScrolledUp = false;
            ClearConversation();

            RightColumn.Visibility = Visibility.Visible;
            browser.Visibility = Visibility.Collapsed;
            HomeUnavailable.Visibility = Visibility.Collapsed;

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

            _grouper.Build(vmodel.SelectedConversation);
            ConversationItemsList.ItemsSource = _grouper.Grouped;
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

        private void InitiateSignOut(bool switchuser = false) => vmodel.InitiateSignOut(switchuser);

        #region Event handlers

        private void Main_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            LeftColumnDefinition.MaxWidth = this.ActualWidth / 2;
            SidebarGrid.MaxWidth = LeftColumnDefinition.MaxWidth;
        }

        private void ConversationList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (sender == null)
                HandleConversationSelection(null);
            else
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

        private void Window_Closing(object sender, CancelEventArgs ev)
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
            string AvatarPath =
                ConversionHelpers.GetAssetBasePrefix("SeanKype")
                + "Profile Pictures/"
                + avatar
                + ".png";
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
                Universal.InformDND();

            PresenceStatus status = vmodel.GetConnectionStatusFromName(name);
            if (status == PresenceStatus.Unknown)
                return;

            _currentStatusIndex = MainViewModel.GetIntFromStatus(status);
            LabelStatus.Text = status.ToString();

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                status = current;
                _currentStatusIndex = MainViewModel.GetIntFromStatus(status);
                LabelStatus.Text = status.ToString();
            }
        }

        #endregion

        #region Tab switching

        // Recent is the default tab
        private double waveLeft = -141.5;

        /// <summary> 0: Contacts, 1: Recent, 2: Servers </summary>
        private void SetActiveTab(int tab)
        {
            var blue = (Brush)FindResource("SkDarkBlue");
            var black = (Brush)FindResource("SkBlack");
            TabContactsText.Foreground = tab == 0 ? blue : black;
            TabRecentText.Foreground = tab == 1 ? blue : black;
            TabServersText.Foreground = tab == 2 ? blue : black;
            // TODO: Use dynamic positioning instead of precompted values
            // CONTACTS centre ≈ 48px  → leftMargin = 48-280 = -232
            // RECENT   centre ≈ 135px → leftMargin = -141.5 (original)
            // SERVERS  centre ≈ 216px → leftMargin = 216-280 = -64
            switch (tab)
            {
                case 0:
                    waveLeft = -232;
                    break;
                case 1:
                    waveLeft = -141.5;
                    break;
                case 2:
                    waveLeft = -64;
                    break;
                case 3:
                    break; // retain the previous state
                default:
                    waveLeft = 0;
                    break;
            }
            TabWave.Margin = new Thickness(waveLeft, 185, 0, 0);
            if (tab == 3)
            {
                RightColumn.Visibility = Visibility.Collapsed;
                if (Settings.EnableSkypeHome)
                    browser.Visibility = Visibility.Visible;
                else
                    HomeUnavailable.Visibility = Visibility.Visible;
                ConversationList_SelectionChanged(null, null);
                return;
            }
            RightColumn.Visibility = Visibility.Visible;
            browser.Visibility = Visibility.Collapsed;
            HomeUnavailable.Visibility = Visibility.Collapsed;
        }

        private async void TabContacts_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(0);
            if (Universal.Plugin.ContactList == null || Universal.Plugin.ContactList.Count < 1)
                await Universal.Plugin.PopulateContactsList();
            ConversationList.ItemsSource = Universal.Plugin.ContactList;
        }

        private void TabRecent_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(1);
            ConversationList.ItemsSource = Universal.Plugin.ConversationList;
        }

        private async void TabServers_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(2);
            if (Universal.Plugin.ServerList == null || Universal.Plugin.ServerList.Count < 1)
                await Universal.Plugin.PopulateServerList();
            ConversationList.ItemsSource = Universal.Plugin.ServerList;
        }

        private void TabHome_Click(object sender, MouseButtonEventArgs e)
        {
            SetActiveTab(3);
        }

        private void AddContact_Click(object sender, MouseButtonEventArgs e)
        {
            Universal.NotImplemented("Adding contacts on Skype 7");
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
