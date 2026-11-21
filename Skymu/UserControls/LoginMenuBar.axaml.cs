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
using Skymu.Forms;
using Skymu.Forms.Pages;
using System;

namespace Skymu.Controls
{
    public partial class LoginMenuBar : UserControl
    {
        private NativeMenu? _menu;

        public LoginMenuBar()
        {
            InitializeComponent();
            _menu = Resources["HostMenu"] as NativeMenu;
        }

        // Hand the menu to the hosting window; only the window-level menu is exported to the macOS menu bar.
        // Parent's OnAttachedToVisualTree runs before the child NativeMenuBar's, so the bar sees the menu.
        protected override void OnAttachedToVisualTree(Avalonia.VisualTreeAttachmentEventArgs e)
        {
            base.OnAttachedToVisualTree(e);
            if (TopLevel.GetTopLevel(this) is { } tl && _menu != null)
                NativeMenu.SetMenu(tl, _menu);
        }

        protected override void OnDetachedFromVisualTree(Avalonia.VisualTreeAttachmentEventArgs e)
        {
            if (TopLevel.GetTopLevel(this) is { } tl && ReferenceEquals(NativeMenu.GetMenu(tl), _menu))
                NativeMenu.SetMenu(tl, null);
            base.OnDetachedFromVisualTree(e);
        }

        private void OnAccountManager(object? sender, EventArgs e) => Forms.Pages.AccountManager.Open();
        private void OnClose(object? sender, EventArgs e) => Universal.Close();
        private void OnOptions(object? sender, EventArgs e) => new Options().Show();
        private void OnCheckUpdates(object? sender, EventArgs e) => new Updater(true);
        private void OnAbout(object? sender, EventArgs e) => new About().Show();
        private void OnPrivacyPolicy(object? sender, EventArgs e) => Universal.OpenURL(Universal.SKYMU_WEBSITE_PRIVACY);
    }
}
