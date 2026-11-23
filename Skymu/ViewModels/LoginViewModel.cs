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

using CommunityToolkit.Mvvm.ComponentModel;
using System.Linq;
using QRCoder;
using Skymu.Credentials;
using Skymu.Helpers;
using Skymu.Plugins;
using Skymu.Preferences;
using Skymu.Forms;
using Skymu.Forms.Pages;
using System.Threading;
using Skymu.Sounds;
using Avalonia.Media.Imaging;
using Avalonia.Controls;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using System.IO;
using Avalonia.Threading;
using Skymu.Crossplatform;

namespace Skymu.ViewModels
{
    public partial class LoginViewModel : ObservableObject
    {
        private PluginListing _selectedListing;
        private readonly Func<IMainWindowHolder> _createMainWindow;

        public event Action<bool> AnimationToggleRequested;
        public event Action<string> HeaderTextRequested;
        public event Action<PluginListing> PluginSelectionUpdated;
        public event Action<IMainWindowHolder> MainWindowReady;

        private ObservableCollection<PluginListing> _pluginItems;
        public ObservableCollection<PluginListing> PluginItems
        {
            get => _pluginItems;
            set => SetProperty(ref _pluginItems, value);
        }

        public PluginListing SelectedListing
        {
            get { return _selectedListing; }
            set
            {
                if (SetProperty(ref _selectedListing, value))
                    HandleProtocolSelected(value);
            }
        }

        public SavedCredential PendingAutoLogin { get; private set; }
        public PluginListing PendingAutoLoginListing { get; private set; }
        public SavedCredential[] SavedCredentials { get; private set; }

        public static bool ForceLoginPromptThisTime { get; set; } = false;

        bool allowAutoLogin = true;

        internal static SavedCredential ForcedLogin { get; set; }
        private bool _forcedLoginPending;

        public LoginViewModel(Func<IMainWindowHolder> createMainWindow)
        {
            _createMainWindow = createMainWindow;
            _pluginItems = new ObservableCollection<PluginListing>();
            Universal.RequestLoginSpinnerOff = () =>
            {
                AnimationToggleRequested?.Invoke(false);
                HeaderTextRequested?.Invoke(Universal.Lang["sF_LOGIN_WELCOME"]);
            };
            if (!Settings.SWSOptOutShown)
                ShowSwsConnectDialog();
        }
        private static void ShowSwsConnectDialog()
        {
            Dialog dlg = null;
            dlg = new Dialog(
                type: SkinnedWindow.IconType.Question,
                content:
                    Universal.NAME + " can connect to its web services to show the user count at the bottom of the sidebar, to make the updater function, and to optionally display community content in the main window. "
                    + "Choosing No leads to loss of client functionality."
                    + "\n\nWe do store minimal connection information, such as your IP and connection time, "
                    + "to prevent DDoS attacks and vandalism.",
                header: "Connect to Skymu Web Services?",
                title: $"{Universal.NAME} web service manager",
                brAction: () => // no
                {
                    Settings.SWSOptOutShown = true;
                    Settings.Anonymize = true;
                    Settings.DisableSWS = true;
                    Settings.Save();
                    dlg.Close();
                },
                brText: Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                blEnabled: true,
                blAction: () => // yes
                {
                    Settings.SWSOptOutShown = true;
                    Settings.DisableSWS = false;
                    Settings.Anonymize = true; // safe default until they answer the next dialog
                    Settings.Save();
                    dlg.Close();
                    ShowPublishDataDialog();
                },
                blText: Universal.Lang["sSKYACCESS_DLG_BTN_YES"]
            );
            dlg.Show();
        }

        private static void ShowPublishDataDialog()
        {
            Dialog dlg = null;
            dlg = new Dialog(
                type: SkinnedWindow.IconType.Question,
                content:
                    "Optionally, " + Universal.NAME + " can send your display name and username to appear in a searchable list of online users. "
                    + "Choosing No keeps your info anonymous.",
                header: "Publish your info?",
                title: $"{Universal.NAME} web service manager",
                brAction: () => // no
                {
                    Settings.UserDataPublishOptInShown = true;
                    Settings.Anonymize = true;
                    Settings.Save();
                    dlg.Close();
                },
                brText: Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                blEnabled: true,
                blAction: () => // yes
                {
                    Settings.UserDataPublishOptInShown = true;
                    Settings.Anonymize = false;
                    Settings.Save();
                    dlg.Close();
                },
                blText: Universal.Lang["sSKYACCESS_DLG_BTN_YES"]
            );
            dlg.Show();
        }
        public void LoadPlugins()
        {
            PluginManager.DisposeAll();

            string runpath = Path.Combine(Path.GetDirectoryName(Path.GetFullPath(Environment.GetCommandLineArgs()[0])), "Plugins");
#if DEBUG
            Universal.PluginList = PluginManager.Load(string.IsNullOrWhiteSpace(Settings.CustomPluginPath)
                ? runpath
                : Settings.CustomPluginPath
            );
#else
            Universal.PluginList = PluginManager.Load(runpath);
#endif
            int pluginIndex = 0;
            SavedCredential[] savedCredentials = CredentialManager.GetAll();
            SavedCredentials = savedCredentials;

#if DEBUG
            allowAutoLogin = !DebugConfig.DisableAutoLogin && !DebugConfig.TestMode;
#endif

            SavedCredential autoTarget = ForcedLogin;
            ForcedLogin = null;
            _forcedLoginPending = autoTarget != null;
            if (autoTarget == null && Settings.AutoLogin && allowAutoLogin && !ForceLoginPromptThisTime)
            {
                autoTarget = savedCredentials.FirstOrDefault(c =>
                    c.AutoLogin && Universal.PluginList.Any(p => p.InternalName == c.Plugin));
            }

            if (ForceLoginPromptThisTime)
            {
                ForceLoginPromptThisTime = false; // we already blocked the auto login, so reset the flag for next time
            }

            foreach (var plugin in Universal.PluginList)
            {
#if DEBUG
                if (DebugConfig.TestMode && plugin.InternalName.ToLowerInvariant() == "stub")
                {
                    PendingAutoLogin = new SavedCredential(new User("Saul Goodman", "sgoodman", "sgoodman"), "sgoodman", AuthenticationMethod.Token, plugin.InternalName.ToLowerInvariant());
                    Universal.Plugin = plugin;
                    Universal.CallPlugin = Universal.Plugin as ICall;
                }
#endif

                SavedCredential match = autoTarget != null && autoTarget.Plugin == plugin.InternalName ? autoTarget : null;

                if (plugin.AuthenticationTypes.Length <= 1)
                {
                    var listing = new PluginListing(
                        plugin.Name,
                        pluginIndex,
                        plugin.InternalName,
                        plugin.AuthenticationTypes[0].AuthType,
                        plugin.AuthenticationTypes[0].CustomTextUsername,
                        plugin.AuthenticationTypes[0].CustomTextPassword
                    );

                    if (match != null && PendingAutoLogin == null)
                    {
                        PendingAutoLogin = match;
                        PendingAutoLoginListing = listing;
                        Universal.Plugin = plugin;
                        Universal.CallPlugin = Universal.Plugin as ICall;
                    }
                    PluginItems.Add(listing);
#if DEBUG
                    if (DebugConfig.TestMode && plugin.InternalName.ToLowerInvariant() == "stub")
                        PendingAutoLoginListing = listing;
#endif
                }
                else
                {
                    foreach (AuthTypeInfo ati in plugin.AuthenticationTypes)
                    {
                        string name = plugin.Name;
                        if (ati.CustomTextAuthType != null)
                        {
                            name += " - " + ati.CustomTextAuthType;
                        }
                        else
                        {
                            switch (ati.AuthType)
                            {
                                case AuthenticationMethod.Password:
                                    name += " - password";
                                    break;
                                case AuthenticationMethod.QRCode:
                                    name += " - QR code";
                                    break;
                                case AuthenticationMethod.Passwordless:
                                    name += " - passwordless";
                                    break;
                                case AuthenticationMethod.External:
                                    name += " - external login";
                                    break;
                                case AuthenticationMethod.Token:
                                    name += " - token login";
                                    break;
                                default:
                                    continue;
                            }
                        }
                        var listing = new PluginListing(name, pluginIndex, plugin.InternalName, ati.AuthType, ati.CustomTextUsername, ati.CustomTextPassword);
                        if (match != null && PendingAutoLogin == null) // TODO check against authentication type too?
                        {
                            PendingAutoLogin = match;
                            PendingAutoLoginListing = listing;
                            Universal.Plugin = plugin;
                            Universal.CallPlugin = Universal.Plugin as ICall;
                        }
                        PluginItems.Add(listing);
                    }
                }
                pluginIndex++;
            }
        }
        public void HandleProtocolSelected(PluginListing listing)
        {
            if (listing == null || PendingAutoLogin != null) return;
            _selectedListing = listing;
            Universal.Plugin = Universal.PluginList[listing.PluginIndex];
            Universal.CallPlugin = Universal.Plugin as ICall;
            PluginSelectionUpdated?.Invoke(listing);
        }

        public void ClearPendingAutoLogin()
        {
            if (_forcedLoginPending)
                return;

            PendingAutoLogin = null;
            PendingAutoLoginListing = null;
        }

        public void RunPostLogin(IMainWindowHolder mainWindow)
        {
            Tray.SetStatus(Universal.CurrentUser.ConnectionStatus);
            Universal.SignedIn = true;
            mainWindow.Show();
            SoundManager.Play("LOGIN");
            new Updater();

            // warn the user once if they're running an old version of Windows (TODO WARNINGS FOR MAC/LINUX)
            if (!Settings.OldPlatformWarningShown && Universal.Platform.OS == OS.Windows)
            {
                string message = null;

                if (Universal.Platform.NTVersion < 6.1)
                {
                    message = Settings.BrandingName + " does not officially support Windows Vista or below. You may encounter bugs.";
                }

                // Windows is well known for its backwards compatibility, this should never be an issue.
                // else if (Universal.Platform.NTVersion > 10) message = brand + " has not yet been tested on your version of Windows. You may encounter bugs.";

                if (message != null)
                    Universal.ShowMessage(message, "Compatibility warning");
            }

            if (!Settings.ShowOldDotNetWarnings && Universal.Platform.OS == OS.Windows) // other platforms bundle the .NET runtime
            {
                string newNetLink = string.Empty;
                int netVersion = Universal.Platform.NetVersion;
                if (netVersion < 5) return; // framework (to be ignored for now) or early core (this is impossible afaik)
                else if (netVersion < 10)
                {
                    newNetLink = Universal.NET_DOWNLOAD_LINK;
                    // 6 is the last version to reliably support Windows 8.1 and below, so it's the best recommendation
                    if (Universal.Platform.NTVersion < 10.0) newNetLink = Universal.NET_SIX_DOWNLOAD_LINK;

                }
                if (!String.IsNullOrEmpty(newNetLink))
                {
                    Dialog dlg = null;
                    dlg = new Dialog(
                        SkinnedWindow.IconType.Question,
                        Settings.BrandingName + $" has detected that you have an older version of .NET installed ({netVersion}) than the latest supported for your platform. " +
                        $"It is recommended that you download the latest .NET Desktop Runtime for performance improvements, reduction in memory usage, " +
                        $"and critical security fixes.",
                        "Update your .NET runtime?",
                        null,
                        new Action(() =>
                        {
                            Settings.ShowOldDotNetWarnings = dlg.IsCheckBoxTicked();
                            Settings.Save();
                            dlg.Close();
                        }),
                        Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                        true,
                        new Action(() =>
                        {
                            Settings.ShowOldDotNetWarnings = dlg.IsCheckBoxTicked();
                            Settings.Save();
                            Process.Start(new ProcessStartInfo
                            {
                                FileName = newNetLink,
                                UseShellExecute = true
                            });
                            dlg.Close();
                        }),
                        Universal.Lang["sSKYACCESS_DLG_BTN_YES"], false, null, null, false, null, null, true
                    );
                    dlg.Show();
                }
            }
        }

        public PluginListing GetPreferredDefaultListing()
        {
            if (PluginItems == null || PluginItems.Count == 0)
                return null;

            // to not confuse certain idiots who don't know how to use a dropdown
            // there are more of these than you would expect
            var discordListings = PluginItems
                .Where(p => string.Equals(p.InternalName, "discord", StringComparison.OrdinalIgnoreCase))
                .ToList();

            if (discordListings.Count > 0)
            {
                var discordPassword = discordListings.FirstOrDefault(p => p.AuthenticationType == AuthenticationMethod.Password);
                if (discordPassword != null)
                    return discordPassword;

                var discordQr = discordListings.FirstOrDefault(p => p.AuthenticationType == AuthenticationMethod.QRCode);
                if (discordQr != null)
                    return discordQr;

                return discordListings[0];
            }

            return PluginItems[0];
        }


        private static async Task WithTimeout(Task task, TimeSpan timeout, string message)
        {
            var winner = await Task.WhenAny(task, Task.Delay(timeout));
            if (winner != task)
                throw new TimeoutException(message);
            await task;
        }

        private static async Task<T> WithTimeout<T>(Task<T> task, TimeSpan timeout, string message)
        {
            var winner = await Task.WhenAny(task, Task.Delay(timeout));
            if (winner != task)
                throw new TimeoutException(message);
            return await task;
        }

        private void ResetLoginUi(string header = null)
        {
            Dispatcher.UIThread.Post(() =>
            {
                Tray.SetStatus(PresenceStatus.Offline);
                AnimationToggleRequested?.Invoke(false);
                if (header != null)
                    HeaderTextRequested?.Invoke(header);
            });
        }

        private void SetLoginHeader(string text) =>
            Dispatcher.UIThread.Post(() => HeaderTextRequested?.Invoke(text));

        public async Task TryAutoLogin()
        {

            if (PendingAutoLogin == null)
            {
                AnimationToggleRequested?.Invoke(false);
                return;
            }

            if (Universal.Plugin == null)
            {
                ResetLoginUi(Universal.Lang["sF_LOGIN_WELCOME"]);
                return;
            }

            _forcedLoginPending = false;
            Tray.SetConnecting();

            try
            {
                LoginResult lr = await WithTimeout(
                    Task.Run(async () =>
                        await Universal.Plugin.Authenticate(PendingAutoLogin).ConfigureAwait(false)),
                    TimeSpan.FromSeconds(45),
                    "Sign-in timed out. The service may be down or your saved credentials may be stale."
                );

                if (lr == LoginResult.Success)
                {
                    await InitiateMain();
                }
                else
                {
                    PendingAutoLogin = null;
                    _selectedListing = PendingAutoLoginListing;
                    PluginSelectionUpdated?.Invoke(PendingAutoLoginListing);
                    ResetLoginUi(lr == LoginResult.Failure
                        ? Universal.Lang["sF_USERENTRY_ERROR_1101"]
                        : Universal.Lang["sF_LOGIN_WELCOME"]);
                }
            }
            catch (Exception ex)
            {
                PendingAutoLogin = null;
                ResetLoginUi(Universal.Lang["sF_LOGIN_WELCOME"]);
                await Dispatcher.UIThread.InvokeAsync(() =>
                {
                    if (ex is TimeoutException)
                        Universal.ShowMessage(ex.Message, "Sign-in timed out");
                    else
                        Universal.ExceptionHandler(ex);
                });
            }
        }

        public async Task Login(string username, string password)
        {
            if (_selectedListing == null) return;
            if (Universal.Plugin == null) return;
            AnimationToggleRequested?.Invoke(true);
            Tray.SetConnecting();

            try
            {
                var result = await WithTimeout(
                    Task.Run(async () =>
                        await Universal.Plugin.Authenticate(
                            _selectedListing.AuthenticationType,
                            username,
                            password
                        ).ConfigureAwait(false)),
                    TimeSpan.FromSeconds(45),
                    "Sign-in timed out. Check your network or try again."
                );

                if (result == LoginResult.Success)
                {
                    await InitiateMain();
                    return;
                }

                if (result == LoginResult.TwoFARequired)
                {
                    await Handle2FA();
                    return;
                }

                ResetLoginUi(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
            }
            catch (Exception ex)
            {
                ResetLoginUi(Universal.Lang["sF_LOGIN_WELCOME"]);
                await Dispatcher.UIThread.InvokeAsync(() =>
                {
                    if (ex is TimeoutException)
                        Universal.ShowMessage(ex.Message, "Sign-in timed out");
                    else
                        Universal.ExceptionHandler(ex);
                });
            }
        }

        private async Task Handle2FA()
        {
            string totp = null;

            if (_selectedListing.AuthenticationType == AuthenticationMethod.QRCode)
            {
                string qr = await Universal.Plugin.GetQRCode();
                if (!string.IsNullOrEmpty(qr))
                {
                    // Captcha.hCaptcha.ShowPrompt("blablabla", "blablabla");
                    Image qrImage = new Image();
                    qrImage.Source = ImageHelper.GenerateFromArray(
                            new PngByteQRCode(
                                new QRCodeGenerator().CreateQrCode(qr, QRCodeGenerator.ECCLevel.Q)
                            ).GetGraphic(20)
                        );
                    qrImage.Width = 250;
                    qrImage.Height = 250;
                    Dialog qrDialog = new Dialog(
                        SkinnedWindow.IconType.ContactRequest,
                        null,
                        "Scan code to authenticate",
                        Settings.BrandingName + " - Login",
                        null,
                        "Cancel",
                        false, null, null, false,
                        qrImage
                    );
                    EventHandler onClosed = (s, e) => AnimationToggleRequested?.Invoke(false);
                    qrDialog.window.Closed += onClosed;
                    qrDialog.Show();
                    LoginResult qrResult = await Universal.Plugin.AuthenticateTwoFA(null);
                    qrDialog.window.Closed -= onClosed;
                    qrDialog.Close();
                    if (qrResult == LoginResult.Success)
                    {
                        await InitiateMain();
                        return;
                    }
                }
                AnimationToggleRequested?.Invoke(false);
                HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
                return;
            }

            var dlg = new Dialog(
                SkinnedWindow.IconType.ContactRequest,
                Universal.Plugin.Name + " has requested that you provide a 2FA code to log in. Please enter it below.",
                "Two-factor authentication required",
                Settings.BrandingName + " - Login",
                null,
                Universal.Lang["sZAPBUTTON_SIGNIN"],
                false, null, null, true
            );
            if (await dlg.ShowAsync() == true)
                totp = dlg.TextBoxContent;

            LoginResult optResult = await Universal.Plugin.AuthenticateTwoFA(totp);
            if (optResult == LoginResult.Success)
            {
                await InitiateMain();
                return;
            }

            AnimationToggleRequested?.Invoke(false);
            HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
        }

        private async Task InitiateMain()
        {
            Debug.WriteLine($"[SKYMU] Login success. Initiating main window...");
            if (Settings.SaveCredentials)
            {
                SavedCredential cred = await Task.Run(async () =>
                    await Universal.Plugin.StoreCredential().ConfigureAwait(false));
                if (cred != null)
                    CredentialManager.Save(cred);
            }

            SetLoginHeader("Loading user data");

            IMainWindowHolder mainWindow = null;
            var readyTcs = new TaskCompletionSource<bool>(
                TaskCreationOptions.RunContinuationsAsynchronously);

            void AttachMainWindow()
            {
                mainWindow = _createMainWindow();
                EventHandler onReady = null;
                onReady = (s, e) =>
                {
                    mainWindow.Ready -= onReady;
                    readyTcs.TrySetResult(true);
                    MainWindowReady?.Invoke(mainWindow);
                };
                mainWindow.Ready += onReady;
                _ = mainWindow.BeginLoading();
            }

            if (Dispatcher.UIThread.CheckAccess())
                AttachMainWindow();
            else
                await Dispatcher.UIThread.InvokeAsync(AttachMainWindow);

            try
            {
                await WithTimeout(
                    readyTcs.Task,
                    TimeSpan.FromSeconds(90),
                    "Loading the main window timed out."
                );
            }
            catch (Exception ex)
            {
                PendingAutoLogin = null;
                ResetLoginUi(Universal.Lang["sF_LOGIN_WELCOME"]);
                await Dispatcher.UIThread.InvokeAsync(() =>
                {
                    if (ex is TimeoutException)
                        Universal.ShowMessage(
                            ex.Message
                                + " Try the Stub plugin to verify the client, or pick a different account in the protocol list.",
                            "Loading timed out");
                    else
                        Universal.ExceptionHandler(ex);
                });
            }
        }

        public class PluginListing
        {
            public PluginListing(string name, int index, string internalName, AuthenticationMethod authType, string textUsername, string textPassword)
            {
                DisplayName = name;
                PluginIndex = index;
                InternalName = internalName;
                AuthenticationType = authType;
                TextUsername = textUsername;
                TextPassword = textPassword;
            }

            public string DisplayName { get; private set; }
            public int PluginIndex { get; private set; }
            public string InternalName { get; private set; }
            public AuthenticationMethod AuthenticationType { get; private set; }
            public string TextUsername { get; private set; }
            public string TextPassword { get; private set; }
        }
    }
}
