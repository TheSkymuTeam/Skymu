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

using Skymu.Forms;
using Skymu.Helpers;
using Skymu.Sounds;
using Skymu.Theming;
using Skymu.WebServices;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using Yggdrasil;
using Yggdrasil.Models;

namespace Skymu.Skype6
{
    public partial class Main : MainWindowBase
    {
        #region Variables

        // Constants
        private const string VONAGE = "Hahahahaha... nice try. Get a damn Vonage.";
        private const string VONAGE_CONTACT = "This plugin does not support adding contacts.";
        private const string VONAGE_CAPTION = "Can't you just use your smartphone?";
        private const string MSG_SEND_ERR = "Error sending message.";

        private SliceControl _currentTab;

        private readonly BitmapImage contactsBtnImage = ImageHelper.FreezeLoad("Themeable/Main/contacts.png");
        private readonly BitmapImage recentsBtnImage = ImageHelper.FreezeLoad("Themeable/Main/recents.png");
        private readonly BitmapImage sidebarBtnEmpty = ImageHelper.FreezeLoad("Themeable/Main/empty.png");

        #endregion


        #region Home and Chat window switching

        protected override void ShowHomeView()
        {
            ToggleStatusBoxSelection(true);

            Topbar.Text = Universal.Lang["sZAPBUTTON_SKYPEHOME"];
            ChatProfileArea.Visibility = Visibility.Collapsed;
            MessageWindow.Visibility = Visibility.Collapsed;

            if (vmodel.UseSkypeHome)
                browser.Visibility = Visibility.Visible;
            else
                HomeUnavailableFrame.Visibility = Visibility.Visible;
        }

        protected override void ShowChatView()
        {
            ToggleStatusBoxSelection(false);

            ChatProfileArea.Visibility = Visibility.Visible;
            MessageWindow.Visibility = Visibility.Visible;
            browser.Visibility = Visibility.Collapsed;
            HomeUnavailableFrame.Visibility = Visibility.Collapsed;
        }

        private void ToggleStatusBoxSelection(bool selected)
        {
            HomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        #endregion

        #region Sidebar tab selection and population

        protected override void OnTabSelecting(SliceControl tab_to_select)
        {
            SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"], true);
            _currentTab = tab_to_select;
            AddContactGrid.Visibility = Visibility.Collapsed;
            SidebarTabs.Visibility = Visibility.Visible;
        }

        private void SelectSidebarTopRowButton(SliceControl to_select)
        {
            if (to_select == AddContactButton)
                SetPlaceholder(SearchBox, Universal.Lang["sADD_CONTACT_PANEL_SEARCH_HINT"], true);
            else
                SetPlaceholder(SearchBox, Universal.Lang["sCONTACT_QF_HINT"], true);
            foreach (var tab in new[] { HomeButton, AddContactButton })
            {
                if (tab == to_select)
                    tab.SetState(ButtonVisualState.Pressed);
                else
                    tab.SetState(ButtonVisualState.Default);
            }
        }

        #endregion

        #region Resizing stuff

        protected override void OnSidebarResized()
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

        private void HomeButton_Click(object sender, MouseButtonEventArgs e)
        {
            _ = SelectTab(_currentTab);
            SetWindow(WindowType.Home);
            SelectSidebarTopRowButton(HomeButton);
        }

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

        protected override void AddContact_Click(object sender, MouseButtonEventArgs e)
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

        protected override void SearchBox_Unfocused(object sender, KeyboardFocusChangedEventArgs e)
        {
            PseudoSearchBox.SetState(ButtonVisualState.Default);
            SetPlaceholder(SearchBox,
                AddContactGrid.Visibility == Visibility.Visible ?
                Universal.Lang["sADD_CONTACT_PANEL_SEARCH_HINT"] :
                Universal.Lang["sCONTACT_QF_HINT"],
                true
            );
        }

        protected override void CallPhones_Click(object sender, MouseButtonEventArgs e)
        {
            SoundManager.Play("CALL_ERROR1");
            Universal.ShowMessage(VONAGE, VONAGE_CAPTION);
        }

        protected override void UpdateMessageSendButtonState() { }

        #endregion

        #region Conversation

        protected override void OnConversationSelecting()
        {
            Topbar.Text = vmodel.SelectedConversation?.DisplayName;
        }

        #endregion

        #region Initialization and closing

        protected override void ShowOwnName(string name)
        {
            StatusBox.Text = name;
        }

        protected override async Task GenerateHome()
        {
            if (vmodel.UseSkypeHome)
            {
                if (!await Home.Generate(browser, Universal.CurrentUser, vmodel.ContactList.ToList()))
                {
                    browser.Visibility = Visibility.Collapsed;
                    HomeUnavailableFrame.Visibility = Visibility.Visible;
                    HomeUnavailableFrame.Content = new HomeUnavailable();
                }
            }
            else
            {
                browser.Visibility = Visibility.Collapsed;
                HomeUnavailableFrame.Visibility = Visibility.Visible;
                HomeUnavailableFrame.Content = new HomeUnavailable();
            }
        }

        protected override void OnUserCountUpdated(string text)
        {
            GlobalUserCount.Text = text;
        }

        protected override void OnServersUnsupported()
        {
            SidebarTabs.ColumnDefinitions[0].MinWidth = 93;
        }

        protected override void InitializeMenuBar()
        {
            BuildMenuBarController();
        }

        protected override void ShowLogin(bool switchuser)
        {
            new Login(switchuser).Show();
        }

        public Main()
        {
            InitializeComponent();
            InitializeMainWindow();

            if (Universal.CallPlugin != null)
            {
                Universal.CallPlugin.IncomingCallTube += (sender, e) =>
                {
                    Application.Current.Dispatcher.Invoke(() =>
                    {
                        IncomingCall ic = new IncomingCall(e);
                        EventHandler handler = null;
                        handler = (s, args) =>
                        {
                            ic.Answered -= handler;
                            InitiateCall(e.Caller, true);
                        };
                        ic.Answered += handler;
                        ic.Show();
                    });
                };
            }
        }

        #endregion
    }

}