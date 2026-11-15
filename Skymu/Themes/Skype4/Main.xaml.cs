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

using Avalonia.Threading;
using Skymu.Forms;
using Skymu.Preferences;
using Skymu.Theming;
using System;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Input;

namespace Skymu.Skype4
{
    public partial class Main : MainWindowBase
    {

        protected override string AeroTitleFont => "Arial";
        protected override bool ResizesTabColumns => false;

        protected override CallScreen.LocationChangeEventArgs GetInitialCallLocation()
        {
            return initial_location;
        }

        #region Home and Chat window switching

        protected override void ShowHomeView()
        {
            Home.IsVisible = true;
            ChatArea.IsVisible = false;
        }

        protected override void ShowChatView()
        {
            StatusHeader.SetState(ButtonVisualState.Default);
            Home.IsVisible = false;
            ChatArea.IsVisible = true;
        }

        #endregion

        #region Sidebar tab selection and population

        protected override void OnTabSelecting(SliceControl tab_to_select)
        {
            ConversationsHint.IsVisible = false;
        }

        protected override void OnTabSelected(SliceControl tab_to_select)
        {
            switch (tab_to_select.Name)
            {
                case "btnServers":
                    SplashHeader.Text = "Servers";
                    SplashDescription.Text = "Find a community and connect with the world.";
                    break;
                case "btnContacts":
                    SplashHeader.Text = Universal.Lang["sZAPBUTTON_CONTACTS"];
                    SplashDescription.Text = "Choose a contact and start talking.";
                    break;
                case "btnRecents":
                    SplashHeader.Text = "Conversations";
                    SplashDescription.Text = "Choose a conversation to pick up again.";
                    if (Settings.InboxNoticeShown != true)
                        ConversationsHint.IsVisible = true;
                    break;
            }
        }

        #endregion

        #region Event handlers

        private void SBNewBtn_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            var menu = (ContextMenu)SBNewBtn.Resources["Menu"];
            menu.PlacementTarget = SBNewBtn;
            menu.Placement = Avalonia.Controls.Primitives.PlacementMode.Bottom;
            menu.IsOpen = true;
        }

        private void NewMenuItemClick(object sender, RoutedEventArgs e)
        {
            string name = ((MenuItem)sender).Name.Substring(3);
            switch (name)
            {
                case "contact":
                    vmodel.ShowAddContactWindow();
                    break;
                case "group":
                    Universal.NotImplemented("Creating group conversations");
                    break;
                case "import":
                    Universal.NotImplemented("Importing contacts");
                    break;
            }
        }

        private async void OnContactsLink(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            await SelectTab(btnContacts);
        }

        private void CloseConversationHint(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            ConversationsHint.IsVisible = false;
            Settings.InboxNoticeShown = true;
            Settings.Save();
        }

        private void Directory_Click(object sender, PointerReleasedEventArgs e)
        {
            if (e.InitialPressMouseButton != MouseButton.Left)
                return;
            Universal.NotImplemented("Directory");
        }

        #endregion

        #region Initialization and closing

        protected override void ShowOwnName(string name)
        {
            StatusHeader.Text = name;
        }

        protected override void ShowCreditText(string text)
        {
            SkypeCreditBox.Text = text;
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
                    Dispatcher.UIThread.Post(() =>
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