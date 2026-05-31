/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Helpers;
using Skymu.Migration;
using Skymu.Plugins;
using Skymu.Preferences;
using Skymu.Theming;
using Skymu.UserDirectory;
using Skymu.Views;
using System;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.IO.Pipes;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using Yggdrasil;
using Yggdrasil.Classes;
using Yggdrasil.Networking;

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
        public const string BuildVersion = "0.4.2";
        public const string BuildName = "Erudite Centaur";
        public static string Platform = Runtime.DetectOS().ToDisplayString();
        public static string NetVersion = RuntimeInformation.FrameworkDescription;

        public const string DISCORD_SERVER_INVITE = "https://skymu.app/discord";
        public const string SKYMU_WEBSITE_HELP = "https://skymu.app/wiki/about";
        public const string SKYMU_WEBSITE_PRIVACY = "https://skymu.app/legal/privacy";

        public static User CurrentUser;
        public static BitmapImage AnonymousAvatar;
        public static BitmapImage GroupAvatar;
        public static BitmapImage UnknownAvatar;
        public static ViewModels.MainViewModel ActiveViewModel;

        public static LanguageManager Lang => (LanguageManager)Current.Resources["Lang"];

        private static Mutex mutex;

        public static void InformDND()
        {
            if (Settings.InformDND != true)
                Current.Dispatcher.Invoke(() =>
                    new Dialog(
                        WindowBase.IconType.Information,
                        Lang["sINFORM_DND"],
                        Lang["sINFORM_DND_CAP"],
                        Lang["sINFORM_DND_TITLE"],
                        brText: "OK",
                        cbEnabled: true,
                        onClosing: (s, e) =>
                        {
                            if (((Dialog)s).CheckBox.IsChecked == true)
                            {
                                Settings.InformDND = true;
                                Settings.Save();
                            }
                        }
                    ).ShowDialog()
                );
        }

        private static void PluginPopup(object sender, PluginMessageEventArgs e, string prefix, WindowBase.IconType itype)
        {
            Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        var core = (ICore)sender;
                        new Dialog(
                            itype,
                            e.Message,
                            prefix + core.Name
                        ).ShowDialog();
                    }
                )
            );
        }

        public static void PluginErrorHandler(object sender, PluginMessageEventArgs e) => PluginPopup(sender, e, "Error in plugin ", WindowBase.IconType.Error);
        public static void PluginWarningHandler(object sender, PluginMessageEventArgs e) => PluginPopup(sender, e, "Warning from plugin ", WindowBase.IconType.Information);
        public static void PluginYesNoHandler(object sender, PluginYesNoEventArgs e)
        {
            Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        Dialog dialog = new Dialog(
                            type: WindowBase.IconType.Information,
                            content: e.Message,
                            header: ((ICore)sender).Name + " requests your choice",
                            brText: Lang["sF_CONFIRM_YES"],
                            blEnabled: true,
                            blText: Lang["sF_CONFIRM_NO_BTN"]
                        );
                        dialog.BRAction = () => { e.Action(true); dialog.Close(); };
                        dialog.BLAction = () => { e.Action(false); dialog.Close(); };
                        dialog.ShowDialog();
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
                        ActiveViewModel?.HandleIncoming(e);
                    }
                )
            );
        }

        static Universal()
        {
            if (!Settings.AllowMultipleInstances)
            {
                try
                {
                    mutex = new Mutex(true,
                        "Local\\Skymu_SingleInstance_"
                        + Assembly.GetExecutingAssembly().GetCustomAttribute<GuidAttribute>() ?? "INVALIDGUID",
                        out var created);

                    Debug.WriteLine($"[Universal] Mutex creation: {created}");

                    if (!created)
                    {
                        foreach (var arg in Environment.GetCommandLineArgs())
                        {
                            if (arg.StartsWith("/uri:"))
                            {
                                var uri = arg.Substring(5 + 6);
                                WriteToPipe("URI:" + uri);
                            }
                        }
                        WriteToPipe("WINDOW_ACTIVATE");
                        Terminate();
                        return;
                    }
                }
                catch
                {
                    try
                    {
                        Terminate();
                    }
                    catch
                    {
                        try
                        {
                            Application.Current.Shutdown();
                        }
                        catch
                        {
                            Environment.Exit(1);
                        }
                    }
                }
            }
            AppDomain.CurrentDomain.ProcessExit += (e, s) =>
            {
                Tray.DisposeIcon();
            };
        }

        public static string GetCultureCode(string displayName)
        {
            try
            {
                return CultureInfo.GetCultures(CultureTypes.AllCultures)
                    .FirstOrDefault(c =>
                        c.NativeName.StartsWith(displayName) ||
                        c.DisplayName.StartsWith(displayName) ||
                        c.EnglishName.StartsWith(displayName)
                    )?.Name ?? "en-US";
            }
            catch { }
            return "en-US";
        }

        private void App_Startup(object sender, StartupEventArgs e)
        {
            if (!Settings.UseSystemCulture)
                CultureInfo.CurrentCulture = new CultureInfo(GetCultureCode(Settings.Language), false);
            // TODO: Dynamically switch language without restart
            switch (Interface)
            {
                case "SeanKype":
                    new SeanKype.Login().Show();
                    break;
                case "Pontis":
                    new Pontis.Login().Show();
                    break;
                case "Sapphire":
                    new Sapphire.Login().Show();
                    break;
                case "Skyaeris":
                default:
                    new Skyaeris.Login().Show();
                    break;
            }

            Task.Run(() =>
            {
                while (true)
                {
                    var pipe = new NamedPipeServerStream("SkymuPipe", PipeDirection.In);

                    pipe.WaitForConnection();

                    var reader = new StreamReader(pipe);

                    string msg = reader.ReadLine();

                    if (msg == "WINDOW_ACTIVATE")
                        Dispatcher.Invoke(() =>
                        {
                            if (MainWindow.WindowState == WindowState.Minimized)
                                MainWindow.WindowState = WindowState.Normal;
                            MainWindow.Show();
                            MainWindow.Activate();
                        });
                    else if (msg.StartsWith("URI:"))
                    {
                        msg = msg.Substring(msg.IndexOf(":") + 1);
                        Debug.WriteLine($"[Universal] Got skymu URI: {msg}");
                        var questionmark = msg.IndexOf("?");
                        var skypename = msg.Substring(0, questionmark == -1 ? msg.Length : questionmark);
                        if (ActiveViewModel != null)
                        {
                            Conversation found = null;
                            foreach (var c in Universal.Plugin.RecentsList)
                                if ((c is DirectMessage u) && u.Partner.Username == skypename)
                                {
                                    found = c; break;
                                }
                            if (found == null)
                                foreach (DirectMessage u in Universal.Plugin.ContactsList)
                                    if (u.Partner.Username == skypename)
                                    {
                                        found = u; break;
                                    }
                            if (found != null)
                                Dispatcher.Invoke(() =>
                                    ActiveViewModel.SelectConversation(found)
                                );
                        }
                    }

                    reader.Dispose();
                    pipe.Dispose();
                }
            });
        }

        public static void Restart()
        {
            string exePath = Process.GetCurrentProcess().MainModule.FileName;
            Process.Start(exePath);
            Universal.Terminate();
        }

        internal static readonly HttpClient SkymuHttpClient = new HttpClient(new BifrostEngine())
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

        public static void Close(bool donotask = true)
        {
            if (Settings.QuitWithoutAsking)
                Terminate();
            try
            {
                string brand = Settings.BrandingName;
                Dialog dialog = new Dialog(
                    WindowBase.IconType.Question,
                    Lang["sQUIT_PROMPT"],
                    Lang["sQUIT_PROMPT_CAP"],
                    Lang["sQUIT_PROMPT_TITLE"],
                    null,
                    Lang["sZAPBUTTON_CANCEL"],
                    true,
                    null,
                    Lang["sF_CONFIRM_QUIT"],
                    false,
                    null,
                    null,
                    false,
                    null,
                    null,
                    donotask
                );
                dialog.BLAction = () =>
                {
                    if (dialog.CheckBox.IsChecked == true)
                        Settings.QuitWithoutAsking = true;
                    Terminate();
                };
                dialog.ShowDialog();
            }
            catch
            {
                Terminate(); // in case app is already too dead to show dialog by the time this is called
            }
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

        public static void MessageBox(string content, string title = "Information", WindowBase.IconType icon = WindowBase.IconType.Information)
        {
            new Dialog(
                icon,
                content,
                title,
                null,
                null,
                Universal.Lang["sF_CONFIRM_OK_BTN"]
            ).ShowDialog();
        }

        public static void NotImplemented(string feature)
        {
            new Dialog(
                WindowBase.IconType.Information,
                feature + " hasn't been added to " + Settings.BrandingName + " yet.",
                "Feature not implemented",
                null,
                null,
                "OK"
            ).ShowDialog();
        }

        private static void WriteToPipe(string data)
        {
            try
            {
                var pipe = new NamedPipeClientStream(".", "SkymuPipe", PipeDirection.Out);

                pipe.Connect(1000);

                var writer = new StreamWriter(pipe);
                writer.AutoFlush = true;

                writer.WriteLine(data);

                writer.Dispose();
                pipe.Dispose();
            }
            catch
            { }
        }

        protected override void OnStartup(StartupEventArgs ev)
        {
            this.DispatcherUnhandledException += App_DispatcherUnhandledException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            ApplyPresentationFramework(Settings.PresentationFramework);
            OS.Initialize();
            if (!ThemeManager.Scan())
                Universal.ExceptionHandler(
                    new Exception(
                        "Could not find any compatible theme files in directory /Themes."
                    )
                );
            ThemeManager.LoadFromSettings();
            Migrator.Run();
            SkymuHttpClient.DefaultRequestHeaders.UserAgent.ParseAdd("SkymuClient-" + BuildVersion);
            base.OnStartup(ev);
            Settings.Default.PropertyChanged += (sender, args) =>
            {
                if (args.PropertyName == "PresentationFramework")
                {
                    ApplyPresentationFramework(Settings.PresentationFramework);
                }
            };
        }

        private void ApplyPresentationFramework(string frameworkName)
        {
            if (string.IsNullOrEmpty(frameworkName))
                frameworkName = "Aero.NormalColor";

            string assemblyName = "";
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
                    else if (frameworkName.StartsWith("Classic"))
                        assemblyName = "PresentationFramework.Classic";
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
                    if (key.ToString() != string.Empty)
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
                Universal.MessageBox(
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
                _ = UserCountAPI.CloseWS(); // Sends close to the websocket while the app is dying around it. This only works cos of the delay caused by the logout sound.
            }
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
