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

using Skymu.ViewModels;
using System;
using System.Collections.ObjectModel;
using System.Windows;
using Yggdrasil;
using Yggdrasil.Models;

namespace Skymu.Forms
{
	public partial class AccountManagerSimple : Window
	{
		readonly MainViewModel mainvmodel;
		AccountManagerViewModel vmodel { get; }

		public AccountManagerSimple(MainViewModel mainvmodel)
		{
			InitializeComponent();

            this.mainvmodel = mainvmodel;
            vmodel = new AccountManagerViewModel(mainvmodel);
			DataContext = vmodel;

            vmodel.AccountEnabledChanged += HandleAccountEnabledChanged;
            vmodel.AccountRemoving += HandleAccountRemoving;
		}

		private void HandleAccountEnabledChanged(ICore plugin, User user, bool enabled)
		{
            _ = mainvmodel.OnAccountEnabledChanged(plugin, user, enabled);
        }

        private void HandleAccountRemoving(ICore plugin, User user)
		{
            // public void OnAccountRemoved(ICore plugin, User user)
            //mainvmodel.OnAccountRemoved(plugin, user);
        }

        protected override void OnClosed(EventArgs e)
		{
			vmodel.AccountEnabledChanged -= HandleAccountEnabledChanged;
            vmodel.AccountRemoving -= HandleAccountRemoving;
			base.OnClosed(e);
		}

		private void ToggleButton_Click(object sender, RoutedEventArgs e)
		{
			if (sender is FrameworkElement fe && fe.DataContext is AccountEntry entry)
                vmodel.ToggleAccount(entry);
		}

		private void RemoveButton_Click(object sender, RoutedEventArgs e)
		{
			if (sender is FrameworkElement fe && fe.DataContext is AccountEntry entry)
                vmodel.RemoveAccount(entry);
		}

		private void CloseButton_Click(object sender, RoutedEventArgs e)
		{
			Close();
		}
	}
}
