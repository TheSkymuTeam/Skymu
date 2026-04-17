/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using static Skymu.Views.Pages.Updater;

namespace Skymu.Views.Pages
{
    public partial class AddContact : Page
    {
        WindowBase window;

        public AddContact()
        {
            InitializeComponent();
            ShowWindow();
        }

        public async void ShowWindow()
        {
            window = new WindowBase(this);
            window.MinWidth = 653;
            window.MinHeight = 515;
            window.Width = window.MinWidth;
            window.Height = 549; // Yup, MinHeight is smaller somehow.
            window.ResizeMode = ResizeMode.CanResize;
            window.SizeToContent = SizeToContent.Manual;
            window.Title = Settings.BrandingName + "™ - " + Universal.Lang["sADDADDAFRIEND_SCR1_CAPTION"];
            window.HeaderIcon = WindowBase.IconType.ContactAdd;
            window.HeaderText = Universal.Lang["sADDADDAFRIEND_SCR1_HEADER"];
            window.ButtonLeftText = Universal.Lang["sZAPBUTTON_ADDCONTACT"];
            window.ButtonRightText = Universal.Lang["sZAPBUTTON_CLOSE"];
            window.ButtonLeft.MinWidth = 100;
            window.ButtonRight.MinWidth = 98;
            window.ButtonLeft.IsEnabled = false;
            window.ButtonLeftAction = AddFriend;
            window.ButtonRightAction = () => window.Close();

            RefreshText(null, null);
            Universal.Lang.PropertyChanged += RefreshText;
            UserDetailsInput.TextChanged += OnTextInput;

            window.Closed += Dispose;

            window.ShowDialog();
        }

        void Dispose(object o, EventArgs e)
        {
            Universal.Lang.PropertyChanged -= RefreshText;
        }

        void FindFriend(object o, RoutedEventArgs e)
        {
            Debug.WriteLine($"FF {UserDetailsInput.Text}");
            // TODO: Gray color text accuracy
            UserDetailsInput.IsReadOnly = true;
            UserFindBtn.Content = Universal.Lang["sF_ADDFRIEND_STOP_BTN"];
            BottomField.Visibility = Visibility.Collapsed;
            FindPBar.Visibility = Visibility.Visible;
            FindPBar.IsIndeterminate = true;
        }

        void AddFriend()
        {
            Debug.WriteLine($"AF {UserDetailsInput.Text}");
        }

        void RefreshText(object o, EventArgs e)
        {
            string input = FindContactDetails.Text;
            FindContactDetails.Text = "";

            int i = 0;
            while (i < input.Length)
            {
                int start = input.IndexOf("<b>", i);
                if (start == -1)
                {
                    FindContactDetails.Inlines.Add(new Run(input.Substring(i)));
                    break;
                }

                if (start > i)
                    FindContactDetails.Inlines.Add(new Run(input.Substring(i, start - i)));

                int end = input.IndexOf("</b>", start);
                if (end == -1)
                    break;

                string boldText = input.Substring(start + 3, end - (start + 3));
                FindContactDetails.Inlines.Add(new Bold(new Run(boldText)));

                i = end + 4;
            }

            MoreThingsYouCanDoText.Text = MoreThingsYouCanDoText.Text.Replace("<b>", "").Replace("</b>", "");
        }

        private void OnTextInput(object o, TextChangedEventArgs e)
        {
            UserFindBtn.IsEnabled = !String.IsNullOrEmpty(UserDetailsInput.Text);
        }
    }
}
