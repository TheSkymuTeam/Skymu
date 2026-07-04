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

using System;
using System.Collections.Generic;
using System.ComponentModel;
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
using Skymu.Forms;
using Skymu.Migration;
using Skymu.Plugins;
using Skymu.Preferences;
using Skymu.Sounds;
using Skymu.Theming;
using Skymu.UserDirectory;
using Skymu.Windows;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using Yggdrasil.Bottles;
using OmegaAOL.Bifrost.Http;

namespace Skymu
{
    public partial class Universal : Application
    {
        // -----------------------------------------------------------------------------
        // Skymu metadata.
        // -----------------------------------------------------------------------------

        public const string NAME = "Skymu";
        public const string BUILD_VERSION = "0.4.6";
        public const string BUILD_NAME = "Elder Guardian";

        // -----------------------------------------------------------------------------
        // Skymu URLs.
        // -----------------------------------------------------------------------------

        public const string GITHUB_OWNER = "TheSkymuTeam";
        public const string GITHUB_REPO = NAME;
        public const string DISCORD_SERVER_INVITE = "https://skymu.app/discord";
        public const string SKYMU_WEBSITE_HELP = "https://skymu.app/wiki/about";
        public const string SKYMU_WEBSITE_PRIVACY = "https://skymu.app/legal/privacy";
        public const string SKYMU_PACKAGE_ENDPOINT = "https://skymu.app/packages";

        // -----------------------------------------------------------------------------
        // External URLs.
        // -----------------------------------------------------------------------------

        public const string NET_DOWNLOAD_LINK = "https://dotnet.microsoft.com/en-us/download/dotnet";
        public const string NET_SIX_DOWNLOAD_LINK = NET_DOWNLOAD_LINK + "/6.0";
        public const string EASTER_SKYPE_SOUNDS_REMIX = "https://www.youtube.com/watch?v=kVsH_ySm5_E";
        public const string EASTER_CHANTE_SKYPE = "https://www.youtube.com/watch?v=cdtNIyx10DM";
        public const string GITHUB_BASE_URL = "https://api.github.com/repos/" + GITHUB_OWNER + "/" + GITHUB_REPO;
        public const string GITHUB_RELEASES_URL = GITHUB_BASE_URL + "/releases/latest";
        public const string GITHUB_PULLS_URL = GITHUB_BASE_URL + "/pulls";

        // -----------------------------------------------------------------------------
        // Globally scoped variables.
        // -----------------------------------------------------------------------------


#pragma warning disable CA2211 // Non-constant fields should not be visible
        public static List<ICore> ActivePlugins;
        public static Dictionary<ICore, User> ActiveUsers = new Dictionary<ICore, User>();
        public static ICore Plugin;
        public static ICall CallPlugin;
        public static ICore[] PluginList;
        public static bool HasLoggedIn = false;
        public static readonly string Theme = Settings.Theme;
        public static string Platform = Runtime.DetectOS().ToDisplayString();
        public static string NetVersion = RuntimeInformation.FrameworkDescription;
        public static User CurrentUser;
        public static BitmapImage AnonymousAvatar;
        public static BitmapImage GroupAvatar;
        public static BitmapImage UnknownAvatar;
        public static ViewModels.MainViewModel ActiveViewModel;
#pragma warning restore CA2211 // Non-constant fields should not be visible
        private static Mutex mutex;
        public static LanguageManager Lang => (LanguageManager)Current.Resources["Lang"];

        public static event Action ThemeChanged;

        private static bool _isDarkTheme = false;
        public static bool IsDarkTheme
        {
            get => _isDarkTheme;
            set
            {
                if (_isDarkTheme == value) return;
                _isDarkTheme = value;
                ThemeChanged?.Invoke();
            }
        }

        private static void PluginPopup(
            object sender,
            DialogBottle e,
            string prefix,
            WindowBase.IconType itype
        )
        {
            Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        var core = (ICore)sender;
                        new Dialog(
                            itype,
                            e.Message,
                            prefix + core.Name,
                            blEnabled: !string.IsNullOrEmpty(e.CopyToClipboardText),
                            blText: "Copy to clipboard",
                            blAction: () =>
                            {
                                Clipboard.SetText(e.CopyToClipboardText);
                                ShowMessage("Copied to clipboard.");
                            }
                        ).ShowDialog();
                    }
                )
            );
        }

        public static void PluginDialogHandler(object sender, DialogBottle e)
        {
            switch (e.Type)
            {
                case DialogType.Warning:
                    PluginPopup(sender, e, "Warning from plugin ", WindowBase.IconType.Information);
                    break;
                case DialogType.Error:
                    PluginPopup(sender, e, "Error in plugin ", WindowBase.IconType.Error);
                    break;
                case DialogType.Information:
                    PluginPopup(sender, e, "Message from plugin ", WindowBase.IconType.Information);
                    break;
                case DialogType.Choice:
                    Current.Dispatcher.BeginInvoke(
                        new Action(
                            delegate
                            {
                                Dialog dialog = new Dialog(
                                    WindowBase.IconType.Information,
                                    e.Message,
                                    ((ICore)sender).Name + " requests your choice",
                                    Lang["sF_CONFIRM_NO_BTN"],
                                    blEnabled: true,
                                    blText: Lang["sF_CONFIRM_YES"]
                                );
                                dialog.BRAction = () =>
                                {
                                    e.Action(false);
                                    dialog.Close();
                                };
                                dialog.BLAction = () =>
                                {
                                    e.Action(true);
                                    dialog.Close();
                                };
                                dialog.ShowDialog();
                            }
                        )
                    );
                    break;
            }
        }

        public static void PluginNotificationHandler(object sender, MessageBottle e)
        {
            Current.Dispatcher.BeginInvoke(
                new Action(
                    delegate
                    {
                        ActiveViewModel?.HandleIncoming(sender as ICore, e);
                    }
                )
            );
        }

        static Universal()
        {
            if (!DesignerProperties.GetIsInDesignMode(new DependencyObject()))
            {
                try
                {
                    mutex = new Mutex(
                        true,
                        "Local\\Skymu_SingleInstance_"
                            + Assembly.GetExecutingAssembly().GetCustomAttribute<GuidAttribute>()
                            ?? "INVALIDGUID",
                        out var created
                    );

                    Debug.WriteLine($"[Universal] Mutex creation: {created}");

                    if (!created && !Settings.AllowMultipleInstances)
                    {
                        foreach (var arg in Environment.GetCommandLineArgs())
                        {
                            if (arg.StartsWith("/uri:"))
                            {
                                var uri = arg.Substring(5 + 6);
                                WriteToPipe("URI:" + uri);
                                Terminate();
                                return;
                            }
                            else if (arg == "/secondary")
                                return;
                        }
                        WriteToPipe("WINDOW_ACTIVATE");
                        System.Windows.MessageBox.Show(
                            $"{NAME} is already running.\n\nYou can configure {NAME} to allow running multiple instances at the same time in the Options menu."
                        );
                        Terminate();
                        return;
                    }
                    // TODO: URI handling on launch
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
                return CultureInfo
                        .GetCultures(CultureTypes.AllCultures)
                        .FirstOrDefault(c =>
                            c.NativeName.StartsWith(displayName)
                            || c.DisplayName.StartsWith(displayName)
                            || c.EnglishName.StartsWith(displayName)
                        )
                        ?.Name
                    ?? "en-US";
            }
            catch { }
            return "en-US";
        }

        public static Window LoginDispenser(bool addAccount = false, Action<ICore> accountAdded = null)
        {
            if (Theme != "Skype5" && addAccount)
                throw new NotImplementedException("Using addaccount flag on non-Skype5 themes");
            switch (Theme)
            {
                case "Skype7":
                    return new Skype7.Login(false);
                case "Skype6":
                    return new Skype6.Login(false);
                case "Skype4":
                    return new Skype4.Login(false);
                case "Skype5":
                default:
                    return new Skype5.Login(false, addAccount, accountAdded);
            }
        }

        private void App_Startup(object sender, StartupEventArgs e)
        {
            if (!Settings.UseSystemCulture)
                CultureInfo.CurrentCulture = new CultureInfo(
                    GetCultureCode(Settings.Language),
                    false
                );
            // TODO: Dynamically switch language without restart

            LoginDispenser().Show();

            Task.Run(() =>
            {
                while (true)
                {
                    var pipe = new NamedPipeServerStream($"{NAME}Pipe", PipeDirection.In);

                    pipe.WaitForConnection();

                    var reader = new StreamReader(pipe);

                    string msg = reader.ReadLine();

                    if (msg == "WINDOW_ACTIVATE" || msg.StartsWith("URI:"))
                        Dispatcher.Invoke(() =>
                        {
                            if (MainWindow.WindowState == WindowState.Minimized)
                                MainWindow.WindowState = WindowState.Normal;
                            MainWindow.Show();
                            MainWindow.Activate();
                        });
                    if (msg.StartsWith("URI:"))
                    {
                        msg = msg.Substring(msg.IndexOf(":") + 1);
                        Debug.WriteLine($"[Universal] Got skymu URI: {msg}");
                        URIHandler(msg);
                    }

                    reader.Dispose();
                    pipe.Dispose();
                }
            });
        }

        public static void URIHandler(string uri)
        {
            if (uri.StartsWith("?"))
            {
                var cmd = uri.Substring(1);
                // TODO: Handle URI commands
            }
            else if (uri.StartsWith("#"))
            {
                // TODO: Handle "add" with AddContact thing
            }
            else
            {
                var questionmark = uri.IndexOf("?");
                var skypename = uri.Substring(0, questionmark == -1 ? uri.Length : questionmark);
                if (ActiveViewModel != null)
                {
                    Conversation found = null;
                    // TOOD: This might be inaccurate?
                    foreach (var c in ActiveViewModel.ConversationList)
                        if ((c is DirectMessage u) && u.Partner.Username == skypename)
                        {
                            found = c;
                            break;
                        }
                    if (found == null)
                        foreach (DirectMessage u in ActiveViewModel.ContactList)
                            if (u.Partner.Username == skypename)
                            {
                                found = u;
                                break;
                            }
                    if (found != null)
                        Current.Dispatcher.Invoke(() =>
                        {
                            ActiveViewModel.SelectConversation(found);
                            if (Current.MainWindow.WindowState == WindowState.Minimized)
                                Current.MainWindow.WindowState = WindowState.Normal;
                            Current.MainWindow.Show();
                            Current.MainWindow.Activate();
                        });

                }
            }
        }

        public static void Restart()
        {
            mutex?.Dispose();
            mutex = null;
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
                        $"{NAME} Exception Handling: CurrentDomain non-exception object thrown of an unknown nature.\n\n"
                            + ev.ToString()
                    )
                );
            }
        }

        public static void Hide(CancelEventArgs ev = null)
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
                    brText: Lang["sZAPBUTTON_CANCEL"],
                    blEnabled: true,
                    blText: Lang["sF_CONFIRM_QUIT"],
                    cbEnabled: donotask
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

        public static void ExceptionHandler(Exception ex, string context = null)
        {
            string brand = Settings.BrandingName;
            Forms.Pages.ErrorWindow page = new Forms.Pages.ErrorWindow(ex.ToString(), context);
            WindowBase frame = new WindowBase(page)
            {
                HeaderIcon = WindowBase.IconType.Crash,
                HeaderText = "That wasn't supposed to happen...",
                Title = brand + " Error"
            };
            frame.ButtonRightAction = () => frame.Close();
            frame.ButtonRightText = Lang["sZAPBUTTON_CLOSE"];
            frame.ButtonLeftAction = () => page.CopyToClipboard();
            frame.ButtonLeftText = "Copy to clipboard";
            frame.ShowDialog();
        }

        public static void ShowMessage(
            string content,
            string title = null,
            WindowBase.IconType icon = WindowBase.IconType.Information
        )
        {
            if (title is null) title = Universal.Lang["sF_INFORM_DEFAULT_CAPTION"];
            new Dialog(
                icon,
                content,
                title,
                brText: Lang["sF_CONFIRM_OK_BTN"]
            ).ShowDialog();
        }

        public static void NotImplemented(string feature)
        {
            new Dialog(
                WindowBase.IconType.Information,
                "Feature not implemented",
                feature + " hasn't been added to " + Settings.BrandingName + " yet.",
                brText: "OK"
            ).ShowDialog();
        }

        private static void WriteToPipe(string data)
        {
            try
            {
                var pipe = new NamedPipeClientStream(".", $"{NAME}Pipe", PipeDirection.Out);

                pipe.Connect(1000);

                var writer = new StreamWriter(pipe) { AutoFlush = true };

                writer.WriteLine(data);

                writer.Dispose();
                pipe.Dispose();
            }
            catch { }
        }

        protected override void OnStartup(StartupEventArgs ev)
        {
            this.DispatcherUnhandledException += App_DispatcherUnhandledException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            ApplyPresentationFramework(Settings.PresentationFramework);
            AutoLaunch.Get(); // XXX to initialize the setting just in case
            if (!Colorizer.Scan())
                Universal.ExceptionHandler(
                    new Exception("Could not find any compatible colorways in directory /Colorways.")
                );
            Colorizer.LoadFromSettings();
            Migrator.Run();
            SkymuHttpClient.DefaultRequestHeaders.UserAgent.ParseAdd($"{NAME}Client-" + BUILD_VERSION);
            base.OnStartup(ev);
            Settings.Default.PropertyChanged += (sender, args) =>
            {
                switch (args.PropertyName)
                {
                    case "PresentationFramework":
                        ApplyPresentationFramework(Settings.PresentationFramework);
                        break;
                    case "Colorway":
                    case "WindowFrame":
                    case "Theme":
                    case "UseSystemCulture":
                        Dialog dialog = new Dialog(
                                   WindowBase.IconType.Question,
                                   "You need to restart " + Settings.BrandingName + " to fully apply this change. Would you like to save your settings and restart?",
                                   "Restart " + Settings.BrandingName + "?",
                                   brText: Lang["sF_CONFIRM_NO_BTN"],
                                   blEnabled: true,
                                   blText: Lang["sF_CONFIRM_YES"]
                               );
                        dialog.BRAction = () =>
                        {
                            dialog.Close();
                        };
                        dialog.BLAction = () =>
                        {
                            Settings.Save();
                            Universal.Restart();
                        };
                        dialog.ShowDialog();
                        break;
                }
            };
        }

        private void ApplyPresentationFramework(string frameworkName)
        {
            if (string.IsNullOrEmpty(frameworkName))
                frameworkName = "Aero.NormalColor";

            ResourceDictionary theme;

            if (frameworkName.StartsWith("Fluent"))
            {
                var themeFileName = frameworkName.Split('.')[1]; // "Light", "Dark", "HC"
                var themeUri = new Uri(
                    $"pack://application:,,,/Presentation/Themes/Fluent.{themeFileName}.xaml",
                    UriKind.Absolute
                );
                theme = new ResourceDictionary { Source = themeUri };
            }
            else
            {
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

                var themeUri = new Uri(
                    $"/{assemblyName};component/themes/{frameworkName}.xaml",
                    UriKind.Relative
                );
                theme = new ResourceDictionary { Source = themeUri };
            }

            try
            {
                var customResources = new ResourceDictionary();
                foreach (var key in Resources.Keys)
                {
                    if (key.ToString() != string.Empty)
                        customResources[key] = Resources[key];
                }

                Resources.MergedDictionaries.Clear();
                Resources.MergedDictionaries.Add(theme);

                foreach (var key in customResources.Keys)
                    Resources[key] = customResources[key];
            }
            catch (Exception ex)
            {
                Universal.ShowMessage($"Failed to apply presentation framework: {ex.Message}");
            }
        }

        public static void OpenUrl(string url)
        {
            Process.Start(new ProcessStartInfo(url) { UseShellExecute = true });
        }

        protected override async void OnExit(ExitEventArgs ev)
        {
            try
            {
                await UserCountAPI.CloseWS(); // Sends close to the websocket while the app is dying around it. This only works cos of the delay caused by the logout sound.
            }
            catch { } // If it doesn't work, too bad.
            if (HasLoggedIn)
            {
                PluginManager.DisposeAll();
                SoundManager.PlaySynchronous("LOGOUT");
            }
            base.OnExit(ev);
        }
    }
}
