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
using Avalonia.Media.Imaging;
using Avalonia.Platform;
using Skymu.Captcha;
using Skymu.Forms;
using Skymu.Forms.Pages;
using Skymu.Helpers;
using System;
using System.Collections.Generic;
using Yggdrasil.Enumerations;

namespace Skymu.Controls
{
    public partial class MainMenuBar : UserControl
    {
        #region Properties and events

        public enum Action { Home, Contacts, Servers, Recents, Call, AddContact }
        public event EventHandler<Action> ActionRequested;
        private void Raise(Action action) => ActionRequested?.Invoke(this, action);

        private readonly NativeMenu? _menu;
        private NativeMenuItem? ExtrasMenu;
        private NativeMenuItem? GetExtrasMenuItem;

        // CommandParameter marker -> frame index in the 22-frame status sprite sheet
        private static readonly Dictionary<string, int> StatusIconFrames = new()
        {
            ["Online"] = 2,
            ["Away"] = 3,
            ["DoNotDisturb"] = 5,
            ["Invisible"] = 14,
            ["Offline"] = 14,
            ["StatusOptions"] = 12,
        };

        #endregion

        public MainMenuBar()
        {
            InitializeComponent();
            _menu = Resources["HostMenu"] as NativeMenu;

            if (_menu != null)
            {
                foreach (var item in Walk(_menu))
                {
                    switch (item.CommandParameter as string)
                    {
                        case "ExtrasMenu": ExtrasMenu = item; break;
                        case "GetExtras": GetExtrasMenuItem = item; break;
                    }
                }
                ApplyStatusIcons(_menu);
            }
        }

        #region Hosting

        protected override void OnAttachedToVisualTree(VisualTreeAttachmentEventArgs e)
        {
            base.OnAttachedToVisualTree(e);
            if (TopLevel.GetTopLevel(this) is { } tl && _menu != null)
                NativeMenu.SetMenu(tl, _menu);
        }

        protected override void OnDetachedFromVisualTree(VisualTreeAttachmentEventArgs e)
        {
            if (TopLevel.GetTopLevel(this) is { } tl && ReferenceEquals(NativeMenu.GetMenu(tl), _menu))
                NativeMenu.SetMenu(tl, null);
            base.OnDetachedFromVisualTree(e);
        }

        private static IEnumerable<NativeMenuItem> Walk(NativeMenu menu)
        {
            foreach (var i in menu.Items)
            {
                if (i is not NativeMenuItem ni) continue;
                yield return ni;
                if (ni.Menu != null)
                    foreach (var child in Walk(ni.Menu))
                        yield return child;
            }
        }

        #endregion

        #region Icons

        private static void ApplyStatusIcons(NativeMenu menu)
        {
            try
            {
                using var sheet = ImageHelper.Load("Universal/Icon/skype-status-small.png");

                int frames = 22;
                int w = sheet.PixelSize.Width / frames;
                int h = sheet.PixelSize.Height;

                foreach (var item in Walk(menu))
                {
                    if (item.CommandParameter is string key && StatusIconFrames.TryGetValue(key, out int frame))
                    {
                        var rtb = new RenderTargetBitmap(new PixelSize(w, h), new Vector(96, 96));
                        using (var ctx = rtb.CreateDrawingContext())
                            ctx.DrawImage(sheet, new Rect(frame * w, 0, w, h), new Rect(0, 0, w, h));
                        item.Icon = rtb;
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("[MainMenuBar] Status icons failed: " + ex.Message);
            }
        }

        #endregion

        #region Event handlers

        private async void OnStatus(object? sender, EventArgs e)
        {
            if (sender is NativeMenuItem mi && mi.CommandParameter is string tag
                && Enum.TryParse(tag, out PresenceStatus status))
                await Universal.Plugin.SetConnectionStatus(status);
        }

        private void OnAccountManager(object? sender, EventArgs e) => Forms.Pages.AccountManager.Open();
        private void OnSignOut(object? sender, EventArgs e) => Universal.ActiveViewModel.InitiateSignOut(true);
        private void OnSwitchUser(object? sender, EventArgs e) => Universal.ActiveViewModel.InitiateSignOut(false);
        private void OnClose(object? sender, EventArgs e) => Universal.Close();
        private async void OnAbout(object? sender, EventArgs e) 
        {
            //new About().Show();
            string token = await hCaptcha.SolveAsync("10000000-ffff-ffff-ffff-000000000001", host: "localhost");
            Universal.ShowMessage("Token: " + token);
        }
        private void OnPrivacyPolicy(object? sender, EventArgs e) => Universal.OpenURL(Universal.SKYMU_WEBSITE_PRIVACY);
        private void OnOptions(object? sender, EventArgs e) => new Options().Show();
        private void OnCheckUpdates(object? sender, EventArgs e) => new Updater(true);
        private void OnHome(object? sender, EventArgs e) => Raise(Action.Home);
        private void OnContacts(object? sender, EventArgs e) => Raise(Action.Contacts);
        private void OnServers(object? sender, EventArgs e) => Raise(Action.Servers);
        private void OnRecent(object? sender, EventArgs e) => Raise(Action.Recents);
        private void OnCall(object? sender, EventArgs e) => Raise(Action.Call);
        private void OnAddContact(object? sender, EventArgs e) => Raise(Action.AddContact);

        #endregion

        #region Extras

        public void DisableExtras()
        {
            if (ExtrasMenu?.Menu == null || GetExtrasMenuItem == null) return;
            ExtrasMenu.Menu.Items.Clear();
            ExtrasMenu.Menu.Items.Add(GetExtrasMenuItem);
        }

        public void RedoExtras((string, EventHandler)[] items)
        {
            if (ExtrasMenu?.Menu == null || GetExtrasMenuItem == null) return;
            ExtrasMenu.Menu.Items.Clear();
            foreach (var (title, handler) in items)
            {
                var mi = new NativeMenuItem { Header = title };
                if (handler != null) mi.Click += handler;
                ExtrasMenu.Menu.Items.Add(mi);
            }
            ExtrasMenu.Menu.Items.Add(new NativeMenuItemSeparator());
            ExtrasMenu.Menu.Items.Add(GetExtrasMenuItem);
        }

        #endregion
    }
}
