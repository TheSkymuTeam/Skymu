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

using Avalonia.Controls;
using Avalonia.Interactivity;
using Skymu.Forms;
using Skymu.Forms.Pages;
using System;
using Yggdrasil.Enumerations;

namespace Skymu.Controls
{
    public partial class MainMenuBar : UserControl
    {
        #region Properties and events

        public enum Action { Home, Contacts, Servers, Recents, Call, AddContact }
        public event EventHandler<Action> ActionRequested;
        private void Raise(Action action) => ActionRequested?.Invoke(this, action);

        #endregion

        public MainMenuBar()
        {
            InitializeComponent();
        }

        #region Event handlers

        private async void OnStatus(object sender, RoutedEventArgs e)
        {
            if (sender is MenuItem mi && mi.Tag is string tag
                && Enum.TryParse(tag, out PresenceStatus status))
                await Universal.Plugin.SetConnectionStatus(status);
        }

        private void OnAccountManager(object sender, RoutedEventArgs e) => Forms.Pages.AccountManager.Open();
        private void OnSignOut(object sender, RoutedEventArgs e) => Universal.ActiveViewModel.InitiateSignOut(false);
        private void OnSwitchUser(object sender, RoutedEventArgs e) => Universal.ActiveViewModel.InitiateSignOut(true);
        private void OnClose(object sender, RoutedEventArgs e) => Universal.Close();
        private void OnAbout(object sender, RoutedEventArgs e) => new About().Show();
        private void OnPrivacyPolicy(object sender, RoutedEventArgs e) => Universal.OpenURL(Universal.SKYMU_WEBSITE_PRIVACY);
        private void OnOptions(object sender, RoutedEventArgs e) => new Options().Show();
        private void OnCheckUpdates(object sender, RoutedEventArgs e) => new Updater(true);
        private void OnHome(object sender, RoutedEventArgs e) => Raise(Action.Home);
        private void OnContacts(object sender, RoutedEventArgs e) => Raise(Action.Contacts);
        private void OnServers(object sender, RoutedEventArgs e) => Raise(Action.Servers);
        private void OnRecent(object sender, RoutedEventArgs e) => Raise(Action.Recents);
        private void OnCall(object sender, RoutedEventArgs e) => Raise(Action.Call);
        private void OnAddContact(object sender, RoutedEventArgs e) => Raise(Action.AddContact);

        #endregion

        #region Extras

        public void DisableExtras()
        {
            ExtrasMenu.Items.Clear();
            ExtrasMenu.Items.Add(GetExtrasMenuItem);
        }

        public void RedoExtras((string, EventHandler)[] items)
        {
            ExtrasMenu.Items.Clear();
            foreach (var (title, handler) in items)
            {
                var mi = new MenuItem { Header = title };
                if (handler != null) mi.Click += (s, e) => handler(s, e);
                ExtrasMenu.Items.Add(mi);
            }
            ExtrasMenu.Items.Add(new Separator());
            ExtrasMenu.Items.Add(GetExtrasMenuItem);
        }

        #endregion
    }
}
