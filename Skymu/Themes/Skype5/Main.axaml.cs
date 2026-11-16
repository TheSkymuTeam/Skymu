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
using Skymu.Helpers;
using Skymu.Theming;
using Skymu.WebServices;
using System;
using System.Linq;
using System.Threading.Tasks;
using Avalonia;
using Avalonia.Input;
using Avalonia.Media;
using Avalonia.Media.Imaging;

namespace Skymu.Skype5
{
    public partial class Main : MainWindowBase
    {
        #region Variables

        private readonly Bitmap contactsBtnImage = ImageHelper.Load(
            "Themeable/Main/contacts.png"
        );
        private readonly Bitmap recentsBtnImage = ImageHelper.Load(
            "Themeable/Main/recents.png"
        );
        private readonly Bitmap contactsBtnImageEmpty = ImageHelper.Load(
            "Themeable/Main/contacts-empty.png"
        );
        private readonly Bitmap recentsBtnImageEmpty = ImageHelper.Load(
            "Themeable/Main/recents-empty.png"
        );

        #endregion


        #region Home and Chat window switching

        protected override void ShowHomeView()
        {
            ToggleStatusBoxSelection(true);

            HomeTopbar.IsVisible = true;
            ChatTopbar.IsVisible = false;
            ChatProfileArea.IsVisible = false;
            MessageWindow.IsVisible = false;

            if (vmodel.UseSkypeHome)
                browser.IsVisible = true;
            else
                HomeFrame.IsVisible = true;
            MainPageButton.SetState(ButtonVisualState.Pressed);
        }

        protected override void ShowChatView()
        {
            ToggleStatusBoxSelection(false);
            StatusBox.SetState(ButtonVisualState.Default);
            HomeTopbar.IsVisible = false;
            ChatTopbar.IsVisible = true;
            ChatProfileArea.IsVisible = true;
            MessageWindow.IsVisible = true;
            browser.IsVisible = false;
            HomeFrame.IsVisible = false;
        }

        private void ToggleStatusBoxSelection(bool selected)
        {
            StatusBox.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
            StatusBox.TextColor = selected
                ? Brushes.White
                : (SolidColorBrush)Application.Current.Resources["Text.HighContrast"];
            SBHomeButton.SetState(selected ? ButtonVisualState.Pressed : ButtonVisualState.Default);
        }

        #endregion


        #region Resizing stuff

        protected override void OnSidebarResized()
        {
            if (btnServers.IsVisible == false)
            {
                if (SidebarColumn.Width.Value <= 185)
                {
                    btnContacts.Source = contactsBtnImageEmpty;
                    btnRecents.Source = recentsBtnImageEmpty;
                    btnContacts.TextLeftMargin = 5;
                    btnRecents.TextLeftMargin = 5;
                    SidebarTabs.ColumnDefinitions[0].Width = GridLength.Auto;
                    btnContacts.HorizontalAlignment = HorizontalAlignment.Left;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Center;
                }
                else
                {
                    btnContacts.Source = contactsBtnImage;
                    btnRecents.Source = recentsBtnImage;
                    btnContacts.TextLeftMargin = 30;
                    btnRecents.TextLeftMargin = 30;
                    SidebarTabs.ColumnDefinitions[0].Width = new GridLength(1, GridUnitType.Star);
                    btnContacts.HorizontalAlignment = HorizontalAlignment.Stretch;
                    btnContacts.TextHorizontalAlignment = HorizontalAlignment.Left;
                }
            }
            if (SidebarColumn.Width.Value < 195)
            {
                MakeGroupButton.OverlayText.IsVisible = false;
                MakeGroupButton.TextLeftMargin = 0;
            }
            else
            {
                MakeGroupButton.OverlayText.IsVisible = true;
                MakeGroupButton.TextLeftMargin = 41;
            }
            if (SidebarColumn.Width.Value < 245)
                MakeGroupButton.Text = Universal.Lang["sCREATE_GROUP_SHORT"];
            else
                MakeGroupButton.Text = Universal.Lang["sCREATE_GROUP_LONG"];
        }

        #endregion

        #region Initialization and closing

        protected override void ShowOwnName(string name)
        {
            StatusBox.Text = name;
        }

        private void OnFeedbackClick(object sender, PointerEventArgs e)
        {
            Universal.OpenURL(Universal.DISCORD_SERVER_INVITE);
        }

        protected override async Task GenerateHome()
        {
            HomeFrame.Content = new Home();
        }

        protected override void OnUserCountUpdated(string text)
        {
            GlobalUserCount.Text = text;
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