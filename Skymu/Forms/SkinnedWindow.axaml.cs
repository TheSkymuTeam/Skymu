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
using Avalonia;
using Avalonia.Controls;
using Avalonia.Media;
using Avalonia.Interactivity;
using Skymu.Controls;

namespace Skymu.Forms
{
    public partial class SkinnedWindow : Window
    {
        private Action BELAction;
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
            GroupCall,
            ContactRequest,
            ContactFlat,
            UploadFile,
            SkypeOut,
            PayPal,
            SkypeCredit,
            eBay,
            Facebook,
            GroupVideoCall,
            TelephoneFlat,
            Crash,
            Niko,
            NikoHappy,
            NikoSad,
            KentuckyFriedBadge,
            KentuckyFriedSkymu,
            KentuckyFriedCrosstalk
        }

        public SkinnedWindow(Control page)
        {
            InitializeComponent();
            if (Universal.Theme == "Skype7" || Universal.Theme == "Skype6")
            {
                Application.Current.TryGetResource("Metro.Strip.Background", ActualThemeVariant, out var stripBackground);
                GradientTop.Background = (IBrush)stripBackground;
                GradientBottom.Background = (IBrush)stripBackground;
            }
            PageHost.Content = page;
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

        public string ButtonEdgeLeftText
        {
            get => ButtonEdgeLeft.Content.ToString();
            set => ButtonEdgeLeft.Content = value;
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

        public Action ButtonEdgeLeftAction
        {
            get => BELAction;
            set => BELAction = value;
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

        public bool ButtonEdgeLeftEnabled
        {
            get => ButtonEdgeLeft.IsVisible ? true : false;
            set => ButtonEdgeLeft.IsVisible = value;
        }

        public bool ButtonMiddleEnabled
        {
            get => ButtonMiddle.IsVisible ? true : false;
            set => ButtonMiddle.IsVisible = value;
        }

        public Action ButtonRightAction
        {
            get => BRAction;
            set => BRAction = value;
        }

        private void bELClick(object sender, RoutedEventArgs e)
        {
            e.Handled = true;
            BELAction?.Invoke();
        }

        private void bLClick(object sender, RoutedEventArgs e)
        {
            e.Handled = true;
            BLAction?.Invoke();
        }

        private void bMClick(object sender, RoutedEventArgs e)
        {
            e.Handled = true;
            BMAction?.Invoke();
        }

        private void bRClick(object sender, RoutedEventArgs e)
        {
            e.Handled = true;
            BRAction?.Invoke();
        }

        protected override void OnOpened(EventArgs e)
        {
            base.OnOpened(e);
            var screen = Screens.ScreenFromWindow(this);
            if (screen == null)
                return;
            var workArea = screen.WorkingArea;
            Position = new PixelPoint(
                (int)((workArea.Width - Bounds.Width * screen.Scaling) / 2 + workArea.X),
                (int)((workArea.Height - Bounds.Height * screen.Scaling) / 2 + workArea.Y)
            );
        }

    }

}
