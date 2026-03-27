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


using CommunityToolkit.Mvvm.ComponentModel;
using MiddleMan;
using QRCoder;
using Skymu.Helpers;
using Skymu.Views;
using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;

namespace Skymu.ViewModels
{
    public partial class LoginViewModel : ObservableObject
    {
        private PluginListing _selectedListing;
        private readonly Func<IMainWindowHolder> _createMainWindow;

        // ------ Events for view to react to ------

        /// <summary>true = show spinner/throbber, false = show login controls</summary>
        public event Action<bool> AnimationToggleRequested;

        /// <summary>View should update the header/status label text.</summary>
        public event Action<string> HeaderTextRequested;

        /// <summary>Fired when a plugin selection changes so the view can update its own UI.</summary>
        public event Action<PluginListing> PluginSelectionUpdated;

        /// <summary>Fired when the main window is ready to be shown.  The view should show it and close itself.</summary>
        public event Action<IMainWindowHolder> MainWindowReady;

        // ------ Observable state ------

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

        /// <summary>Non-null while an auto-login credential is pending.</summary>
        public SavedCredential PendingAutoLogin { get; private set; }

        // ------ Constructor ------

        public LoginViewModel(Func<IMainWindowHolder> createMainWindow)
        {
            _createMainWindow = createMainWindow;
            _pluginItems = new ObservableCollection<PluginListing>();
        }

        // ------ Methods ------

        /// <summary>Load plugins and detect auto-login.  Call from the view's Loaded handler.</summary>
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

        /// <summary>Call when the user selects a different protocol/plugin.</summary>
        public void HandleProtocolSelected(PluginListing listing)
        {
            if (listing == null) return;
            _selectedListing = listing;
            Universal.Plugin = Universal.PluginList[listing.PluginIndex];
            PluginSelectionUpdated?.Invoke(listing);
        }

        /// <summary>Attempt auto-login if a saved credential exists.  Call from ContentRendered.</summary>
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

        /// <summary>
        /// Authenticate with the currently selected plugin.
        /// <paramref name="saveCredentials"/> — whether to persist credentials after success.
        /// </summary>
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

        // The PluginListing class (previously inner class in Login.xaml.cs)
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
