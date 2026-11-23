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
using Avalonia.Interactivity;
using Avalonia.Platform.Storage;
using Skymu.Enumerations;
using Skymu.Preferences;

namespace Skymu.Forms.OptionPages.General
{
    public partial class Skymu : UserControl
    {
        public Skymu()
        {
            InitializeComponent();
            LoadVisualSettings();
        }

        private void LoadVisualSettings()
        {
            StaticSidebarTabsRadio.IsChecked = !Settings.DynamicSidebarTabs;
            DynamicSidebarTabsRadio.IsChecked = Settings.DynamicSidebarTabs;
        }

#region Radio button stuff

        private void UseDefaultFontRenderingRadio_Checked(object sender, RoutedEventArgs e) =>
            Settings.UseClearType = false;
        private void UseClearTypeRadio_Checked(object sender, RoutedEventArgs e) =>
            Settings.UseClearType = true;

        private void StaticSidebarTabsRadio_Checked(object sender, RoutedEventArgs e) =>
            Settings.DynamicSidebarTabs = false;
        private void DynamicSidebarTabsRadio_Checked(object sender, RoutedEventArgs e) =>
            Settings.DynamicSidebarTabs = true;

        private void RadioSkype_Checked(object sender, RoutedEventArgs e)
        {
            Settings.WindowChrome = WindowChrome.SkypeAero;
            Settings.FallbackFillColors = false;
        }

        private void RadioClassic_Checked(object sender, RoutedEventArgs e)
        {
            Settings.WindowChrome = WindowChrome.Native;
            Settings.FallbackFillColors = true;
        }

        #endregion
    }
}