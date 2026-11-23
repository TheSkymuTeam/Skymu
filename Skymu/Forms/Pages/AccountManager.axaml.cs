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

using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Threading;
using Avalonia.VisualTree;
using Skymu.AvaloniaTools;
using Skymu.Credentials;
using Skymu.Forms;
using Skymu.Helpers;
using Skymu.ViewModels;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Yggdrasil.Models;

namespace Skymu.Forms.Pages
{
    public partial class AccountManager : UserControl
    {
        public SkinnedWindow win;
        public static void Open()
        {
            AccountManager mgr = new AccountManager();
            mgr.win = new SkinnedWindow(mgr);
            mgr.win.Title = Preferences.Settings.BrandingName + "™ - Accounts";
            mgr.win.HeaderText = "Manage saved accounts";
            mgr.win.HeaderIcon = SkinnedWindow.IconType.ContactRequest;

            mgr.win.ButtonLeftText = Universal.Lang["sZAPBUTTON_CLOSE"];
            mgr.win.ButtonLeftAction = () => mgr.win.Close();
            mgr.win.ButtonRight.IsVisible = false;

            mgr.win.WindowStartupLocation = WindowStartupLocation.CenterOwner;
            mgr.win.ShowDialog(AvaloniaHelpers.GetMainWindow());
        }

        private sealed class AccountEntry
        {
            public SavedCredential Credential { get; }
            public Bitmap Avatar { get; }
            public string DisplayName { get; }
            public string Details { get; }
            public string AutoLoginText { get; }
            public bool IsCurrent { get; }

            public AccountEntry(SavedCredential credential, int autoLoginRank)
            {
                Credential = credential;

                User user = credential.User;
                string username = user?.Username;
                DisplayName = !string.IsNullOrWhiteSpace(user?.DisplayName)
                    ? user.DisplayName
                    : (!string.IsNullOrWhiteSpace(username) ? username : "Unknown account");

                string plugin = string.IsNullOrEmpty(credential.Plugin)
                    ? "Unknown"
                    : char.ToUpper(credential.Plugin[0], CultureInfo.CurrentCulture) + credential.Plugin.Substring(1);

                IsCurrent = Universal.SignedIn
                    && Universal.Plugin?.InternalName == credential.Plugin
                    && Universal.CurrentUser?.Identifier == credential.User?.Identifier;

                AutoLoginText = credential.AutoLogin ? "Priority: #" + autoLoginRank : "Auto login: off";

                var parts = new List<string>();
                if (!string.IsNullOrWhiteSpace(username)) parts.Add(username);
                parts.Add(plugin);
                parts.Add(credential.AuthenticationType.ToString());
                if (IsCurrent) parts.Add("Signed in");
                Details = string.Join("  •  ", parts);

                Avatar = ImageHelper.GenerateAvatarImageFromArray(user?.Avatar);
            }
        }

        public AccountManager()
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Reload();
        }

        private void Reload()
        {
            AccountEntry previous = AccountList.SelectedItem as AccountEntry;

            
                var entries = new List<AccountEntry>();
                int rank = 0;
                foreach (SavedCredential c in CredentialManager.GetAll())
                {

                        entries.Add(new AccountEntry(c, c.AutoLogin ? ++rank : 0));

                }

                AccountList.ItemsSource = entries;

                if (previous != null)
                    AccountList.SelectedItem = entries.FirstOrDefault(a =>
                        a.Credential.Plugin == previous.Credential.Plugin
                        && a.Credential.User?.Identifier == previous.Credential.User?.Identifier);


            bool empty = AccountList.Items.Count == 0;
            EmptyText.IsVisible = empty ? true : false;
            RemoveAllButton.IsEnabled = !empty;
            UpdateButtons();
        }

        private void UpdateButtons()
        {
            AccountEntry entry = AccountList.SelectedItem as AccountEntry;
            int index = AccountList.SelectedIndex;

            RemoveButton.IsEnabled = entry != null;
            LoginButton.IsEnabled = entry != null && !entry.IsCurrent;
            AutoLoginButton.IsEnabled = entry != null;
            AutoLoginButton.Content = entry != null && !entry.Credential.AutoLogin
                ? "Enable auto login"
                : "Disable auto login";
            MoveUpButton.IsEnabled = entry != null && index > 0;
            MoveDownButton.IsEnabled = entry != null && index >= 0 && index < AccountList.Items.Count - 1;
        }

        private void AccountList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateButtons();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            if (!(AccountList.SelectedItem is AccountEntry entry))
                return;

            SavedCredential cred = entry.Credential;

            if (string.IsNullOrEmpty(cred.PasswordOrToken))
            {
                ShowMessage("The saved login for this account can't be read. Remove it and sign in again.", SkinnedWindow.IconType.Error);
                return;
            }

            if (Universal.PluginList == null || !Universal.PluginList.Any(p => p.InternalName == cred.Plugin))
            {
                ShowMessage("The plugin for this account isn't installed.", SkinnedWindow.IconType.Error);
                return;
            }

            LoginViewModel.ForcedLogin = cred;
            win.Close();

            if (Universal.SignedIn)
                Dispatcher.UIThread.Post(() =>
                    Universal.ActiveViewModel.InitiateSignOut(purge: false));
        }

        private void AutoLoginButton_Click(object sender, RoutedEventArgs e)
        {
            if (!(AccountList.SelectedItem is AccountEntry entry))
                return;

            try
            {
                CredentialManager.SetAutoLogin(entry.Credential.User, entry.Credential.Plugin, !entry.Credential.AutoLogin);
            }
            catch (Exception ex)
            {
                ShowMessage("Could not change the auto login setting.\n\n" + ex.Message, SkinnedWindow.IconType.Error);
            }

            Reload();
        }

        private void MoveUpButton_Click(object sender, RoutedEventArgs e)
        {
            MoveSelected(true);
        }

        private void MoveDownButton_Click(object sender, RoutedEventArgs e)
        {
            MoveSelected(false);
        }

        private void MoveSelected(bool up)
        {
            if (!(AccountList.SelectedItem is AccountEntry entry))
                return;

            try
            {
                if (up)
                    CredentialManager.MoveUp(entry.Credential.User, entry.Credential.Plugin);
                else
                    CredentialManager.MoveDown(entry.Credential.User, entry.Credential.Plugin);
            }
            catch (Exception ex)
            {
                ShowMessage("Could not change the account order.\n\n" + ex.Message, SkinnedWindow.IconType.Error);
            }

            Reload();
        }

        private async void RemoveButton_Click(object sender, RoutedEventArgs e)
        {
            if (!(AccountList.SelectedItem is AccountEntry entry))
                return;

            if (!await Confirm("Remove account?", "Remove \"" + entry.DisplayName + "\" from this computer?\n\nYou will need to sign in again to use this account."))
                return;

            try
            {
                CredentialManager.Purge(entry.Credential.User, entry.Credential.Plugin);
            }
            catch (Exception ex)
            {
                ShowMessage("Could not remove the account.\n\n" + ex.Message, SkinnedWindow.IconType.Error);
            }

            Reload();
        }

        private async void RemoveAllButton_Click(object sender, RoutedEventArgs e)
        {
            if (!await Confirm("Remove all accounts?", "Remove all saved accounts from this computer?\n\nYou will need to sign in again to use them."))
                return;

            try
            {
                CredentialManager.PurgeAll();
            }
            catch (Exception ex)
            {
                ShowMessage("Could not remove the accounts.\n\n" + ex.Message, SkinnedWindow.IconType.Error);
            }

            Reload();
        }

        private async Task<bool> Confirm(string header, string text)
        {
            bool confirmed = false;
            Dialog dialog = null;

            dialog = new Dialog(
                SkinnedWindow.IconType.Question,
                text,
                header,
                blEnabled: true,
                blText: Universal.Lang["sF_CONFIRM_YES"],
                blAction: () =>
                {
                    confirmed = true;
                    dialog.Close();
                },
                brText: Universal.Lang["sF_CONFIRM_NO_BTN"]
            );

            dialog.SetRightButtonAsDefault();
            await dialog.ShowAsync();   
            return confirmed;
        }

        private void ShowMessage(string text, SkinnedWindow.IconType icon)
        {
            Universal.ShowMessage(text, "Account error", icon);
        }

        private void AddAccountButton_Click(object sender, RoutedEventArgs e)
        {
            win.Close();

            if (Universal.SignedIn)
                Dispatcher.UIThread.Post(() =>
                    Universal.ActiveViewModel.InitiateSignOut(purge: false));
        }
    }
}
