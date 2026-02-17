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
        public static bool HasLoggedIn = false;
        public const string Name = "Skymu";

        public static LanguageManager Lang =>
        (LanguageManager)Current.Resources["Lang"];

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
        public static void PluginNotificationHandler(object sender, NotificationEventArgs e)
        {
            System.Windows.Application.Current.Dispatcher.BeginInvoke(() =>
            {
                new Notification(e);
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
            string exePath = Process.GetCurrentProcess().MainModule.FileName;

            Process.Start(exePath);

            Universal.Terminate();
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

        public static void Close(System.ComponentModel.CancelEventArgs ev = null)
        {
            if (ev is not null)
            {
                ev.Cancel = true;
            }
            string brand = Skymu.Properties.Settings.Default.BrandingName;
            new Dialog(Dialog.Type.Question, Lang["sQUIT_PROMPT"], Lang["sQUIT_PROMPT_CAP"], Lang["sQUIT_PROMPT_TITLE"], null, Lang["sZAPBUTTON_CANCEL"], true, null, Lang["sF_CONFIRM_QUIT"]).ShowDialog();
        }

        public static void Terminate()
        {
            Tray.DisposeIcon();
            Application.Current.Shutdown();
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
            
            ApplyPresentationFramework(Skymu.Properties.Settings.Default.PresFrame);
            OS.Initialize();
            base.OnStartup(ev);
            // Listen for changes
            Skymu.Properties.Settings.Default.PropertyChanged += (sender, args) =>
            {
                if (args.PropertyName == "PresFrame")
                {
                    ApplyPresentationFramework(Skymu.Properties.Settings.Default.PresFrame);
                }
            };
           
        }

        private void ApplyPresentationFramework(string frameworkName)
        {
            if (string.IsNullOrEmpty(frameworkName))
                frameworkName = "Aero.NormalColor";

            string assemblyName = frameworkName switch
            {
                string s when s.StartsWith("Luna") => "PresentationFramework.Luna",
                string s when s.StartsWith("Royale") => "PresentationFramework.Royale",
                string s when s.StartsWith("Aero2") => "PresentationFramework.Aero2",
                string s when s.StartsWith("AeroLite") => "PresentationFramework.AeroLite",
                string s when s.StartsWith("Aero") => "PresentationFramework.Aero",
                "Classic" => "PresentationFramework.Classic",
                _ => "PresentationFramework.Aero2"
            };

            try
            {
                var themeUri = new Uri($"/{assemblyName};component/themes/{frameworkName}.xaml", UriKind.Relative);
                var theme = new ResourceDictionary { Source = themeUri };

                // Keep custom resources (SkBlue, Sk5Link, styles)
                var customResources = new ResourceDictionary();
                foreach (var key in Resources.Keys)
                {
                    if (key.ToString() != "")
                        customResources[key] = Resources[key];
                }

                // Clear and add theme first
                Resources.MergedDictionaries.Clear();
                Resources.MergedDictionaries.Add(theme);

                // Re-add custom resources
                foreach (var key in customResources.Keys)
                {
                    Resources[key] = customResources[key];
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Failed to apply presentation framework: {ex.Message}");
            }
        }

        protected override void OnExit(ExitEventArgs ev)
        {
            if (HasLoggedIn) Sounds.PlaySynchronous("logout");
            base.OnExit(ev);
        }
    }
}
