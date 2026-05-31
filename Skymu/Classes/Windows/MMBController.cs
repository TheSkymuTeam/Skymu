
using Skymu.ViewModels;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Skymu.Converters;
using Skymu.Credentials;
using Skymu.Databases;
using Skymu.Emoticons;
using Skymu.Enumerations;
using Skymu.Windows;
using Skymu.Helpers;
using Skymu.Sounds;
using Skymu.Preferences;
using Skymu.Forms;
using Skymu.UserDirectory;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using System.Windows.Controls;

namespace Skymu.Windows
{
    class MMBController
    {
        private readonly NativeMenuBar _menuBar;
        public MMBController(Window window)
        {
            _menuBar = new NativeMenuBar(window);
        }

        #region Constructor

        private IntPtr ICN(int index) => IconHelper.LoadHBitmapFromSheet(index);
        private string L(string key) => Universal.Lang[key];
        private static (string, EventHandler) MI(string label, EventHandler handler) { return (label, handler); }
        private static (string, NativeSubMenu) MI(string label, NativeSubMenu subMenu) { return (label, subMenu); }
        private static (string, EventHandler, IntPtr?) MI(string label, EventHandler handler, IntPtr? hBitmap) { return (label, handler, hBitmap); }
        private static (string, EventHandler) MI(string label) { return (label, null); }
        private static (string, EventHandler) SEP() { return ("$", null); }
        public void Build()
        {
            _menuBar.Create(L("sMAINMENU_SKYPE"),
                MI(L("sMAINMENU_SKYPE_ONLINESTATUS"), new NativeSubMenu(_menuBar).CreateWithIcons(L("sMAINMENU_SKYPE_ONLINESTATUS"),
                    MI(L("sTRAYHINT_USER_ONLINE"), (s, e2) => OnStatus(PresenceStatus.Online), ICN(2)),
                    MI(L("sTRAYHINT_USER_AWAY"), (s, e2) => OnStatus(PresenceStatus.Away), ICN(3)),
                    MI(L("sTRAYHINT_USER_DND"), (s, e2) => OnStatus(PresenceStatus.DoNotDisturb), ICN(5)),
                    MI(L("sTRAYHINT_USER_INVISIBLE"), (s, e2) => OnStatus(PresenceStatus.Invisible), ICN(6)),
                    MI(L("sTRAYHINT_USER_OFFLINE"), (s, e2) => OnStatus(PresenceStatus.Offline), ICN(6)),
                    ("$", null, null),
                    MI(L("sSTATUSMENU_CAPTION_CF_OPTIONS2"), null, ICN(13))
                )),
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
                MI(L("sMAINMENU_CONTACTS_ADD_CONTACT"), (s, e2) => OnAddContact(null, null)),
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
                MI(L("sMAINMENU_CALL"), (s, e2) => OnCall(null, null)),
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
                MI(L("sMAINMENU_VIEW_CONTACTS"), (s, e2) => OnContacts(null, null)),
                MI("Servers", (s, e2) => OnServers(null, null)),
                MI(L("sMAINMENU_VIEW_CONVERSATIONS"), (s, e2) => OnRecent(null, null)),
                MI(L("sMAINMENU_VIEW_VOICEMAILS")),
                MI(L("sMAINMENU_VIEW_FILESSENT")),
                MI(L("sMAINMENU_VIEW_SMSMESSAGES")),
                MI(L("sMAINMENU_VIEW_INSTANT_MESSAGES")),
                SEP(),
                MI(L("sMAINMENU_VIEW_HOME"), (s, e2) => OnHome(null, null)),
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
                MI(L("sMAINMENU_HELP_PRIVACY"), (s, e2) => OnPrivacyPolicy(null, null))
            );
        }

        #endregion

        #region Event system

        public enum Action { Home, Contacts, Servers, Recents, Call, AddContact }
        public event EventHandler<Action> ActionRequested;
        private void Raise(Action action) => ActionRequested?.Invoke(this, action);

        #endregion

        #region Event handlers

        private async void OnStatus(PresenceStatus status) => await Universal.Plugin.SetConnectionStatus(status);
        private void OnSignOut(object sender, EventArgs e) => Universal.ActiveViewModel.InitiateSignOut(false);
        private void OnSwitchUser(object sender, EventArgs e) => Universal.ActiveViewModel.InitiateSignOut(true);
        private void OnClose(object sender, EventArgs e) => Universal.Close();
        private void OnAbout(object sender, EventArgs e) => new About().Show();
        private void OnPrivacyPolicy(object sender, EventArgs e) => Universal.OpenUrl(Universal.SKYMU_WEBSITE_PRIVACY);
        private void OnOptions(object sender, EventArgs e) => new Options().Show();
        private void OnCheckUpdates(object sender, EventArgs e) => new Forms.Pages.Updater(true);
        private void OnHome(object sender, EventArgs e) => Raise(Action.Home);
        private void OnContacts(object sender, EventArgs e) => Raise(Action.Contacts);
        private void OnServers(object sender, EventArgs e) => Raise(Action.Servers);
        private void OnRecent(object sender, EventArgs e) => Raise(Action.Recents);
        private void OnCall(object sender, EventArgs e) => Raise(Action.Call);
        private void OnAddContact(object sender, EventArgs e) => Raise(Action.AddContact);

        #endregion
    }
}
