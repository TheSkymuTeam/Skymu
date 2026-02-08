/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Diagnostics;
using System.Net.Http;
using System.Windows;

using System.Windows.Threading;

namespace Skymu
{
    public partial class Universal : Application
    {
        public static ICore Plugin;
        public static ICore[] PluginList;
        public static void PluginErrorHandler(object sender, PluginMessageEventArgs e)
        {
            System.Windows.Application.Current.Dispatcher.BeginInvoke(() =>
            {
                new Dialog(Dialog.Type.Error, e.Message, "Error in plugin " + ((ICore)sender).Name).ShowDialog();
            });
        }
        public static void PluginWarningHandler(object sender, PluginMessageEventArgs e)
        {
            System.Windows.Application.Current.Dispatcher.BeginInvoke(() =>
            {
                new Dialog(Dialog.Type.Information, e.Message, "Warning from plugin " + ((ICore)sender).Name).ShowDialog();
            });
        }

        static Universal()
        {
            AppDomain.CurrentDomain.ProcessExit += (_, __) =>
            {
                Tray.DisposeIcon();
            };
        }

        public static void Restart()
        {
            string exePath = System.Reflection.Assembly.GetExecutingAssembly().Location;

            Process.Start(exePath);

            Application.Current.Shutdown();
        }

        internal static readonly HttpClient HttpClient = new HttpClient
        {
            Timeout = TimeSpan.FromSeconds(10)
        };
        private void App_DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs ev)
        {
            ExceptionHandler(ev.Exception);
            ev.Handled = true;
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs ev)
        {
            Exception exception = ev.ExceptionObject as Exception;

            if (exception is not null)
            {
                ExceptionHandler(exception);
            }

            else
            {
                ExceptionHandler(new Exception("CurrentDomain non-exception object thrown"));
            }
        }

        public static void Shutdown(System.ComponentModel.CancelEventArgs ev = null)
        {
            if (ev is not null)
            {
                ev.Cancel = true;
            }
            string brand = Skymu.Properties.Settings.Default.BrandingName;
            new Dialog(Dialog.Type.Question, "You won't be able to send or recieve instant\nmessages and calls if you do.", "Sure you want to quit " + brand + "?", "Quit " + brand + "?", null, "Cancel", true, null, "Quit").ShowDialog();
        }

        public static void ExceptionHandler(Exception ex)
        {
            string brand = Skymu.Properties.Settings.Default.BrandingName;
            new Dialog(Dialog.Type.Error, ex.Message + "\n\nPlease report this to a developer.", "Exception thrown in " + brand, brand + " Exception Handling").ShowDialog();
        }

        public static void ShowMsg(string content, string title = "Information")
        {
            new Dialog(Dialog.Type.Information, content, title, null, null, "OK").ShowDialog();
        }

        public static void NotImplemented(string feature)
        {
            new Dialog(Dialog.Type.Information, feature + " hasn't been added to " + Skymu.Properties.Settings.Default.BrandingName + " yet.", "Feature not implemented", null, null, "OK").ShowDialog();
        }

        protected override void OnStartup(StartupEventArgs ev)
        {
            this.DispatcherUnhandledException += App_DispatcherUnhandledException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            base.OnStartup(ev);
        }

        protected override void OnExit(ExitEventArgs ev)
        {
            Tray.DisposeIcon();
            base.OnExit(ev);
        }
    }
}
