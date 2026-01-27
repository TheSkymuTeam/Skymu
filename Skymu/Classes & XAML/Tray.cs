/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

/*==========================================================*/
// IMPORTANT INFORMATION FOR DEVELOPERS, PROJECT MAINTAINERS
// AND CONTRIBUTORS TO SKYMU, CONCERNING THIS PARTICULAR FILE
/*==========================================================*/
// The following code calls GDI+ components instead of native
// ones. This has been done out of necessity during the
// upgrade from .NET Framework 4.6.1 to .NET Core 8, which
// no longer supports the classic controls. If this can be
// fixed, or the native styled controls brought back,
// please do so.
/*==========================================================*/

#pragma warning disable CA1416

using System.Drawing;
using System;
using System.Linq;
using System.Windows;
using Winforms = System.Windows.Forms;
using System.IO;
using System.Reflection;

namespace Skymu
{
    class Tray
    {
        private static Winforms.NotifyIcon Icon;

        public static void DisposeIcon()
        {
            Icon.Dispose();
        }

        public static void PushIcon(string icon, string iconText = "Skype")
        {
            var resourceUri = new Uri("pack://application:,,,/UniversalResources/Icon/skype" + icon + ".ico", UriKind.Absolute);
            var resourceStreamInfo = Universal.GetResourceStream(resourceUri);

            if (Icon != null)
            {
                Icon.Icon = new Icon(resourceStreamInfo.Stream);
            }

            else
            {
                Icon = new Winforms.NotifyIcon();
                Icon.Icon = new Icon(resourceStreamInfo.Stream);

                var trayMenu = new Winforms.ContextMenuStrip();
                var openSkypeItem = new Winforms.ToolStripMenuItem("Open Skype");
                openSkypeItem.Enabled = false;
                openSkypeItem.Click += (s, e) =>
                {
                    if (System.Windows.Application.Current.Windows != null)
                    {
                        // do something
                    }
                    else
                    {
                        // do something else
                    }
                };
                trayMenu.Items.Add(openSkypeItem);

                var signInItem = new Winforms.ToolStripMenuItem("Sign in");
                signInItem.Enabled = false;
                signInItem.Click += (s, e) =>
                {
                    if (System.Windows.Application.Current.Windows != null)
                    {
                        // do something
                    }
                    else
                    {
                        // do something else
                    }
                };
                trayMenu.Items.Add(signInItem);

                trayMenu.Items.Add(new Winforms.ToolStripSeparator());
                var quitItem = new Winforms.ToolStripMenuItem("Quit");
                quitItem.Click += (s, e) => Universal.Shutdown(null);
                trayMenu.Items.Add(quitItem);


                Icon.ContextMenuStrip = trayMenu;
                Icon.Visible = true;
            }
            Icon.Text = iconText;
        }
        
    }
}
