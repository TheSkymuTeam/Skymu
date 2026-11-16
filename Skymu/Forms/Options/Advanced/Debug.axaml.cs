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
using System.IO;
using Avalonia;
using Avalonia.Controls;
using System.Windows.Navigation;
using Avalonia.Interactivity;

namespace Skymu.Forms.OptionPages.Advanced
{
    public partial class Debug : UserControl
    {
        public Debug()
        {
            InitializeComponent();
        }

        private void OPEN_PR_URL(object sender, RoutedEventArgs e) => Universal.OpenURL(Universal.GITHUB_PULLS_URL);

        private void PluginPathBrowseClick(object sender, RoutedEventArgs e)
        {
            var openFileDialog = new System.Windows.Forms.FolderBrowserDialog()
            {
                Description = "Select the plugin folder",
                SelectedPath = Path.GetDirectoryName(Path.GetFullPath(Environment.GetCommandLineArgs()[0]))
            };

            if (openFileDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                Settings.CustomPluginPath = openFileDialog.SelectedPath;
                PluginPathBox.GetBindingExpression(TextBox.TextProperty)
                    ?.UpdateTarget();
            }

            openFileDialog.Dispose();
        }
    }
}