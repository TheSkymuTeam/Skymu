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

using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Windows;
using Skymu.Forms;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Skymu.Credentials;
using Skymu.ViewModels;
using Yggdrasil.Models;

namespace Skymu.Forms.Pages
{
    public partial class AccountManager : Page
    {
        public static void Open()
        {
            var win = new WindowBase(new AccountManager());
            win.Title = Preferences.Settings.BrandingName + "™ - Accounts";
            win.HeaderText = "Manage saved accounts";
            win.HeaderIcon = WindowBase.IconType.ContactRequest;

            win.ButtonLeftText = Universal.Lang["sZAPBUTTON_CLOSE"];
            win.ButtonLeftAction = () => win.Close();
            win.ButtonRight.Visibility = Visibility.Collapsed;

            win.Owner = Application.Current.MainWindow;
            win.WindowStartupLocation = WindowStartupLocation.CenterOwner;
            win.ShowDialog();
        }

        private sealed class AccountEntry
        {
            public SavedCredential Credential { get; }
            public ImageSource Avatar { get; }
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

                Avatar = ToImage(user?.Avatar);
            }

            private static ImageSource ToImage(byte[] data)
            {
                if (data == null || data.Length == 0)
                    return null;

                try
                {
                    var image = new BitmapImage();
                    using (var ms = new MemoryStream(data))
                    {
                        image.BeginInit();
                        image.CacheOption = BitmapCacheOption.OnLoad;
                        image.StreamSource = ms;
                        image.EndInit();
                    }
                    image.Freeze();
                    return image;
                }
                catch
                {
                    return null;
                }
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

            try
            {
                var entries = new List<AccountEntry>();
                int rank = 0;
                foreach (SavedCredential c in CredentialManager.GetAll())
                    entries.Add(new AccountEntry(c, c.AutoLogin ? ++rank : 0));

                AccountList.ItemsSource = entries;

                if (previous != null)
                    AccountList.SelectedItem = entries.FirstOrDefault(a =>
                        a.Credential.Plugin == previous.Credential.Plugin
                        && a.Credential.User?.Identifier == previous.Credential.User?.Identifier);
            }
            catch (Exception ex)
            {
                AccountList.ItemsSource = null;
                ShowMessage("Could not load saved accounts.\n\n" + ex.Message, WindowBase.IconType.Error);
            }

            bool empty = AccountList.Items.Count == 0;
            EmptyText.Visibility = empty ? Visibility.Visible : Visibility.Collapsed;
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
                ShowMessage("The saved login for this account can't be read. Remove it and sign in again.", WindowBase.IconType.Error);
                return;
            }

            if (Universal.PluginList == null || !Universal.PluginList.Any(p => p.InternalName == cred.Plugin))
            {
                ShowMessage("The plugin for this account isn't installed.", WindowBase.IconType.Error);
                return;
            }

            LoginViewModel.ForcedLogin = cred;
            Window.GetWindow(this)?.Close();

            if (Universal.SignedIn)
                Application.Current.Dispatcher.BeginInvoke(new Action(() =>
                    Universal.ActiveViewModel.InitiateSignOut(switchuser: true)));
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
                ShowMessage("Could not change the auto login setting.\n\n" + ex.Message, WindowBase.IconType.Error);
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
                ShowMessage("Could not change the account order.\n\n" + ex.Message, WindowBase.IconType.Error);
            }

            Reload();
        }

        private void RemoveButton_Click(object sender, RoutedEventArgs e)
        {
            if (!(AccountList.SelectedItem is AccountEntry entry))
                return;

            if (!Confirm("Remove account?", "Remove \"" + entry.DisplayName + "\" from this computer?\n\nYou will need to sign in again to use this account."))
                return;

            try
            {
                CredentialManager.Purge(entry.Credential.User, entry.Credential.Plugin);
            }
            catch (Exception ex)
            {
                ShowMessage("Could not remove the account.\n\n" + ex.Message, WindowBase.IconType.Error);
            }

            Reload();
        }

        private void RemoveAllButton_Click(object sender, RoutedEventArgs e)
        {
            if (!Confirm("Remove all accounts?", "Remove all saved accounts from this computer?\n\nYou will need to sign in again to use them."))
                return;

            try
            {
                CredentialManager.PurgeAll();
            }
            catch (Exception ex)
            {
                ShowMessage("Could not remove the accounts.\n\n" + ex.Message, WindowBase.IconType.Error);
            }

            Reload();
        }

        private bool Confirm(string header, string text)
        {
            bool confirmed = false;
            Dialog dialog = null;

            dialog = new Dialog(
                WindowBase.IconType.Question,
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

            dialog.ButtonLeft.IsDefault = false;
            dialog.ButtonRight.IsDefault = true;
            dialog.ShowDialog();

            return confirmed;
        }

        private void ShowMessage(string text, WindowBase.IconType icon)
        {
            Universal.ShowMessage(text, "Account error", icon);
        }

        private void AddAccountButton_Click(object sender, RoutedEventArgs e)
        {
            Window.GetWindow(this)?.Close();

            if (Universal.SignedIn)
                Application.Current.Dispatcher.BeginInvoke(new Action(() =>
                    Universal.ActiveViewModel.InitiateSignOut(switchuser: true)));
        }
    }
}
