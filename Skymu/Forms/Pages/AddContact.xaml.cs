/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
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
using Yggdrasil.Classes;

namespace Skymu.Views.Pages
{
    public partial class AddContact : Page
    {
        const string TAG_STOP = "STOPSEARCH";

        CancellationTokenSource cts;
        Task findTask;
        public Metadata FoundData = new User("Sensei Wu", "thesenseiwu", "3926", "fopping around");
        IListManagement lmg;
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        public ObservableCollection<Metadata> FoundList { get; set; } =
            new ObservableCollection<Metadata>() { new User("Sean Kevin", "jsuisseankevin", "3621", "J'suis Sean Kevin") };
        WindowBase window;

        public AddContact()
        {
            InitializeComponent();
            UserListView.DataContext = this;
            UserListView.ItemsSource = FoundList;
            ShowWindow();
        }

        public async void ShowWindow()
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

            RefreshText(null, null);
            Universal.Lang.PropertyChanged += RefreshText;
            Universal.Lang.PropertyChanged += (o, e) => MoreThingsYouCanDoText.Text = MoreThingsYouCanDoText.Text.Replace("<b>", "").Replace("</b>", "");
            SelectContactHint.Text = SelectContactHint.Text.Replace("<b>", "").Replace("</b>", "");
            Universal.Lang.PropertyChanged += (o, e) => {
                SelectContactHint.Text = SelectContactHint.Text.Replace("<b>", "").Replace("</b>", "");
            };
            UserDetailsInput.TextChanged += OnTextInput;

            window.ShowDialog();
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

        async void FindFriend(object o, RoutedEventArgs e)
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
            IFindFriend(UserDetailsInput.Text);
        }

        async void IFindFriend(string query)
        {
            Metadata[] result = Array.Empty<Metadata>();
            findTask = Task.Run(async () => result = await lmg.FindNewContact(query), cts.Token);
            try
            {
                findTask.Wait();
            }
            catch (TaskCanceledException) { }
            catch (Exception ex)
            {
                StopSearch();
                ErrorField.Visibility = Visibility.Visible;
                Universal.PluginErrorHandler(Universal.Plugin, new PluginMessageEventArgs(ex.Message));
                findTask.Dispose();
                return;
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

        async void NextStep()
        {
            FoundData = UserListView.SelectedItem as Metadata;
            NextStepGrid.Visibility = Visibility.Visible;
            FirstStepGrid.Visibility = Visibility.Collapsed;
            window.ButtonLeftText = Universal.Lang["sZAPBUTTON_SEND"];
            window.ButtonEdgeLeftEnabled = true;
            window.ButtonEdgeLeftAction = () =>
            {
                NextStepGrid.Visibility = Visibility.Collapsed;
                FirstStepGrid.Visibility = Visibility.Visible;
                window.ButtonEdgeLeftEnabled = false;
                window.ButtonLeftAction = NextStep;
            };
            window.ButtonLeftAction = AddFriend;
            TopCaptionNS.Text = Universal.Lang["sAC_ADD_CONFIRM_CAPTION"].Replace("%s", FoundData.DisplayName);
            ParseBold(TopCaptionNS);
        }

        async void AddFriend()
        {
            bool suc = false;
            bool exed = false;
            try
            {
                suc = await lmg.AddContact(FoundData, ContactMessage.Text);
            }
            catch (OperationCanceledException ex) // TODO change
            {
                exed = true;
                Universal.PluginErrorHandler(Universal.Plugin, new PluginMessageEventArgs(ex.Message));
            }
            if (!suc)
            {
                if (!exed)
                    Universal.MessageBox("Something went wrong adding the contact");
                // TODO: Failed to add handling
                return;
            }
            NextStepGrid.Visibility = Visibility.Collapsed;
            LastStepGrid.Visibility = Visibility.Visible;
            window.ButtonEdgeLeftEnabled = false;
            window.ButtonLeft.Visibility = Visibility.Collapsed; // seanFinx Crazy Hack V2
        }

        void ParseBold(TextBlock block)
        {
            string input = block.Text;
            block.Text = "";

            int i = 0;
            while (i < input.Length)
            {
                int start = input.IndexOf("<b>", i);
                if (start == -1)
                {
                    block.Inlines.Add(new Run(input.Substring(i)));
                    break;
                }

                if (start > i)
                    block.Inlines.Add(new Run(input.Substring(i, start - i)));

                int end = input.IndexOf("</b>", start);
                if (end == -1)
                    break;

                string boldText = input.Substring(start + 3, end - (start + 3));
                block.Inlines.Add(new Bold(new Run(boldText)));

                i = end + 4;
            }
        }

        void RefreshText(object o, PropertyChangedEventArgs e)
        {
            ParseBold(FindContactDetails);
        }

        private void OnTextInput(object o, TextChangedEventArgs e)
        {
            UserFindBtn.IsEnabled = !String.IsNullOrEmpty(UserDetailsInput.Text);
        }
    }
}
