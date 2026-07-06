/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Skymu.Converters;
using Skymu.Emoticons;
using Skymu.Formatting;
using Skymu.Forms;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.Sounds;
using Skymu.ViewModels;
using Skymu.Windows;
using Skymu.Infrastructure.Main;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Skymu.Skype6
{
    public partial class Main : Window, IMainWindowHolder
    {
        #region Variables

        // Constants
        private const string VONAGE = "Hahahahaha... nice try. Get a damn Vonage.";
        private const string VONAGE_CONTACT = "This plugin does not support adding contacts.";
        private const string VONAGE_CAPTION = "Can't you just use your smartphone?";
        private const string MSG_SEND_ERR = "Error sending message.";

        // ViewModel
        private readonly MainViewModel vmodel;

        // Other file-level variables
        private bool noCloseEvent;
        private ScrollViewer _conversationScrollViewer;
        private SliceControl _currentTab;
        private User _oldUser;
        private bool _userScrolledUp = false;
        private readonly Dictionary<SliceControl, ColumnDefinition> buttonToColumn;
        private bool IsLoadingConversation => vmodel?.IsLoadingConversation ?? false;
        private WindowType current_window = WindowType.Chat;
        private string PlaceholderTextMTB = string.Empty;
        public event EventHandler Ready;
        private MMBController _mmbController;

        private enum WindowType
        {
            Home,
            Chat,
        }

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

        private readonly BitmapImage contactsBtnImage = ImageHelper.FreezeLoad("Themeable/Main/contacts.png");
        private readonly BitmapImage recentsBtnImage = ImageHelper.FreezeLoad("Themeable/Main/recents.png");
        private readonly BitmapImage sidebarBtnEmpty = ImageHelper.FreezeLoad("Themeable/Main/empty.png");

        private Metadata SelectedContact;

        #endregion

        #region BitmapImage generators

        private static BitmapImage GenerateAvatarImage(string avatar)
        {
            return ImageHelper.FreezeLoad("Themeable/Profile Pictures/" + avatar + ".png");
        }

        #endregion

        #region Home and Chat window switching

        private void SetWindow(WindowType type, bool force = false)
        {
            if (vmodel.SelectedConversation is Group)
            {
                VideoCallButton.Visibility = Visibility.Collapsed;
                CallButton.IsEnabled = false;
                CallDropdown.IsEnabled = false;
                CallDropdown.Visibility = Visibility.Visible;
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALLGROUP"];
            }
            else if (vmodel.SelectedConversation is ServerChannel)
            {
                VideoCallButton.Visibility = Visibility.Collapsed;
                CallButton.Visibility = Visibility.Collapsed;
                CallDropdown.Visibility = Visibility.Collapsed;
            }
            else
            {
                VideoCallButton.Visibility = Visibility.Visible;
                CallButton.Visibility = Visibility.Visible;
                CallDropdown.Visibility = Visibility.Visible;
                CallButton.IsEnabled = true;
                CallDropdown.IsEnabled = true;
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALL"];
            }

            if (type == current_window && !force)
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
                    if (Settings.EnableSkypeHome)
                        browser.Visibility = Visibility.Visible;
                    else
                        HomeUnavailableFrame.Visibility = Visibility.Visible;
                    ConversationList.SelectedItem = null;
                    ClearTreeSelection(ServersList);
                    SelectedContact = null;

                    MessageWindowRow.Height = new GridLength(0);

                    ChatTopBarSplitter.Visibility = Visibility.Collapsed;
                    TWR_ORIGINAL_HEIGHT = TopbarWindowRow.Height.Value;
                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    TopbarWindowRow.MaxHeight = Double.PositiveInfinity;
                    break;

                case WindowType.Chat:
                    ToggleStatusBoxSelection(false);

                    ChatProfileArea.Visibility = Visibility.Visible;
                    MessageWindow.Visibility = Visibility.Visible;
                    browser.Visibility = Visibility.Collapsed;
                    HomeUnavailableFrame.Visibility = Visibility.Collapsed;

                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);

                    ChatTopBarSplitter.Visibility = Visibility.Visible;
                    TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                    TopbarWindowRow.MaxHeight = screen == null ? TWR_ORIGINAL_MAXHEIGHT : ChatArea.ActualHeight * 0.7;
                    if (location != null)
                        SetCallPageLocation(location);
                    break;
            }
        }

        private void ClearTreeSelection(TreeView tree)
        {
            if (tree.SelectedItem == null)
                return;

            TreeViewItem container = SharedServices.GetContainerFromItem(tree, tree.SelectedItem);
            if (container != null)
                container.IsSelected = false;
        }

        private void ToggleStatusBoxSelection(bool selected)
        {
            HomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        #endregion

        #region Custom window logic

        private void HandleWindowActivated()
        {
            if (vmodel != null)
                vmodel.IsWindowActive = true;
        }

        private void HandleWindowDeactivated()
        {
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

        private async Task HandleServerItemSelection(object value)
        {
            if (value is CategoryHeaderItem)
                return;

            ChatArea.DataContext = value;

            if (value is ServerChannel channel)
            {
                vmodel.SelectedConversation = channel;
                await SetConversation();
            }
        }

        private void ConfigureCompactRecentsList()
        {
            var grouped = CompactRecentsHelper.GroupByDate(vmodel.ConversationList);
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

        private void SelectSidebarTopRowButton(SliceControl to_select)
        {
            if (to_select == AddContactButton)
                SharedServices.SetPlaceholder(SearchBox, Universal.Lang["sADD_CONTACT_PANEL_SEARCH_HINT"], true);
            else
                SharedServices.SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"], true);
            foreach (var tab in new[] { HomeButton, AddContactButton })
            {
                if (tab == to_select)
                    tab.SetState(ButtonVisualState.Pressed);
                else
                    tab.SetState(ButtonVisualState.Default);
            }
        }

        private async Task SelectTab(SliceControl tab_to_select)
        {
            SharedServices.SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"], true);
            _currentTab = tab_to_select;
            AddContactGrid.Visibility = Visibility.Collapsed;
            SidebarTabs.Visibility = Visibility.Visible;
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

            tab_to_select.SetState(ButtonVisualState.Pressed);
            if (Universal.ActivePlugins.Any(e => e.SupportsServers))
                buttonToColumn[tab_to_select].Width = dynamic;
            tab_to_select.SetState(ButtonVisualState.Pressed);
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
            {
                if (tab == tab_to_select)
                    continue;
                tab.SetState(ButtonVisualState.Default);
                if (Universal.ActivePlugins.Any(e => e.SupportsServers))
                    buttonToColumn[tab].Width =
                    Settings.DynamicSidebarTabs
                        ? small
                        : dynamic;
            }

            switch (tab_to_select.Name)
            {
                case "btnServers":
                    ServersList.ItemsSource = await vmodel.GetServerList();
                    break;
                case "btnContacts":
                    ConversationList.ItemTemplateSelector = null;
                    ConversationList.ItemsSource = vmodel.ContactList;
                    break;
                case "btnRecents":
                    ConfigureCompactRecentsList();
                    break;
            }
            if (
                tab_to_select.Name != "btnServers"
                && SelectedContact is Metadata SelectedMetadata
            )
            {
                foreach (object item in ConversationList.Items)
                {
                    if (
                        item is Conversation
                        && ((Metadata)item).Identifier == (SelectedMetadata).Identifier
                    )
                    {
                        ConversationList.SelectedItem = item;
                    }
                }
            }
        }

        #endregion

        #region Resizing stuff

        private double CBR_ORIGINAL_HEIGHT;

        private double TWR_ORIGINAL_HEIGHT;
        private double TWR_ORIGINAL_MINHEIGHT;
        private double TWR_ORIGINAL_MAXHEIGHT;
        private double TWR_HEIGHT_CALLS_CHAT;
        private double TWR_ORIGINAL_MAXHEIGHT_CALLS;

        private double SIDEBAR_ORIGINAL_WIDTH; // dynamic
        private double SIDEBAR_ORIGINAL_MINWIDTH;
        private GridLength SIDEBAR_SPLITTER_ORIGINAL_WIDTH;

        private bool SkypeSplitterIsDragging = false;
        private bool ChatTopBarSplitterIsDragging = false;
        private Point dragStart;
        private UIElement capturedElement = null;

        private void SkypeSplitter_MouseMove(object sender, MouseEventArgs e)
        {
            if (SkypeSplitterIsDragging)
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
            MouseRelease(null, null); // Release previous element first. Potentially avoids weird behavior on touch screen, etc.
            SkypeSplitterIsDragging = true;
            dragStart = e.GetPosition(this);
            capturedElement = sender as UIElement;

            if (capturedElement != null)
            {
                capturedElement.CaptureMouse();
                e.Handled = true;
            }
        }

        private void ChatTopBarSplitter_MouseMove(object sender, MouseEventArgs e)
        {
            if (ChatTopBarSplitterIsDragging)
            {
                Point current = e.GetPosition(this);
                Vector delta = current - dragStart;
                RowDefinition row = ChatArea.RowDefinitions[1];
                double max = row.MaxHeight;
                double min = row.MinHeight;

                double newHeight = row.Height.Value + delta.Y;

                if (newHeight < min)
                    newHeight = min;
                if (newHeight > max)
                    newHeight = max;

                row.Height = new GridLength(newHeight);
                dragStart = current;

                TWR_ORIGINAL_HEIGHT = newHeight;
            }
        }

        private void ChatTopBarSplitter_Press(object sender, MouseButtonEventArgs e)
        {
            MouseRelease(null, null);
            ChatTopBarSplitterIsDragging = true;
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
            if (SkypeSplitterIsDragging || ChatTopBarSplitterIsDragging)
            {
                SkypeSplitterIsDragging = false;
                ChatTopBarSplitterIsDragging = false;

                if (capturedElement != null && capturedElement.IsMouseCaptured)
                {
                    capturedElement.ReleaseMouseCapture();
                }
                capturedElement = null;
                if (e != null)
                    e.Handled = true;
            }
        }

        private void Sidebar_SizeChanged_Refresh()
        {
            if (btnServers.Visibility == Visibility.Collapsed)
            {
                btnServers.Width = 0;
                if (SidebarColumn.ActualWidth <= 185)
                {
                    btnContacts.Source = sidebarBtnEmpty;
                    btnRecents.Source = sidebarBtnEmpty;
                    btnContacts.TextLeftMargin = 5;
                    btnRecents.TextLeftMargin = 5;
                    SidebarTabs.ColumnDefinitions[0].MinWidth = 0;
                    SidebarTabs.ColumnDefinitions[0].Width = new GridLength(69);
                    btnContacts.MaxWidth = 69;
                    btnContacts.HorizontalAlignment = HorizontalAlignment.Left;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Center;
                }
                else
                {
                    btnContacts.Source = contactsBtnImage;
                    btnRecents.Source = recentsBtnImage;
                    btnContacts.TextLeftMargin = 31;
                    btnRecents.TextLeftMargin = 31;
                    SidebarTabs.ColumnDefinitions[0].MinWidth = 93;
                    SidebarTabs.ColumnDefinitions[0].Width = new GridLength(1, GridUnitType.Star);
                    btnContacts.MaxWidth = double.MaxValue;
                    btnContacts.HorizontalAlignment = HorizontalAlignment.Stretch;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Left;
                }
            }
        }

        #endregion

        #region Event handlers

        private void Main_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            SidebarColumn.MaxWidth = this.ActualWidth / 2;
            if (screen != null && location.ChatToggle)
                TopbarWindowRow.MaxHeight = ChatArea.ActualHeight * 0.7;
        }

        private async void ServerListItem_Clicked(object sender, MouseButtonEventArgs e)
        {
            var item = (TreeViewItem)sender;
            var data = item.DataContext;

            SelectedContact = null;

            await HandleServerItemSelection(data);
        }

        private void ConversationList_ItemClicked(object sender, MouseButtonEventArgs e)
        {
            var selected = ((ListBox)sender).SelectedItem;
            if (selected is Metadata selectedMetadata)
                SelectedContact = selectedMetadata;
            if (selected is DateHeaderItem)
            {
                ((ListBox)sender).SelectedItem = null;
                return;
            }
            HandleConversationSelection(selected);
        }

        private void HomeButton_Click(object sender, MouseButtonEventArgs e)
        {
            _ = SelectTab(_currentTab);
            SetWindow(WindowType.Home);
            SelectSidebarTopRowButton(HomeButton);
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

        private void StatusMenuItemClick(object sender, RoutedEventArgs e)
        {
            HandleStatusItemClick(sender as MenuItem);
        }

        private void Main_Closing(object sender, CancelEventArgs ev)
        {
            if (!noCloseEvent)
                Universal.Hide(ev);
        }

        protected override void OnClosed(EventArgs e)
        {
            SharedServices.SavePositioning(this, SidebarColumn);
        }


        private void MakeGroup_Click(object sender, MouseButtonEventArgs e) { }

        private async void AddContact_Close(object sender, MouseButtonEventArgs e)
        {
            await SelectTab(_currentTab);
            if (current_window == WindowType.Home)
                SelectSidebarTopRowButton(HomeButton);
            else
            {
                SelectSidebarTopRowButton(null);
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

        private void AddContact_Click(object sender, MouseButtonEventArgs e)
        {
            if (!(Universal.Plugin is IListManagement))
            {
                AddContactButton.SetState(ButtonVisualState.Default);
                SoundManager.Play("CALL_ERROR1");
                Universal.ShowMessage(VONAGE_CONTACT, VONAGE_CAPTION);
                return;
            }
            foreach (var tab in new[] { btnContacts, btnRecents, btnServers })
                tab.SetState(ButtonVisualState.Default);
            SidebarTabs.Visibility = Visibility.Collapsed;
            ConversationList.Visibility = Visibility.Collapsed;
            ServersList.Visibility = Visibility.Collapsed;
            AddContactGrid.Visibility = Visibility.Visible;
            SelectSidebarTopRowButton(AddContactButton);
            SearchBox.Focus();
        }

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

        private void SelfInfoChanged(object sender, PropertyChangedEventArgs e)
        {
            var cu = sender as User; // TODO delay ish fix
            if (e == null)
            {
                Dispatcher.Invoke(() =>
                {
                    StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(cu.ConnectionStatus);
                    Tray.SetStatus(cu.ConnectionStatus);
                    StatusBox.Text = Universal.CurrentUser?.DisplayName;
                    this.Title = Settings.BrandingName + "\u2122 - " + Universal.CurrentUser?.Username;
                });
            }
            else
                switch (e.PropertyName)
                {
                    case nameof(User.ConnectionStatus):
                        Dispatcher.Invoke(() =>
                        {
                            StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(cu.ConnectionStatus);
                            Tray.SetStatus(cu.ConnectionStatus);
                        });
                        break;
                    case nameof(User.DisplayName):
                        Dispatcher.Invoke(() =>
                        {
                            StatusBox.Text = Universal.CurrentUser?.DisplayName;
                            this.Title = Settings.BrandingName + "\u2122 - " + Universal.CurrentUser?.Username;
                        });
                        break;
                }
        }

        private void SearchBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Pressed);
            SharedServices.RemovePlaceholder(SearchBox);
        }

        private void SearchBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);
            SharedServices.SetPlaceholder(SearchBox,
                AddContactGrid.Visibility == Visibility.Visible ?
                Universal.Lang["sADD_CONTACT_PANEL_SEARCH_HINT"] :
                Universal.Lang["sCONTACT_QF_HINT"],
                true
            );
        }

        private void MessageTextBox_Focused(object sender, KeyboardFocusChangedEventArgs e)
        {
            SharedServices.RemovePlaceholder(MessageTextBox);
            if (SendMsgButton != null) SendMsgButton.IsEnabled = SharedServices.CheckIfMessageSendable(MessageTextBox);
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
            if (SendMsgButton != null) SendMsgButton.IsEnabled = SharedServices.CheckIfMessageSendable(MessageTextBox);
            if (SharedServices.HasAnyContent(MessageTextBox))
                vmodel.lastTypingActivity = DateTime.UtcNow;
        }

        private void CallPhones_Click(object sender, MouseButtonEventArgs e)
        {
            SoundManager.Play("CALL_ERROR1");
            Universal.ShowMessage(VONAGE, VONAGE_CAPTION);
        }

        private async void AddButtonClick(object sender, MouseButtonEventArgs e)
        {
            await vmodel.SendFile();
        }

        private void CallButtonClick(object sender, MouseButtonEventArgs e)
        {
            StartCall(vmodel.SelectedConversation.Core as ICall);
        }

        private void EmojiButton_Click(object sender, MouseButtonEventArgs e)
        {
            EmojiFlyout.IsOpen = true;
        }

        #endregion

        #region Calls

        private Frame frame;
        private CallScreen screen;
        private CallScreen.LocationChangeEventArgs location;
        private CallScreen.LocationChangeEventArgs initial_location =
            new CallScreen.LocationChangeEventArgs(Settings.HideLeftHandSide != true, false);

        private async void StartCall(ICall callPlugin, Conversation conversation = null, User partner = null)
        {
            bool answer_call = true;

            if (conversation == null)
            {
                conversation = vmodel.SelectedConversation as DirectMessage;
                if (conversation == null)
                    return; // group calls not supported yet
                partner = ((DirectMessage)conversation).Partner;
                answer_call = false;
            }
            if (partner == null)
                partner = ((DirectMessage)conversation).Partner;
            CallScreen.LocationChangeEventArgs initial_location =
                new CallScreen.LocationChangeEventArgs(Settings.HideLeftHandSide != true, false);

            if (TWR_ORIGINAL_HEIGHT == default)
                TWR_ORIGINAL_HEIGHT = TopbarWindowRow.Height.Value;
            if (SIDEBAR_SPLITTER_ORIGINAL_WIDTH == default)
                SIDEBAR_SPLITTER_ORIGINAL_WIDTH = SkypeSplitterColumn.Width;
            if (SIDEBAR_ORIGINAL_MINWIDTH == default)
                SIDEBAR_ORIGINAL_MINWIDTH = SidebarColumn.MinWidth;
            if (TWR_ORIGINAL_MINHEIGHT == default)
                TWR_ORIGINAL_MINHEIGHT = TopbarWindowRow.MinHeight;
            if (TWR_ORIGINAL_MAXHEIGHT_CALLS == default)
                TWR_ORIGINAL_MAXHEIGHT_CALLS = TopbarWindowRow.MaxHeight;
            if (CBR_ORIGINAL_HEIGHT == default)
                CBR_ORIGINAL_HEIGHT = ChatButtonRow.Height.Value;
            SIDEBAR_ORIGINAL_WIDTH = SidebarColumn.Width.Value;
            TopbarWindowRow.MinHeight = 250;
            TopbarWindowRow.MaxHeight = ChatArea.ActualHeight * 0.7;
            TopbarWindowRow.Height = new GridLength(ChatArea.ActualHeight * 0.7); // TODO: Retain this across reboots and sessions
            ChatButtonRow.Height = new GridLength(0);

            screen = new CallScreen(callPlugin, partner, initial_location, answer_call);
            screen.HangUpRequested += OnHangUp;
            screen.LocationChangeRequested += OnLocationChanged;
            frame = new Frame();
            frame.Navigate(screen);
            SetCallPageLocation(initial_location);

            await screen.StartCall(conversation, false);
        }

        private void OnLocationChanged(object sender, CallScreen.LocationChangeEventArgs e)
        {
            SetCallPageLocation(e);
        }

        private void OnHangUp(object sender, EventArgs e)
        {
            SetCallPageLocation(null);
        }

        private void SetCallPageLocation(CallScreen.LocationChangeEventArgs location, bool storeChatStatus = true)
        {
            if (frame != null)
            {
                frame.HorizontalContentAlignment = HorizontalAlignment.Stretch;
                frame.VerticalContentAlignment = VerticalAlignment.Stretch;
                frame.HorizontalAlignment = HorizontalAlignment.Stretch;
                frame.VerticalAlignment = VerticalAlignment.Stretch;
            }

            if (location == null)
            {
                Settings.HideLeftHandSide = this.location.SidebarToggle ? false : true;
                Settings.Save();
                SetCallPageLocation(new CallScreen.LocationChangeEventArgs(true, true), false); // quickly reset stuff
                if (FillWindowHost.Content == frame)
                    FillWindowHost.Content = null;
                if (FillMessagePanelHost.Content == frame)
                    FillMessagePanelHost.Content = null;
                ChatProfileArea.Visibility = Visibility.Visible;
                FillMessagePanelHost.Visibility = Visibility.Collapsed;
                TopbarWindowRow.MinHeight = TWR_ORIGINAL_MINHEIGHT;
                TopbarWindowRow.MaxHeight = TWR_ORIGINAL_MAXHEIGHT_CALLS;
                TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                ChatButtonRow.Height = new GridLength(CBR_ORIGINAL_HEIGHT);
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
                this.location = null;
                SetWindow(WindowType.Chat, true);
            }
            else
            {
                this.location = location;
                // Disable it here (bugfix)
                ChatProfileArea.Visibility = Visibility.Collapsed;
                // Show ContentArea here, as it is visible in all cases except with both sidebar and chat hidden
                ContentArea.Visibility = Visibility.Visible;
                // Same for this, but with chat hidden only now
                ChatTopBarSplitter.Visibility = Visibility.Collapsed;
                ChatTopbarSplitterRow.MaxHeight = 0;

                if (storeChatStatus)
                    initial_location.ChatToggle = location.ChatToggle;

                if (FillWindowHost.Content == frame)
                    FillWindowHost.Content = null;
                if (FillMessagePanelHost.Content == frame)
                    FillMessagePanelHost.Content = null;

                // Show sidebar
                if (location.SidebarToggle)
                {
                    SidebarColumn.Width = new GridLength(SIDEBAR_ORIGINAL_WIDTH);
                    SidebarColumn.MinWidth = SIDEBAR_ORIGINAL_MINWIDTH;
                    SkypeSplitterColumn.Width = SIDEBAR_SPLITTER_ORIGINAL_WIDTH;
                }
                // Show chat
                if (location.ChatToggle)
                {
                    if (TWR_HEIGHT_CALLS_CHAT == default)
                        TWR_HEIGHT_CALLS_CHAT = ChatArea.ActualHeight * 0.7;
                    TopbarWindowRow.Height = new GridLength(TWR_HEIGHT_CALLS_CHAT);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    TopbarWindowRow.MaxHeight = ChatArea.ActualHeight * 0.7;
                    ChatTopBarSplitter.Visibility = Visibility.Visible;
                    ChatTopbarSplitterRow.MaxHeight = int.MaxValue;
                }
                // Show everything
                if (location.SidebarToggle && location.ChatToggle)
                {
                    TopbarWindowRow.Height = new GridLength(TWR_ORIGINAL_HEIGHT);
                    MessageWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    FillMessagePanelHost.Visibility = Visibility.Visible;
                    FillMessagePanelHost.Content = frame;
                    return;
                }
                // Show nothing
                if (!location.SidebarToggle && !location.ChatToggle)
                {
                    ContentArea.Visibility = Visibility.Collapsed;
                    FillWindowHost.Content = frame;
                    return;
                }
                // Hide sidebar
                if (!location.SidebarToggle)
                {
                    SIDEBAR_ORIGINAL_WIDTH = SidebarColumn.Width.Value;
                    SidebarColumn.Width = new GridLength(0);
                    SidebarColumn.MinWidth = 0;
                    SkypeSplitterColumn.Width = new GridLength(0);
                }
                // Hide chat
                else if (!location.ChatToggle)
                {
                    TWR_HEIGHT_CALLS_CHAT = TopbarWindowRow.ActualHeight;
                    TopbarWindowRow.Height = new GridLength(1, GridUnitType.Star);
                    MessageWindowRow.Height = new GridLength(0);
                    TopbarWindowRow.MaxHeight = Double.PositiveInfinity;
                }
                // We fill the message panel in sidebar or chat shown cases
                FillMessagePanelHost.Visibility = Visibility.Visible;
                FillMessagePanelHost.Content = frame;
            }
        }

        #endregion

        #region Message sending

        private async Task SendMessage(string message = null)
        {
            if (!SendMsgButton.IsEnabled && message == null)
                return;

            string message_body = message ?? SharedServices.ExtractText(MessageTextBox);

            MessageTextBox.Document.Blocks.Clear();
            MessageTextBox.Document.Blocks.Add(new Paragraph { Margin = new Thickness(0) });
            CheckIfMTBUnfocused();

            await vmodel.SendMessage(message_body);
        }

        private void CheckIfMTBUnfocused(bool force = false)
        {
            if (!MessageTextBox.IsKeyboardFocused || force)
            {
                if (!SharedServices.HasAnyContent(MessageTextBox))
                {
                    SharedServices.SetPlaceholder(MessageTextBox, PlaceholderTextMTB);
                }
                if (SendMsgButton != null) SendMsgButton.IsEnabled = SharedServices.CheckIfMessageSendable(MessageTextBox);
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
            Topbar.Text = vmodel.SelectedConversation?.DisplayName;
            SetWindow(WindowType.Chat);
            PlaceholderTextMTB = Universal.Lang.Format(
                "sCHAT_TYPE_HERE_DIALOG",
                vmodel.SelectedConversation?.DisplayName
            );
            SharedServices.SetPlaceholder(MessageTextBox, PlaceholderTextMTB, true);
            if (SendMsgButton != null) SendMsgButton.IsEnabled = SharedServices.CheckIfMessageSendable(MessageTextBox);
            Spinner.Visibility = Visibility.Visible;

            await vmodel.SetConversation();

            if (vmodel.SelectedConversation == null)
                return;

            ConversationItemsList.ItemsSource = vmodel.ActiveConversation;
            Spinner.Visibility = Visibility.Collapsed;
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
                    ToolTip = SharedServices.ConvertHexKeyToUnicode(emojiKey),
                };
                try
                {
                    var sliceControl = Formatter.MakeEmoji(emojiFilename);
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
            if (!(border?.Child is SliceControl sliceControlInside)) return;

            EmojiFlyout.IsOpen = false;
            SharedServices.RemovePlaceholder(MessageTextBox);

            string emojiFilename = sliceControlInside.Tag as string;
            var sliceControl = Formatter.MakeEmoji(emojiFilename);

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
            if (SendMsgButton != null) SendMsgButton.IsEnabled = SharedServices.CheckIfMessageSendable(MessageTextBox);
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

            vmodel.Ready += async (s, e) =>
            {
                StatusBox.Text = Universal.CurrentUser.DisplayName;
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(Universal.CurrentUser.ConnectionStatus);
                ConfigureCompactRecentsList();
                if (Settings.EnableSkypeHome)
                {
                    vmodel.IsHomeAvailable = await SkypeHome.Generate(browser, Universal.CurrentUser, vmodel.ContactList.ToList());
                }
                if (!Settings.EnableSkypeHome || !vmodel.IsHomeAvailable)
                {
                    browser.Visibility = Visibility.Collapsed;
                    HomeUnavailableFrame.Visibility = Visibility.Visible;
                    HomeUnavailableFrame.Content = new HomeUnavailable();
                }
                WindowTitle = Settings.BrandingName + "™ - " + Universal.CurrentUser.Username;
                this.Title = WindowTitle;
                if (Settings.AutoSpeedTest)
                    vmodel.RunSpeedTestCommand.Execute(null);
                Universal.CurrentUser.PropertyChanged += SelfInfoChanged;
                _oldUser = Universal.CurrentUser;
                Main_SizeChanged(null, null);
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
                if (!IsLoadingConversation && !_userScrolledUp)
                    _conversationScrollViewer?.ScrollToEnd();
            };

            vmodel.ConversationOpened += (s, e) =>
            {
                _oldUser.PropertyChanged -= SelfInfoChanged;
                Universal.CurrentUser.PropertyChanged += SelfInfoChanged;
                _oldUser = Universal.CurrentUser;
                SelfInfoChanged(Universal.CurrentUser, null);
            };

            vmodel.CompactRecentsRefreshRequested += (s, e) =>
            {
                if (ConversationList.Visibility == Visibility.Visible
                && ConversationList.ItemTemplateSelector
                    is CompactRecentsTemplateSelector
            )
                {
                    ConfigureCompactRecentsList();
                }
            };

            vmodel.ConversationChanged += async (s, e) =>
            {
                if (!(s is Conversation sc)) return;
                DirectMessage sdm = null;
                if (sc is DirectMessage)
                    sdm = sc as DirectMessage;
                bool found = false;
                foreach (var item in ConversationList.Items)
                    if (item is Conversation c && c.Identifier == sc.Identifier)
                    { ConversationList.SelectedItem = item as Conversation; found = true; break; }
                if (!found)
                {
                    if (ConversationList.ItemsSource == vmodel.ContactList)
                        await SelectTab(btnRecents);
                    else
                        await SelectTab(btnContacts);
                    foreach (var item in ConversationList.Items)
                        if (item is Conversation c && c.Identifier == sc.Identifier)
                        { ConversationList.SelectedItem = item as Conversation; break; }
                }
                _ = SetConversation();
            };

            vmodel.IncomingCallAccepted += (p, c) =>
            {
                var convo = vmodel.ContactList.FirstOrDefault(e => e.Identifier == c)
                    ?? vmodel.ConversationList.FirstOrDefault(e => e.Identifier == c);
                if (convo != null)
                    StartCall(p, convo);
                else
                    Universal.ExceptionHandler(new Exception("Could not find the conversation with the right ID."), "The conversation identifier was " + c + ".");
            };

            vmodel.SpeedTestIconUpdated += uri =>
            {
                Dispatcher.Invoke(() => WifiButton.Source = ImageHelper.FreezeLoad(uri));
            };

            vmodel.PropertyChanged += (s, e) =>
            {
                if (e.PropertyName == nameof(MainViewModel.TypingText))
                    Dispatcher.Invoke(() => TypingIndicatorText.Text = vmodel.TypingText);
                else if (e.PropertyName == nameof(MainViewModel.IsTypingVisible))
                    Dispatcher.Invoke(() => TypingIndicator.Visibility =
                        vmodel.IsTypingVisible ? Visibility.Visible : Visibility.Collapsed);
            };

            vmodel.PluginEnabledChanged += (s, p) =>
            {
                if (!Universal.ActivePlugins.Any(e => e.SupportsServers))
                {
                    btnServers.Visibility = Visibility.Collapsed;
                    ServersColumn.Width = new GridLength(0);
                    SidebarTabs.ColumnDefinitions[0].MinWidth = 93;
                }
                else
                {
                    btnServers.Visibility = Visibility.Visible;
                    ServersColumn.Width = new GridLength(1, GridUnitType.Star);
                    SidebarTabs.ColumnDefinitions[0].MinWidth = 0;
                }
            };

            Universal.GroupAvatar = GenerateAvatarImage("group");
            Universal.AnonymousAvatar = GenerateAvatarImage("anonymous");
            Universal.UnknownAvatar = GenerateAvatarImage("unknown");

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
            SharedServices.SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"]);
            InitializeEmojiPicker();

            if (!Universal.ActivePlugins.Any(e => e.SupportsServers))
            {
                btnServers.Visibility = Visibility.Collapsed;
                ServersColumn.Width = new GridLength(0);
                SidebarTabs.ColumnDefinitions[0].MinWidth = 93;
            }

            vmodel.SubscribeTypingIndicator();

            TWR_ORIGINAL_MAXHEIGHT = TopbarWindowRow.MaxHeight;
            SetWindow(WindowType.Home);
            // seanFinx Crazy Hack
            btnContacts.OverlayText.TextTrimming = TextTrimming.None;
            btnRecents.OverlayText.TextTrimming = TextTrimming.None;

            //HomeUnavailable.Navigate(new HomeUnavailable());

            SourceInitialized += (s, e) =>
            {
                _mmbController = new MMBController(this);
                _mmbController.ActionRequested += (s2, action) =>
                {
                    switch (action)
                    {
                        case MMBController.Action.Home: SetWindow(WindowType.Home); break;
                        case MMBController.Action.Contacts: _ = SelectTab(btnContacts); break;
                        case MMBController.Action.Servers: _ = SelectTab(btnServers); break;
                        case MMBController.Action.Recents: _ = SelectTab(btnRecents); break;
                        case MMBController.Action.Call: CallButtonClick(null, null); break;
                        case MMBController.Action.AddContact: AddContact_Click(null, null); break;
                        case MMBController.Action.AccountManager: new AccountManagerSimple(vmodel).Show(); break;
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
                    this.WindowState = Settings.Maximized ? WindowState.Maximized : this.WindowState;
                    SidebarColumn.Width = new GridLength(Settings.ConvListWidth);
                }
                Sidebar_SizeChanged_Refresh();
            };

            this.AllowsTransparency = false;
        }

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
            var currentStatus = MainViewModel.GetStatusFromInt(StatusIcon.DefaultIndex);

            if (name == "dnd")
                vmodel.InformDND();

            PresenceStatus status = vmodel.GetConnectionStatusFromName(name);
            if (status == PresenceStatus.Unknown) return;

            StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(status);
            Tray.SetStatus(status);

            if (!await Universal.Plugin.SetConnectionStatus(status))
            {
                StatusIcon.DefaultIndex = MainViewModel.GetIntFromStatus(currentStatus);
                Tray.SetStatus(currentStatus);
            }
        }

        #endregion
    }

}
