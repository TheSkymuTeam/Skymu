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

using Skymu.Preferences;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.Documents;
using Avalonia.Interactivity;
using Yggdrasil;
using Yggdrasil.Models;

namespace Skymu.Forms.Pages
{
    public partial class AddContact : UserControl
    {
        const string TAG_STOP = "STOPSEARCH";

        CancellationTokenSource cts;
        Task findTask;
        public Metadata FoundData { get; private set; } = new User("Saul Goodman", "sgoodman", "3926", "BETTER CALL SAUL");
        public User FoundUser { get; private set; } = new User("Saul Goodman", "sgoodman", "3926", "BETTER CALL SAUL");
        IListManagement lmg;
        // event PropertyChangedEventHandler PropertyChanged; // seems to be unused?
        public ObservableCollection<Metadata> FoundList { get; private set; } =
            new ObservableCollection<Metadata>() { new User("Walter White", "w.white", "3621", "Cooking") };
        SkinnedWindow window;

        public AddContact()
        {
            InitializeComponent();
            UserListView.ItemsSource = FoundList;
        }

        public void Close() => window.Close();

        public void ShowWindow()
        {
            lmg = Universal.Plugin as IListManagement;
            window = new SkinnedWindow(this)
            {
                MinWidth = 653,
                MinHeight = 515,
                Width = 653,
                Height = 549, // Yup, MinHeight is smaller somehow.
                CanResize = true,
                SizeToContent = SizeToContent.Manual,
                Title = Settings.BrandingName + "™ - " + Universal.Lang["sADDADDAFRIEND_SCR1_CAPTION"],
                HeaderIcon = SkinnedWindow.IconType.ContactAdd,
                HeaderText = Universal.Lang["sADDADDAFRIEND_SCR1_HEADER"],
                ButtonLeftText = Universal.Lang["sZAPBUTTON_ADDCONTACT"],
                ButtonRightText = Universal.Lang["sZAPBUTTON_CLOSE"],
                ButtonEdgeLeftText = Universal.Lang["sZAPBUTTON_BACK"],
                ButtonLeftAction = NextStep,
                ButtonRightAction = () => window.Close()
            };
            // omfg can you stop caring this bad
            window.ButtonLeft.MinWidth = 100;
            window.ButtonEdgeLeft.MinWidth = 98;
            window.ButtonRight.MinWidth = 98;
            window.ButtonLeft.IsEnabled = false;
            UserDetailsInput.Text = "";

            UserDetailsInput.TextChanged += OnTextInput;

            window.Show();
        }

        void StopSearch()
        {
            UserDetailsInput.IsReadOnly = false;
            UserFindBtn.Content = Universal.Lang["sF_ADDFRIEND_FIND_BTN"];
            UserFindBtn.Tag = null;
            BottomField.IsVisible = true;
            FindPBar.IsVisible = false;
            FindPBar.IsIndeterminate = false;
        }

        void FindFriend(object o, RoutedEventArgs e)
        {
            ErrorField.IsVisible = false;
            if ((string)UserFindBtn.Tag == TAG_STOP)
            {
                cts.Cancel();
                StopSearch();
                return;
            }
            // TODO: Gray color text accuracy
            UserDetailsInput.IsReadOnly = true;
            UserFindBtn.Content = Universal.Lang["sF_ADDFRIEND_STOP_BTN"];
            UserFindBtn.Tag = TAG_STOP;
            BottomField.IsVisible = false;
            UserListView.IsVisible = false;
            FindPBar.IsVisible = true;
            FindPBar.IsIndeterminate = true;
            window.ButtonLeft.IsEnabled = false;
            cts = new CancellationTokenSource();
            _ = IFindFriend(UserDetailsInput.Text);
        }

        async Task IFindFriend(string query)
        {
            SelectContactHint.IsVisible = false;
            Metadata[] result = Array.Empty<Metadata>();
            findTask = Task.Run(async () => result = await lmg.FindNewContact(query), cts.Token);
            try
            {
                await findTask;
            }
            catch (TaskCanceledException) { }
            catch (Exception)
            {
                StopSearch();
                ErrorField.IsVisible = true;
                findTask.Dispose();
                throw;
            }
            Debug.WriteLine(result.Length);
            findTask.Dispose();
            StopSearch();
            if (result.Length == 0)
            {
                ErrorField.IsVisible = true;
                ErrorText.Text = Universal.Lang["sF_ADDFRIEND_LABEL4"].Replace("%s", query);
                return;
            }
            FoundList.Clear();
            foreach (var item in result)
                FoundList.Add(item);
            SelectContactHint.IsVisible = true;
            UserListView.IsVisible = true;
        }

        private void UserListView_Selected(object sender, SelectionChangedEventArgs e) => window.ButtonLeft.IsEnabled = e.AddedItems.Count >= 1;

        void NextStep()
        {
            FoundData = UserListView.SelectedItem as Metadata;
            if (FoundData is User fu)
                FoundUser = fu;
            MainTabControl.SelectedIndex = 1;
            window.ButtonLeftText = Universal.Lang["sZAPBUTTON_SEND"];
            window.ButtonEdgeLeftEnabled = true;
            window.ButtonEdgeLeftAction = () =>
            {
                MainTabControl.SelectedIndex = 0;
                window.ButtonEdgeLeftEnabled = false;
                window.ButtonLeftAction = NextStep;
            };
            window.ButtonLeftAction = AddFriend;
        }

        void AddFriend()
        {
            _ = IAddFriend();
        }
 
        async Task IAddFriend()
        {
            bool suc = false;
            bool exed = false;
            try
            {
                suc = await lmg.AddContact(FoundData, ContactMessage.Text);
            }
            catch (Exception) // TODO change
            {
                exed = true;
                throw;
            }
            if (!suc)
            {
                if (exed)
                    // TODO: "Something went wrong" text. I need references...
                // TODO: Failed to add handling. Refernce please...
                return;
            }
            MainTabControl.SelectedIndex = 2;
            window.ButtonEdgeLeftEnabled = false;
            window.ButtonLeft.IsVisible = false; // seanFinx Crazy Hack V2
        }

        private void OnTextInput(object o, TextChangedEventArgs e)
        {
            UserFindBtn.IsEnabled = !String.IsNullOrEmpty(UserDetailsInput.Text);
        }
    }
}
