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

using Skymu.Classes;
using Skymu.ViewModels;
using System;
using System.Windows;
using Yggdrasil.Models;

namespace Skymu.Forms
{
	public partial class AccountManagerSimple : Window
	{
		bool isLoginOpen = false;
		MainViewModel vmodel;

		public AccountManagerSimple(MainViewModel mainvmodel)
		{
			InitializeComponent();
			vmodel = mainvmodel;
			DataContext = AccountManager.Accounts;
		}

        private async void ToggleButton_Click(object sender, RoutedEventArgs e)
        {
			if (((FrameworkElement)sender)?.DataContext is AccountEntry entry)
			{
				var res = await AccountManager.ToggleAccount(entry);
				if (res == false)
                {
					if (ReferenceEquals(Universal.Plugin, entry.Plugin))
					{
						Universal.Plugin = Universal.ActivePlugins[0];
						vmodel.SelectConversation(null);
					}

					_ = vmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, false);
				}	
				else if (res == true)
					_ = vmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, true);
				// null? do nothing
			}
        }

        private void ALButton_Click(object sender, RoutedEventArgs e)
        {
            if (((FrameworkElement)sender)?.DataContext is AccountEntry entry)
                AccountManager.ToggleAutoLogin(entry);
        }

		private void RemoveButton_Click(object sender, RoutedEventArgs e)
		{
			if (((FrameworkElement)sender)?.DataContext is AccountEntry entry)
			{
				AccountManager.RemoveAccount(entry);
				_ = vmodel.OnAccountEnabledChanged(entry.Plugin, entry.User, false);
			}
		}

		private void CloseButton_Click(object sender, RoutedEventArgs e)
			=> Close();

		private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            if (!isLoginOpen)
            {
                isLoginOpen = true;
				var lw = Universal.LoginDispenser(true, async (plugin) => {
					User pif;
					try
					{
						pif = await plugin.GetUserInfo();
                    }
					catch (Exception ex)
					{
						Universal.ExceptionHandler(ex);
						plugin.Dispose();
                        return;
                    }
					if (pif == null)
					{
						Universal.ShowMessage("The plugin did not return a valid user data.", null, WindowBase.IconType.Crash);
                        plugin.Dispose();
                        return;
                    }
					AccountManager.AccountEnabledInvoke(plugin, pif);
					_ = vmodel.OnAccountEnabledChanged(plugin, pif, true);
				});
                lw.Closed += (s, args) => isLoginOpen = false;
                lw.ShowDialog();
            }
        }
    }
}
