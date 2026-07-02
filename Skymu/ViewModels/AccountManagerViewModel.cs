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
using System.Windows;
using Yggdrasil;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu.ViewModels
{
    public partial class AccountManagerViewModel : ObservableObject
	{
		public event Action<ICore, User, bool> AccountEnabledChanged;
		public event Action<ICore, User> AccountRemoving;
		MainViewModel _mainvmodel;

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
			if (Universal.ActivePlugins == null)
				return;

			foreach (var plugin in Universal.ActivePlugins)
			{
				Universal.ActiveUsers.TryGetValue(plugin, out User user);
				Accounts.Add(new AccountEntry(plugin.InternalName, user, true, null));
			}
			foreach (var credential in CredentialManager.GetAll())
            {
                if (Accounts.Any(a => a.PluginIdentifier == credential.Plugin && a.User.Identifier == credential.User.Identifier))
                    continue;
                Accounts.Add(new AccountEntry(credential.Plugin, credential.User, false, credential));
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
					entry.Plugin = (ICore)Activator.CreateInstance(
						(Universal.PluginList.FirstOrDefault(p => p.InternalName == entry.PluginIdentifier)
						?? throw new Exception("Failed to convert the internal name into a plugin object. This plugin is likely uninstalled."))
							.GetType()
					);
                    entry.Plugin.DialogTube += Universal.PluginDialogHandler;
                    entry.Plugin.MessageTube += Universal.PluginNotificationHandler;
                    var result = await entry.Plugin.Authenticate(entry.Credential);
					if (result != LoginResult.Success)
					{
						Universal.ShowMessage("Got result: " + result, "Failed to authenticate", WindowBase.IconType.Error);
						return;
                    }
                    Universal.ActiveUsers[entry.Plugin] = entry.User;
					Universal.ActivePlugins.Add(entry.Plugin);
				}
				else
				{
					if (entry.Credential == null)
					{
						if (Accounts.Count(e => e.IsEnabled) <= 1)
						{
							entry.IsEnabled = true;
                            Universal.ShowMessage(
                                "You cannot disable the last remaining plugin.",
								null,
                                WindowBase.IconType.Error
							);
							return;
                        }
						var dialog = new Dialog(
							WindowBase.IconType.Question,
							"Are you sure you want to disable this account?",
							"Disabling this account will remove it from the active accounts list, as an attempt to save the credential was unsuccessful.",
							brText: Universal.Lang["sF_CONFIRM_YES"],
							blEnabled: true,
							blText: Universal.Lang["sF_CONFIRM_NO_BTN"]
						);
						dialog.BRAction = () =>
						{
							entry.Plugin.Dispose();
							Universal.ActiveUsers.Remove(entry.Plugin);
							Universal.ActivePlugins.Remove(entry.Plugin);
							if (ReferenceEquals(Universal.Plugin, entry.Plugin))
							{
								Universal.Plugin = Universal.ActivePlugins[0];
                                _mainvmodel.SelectConversation(null);
							}
							AccountEnabledChanged?.Invoke(entry.Plugin, entry.User, entry.IsEnabled);
							dialog.Close();
						};
						dialog.BLAction = () =>
						{
							entry.IsEnabled = !entry.IsEnabled;
							dialog.Close();
						};
						dialog.ShowDialog();
						return;
					}

					entry.Plugin.Dispose();
					Universal.ActiveUsers.Remove(entry.Plugin);
					Universal.ActivePlugins.Remove(entry.Plugin);
				}
			}
			catch
			{
				entry.IsEnabled = !entry.IsEnabled;
				throw;
			}
            AccountEnabledChanged?.Invoke(entry.Plugin, entry.User, entry.IsEnabled);
		}

		public void RemoveAccount(AccountEntry entry)
		{
			if (entry == null)
				return;

			AccountRemoving?.Invoke(entry.Plugin, entry.User);
            Accounts.Remove(entry);
			if (entry.Plugin != null)
			{
				entry.Plugin.Dispose();
				Universal.ActiveUsers.Remove(entry.Plugin);
                Universal.ActivePlugins.Remove(entry.Plugin);
			}

			if (SelectedAccount == entry)
				SelectedAccount = null;
		}
	}

	public partial class AccountEntry : ObservableObject
	{
		public ICore Plugin { get; set; }
		public string PluginIdentifier { get; }
		public string PluginName { get; }
        public User User { get; }
        public SavedCredential Credential;

		private bool _isEnabled;
		public bool IsEnabled
		{
			get => _isEnabled;
			set => SetProperty(ref _isEnabled, value);
		}

		public string DisplayName => User.DisplayName;

		public AccountEntry(string pluginIdentifier, User user, bool isEnabled, SavedCredential credential)
		{
			PluginIdentifier = pluginIdentifier;
            PluginName = Universal.PluginList.FirstOrDefault(p => p.InternalName == pluginIdentifier)?.Name ?? pluginIdentifier;
            User = user;
			_isEnabled = isEnabled;
			Credential = credential;
		}
	}
}
