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

namespace Skymu.Controls
{
    public partial class LoginMenuBar : UserControl
    {
        public LoginMenuBar()
        {
            InitializeComponent();
        }

        private void OnAccountManager(object sender, RoutedEventArgs e) => Forms.Pages.AccountManager.Open();
        private void OnClose(object sender, RoutedEventArgs e) => Universal.Close();
        private void OnOptions(object sender, RoutedEventArgs e) => new Options().Show();
        private void OnCheckUpdates(object sender, RoutedEventArgs e) => new Updater(true);
        private void OnAbout(object sender, RoutedEventArgs e) => new About().Show();
        private void OnPrivacyPolicy(object sender, RoutedEventArgs e) => Universal.OpenURL(Universal.SKYMU_WEBSITE_PRIVACY);
    }
}
