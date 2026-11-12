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
using System.Windows.Media.Imaging;
using Skymu.Preferences;
using Skymu.Forms;
using Skymu.Forms.Pages;
using System.Threading;
using System.Windows.Controls;
using System.Windows.Media;
using Skymu.Native.Windows;
using Skymu.Sounds;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using System.IO;

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

        bool allowAutoLogin = true;

        internal static SavedCredential ForcedLogin { get; set; }
        private bool _forcedLoginPending;

        public LoginViewModel(Func<IMainWindowHolder> createMainWindow)
        {
            _createMainWindow = createMainWindow;
            _pluginItems = new ObservableCollection<PluginListing>();
            if (!Settings.SWSOptOutShown)
            {
                Dialog dlg = null;
                dlg = new Dialog(
                    WindowBase.IconType.Question,
                    "Don't want to read this? Almost all users will want to click Yes. Clicking No leads to loss of client functionality. If you are very concerned about privacy, read on. Once upon a time...\n\n" +
                    Universal.NAME + " sends information such as your display name and username to its user count server by default. This is done to populate the user "
                        + "count at the bottom of the sidebar, and also to form a searchable list of online users. Your personal data is not saved, stored, sold, or otherwise used by us in any way. If you are fine with this, click 'Yes', otherwise click 'Yes, but keep me anonymous.'"
                        + "\n\nSkymu also has the ability to show an interactive Web page with your profile, status, and recent contacts, along with community-submitted material. This page is retrieved from our servers at launch."
                        + "\n\nBy clicking either of the 'Yes' options you consent to us storing a minimal amount of client connection information to prevent DDoS attacks and vandalism, such as your IP and connection time. Every Web site you visit also stores this information and this is not out of the ordinary."
                        + " The client information we store is detailed at " + Universal.SKYMU_WEBSITE_PRIVACY + ". It's a very short privacy policy because we don't collect your personal data (that could lead to a lot of legal liabilities for us!), we're only interested in keeping our infrastructure secure and " +
                        "running. Knowing all this, do you still want to connect to Skymu web services?",
                    "Optional privacy configurations",
                    $"{Universal.NAME} web service manager",
                    new Action(() => // no
                    {
                        Settings.SWSOptOutShown = true;
                        Settings.Anonymize = true;
                        Settings.DisableSWS = true;
                        Settings.Save();
                        dlg.Close();
                    }),
                    Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                    true,
                    new Action(() => // yes and don't anonymize
                    {
                        Settings.SWSOptOutShown = true;
                        Settings.Anonymize = false;
                        Settings.DisableSWS = false;
                        Settings.Save();
                        dlg.Close();
                    }),
                    Universal.Lang["sSKYACCESS_DLG_BTN_YES"],
                    false,
                    null,
                    null,
                    true,
                    new Action(() => // yes and anonymize
                    {
                        Settings.SWSOptOutShown = true;
                        Settings.Anonymize = true;
                        Settings.DisableSWS = false;
                        Settings.Save();
                        dlg.Close();
                    }),
                    "Yes, but keep me anonymous"
                );
                dlg.ShowDialog();
            }
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
            if (autoTarget == null && Settings.AutoLogin && allowAutoLogin)
            {
                autoTarget = savedCredentials.FirstOrDefault(c =>
                    c.AutoLogin && Universal.PluginList.Any(p => p.InternalName == c.Plugin));
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

            // warn the user once if they're running an old OS like XP / old Wine version
            if (!Settings.OldPlatformWarningShown)
            {
                string message = null;

                if (Universal.Platform == PlatformType.Unknown)
                    message = Settings.BrandingName + " could not determine your operating system. If you are using an unsupported platform, you may encounter bugs.";

                else if (Universal.Platform < PlatformType.Windows2000)
                {
                    if (Universal.Platform == PlatformType.WineLegacy)
                        message = Settings.BrandingName + " does not support Wine versions older than 10. You may encounter significant bugs.";
                    else if (Universal.Platform == PlatformType.Wine10)
                        message = Settings.BrandingName + " has limited support for Wine 10. Some features may not work as expected.";
                    else if (Universal.Platform == PlatformType.Wine11)
                        message = Settings.BrandingName + " does not have complete support for Wine 11. Some features may not work as expected.";
                }

                else if (Universal.Platform < PlatformType.WindowsVista)
                {
                    if (Universal.Platform == PlatformType.WindowsXP)
                        message = Settings.BrandingName + " does not officially support Windows XP or the One Core API, and you may encounter " +
                            "significant bugs. However, if you are using Projek01, you should not expect any problems, and" +
                            " if you are using EAZY BLACK's official Skymu XP wrapper you should be (mostly) fine.";
                    else if (Universal.Platform == PlatformType.Windows2000)
                        message = Settings.BrandingName + " does not officially support Windows 2000 or any extended kernels, and you may encounter significant bugs.";
                }

                // Windows is well known for its backwards compatibility, this should never be an issue.
                // else if (platform > PlatformType.Windows11) message = brand + " has not yet been tested on your version of Windows. You may encounter bugs.";

                if (message != null)
                    Universal.ShowMessage(message, "Compatibility warning");
            }

            if (!Settings.ShowOldDotNetWarnings)
            {
                string newNetLink = string.Empty;
                int netVersion = Runtime.DetectNetVersion();
                if (netVersion < 5) return; // framework (to be ignored for now) or early core (this is impossible afaik)
                else if (netVersion < 10)
                {
                    newNetLink = Universal.NET_DOWNLOAD_LINK;
                    // 6 is the last version to reliably support Windows 8.1 and below, so it's the best recommendation
                    if (Universal.Platform < PlatformType.Windows10) newNetLink = Universal.NET_SIX_DOWNLOAD_LINK;

                }
                if (!String.IsNullOrEmpty(newNetLink))
                {
                    Dialog dlg = null;
                    dlg = new Dialog(
                        WindowBase.IconType.Question,
                        Settings.BrandingName + $" has detected that you have an older version of .NET installed ({netVersion}) than the latest supported for your platform. " +
                        $"It is recommended that you download the latest .NET Desktop Runtime for performance improvements, reduction in memory usage, " +
                        $"and critical security fixes.",
                        "Update your .NET runtime?",
                        null,
                        new Action(() =>
                        {
                            Settings.ShowOldDotNetWarnings = (bool)dlg.CheckBox.IsChecked;
                            Settings.Save();
                            dlg.Close();
                        }),
                        Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                        true,
                        new Action(() =>
                        {
                            Settings.ShowOldDotNetWarnings = (bool)dlg.CheckBox.IsChecked;
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
                    dlg.ShowDialog();
                }
            }
        }

        public PluginListing GetPreferredDefaultListing()
        {
            if (PluginItems == null || PluginItems.Count == 0)
                return null;

            // to not confuse users, the vast majority of who are looking for discord
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


        public async Task TryAutoLogin()
        {

            if (PendingAutoLogin == null)
            {
                AnimationToggleRequested?.Invoke(false);
                return;
            }

            _forcedLoginPending = false;
            Tray.SetConnecting();

            LoginResult lr = await Task.Run(async () =>
                await Universal.Plugin.Authenticate(PendingAutoLogin)
            );

            if (lr == LoginResult.Success)
            {
                await InitiateMain();
            }
            else
            {
                Tray.SetStatus(PresenceStatus.Offline);
                PendingAutoLogin = null;
                _selectedListing = PendingAutoLoginListing;
                PluginSelectionUpdated?.Invoke(PendingAutoLoginListing);
                AnimationToggleRequested?.Invoke(false);
                if (lr == LoginResult.Failure)
                    HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
            }
        }

        public async Task Login(string username, string password)
        {
            if (_selectedListing == null) return;
            AnimationToggleRequested?.Invoke(true);
            Tray.SetConnecting();

            var result = await Universal.Plugin.Authenticate(
                _selectedListing.AuthenticationType,
                username,
                password
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

            Tray.SetStatus(PresenceStatus.Offline);
            AnimationToggleRequested?.Invoke(false);
            HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
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
                        WindowBase.IconType.ContactRequest,
                        null,
                        "Scan code to authenticate",
                        Settings.BrandingName + " - Login",
                        null,
                        "Cancel",
                        false, null, null, false,
                        qrImage
                    );
                    EventHandler onClosed = (s, e) => AnimationToggleRequested?.Invoke(false);
                    qrDialog.Closed += onClosed;
                    qrDialog.Show();
                    LoginResult qrResult = await Universal.Plugin.AuthenticateTwoFA(null);
                    qrDialog.Closed -= onClosed;
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
                WindowBase.IconType.ContactRequest,
                Universal.Plugin.Name + " has requested that you provide a 2FA code to log in. Please enter it below.",
                "Two-factor authentication required",
                Settings.BrandingName + " - Login",
                null,
                Universal.Lang["sZAPBUTTON_SIGNIN"],
                false, null, null, true
            );
            if (dlg.ShowDialog() == true)
                totp = dlg.TextBoxText;

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
                SavedCredential cred = await Universal.Plugin.StoreCredential();
                if (cred != null)
                    CredentialManager.Save(cred);
            }

            HeaderTextRequested?.Invoke("Loading user data");

            IMainWindowHolder mainWindow = _createMainWindow();
            mainWindow.Ready += (s, e) => MainWindowReady?.Invoke(mainWindow);
            _ = mainWindow.BeginLoading();
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
