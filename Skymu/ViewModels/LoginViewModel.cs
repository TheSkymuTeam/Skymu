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

/*==========================================================*/
// This code is EXPIREMENTAL and has not been reviewed by
// persfidious, patricktbp, or HUBAXE.
// It is a port of logic that previously lived in Login.xaml.cs.
// Please do not judge us on it.
/*==========================================================*/

using CommunityToolkit.Mvvm.ComponentModel;
using MiddleMan;
using QRCoder;
using Skymu.Helpers;
using Skymu.Views;
using Skymu.Views.Pages;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;

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


        public LoginViewModel(Func<IMainWindowHolder> createMainWindow)
        {
            _createMainWindow = createMainWindow;
            _pluginItems = new ObservableCollection<PluginListing>();
        }
        public void LoadPlugins()
        {
            Plugins.DisposeAll();
            Universal.PluginList = Plugins.Load("Plugins");
            int pluginIndex = 0;
            SavedCredential[] savedCredentials = Credentials.GetAll();

            foreach (var plugin in Universal.PluginList)
            {
                SavedCredential match = null;
                foreach (SavedCredential cred in savedCredentials)
                {
                    if (cred.Plugin == plugin.InternalName)
                    {
                        match = cred;
                        break;
                    }
                }

                if (match != null && PendingAutoLogin == null && Properties.Settings.Default.AutoLogin)
                {
                    PendingAutoLogin = match;
                    Universal.Plugin = plugin;
                }

                if (plugin.AuthenticationTypes.Length <= 1)
                {
                    PluginItems.Add(new PluginListing(
                        plugin.Name,
                        pluginIndex,
                        plugin.AuthenticationTypes[0].AuthType,
                        plugin.AuthenticationTypes[0].CustomTextUsername
                    ));
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
                                    name += " - username & password";
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
                        PluginItems.Add(new PluginListing(
                            name,
                            pluginIndex,
                            ati.AuthType,
                            ati.CustomTextUsername
                        ));
                    }
                }
                pluginIndex++;
            }
        }
        public void HandleProtocolSelected(PluginListing listing)
        {
            if (listing == null) return;
            if (PendingAutoLogin != null) return;
            _selectedListing = listing;
            Universal.Plugin = Universal.PluginList[listing.PluginIndex];
            PluginSelectionUpdated?.Invoke(listing);
        }

        public void RunPostLogin(IMainWindowHolder mainWindow)
        {
            Tray.PushIcon(Universal.CurrentUser.ConnectionStatus);
            Universal.HasLoggedIn = true;
            mainWindow.Show();
            Sounds.Play("login", true);
            new Updater();

            string brand = Properties.Settings.Default.BrandingName;
            PlatformType platform = Runtime.DetectOS();

            if (!Properties.Settings.Default.FirstRunCompleted)
            {
                Properties.Settings.Default.FirstRunCompleted = true;
                Properties.Settings.Default.Save();

                Dialog dlg = null;
                dlg = new Dialog(
                    WindowBase.IconType.Question,
                    brand + " sends information such as your display name and username to its user count server by default. This is done to populate the user "
                        + "count at the bottom of the sidebar, and also to form a searchable list of online users.\n\nYour data is not retained, stored, cached, sold, or otherwise used by Skymu in any way. "
                        + "Your username and display name are only used to populate the list.\n\nTo improve the accuracy of the public list, it is recommended that you click 'Yes'.",
                    "Publicly display user statistics?",
                    "Skymu User Statistics",
                    new Action(() =>
                    {
                        Properties.Settings.Default.Anonymize = true;
                        Properties.Settings.Default.Save();
                        dlg.Close();
                    }),
                    Universal.Lang["sSKYACCESS_DLG_BTN_NO"],
                    true,
                    new Action(() =>
                    {
                        Properties.Settings.Default.Anonymize = false;
                        Properties.Settings.Default.Save();
                        dlg.Close();
                    }),
                    Universal.Lang["sSKYACCESS_DLG_BTN_YES"]
                );
                dlg.ShowDialog();

                string message = null;

                if (platform == PlatformType.Unknown)
                    message = brand + " could not determine your operating system. If you are using an unsupported platform, you may encounter bugs.";
                else if (platform < PlatformType.Windows2000)
                {
                    if (platform == PlatformType.WineLegacy)
                        message = brand + " does not support Wine versions below 10.0. You may encounter significant bugs.";
                    else if (platform == PlatformType.Wine10)
                        message = brand + " has limited support for Wine 10. Some features may not work as expected.";
                    else if (platform == PlatformType.Wine11)
                        message = brand + " does not have complete support for Wine 11. Some features may not work as expected.";
                }
                else if (platform < PlatformType.WindowsVista)
                {
                    if (platform == PlatformType.WindowsXP)
                        message = brand + " does not officially support Windows XP or the One Core API, and you may encounter significant bugs. However, if you are using Projek01, you should not expect any problems.";
                    else if (platform == PlatformType.Windows2000)
                        message = brand + " does not officially support Windows 2000 or any extended kernels, and you may encounter significant bugs.";
                }
                else if (platform > PlatformType.Windows11)
                    message = brand + " has not yet been tested on your version of Windows. You may encounter bugs.";

                if (message != null)
                    Universal.MessageBox(message, "Compatibility warning");
            }

            if (!Properties.Settings.Default.SuppressOldRuntimeWarnings)
            {
                string newNetLink = String.Empty;
                int netVersion = Runtime.DetectNetVersion();
                if (netVersion < 5) return; // framework or early core (former is to be ignored, latter is impossible)
                else if (netVersion < 10)
                {
                    newNetLink = "https://dotnet.microsoft.com/en-us/download/dotnet";
                    // 6 is the last version to reliably support Windows 8.1 and below, so it's the best we can recommend
                    if (platform < PlatformType.Windows10) newNetLink += "/6.0";

                }
                if (!String.IsNullOrEmpty(newNetLink))
                {
                    Dialog dlg = null;
                    dlg = new Dialog(
                        WindowBase.IconType.Question,
                        brand + $" has detected that you have an older version of .NET installed ({netVersion}) than the latest supported for your platform. " +
                        $"It is recommended that you download the latest .NET Desktop Runtime for performance improvements, reduction in memory usage, " +
                        $"and critical security fixes.",
                        "Update your .NET runtime?",
                        "Skymu",
                        new Action(() =>
                        {
                            Properties.Settings.Default.SuppressOldRuntimeWarnings = true;
                            Properties.Settings.Default.Save();
                            dlg.Close();
                        }),
                        Universal.Lang["sZAPBUTTON_DONTSHOW"],
                        true,
                        new Action(() =>
                        {
                            Process.Start(new ProcessStartInfo
                            {
                                FileName = newNetLink,
                                UseShellExecute = true
                            });
                            dlg.Close();
                        }),
                        Universal.Lang["sSKYACCESS_DLG_BTN_YES"]
                    );
                    dlg.ShowDialog();
                }
            }
        }


        public async Task TryAutoLogin()
        {
            if (PendingAutoLogin == null)
            {
                AnimationToggleRequested?.Invoke(false);
                return;
            }

            LoginResult lr = await Task.Run(async () =>
                await Universal.Plugin.Authenticate(PendingAutoLogin)
            );

            if (lr == LoginResult.Success)
            {
                await InitiateMain(false);
            }
            else
            {
                AnimationToggleRequested?.Invoke(false);
                if (lr == LoginResult.Failure)
                    HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
            }
        }

        public async Task Login(string username, string password, bool saveCredentials = false)
        {
            if (_selectedListing == null) return;
            AnimationToggleRequested?.Invoke(true);

            var result = await Universal.Plugin.Authenticate(
                _selectedListing.AuthenticationType,
                username,
                password
            );

            if (result == LoginResult.Success)
            {
                await InitiateMain(saveCredentials);
                return;
            }

            if (result == LoginResult.TwoFARequired)
            {
                await Handle2FA(saveCredentials);
                return;
            }

            AnimationToggleRequested?.Invoke(false);
            HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
        }

        private async Task Handle2FA(bool saveCredentials)
        {
            string totp = null;

            if (_selectedListing.AuthenticationType == AuthenticationMethod.QRCode)
            {
                string qr = await Universal.Plugin.GetQRCode();
                if (!string.IsNullOrEmpty(qr))
                {
                    Dialog qrDialog = new Dialog(
                        WindowBase.IconType.ContactRequest,
                        null,
                        "Scan code to authenticate",
                        Properties.Settings.Default.BrandingName + " - Login",
                        null,
                        "Close",
                        false, null, null, false,
                        FrozenImage.GenerateFromArray(
                            new PngByteQRCode(
                                new QRCodeGenerator().CreateQrCode(qr, QRCodeGenerator.ECCLevel.Q)
                            ).GetGraphic(20)
                        )
                    );
                    qrDialog.Show();
                    LoginResult qrResult = await Universal.Plugin.AuthenticateTwoFA(null);
                    qrDialog.Close();

                    if (qrResult == LoginResult.Success)
                    {
                        await InitiateMain(saveCredentials);
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
                Properties.Settings.Default.BrandingName + " - Login",
                null,
                Universal.Lang["sZAPBUTTON_SIGNIN"],
                false, null, null, true
            );
            if (dlg.ShowDialog() == true)
                totp = dlg.TextBoxText;

            LoginResult optResult = await Universal.Plugin.AuthenticateTwoFA(totp);
            if (optResult == LoginResult.Success)
            {
                await InitiateMain(saveCredentials);
                return;
            }

            AnimationToggleRequested?.Invoke(false);
            HeaderTextRequested?.Invoke(Universal.Lang["sF_USERENTRY_ERROR_1101"]);
        }

        private async Task InitiateMain(bool saveCredentials)
        {
            if (saveCredentials)
            {
                SavedCredential cred = await Universal.Plugin.StoreCredential();
                if (cred != null)
                    Credentials.Save(cred);
            }

            HeaderTextRequested?.Invoke("Loading user data");

            IMainWindowHolder mainWindow = _createMainWindow();
            mainWindow.Ready += (s, e) => MainWindowReady?.Invoke(mainWindow);
            _ = mainWindow.BeginLoading();
        }

        public class PluginListing
        {
            public PluginListing(string name, int index, AuthenticationMethod authType, string textUsername)
            {
                DisplayName = name;
                PluginIndex = index;
                AuthenticationType = authType;
                TextUsername = textUsername;
            }

            public string DisplayName { get; private set; }
            public string TextUsername { get; private set; }
            public int PluginIndex { get; private set; }
            public AuthenticationMethod AuthenticationType { get; private set; }
        }
    }
}
