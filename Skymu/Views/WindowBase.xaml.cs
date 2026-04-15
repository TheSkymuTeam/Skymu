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
using System.Windows;
using System.Windows.Controls;

namespace Skymu.Views
{
    public partial class WindowBase : Window
    {
        private Action BLAction;
        private Action BMAction;
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
            Crash,
            Niko,
            NikoHappy,
            NikoSad,
            KentuckyFriedBadge,
            KentuckyFriedSkymu,
            kentuckyFriedCrosstalk
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
            get => Settings.NikoIcons ? IconType.Niko : (IconType)HeaderImage.DefaultIndex;
            set => HeaderImage.DefaultIndex = Settings.NikoIcons ? (int)IconType.Niko : (int)value;
        }

        public string ButtonLeftText
        {
            get => ButtonLeft.Content.ToString();
            set => ButtonLeft.Content = value;
        }

        public string ButtonMiddleText
        {
            get => ButtonMiddle.Content.ToString();
            set => ButtonMiddle.Content = value;
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

        public Action ButtonMiddleAction
        {
            get => BMAction;
            set => BMAction = value;
        }

        public bool ButtonMiddleEnabled
        {
            get => ButtonMiddle.Visibility == Visibility.Visible ? true : false;
            set => ButtonMiddle.Visibility = value ? Visibility.Visible : Visibility.Collapsed;
        }

        public Action ButtonRightAction
        {
            get => BRAction;
            set => BRAction = value;
        }

        private void bLClick(object sender, RoutedEventArgs e) { BLAction.Invoke(); }
        private void bMClick(object sender, RoutedEventArgs e) { BMAction.Invoke(); }
        private void bRClick(object sender, RoutedEventArgs e) { BRAction.Invoke(); }

        protected override void OnContentRendered(EventArgs e)
        {
            base.OnContentRendered(e);
            Left = (SystemParameters.WorkArea.Width - ActualWidth) / 2 + SystemParameters.WorkArea.Left;
            Top = (SystemParameters.WorkArea.Height - ActualHeight) / 2 + SystemParameters.WorkArea.Top;
        }

    }

}
