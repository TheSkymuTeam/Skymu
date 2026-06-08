/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using Yggdrasil;
using Yggdrasil.Models;

namespace Skymu.Forms.Pages
{
    public partial class AddContact : Page
    {
        const string TAG_STOP = "STOPSEARCH";

        CancellationTokenSource cts;
        Task findTask;
        public Metadata FoundData { get; private set; } = new User("Sensei Wu", "thesenseiwu", "3926", "fopping around");
        public User FoundUser { get; private set; } = new User("Sensei Wu", "thesenseiwu", "3926", "fopping around");
        IListManagement lmg;
        event PropertyChangedEventHandler PropertyChanged;
        public ObservableCollection<Metadata> FoundList { get; private set; } =
            new ObservableCollection<Metadata>() { new User("Sean Kevin", "jsuisseankevin", "3621", "J'suis Sean Kevin") };
        WindowBase window;

        public AddContact()
        {
            InitializeComponent();
            UserListView.ItemsSource = FoundList;
            ShowWindow();
        }

        public void Close() => window.Close();

        public void ShowWindow()
        {
            lmg = Universal.Plugin as IListManagement;
            window = new WindowBase(this)
            {
                MinWidth = 653,
                MinHeight = 515,
                Width = 653,
                Height = 549, // Yup, MinHeight is smaller somehow.
                ResizeMode = ResizeMode.CanResize,
                SizeToContent = SizeToContent.Manual,
                Title = Settings.BrandingName + "™ - " + Universal.Lang["sADDADDAFRIEND_SCR1_CAPTION"],
                HeaderIcon = WindowBase.IconType.ContactAdd,
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
            BottomField.Visibility = Visibility.Visible;
            FindPBar.Visibility = Visibility.Collapsed;
            FindPBar.IsIndeterminate = false;
        }

        void FindFriend(object o, RoutedEventArgs e)
        {
            ErrorField.Visibility = Visibility.Collapsed;
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
            BottomField.Visibility = Visibility.Collapsed;
            UserListView.Visibility = Visibility.Collapsed;
            FindPBar.Visibility = Visibility.Visible;
            FindPBar.IsIndeterminate = true;
            window.ButtonLeft.IsEnabled = false;
            cts = new CancellationTokenSource();
            _ = IFindFriend(UserDetailsInput.Text);
        }

        async Task IFindFriend(string query)
        {
            SelectContactHint.Visibility = Visibility.Collapsed;
            Metadata[] result = Array.Empty<Metadata>();
            findTask = Task.Run(async () => result = await lmg.FindNewContact(query), cts.Token);
            try
            {
                await findTask;
            }
            catch (TaskCanceledException) { }
            catch (Exception ex)
            {
                StopSearch();
                ErrorField.Visibility = Visibility.Visible;
                findTask.Dispose();
                throw ex;
            }
            Debug.WriteLine(result.Length);
            findTask.Dispose();
            StopSearch();
            if (result.Length == 0)
            {
                ErrorField.Visibility = Visibility.Visible;
                ErrorText.Text = Universal.Lang["sF_ADDFRIEND_LABEL4"].Replace("%s", query);
                return;
            }
            FoundList.Clear();
            foreach (var item in result)
                FoundList.Add(item);
            SelectContactHint.Visibility = Visibility.Visible;
            UserListView.Visibility = Visibility.Visible;
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
            catch (Exception ex) // TODO change
            {
                exed = true;
                throw ex;
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
            window.ButtonLeft.Visibility = Visibility.Collapsed; // seanFinx Crazy Hack V2
        }

        private void OnTextInput(object o, TextChangedEventArgs e)
        {
            UserFindBtn.IsEnabled = !String.IsNullOrEmpty(UserDetailsInput.Text);
        }
    }
}
