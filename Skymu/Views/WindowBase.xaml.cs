/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Windows;
using System.Windows.Controls;

namespace Skymu.Views
{
    public partial class WindowBase : Window
    {
        private Action BLAction;
        private Action BRAction;

        public enum IconType
        {
            Skype,
            Error,
            Information,
            Question,
            Picture,
            ContactAdd,
            ContactSearch,
            ContactBlocked,
            Chat,
            NewChat,
            Video,
            VideoWarning,
            SkypeWifi,
            SkypeWifiWarning,
            GroupChat,
            PackageCheckmark,
            PackageStar,
            PackageWarning,
            MultipleContactCall,
            ContactRequest,
            ContactFlat,
            UploadFile,
            SkypeOut,
            PayPal,
            SkypeCredit,
            eBay,
            Facebook,
            MultipleContactVideoCall,
            TelephoneFlat,
        }

        public WindowBase(Page page)
        {
            InitializeComponent();
            PageHost.Navigate(page);
        }

        public string HeaderText
        {
            get => Header.Text;
            set => Header.Text = value;
        }

        public IconType HeaderIcon
        {
            get => (IconType)HeaderImage.DefaultIndex;
            set => HeaderImage.DefaultIndex = (int)value;
        }

        public string ButtonLeftText
        {
            get => ButtonLeft.Content.ToString();
            set => ButtonLeft.Content = value;
        }

        public string ButtonRightText
        {
            get => ButtonRight.Content.ToString();
            set => ButtonRight.Content = value;
        }

        public Action ButtonLeftAction
        {
            get => BLAction;
            set => BLAction = value;
        }

        public Action ButtonRightAction
        {
            get => BRAction;
            set => BRAction = value;
        }

        private void bLClick(object sender, RoutedEventArgs e)
        {
            BLAction.Invoke();
        }

        private void bRClick(object sender, RoutedEventArgs e)
        {
            BRAction.Invoke();
        }

        protected override void OnContentRendered(EventArgs e)
        {
            base.OnContentRendered(e);
            Left =
                (SystemParameters.WorkArea.Width - ActualWidth) / 2
                + SystemParameters.WorkArea.Left;
            Top =
                (SystemParameters.WorkArea.Height - ActualHeight) / 2
                + SystemParameters.WorkArea.Top;
        }
    }
}
