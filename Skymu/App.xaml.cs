/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Diagnostics;
using System.Net.Http;
using System.Windows;
using System.Windows.Threading;
using MiddleMan;
using Skymu.Views;

namespace Skymu
{
    public partial class Universal : Application
    {
        public static ICore Plugin;
        public static ICore[] PluginList;
        public static bool HasLoggedIn = false;
        public const string Name = "Skymu";
        public static readonly string SkypeEra = Skymu.Properties.Settings.Default.SkypeEra;

        public static LanguageManager Lang => (LanguageManager)Current.Resources["Lang"];

        public static void PluginErrorHandler(object sender, PluginMessageEventArgs e)
        {
            System.Windows.Application.Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        var core = (ICore)sender;
                        new Dialog(
                            WindowBase.IconType.Error,
                            e.Message,
                            "Error in plugin " + core.Name
                        ).ShowDialog();
                    }
                )
            );
        }

        public static void PluginWarningHandler(object sender, PluginMessageEventArgs e)
        {
            System.Windows.Application.Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        var core = (ICore)sender;
                        new Dialog(
                            WindowBase.IconType.Information,
                            e.Message,
                            "Warning from plugin " + core.Name
                        ).ShowDialog();
                    }
                )
            );
        }

        public static void PluginNotificationHandler(object sender, MessageEventArgs e)
        {
            Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        MessageTools.HandleIncoming(e);
                    }
                )
            );
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
            Timeout = TimeSpan.FromSeconds(10),
        };

        private void App_DispatcherUnhandledException(
            object sender,
            DispatcherUnhandledExceptionEventArgs ev
        )
        {
            ExceptionHandler(ev.Exception);
            ev.Handled = true;
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs ev)
        {
            Exception exception = ev.ExceptionObject as Exception;

            if (exception != null)
            {
                ExceptionHandler(exception);
            }
            else
            {
                ExceptionHandler(
                    new Exception(
                        "Skymu Exception Handling: CurrentDomain non-exception object thrown of an unknown nature.\n\n"
                            + ev.ToString()
                    )
                );
            }
        }

        public static void Close(System.ComponentModel.CancelEventArgs ev = null)
        {
            try
            {
                if (ev != null)
                {
                    ev.Cancel = true;
                }
                string brand = Skymu.Properties.Settings.Default.BrandingName;
                new Dialog(
                    WindowBase.IconType.Question,
                    Lang["sQUIT_PROMPT"],
                    Lang["sQUIT_PROMPT_CAP"],
                    Lang["sQUIT_PROMPT_TITLE"],
                    null,
                    Lang["sZAPBUTTON_CANCEL"],
                    true,
                    null,
                    Lang["sF_CONFIRM_QUIT"]
                ).ShowDialog();
            }
            catch
            {
                Universal.Terminate();
            } // in case app is already too dead to show dialog by the time this is called
        }

        public static void Terminate()
        {
            try
            {
                Tray.DisposeIcon();
            }
            catch { } // in case app is already too dead to clear icon by the time this is called
            finally
            {
                Application.Current.Shutdown();
            }
        }

        public static void ExceptionHandler(Exception ex)
        {
            string brand = Skymu.Properties.Settings.Default.BrandingName;
            Views.Pages.ErrorWindow page = new Views.Pages.ErrorWindow(ex.ToString());
            WindowBase frame = new WindowBase(page);
            frame.HeaderIcon = WindowBase.IconType.Error;
            frame.HeaderText = "That wasn't supposed to happen...";
            frame.Title = brand + " Error";
            frame.ButtonRightAction = () => frame.Close();
            frame.ButtonRightText = Universal.Lang["sZAPBUTTON_CLOSE"];
            frame.ButtonLeftAction = () => page.CopyToClipboard();
            frame.ButtonLeftText = "Copy to clipboard";
            frame.ShowDialog();
        }

        public static void MessageBox(string content, string title = "Information")
        {
            new Dialog(
                WindowBase.IconType.Information,
                content,
                title,
                null,
                null,
                "OK"
            ).ShowDialog();
        }

        public static void NotImplemented(string feature)
        {
            new Dialog(
                WindowBase.IconType.Information,
                feature
                    + " hasn't been added to "
                    + Skymu.Properties.Settings.Default.BrandingName
                    + " yet.",
                "Feature not implemented",
                null,
                null,
                "OK"
            ).ShowDialog();
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

            string assemblyName;
            switch (frameworkName)
            {
                case "Classic":
                    assemblyName = "PresentationFramework.Classic";
                    break;
                default:
                    if (frameworkName.StartsWith("Luna"))
                        assemblyName = "PresentationFramework.Luna";
                    else if (frameworkName.StartsWith("Royale"))
                        assemblyName = "PresentationFramework.Royale";
                    else if (frameworkName.StartsWith("Aero2"))
                        assemblyName = "PresentationFramework.Aero2";
                    else if (frameworkName.StartsWith("AeroLite"))
                        assemblyName = "PresentationFramework.AeroLite";
                    else if (frameworkName.StartsWith("Aero"))
                        assemblyName = "PresentationFramework.Aero";
                    else
                        assemblyName = "PresentationFramework.Aero2";
                    break;
            }

            try
            {
                var themeUri = new Uri(
                    $"/{assemblyName};component/themes/{frameworkName}.xaml",
                    UriKind.Relative
                );
                var theme = new ResourceDictionary { Source = themeUri };

                // keep custom resources
                var customResources = new ResourceDictionary();
                foreach (var key in Resources.Keys)
                {
                    if (key.ToString() != "")
                        customResources[key] = Resources[key];
                }

                // clear and add theme first
                Resources.MergedDictionaries.Clear();
                Resources.MergedDictionaries.Add(theme);

                // re-add custom resources
                foreach (var key in customResources.Keys)
                {
                    Resources[key] = customResources[key];
                }
            }
            catch (Exception ex)
            {
                System.Windows.MessageBox.Show(
                    $"Failed to apply presentation framework: {ex.Message}"
                );
            }
        }

        protected override void OnExit(ExitEventArgs ev)
        {
            try
            {
                _ = UserCountAPI.CloseWS();
            } // Sends close to the websocket while the app is dying around it. This only works cos of the delay caused by the logout sound.
            catch { } // If it doesn't work, too bad.
            if (HasLoggedIn)
                Sounds.PlaySynchronous("logout");
            base.OnExit(ev);
        }
    }
}
