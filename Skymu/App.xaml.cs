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
using System.Linq;
using System.Net.Http;
using System.Windows;
using Skymu.Plugins;
using System.Windows.Interop;
using Skymu.Formatting;
using Skymu.Theming;
using Skymu.UserDirectory;
using Skymu.Preferences;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using MiddleMan;
using Skymu.Views;

namespace Skymu
{
    public partial class Universal : Application
    {
        public static ICore Plugin;
        public static ICall CallPlugin;
        public static ICore[] PluginList;
        public static bool HasLoggedIn = false;
        public static readonly string Interface = Settings.Interface;

        public const string Name = "Skymu";
        public const string BuildVersion = "0.3.24";
        public const string BuildName = "Drocea Yggdrasil";

        public const string DISCORD_SERVER_INVITE = "https://discord.gg/PcfsGyz2";
        public const string SKYMU_WEBSITE_HELP = "https://skymu.app/help";
        public const string SKYMU_WEBSITE_PRIVACY = "https://skymu.app/legal/privacy/";

        public static User CurrentUser;
        public static BitmapImage AnonymousAvatar;
        public static BitmapImage GroupAvatar;
        public static ViewModels.MainViewModel ActiveViewModel;

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
            AppDomain.CurrentDomain.ProcessExit += (e, s) =>
            {
                Tray.DisposeIcon();
            };
        }

        private void App_Startup(object sender, StartupEventArgs e)
        {
            switch (Interface)
            {
                case "SeanKype":
                    new SeanKype.Login().Show();
                    break;
                case "Pontis":
                    new Pontis.Login().Show();
                    break;
                case "Skyaeris":
                    new Skyaeris.Login().Show();
                    break;
            }
        }

        public static void Restart()
        {
            string exePath = Process.GetCurrentProcess().MainModule.FileName;

            Process.Start(exePath);

            Universal.Terminate();
        }

        internal static readonly HttpClient WebClient = new HttpClient
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

        public static void Hide(System.ComponentModel.CancelEventArgs ev = null)
        {
            try
            {
                if (ev != null)
                {
                    ev.Cancel = true;
                }
                foreach (Window window in Application.Current.Windows.OfType<Window>().ToList())
                    window.Hide();
            }
            catch
            {
                // butt
            }
        }

        public static void Close()
        {
            try
            {
                string brand = Settings.BrandingName;
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
            string brand = Settings.BrandingName;
            Views.Pages.ErrorWindow page = new Views.Pages.ErrorWindow(ex.ToString());
            WindowBase frame = new WindowBase(page);
            frame.HeaderIcon = WindowBase.IconType.Crash;
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
                    + Settings.BrandingName
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
            ApplyPresentationFramework(Settings.PresFrame);
            OS.Initialize();
            ThemeManager.Load("default");
            base.OnStartup(ev);
            Settings.Default.PropertyChanged += (sender, args) =>
            {
                if (args.PropertyName == "PresFrame")
                {
                    ApplyPresentationFramework(Settings.PresFrame);
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

        public static void OpenUrl(string url)
        {
            Process.Start(new ProcessStartInfo(url) { UseShellExecute = true });
        }

        protected override void OnExit(ExitEventArgs ev)
        {
            try
            {
                _ = UserCountAPI.CloseWS();
            } // Sends close to the websocket while the app is dying around it. This only works cos of the delay caused by the logout sound.
            catch { } // If it doesn't work, too bad.
            if (HasLoggedIn)
            {
                PluginManager.DisposeAll();
                Sounds.PlaySynchronous("logout");
            }
            base.OnExit(ev);
        }
    }
}
