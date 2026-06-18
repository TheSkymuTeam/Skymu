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

using Skymu.Enumerations;
using Skymu.Preferences;
using System.Windows;
using System.Windows.Controls;
using Yggdrasil.Networking;

namespace Skymu.Forms.OptionPages.General
{
    public partial class Skymu : Page
    {
        public Skymu()
        {
            InitializeComponent();
            LoadVisualSettings();
#if DEBUG
CredDebugSepCB.Visibility = Visibility.Visible;
#endif
        }

        private void LoadVisualSettings()
        {
            // radio button logic (moving to code behind instead of XAML/converters to iron out bugs)
            UseEmbeddedCert.IsChecked = Settings.CertificateStore == CertStore.Embedded;
            UseSystemCert.IsChecked = Settings.CertificateStore == CertStore.System;
            UseCustomCert.IsChecked = Settings.CertificateStore == CertStore.Custom;

            UseDefaultFontRenderingRadio.IsChecked = !Settings.UseClearType;
            UseClearTypeRadio.IsChecked = Settings.UseClearType;

            StaticSidebarTabsRadio.IsChecked = !Settings.DynamicSidebarTabs;
            DynamicSidebarTabsRadio.IsChecked = Settings.DynamicSidebarTabs;
        }

#region Radio button stuff

        private void UseEmbeddedCert_Checked(object sender, RoutedEventArgs e) =>
            Settings.CertificateStore = CertStore.Embedded;
        private void UseSystemCert_Checked(object sender, RoutedEventArgs e) =>
            Settings.CertificateStore = CertStore.System;
        private void UseCustomCert_Checked(object sender, RoutedEventArgs e) =>
            Settings.CertificateStore = CertStore.Custom;

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
            Settings.WindowFrame = WindowFrame.SkypeAero;
            Settings.FallbackFillColors = false;
        }

        private void RadioClassic_Checked(object sender, RoutedEventArgs e)
        {
            Settings.WindowFrame = WindowFrame.Native;
            Settings.FallbackFillColors = true;
        }

#endregion

        private void CertBrowseButtonClick(object sender, RoutedEventArgs e)
        {
            var openFileDialog = new Microsoft.Win32.OpenFileDialog
            {
                Filter = "PEM certificates (*.pem)|*.pem|All files (*.*)|*.*",
                Title = "Select cacert.pem"
            };

            if (openFileDialog.ShowDialog() == true)
            {
                Settings.CertPath = openFileDialog.FileName;
                var expression = SC_CertPathBox.GetBindingExpression(System.Windows.Controls.TextBox.TextProperty);
                expression?.UpdateTarget();
            }
        }
    }
}