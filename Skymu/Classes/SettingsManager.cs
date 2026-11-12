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

using Skymu.Enumerations;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Reflection;
using System.Xml.Linq;
using OmegaAOL.Bifrost.Tls;

namespace Skymu.Preferences
{
    public static class Settings
    {
        private const int ConfigRevision = 3;

        #region UI/Devices

        public static string InputName
        {
            get => SELECT("InputName", string.Empty, "UI/Devices");
            set => WRITE("InputName", value, nameof(InputName), "UI/Devices");
        }

        public static string OutputName
        {
            get => SELECT("OutputName", string.Empty, "UI/Devices");
            set => WRITE("OutputName", value, nameof(OutputName), "UI/Devices");
        }

        public static string RingingName
        {
            get => SELECT("RingingName", string.Empty, "UI/Devices");
            set => WRITE("RingingName", value, nameof(RingingName), "UI/Devices");
        }

        #endregion

        #region UI/General

        public static bool CheckUpdates
        {
            get => SELECT("CheckUpdates", true, "UI/General");
            set => WRITE("CheckUpdates", value, nameof(CheckUpdates), "UI/General");
        }

        public static string Language
        {
            get => SELECT("Language", "English", "UI/General");
            set => WRITE("Language", value, nameof(Language), "UI/General");
        }
        public static bool UseSystemCulture
        {
            get => SELECT("UseSystemCulture", true, "UI/General");
            set => WRITE("UseSystemCulture", value, nameof(UseSystemCulture), "UI/General");
        }

        public static bool EnableNotifications
        {
            get => SELECT("EnableNotifications", true, "UI/General");
            set => WRITE("EnableNotifications", value, nameof(EnableNotifications), "UI/General");
        }
        public static bool QuitWithoutAsking
        {
            get => SELECT("QuitWithoutAsking", false, "UI/General");
            set => WRITE("QuitWithoutAsking", value, nameof(QuitWithoutAsking), "UI/General");
        }
        /// <summary> true = do not inform </summary>
        public static bool InformDND
        {
            get => SELECT("InformDND", false, "UI/General");
            set => WRITE("InformDND", value, nameof(InformDND), "UI/General");
        }
        /// <summary> true = already closed the "this is converstaions list" popup on Skype 4 </summary>
        public static bool InboxNoticeShown
        {
            get => SELECT("InboxNoticeShown", false, "UI/General");
            set => WRITE("InboxNoticeShown", value, nameof(InboxNoticeShown), "UI/General");
        }
        /// <summary> true = hide the sidebar on call start </summary>
        public static bool HideLeftHandSide
        {
            get => SELECT("HideLeftHandSide", false, "UI/General");
            set => WRITE("HideLeftHandSide", value, nameof(HideLeftHandSide), "UI/General");
        }

        #endregion

        #region UI/Live

        public static bool Watermark
        {
            get => SELECT("Watermark", true, "UI/Live");
            set => WRITE("Watermark", value, nameof(Watermark), "UI/Live");
        }

        #endregion

        #region UI/Login

        public static bool AutoLogin
        {
            get => SELECT("AutoLogin", true, "UI/Login");
            set => WRITE("AutoLogin", value, nameof(AutoLogin), "UI/Login");
        }

        public static bool SaveCredentials
        {
            get => SELECT("SaveCredentials", true, "UI/Login");
            set => WRITE("SaveCredentials", value, nameof(SaveCredentials), "UI/Login");
        }

        #endregion

        #region UI/MainWindow

        public static double ConvListWidth
        {
            get => SELECT("ConvListWidth", -1.0, "UI/MainWindow");
            set => WRITE("ConvListWidth", value, nameof(ConvListWidth), "UI/MainWindow");
        }

        public static bool SaveWindowPosition
        {
            get => SELECT("SaveWindowPosition", true, "UI/MainWindow");
            set => WRITE("SaveWindowPosition", value, nameof(SaveWindowPosition), "UI/MainWindow");
        }

        #endregion

        #region UI/MainWindow40

        public static double Height
        {
            get => SELECT("Height", (double)-1, "UI/MainWindow40");
            set => WRITE("Height", value, nameof(Height), "UI/MainWindow40");
        }

        public static bool Maximized
        {
            get => SELECT("Maximized", false, "UI/MainWindow40");
            set => WRITE("Maximized", value, nameof(Maximized), "UI/MainWindow40");
        }

        public static double Width
        {
            get => SELECT("Width", (double)-1, "UI/MainWindow40");
            set => WRITE("Width", value, nameof(Width), "UI/MainWindow40");
        }

        public static double X
        {
            get => SELECT("X", (double)-1, "UI/MainWindow40");
            set => WRITE("X", value, nameof(X), "UI/MainWindow40");
        }

        public static double Y
        {
            get => SELECT("Y", (double)-1, "UI/MainWindow40");
            set => WRITE("Y", value, nameof(Y), "UI/MainWindow40");
        }

        #endregion

        #region Skymu/Appearance

        public static WindowChrome WindowChrome
        {
            get => SELECT("WindowChrome", WindowChrome.SkypeAero, "Skymu/Appearance"); 
            set 
            {
                // I tried
                if (value == WindowChrome.Native) WRITE("ChromeEnabled", false, "UI");
                else WRITE("ChromeEnabled", true, "UI");
                // Normal code path
                WRITE("WindowChrome", value, nameof(WindowChrome), "Skymu/Appearance");
            }
        }

        public static bool NativeMenuBar
        {
            get => SELECT("NativeMenuBar", false, "Skymu/Appearance");
            set => WRITE("NativeMenuBar", value, nameof(NativeMenuBar), "Skymu/Appearance");
        }

        public static bool RoomCallUI
        {
            get => SELECT("RoomCallUI", false, "Skymu/Appearance");
            set => WRITE("RoomCallUI", value, nameof(RoomCallUI), "Skymu/Appearance");
        }

        public static int EmojiFps
        {
            get => SELECT("EmojiFps", 50, "Skymu/Appearance");
            set => WRITE("EmojiFps", value, nameof(EmojiFps), "Skymu/Appearance");
        }

        public static string Colorway
        {
            get => SELECT("Colorway", "Default", "Skymu/Appearance");
            set => WRITE("Colorway", value, nameof(Colorway), "Skymu/Appearance");
        }

        public static string PresentationFramework
        {
            get => SELECT("PresentationFramework", "Aero.NormalColor", "Skymu/Appearance");
            set
            {
                string framework = value;
                if (value == "Fluent.Dynamic")
                {
                    if (Universal.IsDarkTheme) framework = "Fluent.Dark";
                    else framework = "Fluent.Light";
                }
                WRITE("PresentationFramework", framework, nameof(PresentationFramework), "Skymu/Appearance");
            }
        }

        public static string Theme
        {
            get => SELECT("Theme", "Skype5", "Skymu/Appearance");
            set => WRITE("Theme", value, nameof(Theme), "Skymu/Appearance");
        }

        public static bool UseClearType
        {
            get => SELECT("UseClearType", true, "Skymu/Appearance");
            set => WRITE("UseClearType", value, nameof(UseClearType), "Skymu/Appearance");
        }
        public static bool DynamicSidebarTabs
        {
            get => SELECT("DynamicSidebarTabs", true, "Skymu/Appearance");
            set => WRITE("DynamicSidebarTabs", value, nameof(DynamicSidebarTabs), "Skymu/Appearance");
        }
        public static bool BlueNotifications
        {
            get => SELECT("BlueNotifications", false, "Skymu/Appearance");
            set => WRITE("BlueNotifications", value, nameof(BlueNotifications), "Skymu/Appearance");
        }
        /// <summary>
        /// If FALSE dynamic window colors will be used, i.e. inactive window = gray gradient, active window = blue gradient.
        /// If TRUE a single solid window color will be maintained whether the window is active or inactive.
        /// </summary>
        public static bool FallbackFillColors
        {
            get => SELECT("FallbackFillColors", false, "Skymu/Appearance");
            set => WRITE("FallbackFillColors", value, nameof(FallbackFillColors), "Skymu/Appearance");
        }

        public static bool NikoIcons
        {
            get => SELECT("NikoIcons", false, "Skymu/Appearance");
            set => WRITE("NikoIcons", value, nameof(NikoIcons), "Skymu/Appearance");
        }

        #endregion

        #region Skymu/Debug

        public static bool SeparateCredentialsForDebug
        {
            get => SELECT("SeparateCredentialsForDebug", false, "Skymu/Debug");
            set => WRITE("SeparateCredentialsForDebug", value, nameof(SeparateCredentialsForDebug), "Skymu/Debug");
        }

        #endregion

        #region Skymu/Larp

        public static int CredsSubCount
        {
            get => SELECT("CredsSubCount", 0, "Skymu/Larp");
            set => WRITE("CredsSubCount", value, nameof(CredsSubCount), "Skymu/Larp");
        }

        public static string BrandingName
        {
            get => SELECT("BrandingName", "Skype", "Skymu/Larp");
            set => WRITE("BrandingName", value, nameof(BrandingName), "Skymu/Larp");
        }

        public static string CredsText
        {
            get => SELECT("CredsText", "$ 0.00", "Skymu/Larp");
            set => WRITE("CredsText", value, nameof(CredsText), "Skymu/Larp");
        }

        #endregion

        #region Skymu/Messaging

        // TODO Above is not needed if we have a NotificationTrigger of 0.
        // TODO This should be migrated to a check list. The code works fine I believe - we'd like to have a checkbox that calculates the value.
        public static NotificationTriggerType NotificationTrigger
        {
            get => SELECT("NotificationTrigger", NotificationTriggerType.PDM, "Skymu/Messaging");
            set => WRITE("NotificationTrigger", value, nameof(NotificationTrigger), "Skymu/Messaging");
        }
        // TODO This should be merged with above after the change. Make sure to add a Migrator.cs rule detecting this, and merging two variables.
        public static bool AllowImplicitMentions
        {
            get => SELECT("AllowImplicitMentions", true, "Skymu/Messaging");
            set => WRITE("AllowImplicitMentions", value, nameof(AllowImplicitMentions), "Skymu/Messaging");
        }

        public static bool ShowInlineLinkWarning
        {
            get => SELECT("ShowInlineLinkWarning", true, "Skymu/Messaging");
            set => WRITE("ShowInlineLinkWarning", value, nameof(ShowInlineLinkWarning), "Skymu/Messaging");
        }

        public static int MessagesToFetch
        {
            get => SELECT("MessagesToFetch", 30, "Skymu/Messaging");
            set => WRITE("MessagesToFetch", value, nameof(MessagesToFetch), "Skymu/Messaging");
        }

        /// <summary>
        /// If FALSE original versions of edited and deleted messages will not be stored.
        /// If TRUE original versions of edited and deleted messages will be stored. Not recommended for message streaming plugins.
        /// </summary>
        public static bool MessageLogger
        {
            get => SELECT("MessageLogger", false, "Skymu/Messaging");
            set => WRITE("MessageLogger", value, nameof(MessageLogger), "Skymu/Messaging");
        }

        #endregion

        #region Skymu/Plugins

        public static string CustomPluginPath
        {
            get => SELECT("CustomPluginPath", string.Empty, "Skymu/Plugins");
            set => WRITE("CustomPluginPath", value, nameof(CustomPluginPath), "Skymu/Plugins");
        }

        #endregion

        #region Skymu/Updater

        // Enabling or disabling the updater is in UI/General as it's a Skype setting.

        public static string SkippedVersion
        {
            get => SELECT("SkippedVersion", string.Empty, "Skymu/Updater");
            set => WRITE("SkippedVersion", value, nameof(SkippedVersion), "Skymu/Updater");
        }

        public static bool AllowBetaBuildUpdates
        {
            get => SELECT("AllowBetaBuildUpdates", true, "Skymu/Updater");
            set => WRITE("AllowBetaBuildUpdates", value, nameof(AllowBetaBuildUpdates), "Skymu/Updater");
        }

        #endregion

        #region Skymu/WebServices

        /// <summary>
        /// If FALSE user statistics like display name and username will be sent to Skymu servers. (Opt-in)
        /// If TRUE user statistics will be anonymized and random data will be sent to the servers. (Default)
        /// </summary>
        public static bool Anonymize
        {
            get => SELECT("Anonymize", true, "Skymu/WebServices");
            set => WRITE("Anonymize", value, nameof(Anonymize), "Skymu/WebServices");
        }
        /// <summary>
        /// If FALSE Skymu will make connections to skymu.app servers as usual.
        /// If TRUE Skymu will block all connections to skymu.app servers.
        /// </summary>
        public static bool DisableSWS
        {
            get => SELECT("DisableSWS", false, "Skymu/WebServices");
            set => WRITE("DisableSWS", value, nameof(DisableSWS), "Skymu/WebServices");
        }
        /// <summary>
        /// If FALSE a dialog will be shown 
        /// If TRUE no dialog will be shown. Automatically set to TRUE after dialog is shown once.
        /// </summary>
        public static bool SWSOptOutShown
        {
            get => SELECT("SWSOptOutShown", false, "Skymu/WebServices");
            set => WRITE("SWSOptOutShown", value, nameof(SWSOptOutShown), "Skymu/WebServices");
        }

        public static bool EnableSkypeHome
        {
            get => SELECT("EnableSkypeHome", true, "Skymu/WebServices");
            set => WRITE("EnableSkypeHome", value, nameof(EnableSkypeHome), "Skymu/WebServices");
        }
        public static bool EnableAdBlock
        {
            get => SELECT("EnableAdBlock", false, "Skymu/WebServices");
            set => WRITE("EnableAdBlock", value, nameof(EnableAdBlock), "Skymu/WebServices");
        }

        #endregion

        #region Skymu/Sounds

        public static bool CallOutToReconnectSound
        {
            get => SELECT("CallOutToReconnectSound", false, "Skymu/Sounds");
            set => WRITE("CallOutToReconnectSound", value, nameof(CallOutToReconnectSound), "Skymu/Sounds");
        }
        public static Soundpack SoundPack
        {
            get => SELECT("SoundPack", Soundpack.Enhanced, "Skymu/Sounds");
            set => WRITE("SoundPack", value, nameof(SoundPack), "Skymu/Sounds");
        }

        #endregion

        #region Skymu/System

        /// <summary>
        /// If FALSE a warning will be shown if you are running a version of Windows or Wine with incompatibilities.
        /// If TRUE no warning will be shown. Automatically set to TRUE after warning is shown once.
        /// </summary>
        public static bool OldPlatformWarningShown
        {
            get => SELECT("OldPlatformWarningShown", false, "Skymu/System");
            set => WRITE("OldPlatformWarningShown", value, nameof(OldPlatformWarningShown), "Skymu/System");
        }
        /// <summary>
        /// If FALSE warnings will be shown if you are running an older version of .NET than the latest supported.
        /// If TRUE no warning will be shown. Set to TRUE if user clicks "Do not show this again" on a warning.
        /// </summary>
        public static bool ShowOldDotNetWarnings
        {
            get => SELECT("ShowOldDotNetWarnings", false, "Skymu/System");
            set => WRITE("ShowOldDotNetWarnings", value, nameof(ShowOldDotNetWarnings), "Skymu/System");
        }

        #endregion

        #region Skymu/Startup

        public static bool CheckSpeedOnStartup
        {
            get => SELECT("CheckSpeedOnStartup", false, "Skymu/Startup");
            set => WRITE("CheckSpeedOnStartup", value, nameof(CheckSpeedOnStartup), "Skymu/Startup");
        }

        public static bool AllowMultipleInstances
        {
            get => SELECT("AllowMultipleInstances", true, "Skymu/Startup");
            set => WRITE("AllowMultipleInstances", value, nameof(AllowMultipleInstances), "Skymu/Startup");
        }

        public static bool StartMinimized
        {
            get => SELECT("StartMinimized", false, "Skymu/Startup");
            set => WRITE("StartMinimized", value, nameof(StartMinimized), "Skymu/Startup");
        }

        #endregion

        #region Registry

        /// <summary>
        /// If FALSE Skymu will not start when the computer starts.
        /// If TRUE Skymu will start when the computer starts.
        /// </summary>
        public static bool AutoLaunch
        {
            get => Native.Windows.AutoLaunch.Get();
            set => Native.Windows.AutoLaunch.Set(value);
        }

        #endregion

        #region Yggdrasil (Ratatoskr)

        public static CertStore CertificateStore
        {
            get => Y_SELECT("CertificateStore", CertStore.Embedded);
            set => Y_WRITE("CertificateStore", value, nameof(CertificateStore));
        }

        public static string CertPath
        {
            get => Y_SELECT("CertPath", string.Empty);
            set => Y_WRITE("CertPath", value, nameof(CertPath));
        }

        #endregion

        public static void Save() { }

        public static void Reset()
        {
            if (File.Exists(FilePath))
                File.Delete(FilePath);
        }

        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            Universal.NAME,
            "shared.xml"
        );

        private static XDocument LoadOrCreate()
        {
            if (File.Exists(FilePath))
            {
                try
                {
                    var loaded = XDocument.Load(FilePath);
                    if (loaded.Root != null)
                    {
                        var revision = (int?)loaded.Root.Attribute("revision");
                        if (revision == ConfigRevision)
                            return loaded;
                    }
                }
                catch { }

                System.Windows.MessageBox.Show(
                    $"{Universal.NAME} has discovered that your configuration file is corrupt or from an incompatible version of the application. " +
                    "It has been reset and your settings have been wiped.",
                    "Configuration file reset",
                    System.Windows.MessageBoxButton.OK,
                    System.Windows.MessageBoxImage.Information
                );
                File.Delete(FilePath);
            }

            Directory.CreateDirectory(Path.GetDirectoryName(FilePath));
            var doc = new XDocument(new XElement("config", new XAttribute("revision", ConfigRevision)));
            doc.Save(FilePath);
            return doc;
        }
        private static XElement GetOrCreateNode(XDocument doc, string path)
        {
            var parts = path.Split('/');
            XElement current = doc.Root;
            foreach (var part in parts)
            {
                var next = current.Element(part);
                if (next == null)
                {
                    next = new XElement(part);
                    current.Add(next);
                }
                current = next;
            }
            return current;
        }

        private static string Get(string key, string default_value, string path_xml)
        {
            try
            {
                var doc = LoadOrCreate();
                return GetOrCreateNode(doc, path_xml).Element(key)?.Value ?? default_value;
            }
            catch
            {
                return default_value;
            }
        }

        private static void Set(string key, string value, string path_xml)
        {
            var doc = LoadOrCreate();
            var node = GetOrCreateNode(doc, path_xml);
            var el = node.Element(key);
            if (el == null)
                node.Add(new XElement(key, value));
            else
                el.Value = value;
            doc.Save(FilePath);
        }

        private static string SELECT(string key, string default_value, string path_xml)
        {
            string rawValue = Get(key, null, path_xml);

            if (rawValue == null)
            {
                Set(key, default_value, path_xml);
                return default_value;
            }

            return rawValue;
        }

        private static bool SELECT(string key, bool default_value, string path_xml)
        {
            string value = Get(key, default_value.ToString(), path_xml);

            // (omega, nilFinx) Skype's settings parser is a little weird. It counted <= 0 as false and >= 1 as true.
            // Skymu's settings parser will reflect that even though there doesn't seem to be a use case for this.

            int vi;
            if (int.TryParse(value, out vi))
                return vi > 0;

            // boolean parsing retained for backwards compatibility with old Skymu configuration files

            bool vb;
            if (bool.TryParse(value, out vb))
                return vb;

            Set(key, default_value.ToString(), path_xml);
            return default_value;
        }

        private static int SELECT(string key, int default_value, string path_xml)
        {
            if (int.TryParse(Get(key, default_value.ToString(), path_xml), out var v))
            {
                return v;
            }
            Set(key, default_value.ToString(), path_xml);
            return default_value;
        }

        private static double SELECT(string key, double default_value, string path_xml)
        {
            if (double.TryParse(Get(key, default_value.ToString(), path_xml), out var v))
            {
                return v;
            }
            Set(key, default_value.ToString(), path_xml);
            return default_value;
        }

        private static TEnum SELECT<TEnum>(string key, TEnum default_value, string path_xml) where TEnum : struct, Enum
        {
            string rawValue = Get(key, default_value.ToString(), path_xml);
            if (Enum.TryParse<TEnum>(rawValue, true, out var result))
            {
                return result;
            }
            Set(key, default_value.ToString(), path_xml);
            return default_value;
        }

        private static void WRITE<T>(string key, T value, string propName, string path_xml)
        {
            string serialized = value is bool b ? (b ? "1" : "0") : value.ToString();
            Set(key, serialized, path_xml);
            Default.Notify(propName);
        }

        private static void WRITE<T>(string key, T value, string path_xml)
        {
            string serialized = value is bool b ? (b ? "1" : "0") : value.ToString();
            Set(key, serialized, path_xml);
        }

        private static readonly string Y_FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Yggdrasil",
            "ratatoskr.xml"
        );

        private static XDocument Y_LoadOrCreate()
        {
            if (File.Exists(Y_FilePath))
                return XDocument.Load(Y_FilePath);

            Directory.CreateDirectory(Path.GetDirectoryName(Y_FilePath));
            var doc = new XDocument(new XElement("config"));
            doc.Save(Y_FilePath);
            return doc;
        }

        private static T Y_SELECT<T>(string key, T def) where T : struct, Enum
        {
            try
            {
                var doc = Y_LoadOrCreate();
                var raw = doc.Root.Element(key)?.Value;
                if (raw != null && Enum.TryParse<T>(raw, true, out var result))
                    return result;
                return def;
            }
            catch { return def; }
        }

        private static string Y_SELECT(string key, string def)
        {
            try
            {
                var doc = Y_LoadOrCreate();
                return doc.Root.Element(key)?.Value ?? def;
            }
            catch { return def; }
        }

        private static void Y_WRITE<T>(string key, T value, string propName)
        {
            try
            {
                var doc = Y_LoadOrCreate();
                var el = doc.Root.Element(key);
                if (el == null)
                    doc.Root.Add(new XElement(key, value.ToString()));
                else
                    el.Value = value.ToString();
                doc.Save(Y_FilePath);
                Default.Notify(propName);
            }
            catch { }
        }

        public static readonly SettingsProxy Default = new SettingsProxy();

        public class SettingsProxy : INotifyPropertyChanged
        {
            public event PropertyChangedEventHandler PropertyChanged;

            internal void Notify(string n) =>
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(n));

            private static readonly Dictionary<string, PropertyInfo> _props =
                new Dictionary<string, PropertyInfo>();

            static SettingsProxy()
            {
                foreach (
                    var p in typeof(Settings).GetProperties(
                        BindingFlags.Public | BindingFlags.Static
                    )
                )
                    _props[p.Name] = p;
            }

            public object this[string key]
            {
                get => _props.TryGetValue(key, out var p) ? p.GetValue(null) : null;
                set
                {
                    if (!_props.TryGetValue(key, out var p))
                        return;
                    try
                    {
                        var converted = Convert.ChangeType(value, p.PropertyType);
                        p.SetValue(null, converted);
                        Notify(key);
                    }
                    catch { }
                }
            }
        }

    }
}
