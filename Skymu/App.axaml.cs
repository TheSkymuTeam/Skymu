/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Markup.Xaml;
using Avalonia.Media;
using Avalonia.Media.Imaging;
using Avalonia.Styling;
using Avalonia.Themes.Fluent;
using Avalonia.Themes.Simple;
using Avalonia.Threading;
using Classic.Avalonia.Theme;
using OmegaAOL.Bifrost.Http;
using Skymu.AvaloniaHelpers;
using Skymu.Forms;
using Skymu.Forms.Pages;
using Skymu.Migration;
using Skymu.Native.Windows;
using Skymu.Plugins;
using Skymu.Preferences;
using Skymu.Sounds;
using Skymu.Theming;
using Skymu.Versioning;
using Skymu.WebServices;
using System;
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
using Yggdrasil;
using Yggdrasil.Bottles;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;

namespace Skymu
{
    public partial class Universal : Application
    {
        // -----------------------------------------------------------------------------
        // Build information
        // -----------------------------------------------------------------------------

        public const string NAME = "Skymu";
        public static readonly BuildInfo BUILD_INFO = new BuildInfo(
            major: 4,
            minor: 9,
            patch: 0,
            major_name: "Elgon",
            minor_name: "Jell-O",
            is_beta: false,
            beta_number: 0
            );

        // -----------------------------------------------------------------------------
        // Skymu controlled URLs
        // -----------------------------------------------------------------------------

        public const string GITHUB_OWNER = "TheSkymuTeam";
        public const string GITHUB_REPO = "Skymu";
        public const string DISCORD_SERVER_INVITE = "https://www.skymu.app/discord";
        public const string SKYMU_WEBSITE_HELP = "https://www.skymu.app/wiki/about";
        public const string SKYMU_WEBSITE = "https://www.skymu.app";
        public const string SKYMU_WEBSITE_PRIVACY = "https://www.skymu.app/legal/privacy";
        public const string SKYMU_WEBSERVICES_PACKAGE_REPO = "https://www.skymu.app/packages";
        public const string SKYMU_WEBSERVICES_SKYPEHOME = "https://www.skymu.app/home";
        public const string SKYMU_WEBSERVICES_USERSERVER = "https://www.skymu.app/userver/";

        // -----------------------------------------------------------------------------
        // Third party URLs
        // -----------------------------------------------------------------------------

        public const string NET_DOWNLOAD_LINK = "https://dotnet.microsoft.com/en-us/download/dotnet";
        public const string NET_SIX_DOWNLOAD_LINK = "https://dotnet.microsoft.com/en-us/download/dotnet/6.0";
        public const string EASTER_SKYPE_SOUNDS_REMIX = "https://www.youtube.com/watch?v=kVsH_ySm5_E";
        public const string EASTER_CHANTE_SKYPE = "https://www.youtube.com/watch?v=cdtNIyx10DM";
        public const string GITHUB_BASE_URL = "https://api.github.com/repos/" + GITHUB_OWNER + "/" + GITHUB_REPO;
        public const string GITHUB_RELEASES_URL = GITHUB_BASE_URL + "/releases/latest";
        public const string GITHUB_PULLS_URL = GITHUB_BASE_URL + "/pulls";

        // -----------------------------------------------------------------------------
        // Globals
        // -----------------------------------------------------------------------------

        public static ICore Plugin;
        public static ICall CallPlugin;
        public static ICore[] PluginList;
        public static bool SignedIn = false;
        public static readonly string Theme = Settings.Theme;
        public static PlatformType Platform = Runtime.DetectOS();
        public static string PlatformStr = Runtime.DetectOS().ToString();
        public static string NetVersion = RuntimeInformation.FrameworkDescription;
        public static User CurrentUser;
        public static Bitmap AnonymousAvatar;
        public static Bitmap GroupAvatar;
        public static Bitmap UnknownAvatar;
        public static ViewModels.MainViewModel ActiveViewModel;
        private static Mutex mutex;
        internal static bool ConfigResetOnStartup = false;
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
            SkinnedWindow.IconType itype
        )
        {
            Dispatcher.UIThread.Post(() =>
            {
                var core = (ICore)sender;
                new Dialog(
                    itype,
                    e.Message,
                    prefix + core.Name,
                    blEnabled: !string.IsNullOrEmpty(e.CopyToClipboardText),
                    blText: "Copy to clipboard",
                    blAction: async () =>
                    {
                        await AHelpers.SetClipboardText(e.CopyToClipboardText);
                        ShowMessage("Copied to clipboard.");
                    }
                ).Show();
            });
        }

        public static void PluginDialogHandler(object sender, DialogBottle e)
        {
            switch (e.Type)
            {
                case DialogType.Warning:
                    PluginPopup(sender, e, "Warning from plugin ", SkinnedWindow.IconType.Information);
                    break;
                case DialogType.Error:
                    PluginPopup(sender, e, "Error in plugin ", SkinnedWindow.IconType.Error);
                    break;
                case DialogType.Information:
                    PluginPopup(sender, e, "Message from plugin ", SkinnedWindow.IconType.Information);
                    break;
                case DialogType.Choice:
                    Dispatcher.UIThread.Post(() =>
                    {
                        Dialog dialog = new Dialog(
                            type: SkinnedWindow.IconType.Information,
                            content: e.Message,
                            header: ((ICore)sender).Name + " requests your choice",
                            brText: Lang["sF_CONFIRM_NO_BTN"],
                            blEnabled: true,
                            blText: Lang["sF_CONFIRM_YES"]
                        );
                        dialog.window.ButtonRightAction = () =>
                        {
                            e.Action(false);
                            dialog.Close();
                        };
                        dialog.window.ButtonLeftAction = () =>
                        {
                            e.Action(true);
                            dialog.Close();
                        };
                        dialog.Show();
                    }

                    );
                    break;
            }
        }

        public static void PluginNotificationHandler(object sender, MessageBottle e)
        {
            Dispatcher.UIThread.Post(() =>
            {
                ActiveViewModel?.HandleIncoming(e);
            });
        }

        static Universal()
        {
            if (!Settings.AllowMultipleInstances)
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
                        ShowMessage(
                            $"{NAME} is already running.\n\nYou can configure {NAME} to allow running multiple instances at the same time in the Options menu."
                        );
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
                            AHelpers.ShutdownApp();
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

        public override void Initialize() => AvaloniaXamlLoader.Load(this);

        public override void OnFrameworkInitializationCompleted()
        {
            ApplyAvaloniaTheme(Settings.AvaloniaTheme);
            var desktop = ApplicationLifetime as IClassicDesktopStyleApplicationLifetime;
            if (desktop != null)
            {
                desktop.ShutdownMode = ShutdownMode.OnExplicitShutdown;
                desktop.Exit += (s, e) =>
                {
                    try
                    {
                        Tray.DisposeIcon();
                        PluginManager.DisposeAll();
                        _ = UserServerAPI.StopPolling();
                    }
                    catch { } // If it doesn't work, too bad.
                    if (SignedIn)
                    {
                        PluginManager.DisposeAll();
                        SoundManager.PlaySynchronous("LOGOUT");
                    }
                };
            }
            Dispatcher.UIThread.UnhandledException += App_DispatcherUnhandledException;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            AutoLaunch.Get(); // XXX to initialize the setting just in case
            if (!Colorizer.Scan())
                Universal.ExceptionHandler(
                    new Exception("Could not find any compatible colorways in directory /Colorways.")
                );
            Colorizer.LoadFromSettings();
            Migrator.Run();
            SkymuHttpClient.DefaultRequestHeaders.UserAgent.ParseAdd($"{NAME}Client-" + Universal.BUILD_INFO.GetVersionString().Replace(":", "--"));
            Settings.Default.PropertyChanged += (sender, args) =>
            {
                switch (args.PropertyName)
                {
                    case "AvaloniaTheme":
                        ApplyAvaloniaTheme(Settings.AvaloniaTheme);
                        break;
                    case "Colorway":
                    case "WindowFrame":
                    case "Theme":
                    case "NativeMenuBar":
                    case "UseSystemCulture":
                        Dialog dialog = new Dialog(
                                   type: SkinnedWindow.IconType.Question,
                                   content: "You need to restart " + Settings.BrandingName + " to fully apply this change. Would you like to save your settings and restart?",
                                   header: "Restart " + Settings.BrandingName + "?",
                                   brText: Lang["sF_CONFIRM_NO_BTN"],
                                   blEnabled: true,
                                   blText: Lang["sF_CONFIRM_YES"]
                               );
                        dialog.window.ButtonRightAction = () =>
                        {
                            dialog.Close();
                        };
                        dialog.window.ButtonLeftAction = () =>
                        {
                            Settings.Save();
                            Universal.Restart();
                        };
                        dialog.Show();
                        break;
                }
            };
            if (!Settings.UseSystemCulture)
                CultureInfo.CurrentCulture = new CultureInfo(
                    GetCultureCode(Settings.Language),
                    false
                );
            // TODO: Dynamically switch language without restart
            switch (Theme)
            {
                case "Skype7":
                    new Skype7.Login().Show();
                    break;
                case "Skype6":
                    // TODO: Make a better fix
                    // Override Settings.ActiveTab on default colorway with the proper color (#0095cc)
                    Application.Current.Resources["Settings.ActiveTab"] = new SolidColorBrush(Color.Parse("#0095cc"));
                    // Override Settings.ActiveTabText to white
                    Application.Current.Resources["Settings.ActiveTabText"] = new SolidColorBrush(Colors.White);
                    new Skype6.Login().Show();
                    break;
                case "Skype4":
                    new Skype4.Login().Show();
                    break;
                case "Skype5":
                default:
                    new Skype5.Login().Show();
                    break;
            }

            if (ConfigResetOnStartup)
            {
                ShowMessage(
                    $"{Universal.NAME} has discovered that your configuration file is corrupt or from an incompatible version of the application. " +
                    "It has been reset and your settings have been wiped.",
                    "Configuration file reset"
                );
            }

            Task.Run(() =>
            {
                while (true)
                {
                    var pipe = new NamedPipeServerStream($"{NAME}Pipe", PipeDirection.In);

                    pipe.WaitForConnection();

                    var reader = new StreamReader(pipe);

                    string msg = reader.ReadLine();

                    if (msg == "WINDOW_ACTIVATE")
                        Dispatcher.UIThread.Invoke(() =>
                        {
                            if (AHelpers.GetMainWindow()?.WindowState == WindowState.Minimized)
                                AHelpers.GetMainWindow().WindowState = WindowState.Normal;
                            AHelpers.GetMainWindow()?.Show();
                            AHelpers.GetMainWindow()?.Activate();
                        });
                    else if (msg.StartsWith("URI:"))
                    {
                        msg = msg.Substring(msg.IndexOf(":") + 1);
                        Debug.WriteLine($"[Universal] Got skymu URI: {msg}");
                        URIHandler(msg);
                    }

                    reader.Dispose();
                    pipe.Dispose();
                }
            });
            base.OnFrameworkInitializationCompleted();
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
                        Dispatcher.UIThread.Invoke(() => ActiveViewModel.SelectConversation(found));
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
                foreach (Window window in ((IClassicDesktopStyleApplicationLifetime)Current.ApplicationLifetime).Windows.ToList())
                {
                    window.Hide();
                }
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
                    SkinnedWindow.IconType.Question,
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
                dialog.window.ButtonLeftAction = () =>
                {
                    if (dialog.IsCheckBoxTicked())
                        Settings.QuitWithoutAsking = true;
                    Terminate();
                };
                dialog.Show();
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
                AHelpers.ShutdownApp();
            }
        }

        public static void ExceptionHandler(Exception ex)
        {
            string brand = Settings.BrandingName;
            Forms.Pages.ErrorWindow page = new Forms.Pages.ErrorWindow(ex.ToString());
            SkinnedWindow frame = new SkinnedWindow(page)
            {
                HeaderIcon = SkinnedWindow.IconType.Crash,
                HeaderText = "That wasn't supposed to happen...",
                Title = brand + " Error"
            };
            frame.ButtonRightAction = () => frame.Close();
            frame.ButtonRightText = Universal.Lang["sZAPBUTTON_CLOSE"];
            frame.ButtonLeftAction = () => page.CopyToClipboard();
            frame.ButtonLeftText = "Copy to clipboard";
            frame.ShowDialog(AHelpers.GetMainWindow());
        }

        public static void ShowMessage(
            string content,
            string title = null,
            SkinnedWindow.IconType icon = SkinnedWindow.IconType.Information
        )
        {
            if (title is null) title = Universal.Lang["sF_INFORM_DEFAULT_CAPTION"];
            new Dialog(
                icon,
                content,
                title,
                null,
                null,
                Universal.Lang["sF_CONFIRM_OK_BTN"]
            ).Show();
        }

        public static void NotImplemented(string feature)
        {
            new Dialog(
                SkinnedWindow.IconType.Information,
                feature + " hasn't been added to " + Settings.BrandingName + " yet.",
                "Feature not implemented",
                null,
                null,
                "OK"
            ).Show();
        }

        private static void WriteToPipe(string data)
        {
            try
            {
                var pipe = new NamedPipeClientStream(".", $"{NAME}Pipe", PipeDirection.Out);

                pipe.Connect(1000);

                var writer = new StreamWriter(pipe);
                writer.AutoFlush = true;

                writer.WriteLine(data);

                writer.Dispose();
                pipe.Dispose();
            }
            catch { }
        }

        private void ApplyAvaloniaTheme(string themeName)
        {
            if (string.IsNullOrEmpty(themeName))
                themeName = "Classic.Avalonia";

            IStyle theme;
            ThemeVariant variant = ThemeVariant.Default;

            if (themeName.Contains("Fluent"))
            {
                theme = new FluentTheme();
                var parts = themeName.Split('.'); // "Fluent", "Fluent.Light", "Fluent.Dark"
                if (parts.Length > 1)
                {
                    switch (parts[1])
                    {
                        case "Light":
                            variant = ThemeVariant.Light;
                            break;
                        case "Dark":
                            variant = ThemeVariant.Dark;
                            break;
                    }
                }
            }
            else if (themeName.Contains("Classic")) theme = new ClassicTheme();
            else theme = new SimpleTheme();

            try
            {
                foreach (var existing in Styles.Where(s => s is FluentTheme || s is SimpleTheme).ToList())
                    Styles.Remove(existing);

                Styles.Insert(0, theme);
                RequestedThemeVariant = variant;
            }
            catch (Exception ex)
            {
                Universal.ShowMessage($"Failed to apply Avalonia theme: {ex.Message}");
            }
        }

        public static void OpenURL(string url, bool safety_mode = false)
        {
            if (safety_mode)
            {
                bool notWebpage = false;
                if (!url.StartsWith("http://") && !url.StartsWith("https://") && !url.StartsWith("ftp://") && !url.StartsWith("sftp://") && !url.StartsWith("gopher://")) notWebpage = true;
                if (!notWebpage && !Settings.ShowInlineLinkWarning)
                {
                    Process.Start(new ProcessStartInfo(url) { UseShellExecute = true });
                    return;
                }
                Dialog dialog = new Dialog(
                type: notWebpage ? SkinnedWindow.IconType.Information : SkinnedWindow.IconType.Question,
                content: notWebpage ?
                "You've clicked on an inline link that does not point to a webpage, Gopher site, or FTP/SFTP server:\n" + url + "\n\nThis is most likely a harmless custom protocol registered " +
                "by a program you have installed, but it could also be an attempt to trick you into running malicious code that compromises the security of your " +
                "computer."
                :
                "You just clicked on an inline link that points to the following URL:\n" + url + "\n\nWould you still like to open it?",
                header: notWebpage ? "Open non-Web inline link?" : "Open inline link?",
                brText: Lang["sF_CONFIRM_NO_BTN"],
                blEnabled: true,
                blText: Lang["sF_CONFIRM_YES"],
                cbEnabled: !notWebpage,
                        onClosing: (s, e) =>
                        {
                            if (!notWebpage)
                            {
                                if (((Dialog)s).IsCheckBoxTicked())
                                {
                                    Settings.ShowInlineLinkWarning = false;
                                }
                                else
                                {
                                    Settings.ShowInlineLinkWarning = true;
                                }
                            }

                        }
            ); ;
                dialog.window.ButtonRightAction = () =>
                {
                    dialog.Close();
                };
                dialog.window.ButtonLeftAction = () =>
                {
                    Process.Start(new ProcessStartInfo(url) { UseShellExecute = true });
                    dialog.Close();
                };
                dialog.Show();
            }
            else Process.Start(new ProcessStartInfo(url) { UseShellExecute = true });

        }
    }
}
