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
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using MiddleMan;
using Skymu.Converters;
using Skymu.Helpers;
using Skymu.ViewModels;

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

        #region Win32 menu P/Invoke

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern IntPtr CreateMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern IntPtr CreatePopupMenu();

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool AppendMenu(
            IntPtr hMenu,
            uint uFlags,
            IntPtr uIDNewItem,
            string lpNewItem
        );

        [DllImport("user32.dll", CharSet = CharSet.Unicode)]
        private static extern bool SetMenu(IntPtr hWnd, IntPtr hMenu);

        [DllImport("user32.dll")]
        private static extern bool DrawMenuBar(IntPtr hWnd);

        private const uint MF_STRING = 0x00000000;
        private const uint MF_SEPARATOR = 0x00000800;
        private const uint MF_POPUP = 0x00000010;
        private const uint MF_GRAYED = 0x00000001;

        private const int IDM_SKYPE_SIGNOUT = 102;
        private const int IDM_SKYPE_EXIT = 103;
        private const int IDM_TOOLS_OPTIONS = 301;
        private const int IDM_HELP_ABOUT = 401;

        #endregion

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
                    Properties.Settings.Default.BrandingName
                    + "\u2122 - "
                    + Universal.CurrentUser?.Username;
                ConversationList.ItemsSource = Universal.Plugin.RecentsList;
                GlobalUserCount.Text = string.Empty;
                if (Universal.CurrentUser?.ProfilePicture?.Length > 0)
                    UserPicture.Source = FrozenImage.GenerateFromArray(
                        Universal.CurrentUser.ProfilePicture
                    );
                else
                    UserPicture.Source = Universal.AnonymousAvatar;
                _ = vmodel.RunSpeedTest();
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
                ChatHeaderAvatar.Source = FrozenImage.GenerateFromArray(conv.ProfilePicture);
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

        private void Window_SourceInitialized(object sender, EventArgs e)
        {
            var hwnd = new WindowInteropHelper(this).Handle;
            HwndSource.FromHwnd(hwnd)?.AddHook(WndProc);

            string L(string key) => Universal.Lang[key];

            var hMenu = CreateMenu();

            var hSkypeMenu = CreatePopupMenu();
            AppendMenu(
                hSkypeMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_SKYPE_ONLINESTATUS")
            );
            AppendMenu(hSkypeMenu, MF_SEPARATOR, IntPtr.Zero, null);
            AppendMenu(
                hSkypeMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_SKYPE_PRIVACY")
            );
            AppendMenu(
                hSkypeMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_SKYPE_ACCOUNT")
            );
            AppendMenu(hSkypeMenu, MF_SEPARATOR, IntPtr.Zero, null);
            AppendMenu(
                hSkypeMenu,
                MF_STRING,
                (IntPtr)IDM_SKYPE_SIGNOUT,
                L("sMAINMENU_SKYPE_SIGN_OUT")
            );
            AppendMenu(hSkypeMenu, MF_STRING, (IntPtr)IDM_SKYPE_EXIT, L("sMAINMENU_SKYPE_CLOSE"));
            AppendMenu(hMenu, MF_POPUP, hSkypeMenu, L("sMAINMENU_SKYPE"));

            var hContactsMenu = CreatePopupMenu();
            AppendMenu(
                hContactsMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_CONTACTS_ADD_CONTACT")
            );
            AppendMenu(
                hContactsMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_CONTACTS_NEW_GROUP")
            );
            AppendMenu(hMenu, MF_POPUP, hContactsMenu, L("sMAINMENU_CONTACTS"));

            var hConversationMenu = CreatePopupMenu();
            AppendMenu(
                hConversationMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_CONVERSATION_ADD_TO_CONTACTS")
            );
            AppendMenu(
                hConversationMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_CONVERSATION_RENAME")
            );
            AppendMenu(
                hConversationMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_CONVERSATION_BLOCK")
            );
            AppendMenu(hMenu, MF_POPUP, hConversationMenu, L("sMAINMENU_CONVERSATION"));

            var hCallMenu = CreatePopupMenu();
            AppendMenu(hCallMenu, MF_STRING | MF_GRAYED, IntPtr.Zero, L("sMAINMENU_CALL"));
            AppendMenu(
                hCallMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_CALL_START_VIDEO")
            );
            AppendMenu(hCallMenu, MF_SEPARATOR, IntPtr.Zero, null);
            AppendMenu(hCallMenu, MF_STRING | MF_GRAYED, IntPtr.Zero, L("sMAINMENU_CALL_HANG_UP"));
            AppendMenu(hMenu, MF_POPUP, hCallMenu, L("sMAINMENU_CALL"));

            var hViewMenu = CreatePopupMenu();
            AppendMenu(hViewMenu, MF_STRING | MF_GRAYED, IntPtr.Zero, L("sMAINMENU_VIEW_CONTACTS"));
            AppendMenu(
                hViewMenu,
                MF_STRING | MF_GRAYED,
                IntPtr.Zero,
                L("sMAINMENU_VIEW_CONVERSATIONS")
            );
            AppendMenu(hMenu, MF_POPUP, hViewMenu, L("sMAINMENU_VIEW"));

            var hToolsMenu = CreatePopupMenu();
            AppendMenu(
                hToolsMenu,
                MF_STRING,
                (IntPtr)IDM_TOOLS_OPTIONS,
                L("sMAINMENU_TOOLS_OPTIONS")
            );
            AppendMenu(hMenu, MF_POPUP, hToolsMenu, L("sMAINMENU_TOOLS"));

            var hHelpMenu = CreatePopupMenu();
            AppendMenu(hHelpMenu, MF_STRING | MF_GRAYED, IntPtr.Zero, L("sMAINMENU_HELP_HELP"));
            AppendMenu(hHelpMenu, MF_SEPARATOR, IntPtr.Zero, null);
            AppendMenu(hHelpMenu, MF_STRING, (IntPtr)IDM_HELP_ABOUT, L("sMAINMENU_HELP_ABOUT"));
            AppendMenu(hMenu, MF_POPUP, hHelpMenu, L("sMAINMENU_HELP"));

            SetMenu(hwnd, hMenu);
            DrawMenuBar(hwnd);
        }

        private IntPtr WndProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            const int WM_COMMAND = 0x0111;
            if (msg == WM_COMMAND)
            {
                switch (wParam.ToInt32() & 0xFFFF)
                {
                    case IDM_SKYPE_SIGNOUT:
                        InitiateSignOut();
                        handled = true;
                        break;
                    case IDM_SKYPE_EXIT:
                        Universal.Close();
                        handled = true;
                        break;
                    case IDM_TOOLS_OPTIONS:
                        new Views.Options().Show();
                        handled = true;
                        break;
                    case IDM_HELP_ABOUT:
                        new Views.About().Show();
                        handled = true;
                        break;
                }
            }
            return IntPtr.Zero;
        }

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
                Universal.Close(ev);
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
            string avatarPath =
                Converters.Helpers.GetAssetBasePrefix() + "Profile Pictures/" + avatar + ".png";
            return FrozenImage.Generate(avatarPath);
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
                    var sc = MessageTools.FormAnimatedEmoji(emojiFilename);
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

            var result = await vmodel.HandleStatusChangeByName(name, current);
            if (result == null)
                return;

            _currentStatusIndex = MainViewModel.GetIntFromStatus(result.Value);
            LabelStatus.Text = result.Value.ToString();
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
}
