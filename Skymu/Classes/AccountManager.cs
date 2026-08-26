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

using CommunityToolkit.Mvvm.ComponentModel;
using Skymu.Credentials;
using Skymu.Forms;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu.Classes
{
    public static class AccountManager
    {
        static ObservableCollection<AccountEntry> _accounts;
        public static ObservableCollection<AccountEntry> Accounts
        {
            get
            {
                if (_accounts != null)
                    return _accounts;
                LoadAccounts();
                return _accounts;
            }
        }

        public static void LoadAccounts()
        {
            _accounts?.Clear();
            if (_accounts == null)
                _accounts = new ObservableCollection<AccountEntry>();

            foreach (var plugin in Universal.ActivePlugins)
            {
                _ = Universal.ActiveUsers.TryGetValue(plugin, out var user);
                Accounts.Add(new AccountEntry(plugin.InternalName, user, true, null));
            }
            foreach (var credential in CredentialManager.GetAll())
            {
                var alog = credential.AutoLoginEnabled;
                if (Accounts.Any(a => a.PluginIdentifier == credential.Plugin && a.User?.Identifier == credential.User.Identifier))
                {
                    var acc = Accounts.FirstOrDefault(e => e.PluginIdentifier == credential.Plugin && e.User?.Identifier == credential.User.Identifier);
                    if (acc != null)
                        acc.IsAutoLoginEnabled = alog;
                    continue;
                }
                var ae = new AccountEntry(credential.Plugin, credential.User, false, credential)
                {
                    IsAutoLoginEnabled = alog
                };
                Accounts.Add(ae);
            }
        }

        public static void AccountEnabledInvoke(ICore plugin, User user)
        {
            var ent = new AccountEntry(plugin.InternalName, user, true, CredentialManager
                .GetAll()
                .FirstOrDefault(e => e.Plugin == plugin.InternalName && e.User?.Identifier == user.Identifier)
            )
            {
                Plugin = plugin
            };
            Accounts.Add(ent);
            Universal.ActivePlugins.Add(plugin);
        }

        internal static CredentialManager.SavedCredential GetCred(AccountEntry entry)
            => entry._credential ?? CredentialManager.Get(entry.User?.Identifier ?? "NOOOOOOSKAIMUUU", entry.PluginIdentifier);
        internal static bool TryGetCred(AccountEntry entry, out CredentialManager.SavedCredential cred)
        {
            cred = GetCred(entry);
            return cred != null;
        }
        static bool HasCred(AccountEntry entry)
            => GetCred(entry) != null;

        public static void ToggleAutoLogin(AccountEntry entry)
        {
            if (entry == null)
                return;
            entry.IsAutoLoginEnabled = !entry.IsAutoLoginEnabled;

            if (!TryGetCred(entry, out var cred))
            {
                Universal.ShowMessage(
                    "You cannot toggle auto-login of a plugin where the credentials were not successfully stored.",
                    null,
                    WindowBase.IconType.Error
                );
                entry.IsAutoLoginEnabled = false;
            }
            cred.AutoLoginEnabled = !cred.AutoLoginEnabled;
            CredentialManager.Save(cred);
        }

        public static async Task<bool?> ToggleAccount(AccountEntry entry)
        {
            if (entry == null)
                return null;

            entry.IsEnabled = !entry.IsEnabled;
            try
            {
                if (entry.IsEnabled)
                {
                    var type = Universal.PluginList.FirstOrDefault(p => p.InternalName == entry.PluginIdentifier)?.GetType();
                    if (type == null)
                    {
                        Universal.ShowMessage("Failed to convert the internal name into a plugin object. This plugin is likely uninstalled.", null, WindowBase.IconType.Crash);
                        return null;
                    }
                    entry.Plugin = (ICore)Activator.CreateInstance(
                        type
                    );
                    entry.Plugin.DialogTube += Universal.PluginDialogHandler;
                    entry.Plugin.MessageTube += Universal.PluginNotificationHandler;
                    var result = await entry.Plugin.Authenticate(entry.Credential);
                    if (result != LoginResult.Success)
                    {
                        Universal.ShowMessage("Got result: " + result, "Failed to authenticate", WindowBase.IconType.Crash);
                        entry.IsEnabled = false;
                        entry.Plugin = null;
                        return null;
                    }
                    Universal.ActivePlugins.Add(entry.Plugin);
                }
                else
                {
                    if (!Accounts.Any(e => e.IsEnabled))
                    {
                        entry.IsEnabled = true;
                        Universal.ShowMessage(
                            "You cannot disable the last remaining plugin. Log out, or switch user instead.",
                            null,
                            WindowBase.IconType.Error
                        );
                        return null;
                    }
                    if (!HasCred(entry))
                    {
                        var dialog = new Dialog(
                            WindowBase.IconType.Question,
                            "Disabling this account will remove it from the active accounts list, as an attempt to save the credential was unsuccessful.",
                            "Are you sure you want to disable this account?",
                            brText: Universal.Lang["sF_CONFIRM_YES"],
                            blEnabled: true,
                            blText: Universal.Lang["sF_CONFIRM_NO_BTN"]
                        );
                        dialog.BRAction = () =>
                        {
                            if (entry.Plugin != null)
                            {
                                _ = Universal.ActiveUsers.Remove(entry.Plugin);
                                _ = Universal.ActivePlugins.Remove(entry.Plugin);
                                entry.Plugin.Dispose();
                            }
                            _ = Accounts.Remove(entry);

                            dialog.Close();
                        };
                        dialog.BLAction = () =>
                        {
                            entry.IsEnabled = true;
                            dialog.Close();
                        };
                        dialog.ShowDialog();
                        return entry.IsEnabled;
                    }

                    if (entry.Plugin != null)
                    {
                        Universal.ActiveUsers.Remove(entry.Plugin);
                        Universal.ActivePlugins.Remove(entry.Plugin);
                        entry.Plugin.Dispose();
                    }
                    entry.Plugin = null;
                }
            }
            catch
            {
                entry.IsEnabled = !entry.IsEnabled;
                throw;
            }
            return entry.IsEnabled;
        }

        public static bool RemoveAccount(AccountEntry entry)
        {
            if (entry == null)
                return false;

            if (Accounts.Count == 1)
            {
                Universal.ShowMessage(
                    "You cannot delete the last remaining plugin. Log out, or switch user instead.",
                    null,
                    WindowBase.IconType.Error
                );
                return false;
            }

            if (entry.Plugin != null)
            {
                entry.Plugin.Dispose();
                _ = Universal.ActiveUsers.Remove(entry.Plugin);
                _ = Universal.ActivePlugins.Remove(entry.Plugin);
                entry.Plugin = null;
            }

            _ = Accounts.Remove(entry);

            CredentialManager.Purge(entry.User, entry.PluginIdentifier);

            return true;
        }
    }

    public class AccountEntry : ObservableObject
    {
        public ICore Plugin { get; set; }
        public string PluginIdentifier { get; }
        public string PluginName { get; }
        public User User { get; }

        internal CredentialManager.SavedCredential _credential;
        internal CredentialManager.SavedCredential Credential
        {
            get => _credential ?? AccountManager.GetCred(this);
            set => _credential = value;
        }

        bool _isEnabled;
        public bool IsEnabled
        {
            get => _isEnabled;
            set => SetProperty(ref _isEnabled, value);
        }

        bool _isAutoLoginEnabled;
        public bool IsAutoLoginEnabled
        {
            get => _isAutoLoginEnabled;
            set => SetProperty(ref _isAutoLoginEnabled, value);
        }

        public string DisplayName => User?.DisplayName;

        internal AccountEntry(string pluginIdentifier, User user, bool isEnabled, CredentialManager.SavedCredential credential)
        {
            PluginIdentifier = pluginIdentifier;
            PluginName = Universal.PluginList.FirstOrDefault(p => p.InternalName == pluginIdentifier)?.Name ?? pluginIdentifier;
            User = user;
            IsEnabled = isEnabled;
            Credential = credential;
        }
    }
}
