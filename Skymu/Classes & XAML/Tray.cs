/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Further use of this code confirms your implicit agreement
// to be bound by the terms of our License. If you do not wish
// to abide by those terms, you may not use, modify, or 
// distribute any code that originated from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

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

                var trayMenu = new Winforms.ContextMenu();
                trayMenu.MenuItems.Add(new Winforms.MenuItem("Open Skype", (s, e) =>
                {
                    if (System.Windows.Application.Current.Windows != null)
                    {

                    }
                    else
                    {

                    }

                }) { Enabled = false });

                trayMenu.MenuItems.Add(new Winforms.MenuItem("Sign in", (s, e) =>
                {
                    if (System.Windows.Application.Current.Windows != null)
                    {

                    }
                    else
                    {

                    }

                }) { Enabled = false });

                trayMenu.MenuItems.Add("-");
                trayMenu.MenuItems.Add(new Winforms.MenuItem("Quit", (s, e) => Universal.Shutdown(null)));

                
                Icon.ContextMenu = trayMenu;
                Icon.Visible = true;
            }
            Icon.Text = iconText;
        }
        
    }
}
