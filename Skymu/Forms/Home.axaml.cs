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
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Media.Imaging;
using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using Yggdrasil.Models;

namespace Skymu.Forms
{
    // Native recreation of the Skype Home page, which was formerly an incredibly messy, bloated COM-controlled ActiveX web applet from Skype
    public partial class Home : UserControl
    {
        private const int MaxTopContacts = 10;

        private readonly User _user;
        private readonly List<DirectMessage> _contacts;
        private readonly List<TopContactItem> _topContacts = new List<TopContactItem>();

        // EVENTS TO HOOK INTO TODO(omega): Hook into these in MainWindow base class

        /// <summary>Raised when the user presses Enter in the mood box. Argument is the new mood text.</summary>
        public event EventHandler<string> MoodSubmitted;

        /// <summary>Raised when a top contact is clicked, so the host can open that conversation.</summary>
        public event EventHandler<DirectMessage> ContactClicked;

        /// <summary>Raised when "View help videos" is clicked.</summary>
        public event EventHandler HelpVideosClicked;

        /// <summary>Raised when the gear button next to "Show top contacts" is clicked.</summary>
        public event EventHandler SettingsClicked;

        /// <summary>Avalonia previewer constructor.</summary>
        public Home() : this(null, null) { }

        public Home(User user, List<DirectMessage> contacts)
        {
            InitializeComponent();

            _user = user;
            _contacts = contacts ?? new List<DirectMessage>();

            // me
            MoodBox.Text = user?.Status ?? string.Empty;
            MyAvatar.Source = ToBitmap(user?.Avatar);

            // Top contacts. For now, we don't have any priority in Yggdrasil, so it's just most recent.
            foreach (DirectMessage dm in _contacts.Where(c => c?.Partner != null).Take(MaxTopContacts))
                _topContacts.Add(new TopContactItem(dm));
            TopContactsList.ItemsSource = _topContacts;

            Universal.Lang.PropertyChanged += RefreshText;
            RefreshText(null, null);
            UpdateContactsToggle();
        }

        #region Public API


        public void FireMoodUpdate(string username, string moodText, byte[] avatar)
        {
            if (_user != null && username == _user.Username)
            {
                if (moodText != null) MoodBox.Text = moodText;
                if (avatar != null) MyAvatar.Source = ToBitmap(avatar);
            }
            UpdateAvatar(username, avatar);
        }

        public void UpdateAvatar(string username, byte[] avatar)
        {
            if (avatar == null) return;
            if (_user != null && username == _user.Username)
                MyAvatar.Source = ToBitmap(avatar);

            foreach (TopContactItem item in _topContacts)
                if (item.Source.Partner.Username == username)
                    item.Avatar = ToBitmap(avatar);
        }

        #endregion
        #region UI handlers

        private void MoodBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key != Key.Enter) return;
            e.Handled = true;
            MoodSubmitted?.Invoke(this, MoodBox.Text ?? string.Empty);
        }

        private void Contact_Tapped(object sender, TappedEventArgs e)
        {
            if ((sender as Control)?.DataContext is TopContactItem item)
                ContactClicked?.Invoke(this, item.Source);
        }

        private void HelpVideosButton_Click(object sender, RoutedEventArgs e) =>
            HelpVideosClicked?.Invoke(this, EventArgs.Empty);

        private void SettingsButton_Click(object sender, RoutedEventArgs e) =>
            SettingsClicked?.Invoke(this, EventArgs.Empty);

        private void ToggleContactsButton_Click(object sender, RoutedEventArgs e)
        {
            TopContactsPanel.IsVisible = !TopContactsPanel.IsVisible;
            UpdateContactsToggle();
        }

        private void UpdateContactsToggle() =>
            ToggleContactsButton.Content = TopContactsPanel.IsVisible
                ? "Hide top contacts"
                : "Show top contacts";

        #endregion

        private void RefreshText(object sender, PropertyChangedEventArgs e) =>
            LearnHeader.Text = $"Learn how to use {Settings.BrandingName}";

        private static Bitmap ToBitmap(byte[] data)
        {
            if (data == null || data.Length == 0) return null;
            try
            {
                using (var ms = new MemoryStream(data))
                    return new Bitmap(ms);
            }
            catch
            {
                return null;
            }
        }
    }

    public class TopContactItem : INotifyPropertyChanged
    {
        private Bitmap _avatar;

        public DirectMessage Source { get; }

        public string Name =>
            !string.IsNullOrEmpty(Source.Partner.DisplayName)
                ? Source.Partner.DisplayName
                : Source.Partner.Username;

        public Bitmap Avatar
        {
            get => _avatar;
            set
            {
                _avatar = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(Avatar)));
            }
        }

        public TopContactItem(DirectMessage dm)
        {
            Source = dm;
            Avatar = ToBitmap(dm.Partner.Avatar);
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private static Bitmap ToBitmap(byte[] data)
        {
            if (data == null || data.Length == 0) return null;
            try
            {
                using (var ms = new MemoryStream(data))
                    return new Bitmap(ms);
            }
            catch
            {
                return null;
            }
        }
    }
}
