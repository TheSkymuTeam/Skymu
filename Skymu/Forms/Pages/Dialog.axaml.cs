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
using Avalonia.Controls.ApplicationLifetimes;
using System.Linq;
using Skymu.Preferences;
using System;
using System.ComponentModel;
using Skymu.Controls;
using System.Threading.Tasks;
using Skymu.AvaloniaTools;

namespace Skymu.Forms.Pages
{
    // Ported from the old Skymu.Dialog, a holdover from Skyaeris/TUSP
    // This is a generic dialog page that can be used for various purposes.
    // This was previously its own form, but now it is a page that can be used in a Skymu window.

    public partial class Dialog : UserControl
    {
        // The frame window
        public SkinnedWindow window;
        public string TextBoxContent { get; private set; }

        #region Constructor
        public Dialog(
    SkinnedWindow.IconType type,
    string content,
    string header,
    string title = null,
    Action brAction = null,
    string brText = null,
    bool blEnabled = false,
    Action blAction = null,
    string blText = null,
    bool enableTextBox = false,
    Control control = null,
    Size? customDimensions = null,
    bool bmEnabled = false,
    Action bmAction = null,
    string bmText = null,
    bool cbEnabled = false,
    CancelEventHandler onClosing = null
)
        {
            InitializeComponent();

            // create the window and size it to match a Skype dialog
            window = new SkinnedWindow(this)
            {
                MinWidth = 367, // override
                Width = 367, // always 367, since the dialog is designed to be a fixed width
                MaxHeight = 800,
                MinHeight = 197,
                SizeToContent = SizeToContent.Height, // override skinnedwindow
                ButtonLeftText = Universal.Lang["sZAPBUTTON_CLOSE"],
                ButtonRightText = Universal.Lang["sF_CONFIRM_OK_BTN"]
            };

            // the left button is disabled by default
            window.ButtonLeft.IsVisible = false;

            // if there's an image, we don't want to show the scrollviewer and have it overlap
            if (control != null)
            {
                tb.IsVisible = false;
                BodyCC.Content = control;
                BodyCC.IsVisible = true;
            }

            // custom dimensions for the dialog. TODO do we even need ths anymore? I don't think so, but leaving it in for now.
            if (customDimensions != null)
            {
                this.Width = customDimensions.Value.Width;
                this.Height = customDimensions.Value.Height;
            }

            if (brAction == null)
                brAction = () => window.Close();
            if (bmAction == null)
                bmAction = () => window.Close();
            if (blAction == null)
                blAction = () => window.Close();
            if (bmEnabled)
                window.ButtonMiddle.IsVisible = true;
            if (blEnabled)
            {
                window.ButtonLeft.IsVisible = true;
                window.ButtonLeft.IsDefault = true;
                window.ButtonRight.IsDefault = false;
            }
            if (cbEnabled)
            {
                window.BBCheckBox.IsVisible = true;
            }
            if (enableTextBox)
            {
                window.BBTextBox.IsVisible = true;
                brAction = () =>
                {
                    TextBoxContent = window.BBTextBox.Text;
                    window.Close(true);
                };
                brText = brText ?? Universal.Lang["sF_OPTIONS_BUTTON_SAVE"];
            }
            if (title == null)
            {
                string caption = null;
                switch (type)
                {
                    default: // All dialogs without a specified or preset title will be "Skype - Information"
                    case SkinnedWindow.IconType.Information:
                        caption = Universal.Lang["sF_INFORM_DEFAULT_CAPTION"];
                        break;
                    case SkinnedWindow.IconType.Error:
                        caption = Universal.Lang["sLANGUAGE_ERROR_CAP"];
                        break;
                    case SkinnedWindow.IconType.Question:
                        caption = Universal.Lang["sF_CONFIRM_DEFAULT_CAPTION"];
                        break;
                    case SkinnedWindow.IconType.Facebook:
                        caption = Universal.Lang["sFLAMINGO_CAPTION"];
                        break;
                    case SkinnedWindow.IconType.GroupVideoCall:
                        caption = Universal.Lang["sPREM_VIDEO_WEB_WINDOW_CAPTION"];
                        break;
                }
                title = Settings.BrandingName + " - " + caption;
            }

            window.Title = title;
            window.Header.Text = header;
            Description.Text = content;
            window.ButtonRightAction = brAction;
            window.ButtonMiddleAction = bmAction;
            window.ButtonLeftAction = blAction;
            if (onClosing != null)
                window.Closing += (s, e) => onClosing(this, e);
            window.HeaderImage.DefaultIndex = Settings.NikoIcons ? (int)SkinnedWindow.IconType.Niko : (int)type;
            if (blText != null)
                window.ButtonLeft.Content = blText;
            if (bmText != null)
                window.ButtonMiddle.Content = bmText;
            if (brText != null)
                window.ButtonRight.Content = brText;
        }

        #endregion

        #region Instance methods

        public void Close()
        {
            window.Close();
        }

        // confusingly named, maybe, but we don't want to be able to show a non-blocking Dialog
        // no need to have a separate ShowDialog stub, since bool? Show() already calls it

        /// <summary>Non-blocking show (restart prompts, OK dialogs). Do not sync-block on ShowDialog — that freezes Avalonia input.</summary>
        public bool? Show()
        {
            AvaloniaHelpers.PresentSkinnedWindow(window);
            return null;
        }

        public async Task<bool?> ShowAsync()
        {
            var owner = AvaloniaHelpers.GetMainWindow();
            if (owner == null
                && Application.Current?.ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
            {
                owner = desktop.Windows.FirstOrDefault(w => w.IsVisible && !ReferenceEquals(w, window));
            }

            if (owner != null && owner.IsEnabled && !ReferenceEquals(owner, window))
                return await window.ShowDialog<bool?>(owner);

            AvaloniaHelpers.PresentSkinnedWindow(window);
            return null;
        }

        public void SetRightButtonAsDefault()
        {
            window.ButtonLeft.IsDefault = false;
            window.ButtonRight.IsDefault = true;
        }

        public bool IsCheckBoxTicked()
        {
            // I don't care if this should technically return a bool?, there's no situation where that would be useful.
            return window.BBCheckBox.IsChecked == true;
        }

        #endregion
    }
}
