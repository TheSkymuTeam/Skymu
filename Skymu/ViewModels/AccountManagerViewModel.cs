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
using Skymu.Preferences;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using Yggdrasil;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu.ViewModels
{
    public partial class AccountManagerViewModel : ObservableObject
	{
        readonly MainViewModel _mainvmodel;

		ObservableCollection<AccountEntry> _accounts;
		public ObservableCollection<AccountEntry> Accounts
		{
			get => _accounts;
			set => SetProperty(ref _accounts, value);
		}

		AccountEntry _selectedAccount;
		public AccountEntry SelectedAccount
		{
			get => _selectedAccount;
			set => SetProperty(ref _selectedAccount, value);
		}

		public AccountManagerViewModel(MainViewModel mainvmodel)
		{
			_mainvmodel = mainvmodel;

			_accounts = new ObservableCollection<AccountEntry>();
			LoadAccounts();
		}

		public void LoadAccounts()
		{
			Accounts.Clear();

			foreach (var plugin in Universal.ActivePlugins)
			{
				Universal.ActiveUsers.TryGetValue(plugin, out var user);
                Accounts.Add(new AccountEntry(plugin.InternalName, user, true, null));
			}
			var ea = Settings.ExtraAccounts;
			foreach (var credential in CredentialManager.GetAll())
            {
				var alog = false;
				if (ea.Any(e => e.Plugin == credential.Plugin && e.User == credential.User.Identifier))
					alog = true;
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

		public async void AccountEnabledInvoke(ICore plugin, User user)
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
            _ = _mainvmodel.OnAccountEnabledChanged(plugin, user, true);
        }

		internal static SavedCredential GetCred(AccountEntry entry)
			=> entry._credential ?? CredentialManager.Get(entry.User?.Identifier ?? "NOOOOOOSKAIMUUU", entry.PluginIdentifier);
        static bool HasCred(AccountEntry entry)
			=> GetCred(entry) != null;

        public static async void ToggleAutoLogin(AccountEntry entry)
		{
            if (entry == null)
                return;
            entry.IsAutoLoginEnabled = !entry.IsAutoLoginEnabled;
			if (entry.IsAutoLoginEnabled)
			{
				if (!HasCred(entry))
				{
                    Universal.ShowMessage(
                        "You cannot enable auto-login of a plugin where the credentials were not successfully stored.",
                        null,
                        WindowBase.IconType.Error
                    );
					entry.IsAutoLoginEnabled = false;
                }
				var list = Settings.ExtraAccounts.ToList();
				list.Add(new Settings.SkymuAccount(entry.PluginIdentifier, entry.User.Identifier));
				Settings.ExtraAccounts = list.ToArray();
                Settings.Save();
            }
			else
			{
                var list = Settings.ExtraAccounts.ToList();
				var entr = list.FirstOrDefault(e => entry.PluginIdentifier == e.Plugin && entry.User.Identifier == e.User);
				if (entr != null)
				{
					list.Remove(entr);
					Settings.ExtraAccounts = list.ToArray();
					Settings.Save();
				}
            }
        }

        public async void ToggleAccount(AccountEntry entry)
		{
			if (entry == null)
				return;

			entry.IsEnabled = !entry.IsEnabled;
			try
			{
				if (entry.IsEnabled)
				{
					var type = Universal.PluginList.FirstOrDefault(p => p.InternalName == entry.PluginIdentifier)?.GetType();
					if (type == null)
					{
						Universal.ShowMessage("Failed to convert the internal name into a plugin object. This plugin is likely uninstalled.", null, WindowBase.IconType.Crash);
                        return;
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
						return;
                    }
					Universal.ActivePlugins.Add(entry.Plugin);
					_ = _mainvmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, true);
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
                        return;
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
                                Universal.ActiveUsers.Remove(entry.Plugin);
                                Universal.ActivePlugins.Remove(entry.Plugin);
                                entry.Plugin.Dispose();
                            }
                            Accounts.Remove(entry);
							if (ReferenceEquals(Universal.Plugin, entry.Plugin))
                            {
								Universal.Plugin = Universal.ActivePlugins[0];
                                _mainvmodel.SelectConversation(null);
							}

                            _ = _mainvmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, false);
							dialog.Close();
						};
						dialog.BLAction = () =>
						{
							entry.IsEnabled = true;
							dialog.Close();
						};
						dialog.ShowDialog();
						return;
					}

					if (entry.Plugin != null)
					{
						Universal.ActiveUsers.Remove(entry.Plugin);
						Universal.ActivePlugins.Remove(entry.Plugin);
						entry.Plugin.Dispose();
					}
					_ = _mainvmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, false);
                }
            }
            catch
			{
				entry.IsEnabled = !entry.IsEnabled;
				throw;
			}
		}

		public void RemoveAccount(AccountEntry entry)
		{
			if (entry == null)
				return;

            if (Accounts.Count(e => e.IsEnabled) <= 1)
            {
                entry.IsEnabled = true;
                Universal.ShowMessage(
                    "You cannot delete the last remaining plugin. Log out, or switch user instead.",
                    null,
                    WindowBase.IconType.Error
                );
                return;
            }

			if (entry.Plugin != null)
			{
				entry.Plugin.Dispose();
				Universal.ActiveUsers.Remove(entry.Plugin);
				Universal.ActivePlugins.Remove(entry.Plugin);
				entry.Plugin = null;
                _ = _mainvmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, false);
            }

            if (SelectedAccount == entry)
				SelectedAccount = null;
            Accounts.Remove(entry);
		}
	}

	public partial class AccountEntry : ObservableObject
	{
		public ICore Plugin { get; set; }
		public string PluginIdentifier { get; }
		public string PluginName { get; }
        public User User { get; }

		internal SavedCredential _credential;
        public SavedCredential Credential
		{
			get => _credential ?? AccountManagerViewModel.GetCred(this);
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

		public AccountEntry(string pluginIdentifier, User user, bool isEnabled, SavedCredential credential)
		{
			PluginIdentifier = pluginIdentifier;
            PluginName = Universal.PluginList.FirstOrDefault(p => p.InternalName == pluginIdentifier)?.Name ?? pluginIdentifier;
            User = user;
			IsEnabled = isEnabled;
			Credential = credential;
		}
	}
}
