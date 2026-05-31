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

using System;
using System.Collections.Generic;
using System.ComponentModel;
using Yggdrasil.Networking;
using Skymu.Enumerations;
using System.IO;
using System.Reflection;
using System.Xml.Linq;

namespace Skymu.Preferences
{
    public static class Settings
    {
        private const int ConfigRevision = 1;
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

        public static bool StartMinimized
        {
            get => SELECT("StartMinimized", false, "UI/General");
            set => WRITE("StartMinimized", value, nameof(StartMinimized), "UI/General");
        }

        public static bool AllowMultipleInstances
        {
            get => SELECT("AllowMultipleInstances", true, "UI/General");
            set => WRITE("AllowMultipleInstances", value, nameof(AllowMultipleInstances), "UI/General");
        }

        public static WindowFrame WindowFrame
        {
            get => SELECT("WindowFrame", WindowFrame.SkypeAero, "UI/General");
            set => WRITE("WindowFrame", value, nameof(WindowFrame), "UI/General");
        }
        public static int EmojiFps
        {
            get => SELECT("EmojiFps", 50, "UI/General");
            set => WRITE("EmojiFps", value, nameof(EmojiFps), "UI/General");
        }
        public static int MsgLoadCount
        {
            get => SELECT("MsgLoadCount", 30, "UI/General");
            set => WRITE("MsgLoadCount", value, nameof(MsgLoadCount), "UI/General");
        }
        public static int CredsSubCount
        {
            get => SELECT("CredsSubCount", 0, "UI/General");
            set => WRITE("CredsSubCount", value, nameof(CredsSubCount), "UI/General");
        }

        public static string BrandingName
        {
            get => SELECT("BrandingName", "Skype", "UI/General");
            set => WRITE("BrandingName", value, nameof(BrandingName), "UI/General");
        }

        public static string ColorTheme
        {
            get => SELECT("ColorTheme", "Default", "UI/General");
            set => WRITE("ColorTheme", value, nameof(ColorTheme), "UI/General");
        }
        public static string CredsText
        {
            get => SELECT("CredsText", "$ 0.00", "UI/General");
            set => WRITE("CredsText", value, nameof(CredsText), "UI/General");
        }
        public static string ThemeRoot
        {
            get => SELECT("ThemeRoot", "Light", "UI/General");
            set => WRITE("ThemeRoot", value, nameof(ThemeRoot), "UI/General");
        }
        public static string PresentationFramework
        {
            get => SELECT("PresentationFramework", "Aero.NormalColor", "UI/General");
            set => WRITE("PresentationFramework", value, nameof(PresentationFramework), "UI/General");
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
        public static string Interface
        {
            get => SELECT("Interface", "Skyaeris", "UI/General");
            set => WRITE("Interface", value, nameof(Interface), "UI/General");
        }
        public static bool RoomCallUI
        {
            get => SELECT("RoomCallUI", false, "UI/General");
            set => WRITE("RoomCallUI", value, nameof(RoomCallUI), "UI/General");
        }
        public static bool CallOutToReconnectSound
        {
            get => SELECT("CallOutToReconnectSound", false, "UI/General");
            set => WRITE("CallOutToReconnectSound", value, nameof(CallOutToReconnectSound), "UI/General");
        }
        public static string SkippedVersion
        {
            get => SELECT("SkippedVersion", string.Empty, "UI/General");
            set => WRITE("SkippedVersion", value, nameof(SkippedVersion), "UI/General");
        }
        public static Soundpack SoundPack
        {
            get => SELECT("SoundPack", Soundpack.Enhanced, "UI/General");
            set => WRITE("SoundPack", value, nameof(SoundPack), "UI/General");
        }

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

        public static bool AutoSpeedTest
        {
            get => SELECT("AutoSpeedTest", false, "UI/General");
            set => WRITE("AutoSpeedTest", value, nameof(AutoSpeedTest), "UI/General");
        }

        public static bool SeparateCredentialsForDebug
        {
            get => SELECT("SeparateCredentialsForDebug", false, "UI/General");
            set => WRITE("SeparateCredentialsForDebug", value, nameof(SeparateCredentialsForDebug), "UI/General");
        }
        public static bool EnableNotifications
        {
            get => SELECT("EnableNotifications", true, "UI/General");
            set => WRITE("EnableNotifications", value, nameof(EnableNotifications), "UI/General");
        }
        public static NotificationTriggerType NotificationTrigger
        {
            get => SELECT("NotificationTrigger", NotificationTriggerType.PDM, "UI/General");
            set => WRITE("NotificationTrigger", value, nameof(NotificationTrigger), "UI/General");
        }
        public static bool EnableSkypeHome
        {
            get => SELECT("EnableSkypeHome", true, "UI/General");
            set => WRITE("EnableSkypeHome", value, nameof(EnableSkypeHome), "UI/General");
        }
        public static bool EnableAdBlock
        {
            get => SELECT("EnableAdBlock", false, "UI/General");
            set => WRITE("EnableAdBlock", value, nameof(EnableAdBlock), "UI/General");
        }
        public static bool UseClearType
        {
            get => SELECT("UseClearType", true, "UI/General");
            set => WRITE("UseClearType", value, nameof(UseClearType), "UI/General");
        }
        public static bool DynamicSidebarTabs
        {
            get => SELECT("DynamicSidebarTabs", true, "UI/General");
            set => WRITE("DynamicSidebarTabs", value, nameof(DynamicSidebarTabs), "UI/General");
        }
        public static bool BlueNotifications
        {
            get => SELECT("BlueNotifications", false, "UI/General");
            set => WRITE("BlueNotifications", value, nameof(BlueNotifications), "UI/General");
        }
        public static bool StartOnStartup
        {
            get => SELECT("StartOnStartup", false, "UI/General");
            set => WRITE("StartOnStartup", value, nameof(StartOnStartup), "UI/General");
        }
        public static bool FallbackFillColors
        {
            get => SELECT("FallbackFillColors", false, "UI/General");
            set => WRITE("FallbackFillColors", value, nameof(FallbackFillColors), "UI/General");
        }
        public static bool Anonymize
        {
            get => SELECT("Anonymize", true, "UI/General");
            set => WRITE("Anonymize", value, nameof(Anonymize), "UI/General");
        }
        public static bool FirstRunCompleted
        {
            get => SELECT("FirstRunCompleted", false, "UI/General");
            set => WRITE("FirstRunCompleted", value, nameof(FirstRunCompleted), "UI/General");
        }
        public static bool DisablePingbacks
        {
            get => SELECT("DisablePingbacks", false, "UI/General");
            set => WRITE("DisablePingbacks", value, nameof(DisablePingbacks), "UI/General");
        }
        public static bool MessageLogger
        {
            get => SELECT("MessageLogger", false, "UI/General");
            set => WRITE("MessageLogger", value, nameof(MessageLogger), "UI/General");
        }
        public static bool NikoIcons
        {
            get => SELECT("NikoIcons", false, "UI/General");
            set => WRITE("NikoIcons", value, nameof(NikoIcons), "UI/General");
        }
        // TODO: Rename to QuitWithoutAsking with migration
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
        public static bool SuppressOldRuntimeWarnings
        {
            get => SELECT("SuppressOldRuntimeWarnings", false, "UI/General");
            set => WRITE("SuppressOldRuntimeWarnings", value, nameof(SuppressOldRuntimeWarnings), "UI/General");
        }

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

        public static void Save() { }

        public static void Reset()
        {
            if (File.Exists(FilePath))
                File.Delete(FilePath);
        }

        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Skymu",
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
                    "Skymu has discovered that your configuration file is corrupt or from an older version of the application. " +
                    "It has been reset and your settings have been wiped.",
                    "Configuration file reset",
                    System.Windows.MessageBoxButton.OK,
                    System.Windows.MessageBoxImage.Warning
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

        private static readonly string Y_FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Yggdrasil",
            "ratatoskr.xml"
        );

        #region Yggdrasil config

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

        #endregion
    }
}
