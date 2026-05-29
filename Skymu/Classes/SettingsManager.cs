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

using Skymu.Classes;
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

        public static WindowPlacement WindowPlacement
        {
            get =>
                new WindowPlacement
                {
                    Top = SELECT("WP_Top", (double)0),
                    Left = SELECT("WP_Left", (double)0),
                    Width = SELECT("WP_Width", (double)0),
                    Height = SELECT("WP_Height", (double)0),
                    sidebarWidth = SELECT("WP_SidebarWidth", (double)0),
                };
            set
            {
                Set("WP_Top", value.Top.ToString());
                Set("WP_Left", value.Left.ToString());
                Set("WP_Width", value.Width.ToString());
                Set("WP_Height", value.Height.ToString());
                Set("WP_SidebarWidth", value.sidebarWidth.ToString());
                Default.Notify(nameof(WindowPlacement));
            }
        }

        public static bool SaveWindowPlacement
        {
            get => SELECT("SaveWindowPlacement", true);
            set => WRITE("SaveWindowPlacement", value, nameof(SaveWindowPlacement));
        }

        public static bool StartMinimized
        {
            get => SELECT("StartMinimized", false);
            set => WRITE("StartMinimized", value, nameof(StartMinimized));
        }

        public static WindowFrame WindowFrame
        {
            get => SELECT("WindowFrame", WindowFrame.SkypeAero);
            set => WRITE("WindowFrame", value, nameof(WindowFrame));
        }
        public static int EmojiFps
        {
            get => SELECT("EmojiFps", 50);
            set => WRITE("EmojiFps", value, nameof(EmojiFps));
        }
        public static int MsgLoadCount
        {
            get => SELECT("MsgLoadCount", 30);
            set => WRITE("MsgLoadCount", value, nameof(MsgLoadCount));
        }
        public static int CredsSubCount
        {
            get => SELECT("CredsSubCount", 0);
            set => WRITE("CredsSubCount", value, nameof(CredsSubCount));
        }

        public static string BrandingName
        {
            get => SELECT("BrandingName", "Skype");
            set => WRITE("BrandingName", value, nameof(BrandingName));
        }

        public static string ColorTheme
        {
            get => SELECT("ColorTheme", "Default");
            set => WRITE("ColorTheme", value, nameof(ColorTheme));
        }
        public static string CredsText
        {
            get => SELECT("CredsText", "$ 0.00");
            set => WRITE("CredsText", value, nameof(CredsText));
        }
        public static string ThemeRoot
        {
            get => SELECT("ThemeRoot", "Light");
            set => WRITE("ThemeRoot", value, nameof(ThemeRoot));
        }
        public static string PresFrame
        {
            get => SELECT("PresFrame", "Aero.NormalColor");
            set => WRITE("PresFrame", value, nameof(PresFrame));
        }
        public static string Language
        {
            get => SELECT("Language", "English");
            set => WRITE("Language", value, nameof(Language));
        }
        public static bool UseSystemCulture
        {
            get => SELECT("UseSystemCulture", true);
            set => WRITE("UseSystemCulture", value, nameof(UseSystemCulture));
        }
        public static string Interface
        {
            get => SELECT("Interface", "Skyaeris");
            set => WRITE("Interface", value, nameof(Interface));
        }
        public static bool RoomCallUI
        {
            get => SELECT("RoomCallUI", false);
            set => WRITE("RoomCallUI", value, nameof(RoomCallUI));
        }
        public static bool CallOutToReconnectSound
        {
            get => SELECT("CallOutToReconnectSound", false);
            set => WRITE("CallOutToReconnectSound", value, nameof(CallOutToReconnectSound));
        }
        public static string SkippedVersion
        {
            get => SELECT("SkippedVersion", string.Empty);
            set => WRITE("SkippedVersion", value, nameof(SkippedVersion));
        }
        public static Soundpack SoundPack
        {
            get => SELECT("SoundPack", Soundpack.Enhanced);
            set => WRITE("SoundPack", value, nameof(SoundPack));
        }

        public static bool AutoLogin
        {
            get => SELECT("AutoLogin", true);
            set => WRITE("AutoLogin", value, nameof(AutoLogin));
        }

        public static bool AutoSpeedTest
        {
            get => SELECT("AutoSpeedTest", false);
            set => WRITE("AutoSpeedTest", value, nameof(AutoSpeedTest));
        }

        public static bool SeparateCredentialsForDebug
        {
            get => SELECT("SeparateCredentialsForDebug", false);
            set => WRITE("SeparateCredentialsForDebug", value, nameof(SeparateCredentialsForDebug));
        }
        public static bool EnableNotifications
        {
            get => SELECT("EnableNotifications", true);
            set => WRITE("EnableNotifications", value, nameof(EnableNotifications));
        }
        public static NotificationTriggerType NotificationTrigger
        {
            get => SELECT("NotificationTrigger", NotificationTriggerType.PDM);
            set => WRITE("NotificationTrigger", value, nameof(NotificationTrigger));
        }
        public static bool EnableSkypeHome
        {
            get => SELECT("EnableSkypeHome", true);
            set => WRITE("EnableSkypeHome", value, nameof(EnableSkypeHome));
        }
        public static bool EnableAdBlock
        {
            get => SELECT("EnableAdBlock", false);
            set => WRITE("EnableAdBlock", value, nameof(EnableAdBlock));
        }
        public static bool UseClearType
        {
            get => SELECT("UseClearType", true);
            set => WRITE("UseClearType", value, nameof(UseClearType));
        }
        public static bool DynamicSidebarTabs
        {
            get => SELECT("DynamicSidebarTabs", true);
            set => WRITE("DynamicSidebarTabs", value, nameof(DynamicSidebarTabs));
        }
        public static bool BlueNotifications
        {
            get => SELECT("BlueNotifications", false);
            set => WRITE("BlueNotifications", value, nameof(BlueNotifications));
        }
        public static bool StartOnStartup
        {
            get => SELECT("StartOnStartup", false);
            set => WRITE("StartOnStartup", value, nameof(StartOnStartup));
        }
        public static bool FallbackFillColors
        {
            get => SELECT("FallbackFillColors", false);
            set => WRITE("FallbackFillColors", value, nameof(FallbackFillColors));
        }
        public static bool Anonymize
        {
            get => SELECT("Anonymize", true);
            set => WRITE("Anonymize", value, nameof(Anonymize));
        }
        public static bool FirstRunCompleted
        {
            get => SELECT("FirstRunCompleted", false);
            set => WRITE("FirstRunCompleted", value, nameof(FirstRunCompleted));
        }
        public static bool DisablePingbacks
        {
            get => SELECT("DisablePingbacks", false);
            set => WRITE("DisablePingbacks", value, nameof(DisablePingbacks));
        }
        public static bool MessageLogger
        {
            get => SELECT("MessageLogger", false);
            set => WRITE("MessageLogger", value, nameof(MessageLogger));
        }
        public static bool NikoIcons
        {
            get => SELECT("NikoIcons", false);
            set => WRITE("NikoIcons", value, nameof(NikoIcons));
        }
        // TODO: Rename to QuitWithoutAsking with migration
        public static bool QuitWithoutAsking
        {
            get => SELECT("QuitWithoutAsking", false);
            set => WRITE("QuitWithoutAsking", value, nameof(QuitWithoutAsking));
        }
        /// <summary> 1 = do not inform </summary>
        public static int InformDND
        {
            get => SELECT("InformDND", 0);
            set => WRITE("InformDND", value, nameof(InformDND));
        }
        /// <summary> 1 = already closed the "this is converstaions list" popup on Skype 4 </summary>
        public static int InboxNoticeShown
        {
            get => SELECT("InboxNoticeShown", 0);
            set => WRITE("InboxNoticeShown", value, nameof(InboxNoticeShown));
        }
        public static bool SuppressOldRuntimeWarnings
        {
            get => SELECT("SuppressOldRuntimeWarnings", false);
            set => WRITE("SuppressOldRuntimeWarnings", value, nameof(SuppressOldRuntimeWarnings));
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
                return XDocument.Load(FilePath);

            Directory.CreateDirectory(Path.GetDirectoryName(FilePath));
            var doc = new XDocument(
                new XElement("config", new XElement("UI", new XElement("General")))
            );
            doc.Save(FilePath);
            return doc;
        }

        private static string Get(string key, string defaultValue = null)
        {
            try
            {
                var doc = LoadOrCreate();
                return doc.Root.Element("UI")?.Element("General")?.Element(key)?.Value
                    ?? defaultValue;
            }
            catch
            {
                return defaultValue;
            }
        }

        private static void Set(string key, string value)
        {
            var doc = LoadOrCreate();
            var node = doc.Root.Element("UI").Element("General");
            var el = node.Element(key);
            if (el == null)
                node.Add(new XElement(key, value));
            else
                el.Value = value;
            doc.Save(FilePath);
        }

        private static string SELECT(string k, string def)
        {
            string rawValue = Get(k, null);

            if (rawValue == null)
            {
                Set(k, def);
                return def;
            }

            return rawValue;
        }

        private static bool SELECT(string k, bool def)
        {
            if (bool.TryParse(Get(k, def.ToString()), out var v))
            {
                return v;
            }
            Set(k, def.ToString());
            return def;
        }

        private static int SELECT(string k, int def)
        {
            if (int.TryParse(Get(k, def.ToString()), out var v))
            {
                return v;
            }
            Set(k, def.ToString());
            return def;
        }

        private static double SELECT(string k, double def)
        {
            if (double.TryParse(Get(k, def.ToString()), out var v))
            {
                return v;
            }
            Set(k, def.ToString());
            return def;
        }

        private static TEnum SELECT<TEnum>(string k, TEnum def) where TEnum : struct, Enum
        {
            string rawValue = Get(k, def.ToString());
            if (Enum.TryParse<TEnum>(rawValue, true, out var result))
            {
                return result;
            }
            Set(k, def.ToString());
            return def;
        }

        private static void WRITE<T>(string key, T value, string propName)
        {
            Set(key, value.ToString());
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
