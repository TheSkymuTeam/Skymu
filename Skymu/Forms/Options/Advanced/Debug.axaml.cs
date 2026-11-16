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

using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Platform.Storage;
using Skymu.Preferences;
using System;
using System.IO;

namespace Skymu.Forms.OptionPages.Advanced
{
    public partial class Debug : UserControl
    {
        public Debug()
        {
            InitializeComponent();
        }

        private void OPEN_PR_URL(object sender, RoutedEventArgs e) => Universal.OpenURL(Universal.GITHUB_PULLS_URL);

        private async void PluginPathBrowseClick(object sender, RoutedEventArgs e)
        {
            var startPath = Path.GetDirectoryName(
                Path.GetFullPath(Environment.GetCommandLineArgs()[0]));

            var startFolder = await TopLevel.GetTopLevel(this).StorageProvider.TryGetFolderFromPathAsync(startPath);

            var folders = await TopLevel.GetTopLevel(this).StorageProvider.OpenFolderPickerAsync(
                new FolderPickerOpenOptions
                {
                    Title = "Select the plugin folder",
                    AllowMultiple = false,
                    SuggestedStartLocation = startFolder
                });
                
            if (folders.Count > 0)
            {
                Settings.CustomPluginPath = folders[0].Path.LocalPath;
                PluginPathBox.Text = Settings.CustomPluginPath;
            }
        }
    }
}