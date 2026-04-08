using System;
using System.IO;
using System.Xml.Linq;
using System.ComponentModel;
using System.Collections.Generic;
using System.Reflection;
using Skymu.Classes;

namespace Skymu.Preferences
{
    public static class Settings
    {
        // XAML binding: {Binding Source={x:Static s:Settings.Default}, Path=[ThemeRoot]}
        public static readonly SettingsProxy Default = new SettingsProxy();

        public class SettingsProxy : INotifyPropertyChanged
        {
            public event PropertyChangedEventHandler PropertyChanged;
            internal void Notify(string n) =>
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(n));

            private static readonly Dictionary<string, PropertyInfo> _props = new Dictionary<string, PropertyInfo>();

            static SettingsProxy()
            {
                foreach (var p in typeof(Settings).GetProperties(BindingFlags.Public | BindingFlags.Static))
                    _props[p.Name] = p;
            }

            public object this[string key]
            {
                get => _props.TryGetValue(key, out var p) ? p.GetValue(null) : null;
                set
                {
                    if (!_props.TryGetValue(key, out var p)) return;
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

        // -------------------------------------------------------------------------
        // Settings — adding a new one is ONE line:
        // public static TYPE Name { get => S("Name", default); set => W("Name", value, nameof(Name)); }
        // -------------------------------------------------------------------------

        public static WindowPlacement WindowPlacement
        {
            get => new WindowPlacement
            {
                Top = Xd("WP_Top", 0),
                Left = Xd("WP_Left", 0),
                Width = Xd("WP_Width", 0),
                Height = Xd("WP_Height", 0),
                sidebarWidth = Xd("WP_SidebarWidth", 0)
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

        public static int WindowFrame { get => S("WindowFrame", 0); set => W("WindowFrame", value, nameof(WindowFrame)); }
        public static int EmojiFps { get => S("EmojiFps", 50); set => W("EmojiFps", value, nameof(EmojiFps)); }
        public static int MsgLoadCount { get => S("MsgLoadCount", 30); set => W("MsgLoadCount", value, nameof(MsgLoadCount)); }

        public static string BrandingName { get => S("BrandingName", "Skype"); set => W("BrandingName", value, nameof(BrandingName)); }
        public static string ThemeRoot { get => S("ThemeRoot", "Light"); set => W("ThemeRoot", value, nameof(ThemeRoot)); }
        public static string PresFrame { get => S("PresFrame", "Aero.NormalColor"); set => W("PresFrame", value, nameof(PresFrame)); }
        public static string BuildVersion { get => S("BuildVersion", "0.3.22"); set => W("BuildVersion", value, nameof(BuildVersion)); }
        public static string BuildName { get => S("BuildName", "Drocea Walnut Cake"); set => W("BuildName", value, nameof(BuildName)); }
        public static string Language { get => S("Language", "English"); set => W("Language", value, nameof(Language)); }
        public static string Interface { get => S("Interface", "Skyaeris"); set => W("Interface", value, nameof(Interface)); }
        public static string SkippedVersion { get => S("SkippedVersion", "NONE"); set => W("SkippedVersion", value, nameof(SkippedVersion)); }
        public static string SoundPack { get => S("SoundPack", "Skype"); set => W("SoundPack", value, nameof(SoundPack)); }

        public static bool AutoLogin { get => S("AutoLogin", true); set => W("AutoLogin", value, nameof(AutoLogin)); }
        public static bool EnableNotifications { get => S("EnableNotifications", true); set => W("EnableNotifications", value, nameof(EnableNotifications)); }
        public static bool EnableSkypeHome { get => S("EnableSkypeHome", true); set => W("EnableSkypeHome", value, nameof(EnableSkypeHome)); }
        public static bool UseClearType { get => S("UseClearType", true); set => W("UseClearType", value, nameof(UseClearType)); }
        public static bool DynamicSidebarTabs { get => S("DynamicSidebarTabs", true); set => W("DynamicSidebarTabs", value, nameof(DynamicSidebarTabs)); }
        public static bool BlueNotifications { get => S("BlueNotifications", false); set => W("BlueNotifications", value, nameof(BlueNotifications)); }
        public static bool StartOnStartup { get => S("StartOnStartup", false); set => W("StartOnStartup", value, nameof(StartOnStartup)); }
        public static bool FallbackFillColors { get => S("FallbackFillColors", false); set => W("FallbackFillColors", value, nameof(FallbackFillColors)); }
        public static bool Anonymize { get => S("Anonymize", false); set => W("Anonymize", value, nameof(Anonymize)); }
        public static bool FirstRunCompleted { get => S("FirstRunCompleted", false); set => W("FirstRunCompleted", value, nameof(FirstRunCompleted)); }
        public static bool DisablePingbacks { get => S("DisablePingbacks", false); set => W("DisablePingbacks", value, nameof(DisablePingbacks)); }
        public static bool MessageLogger { get => S("MessageLogger", false); set => W("MessageLogger", value, nameof(MessageLogger)); }
        public static bool NikoIcons { get => S("NikoIcons", false); set => W("NikoIcons", value, nameof(NikoIcons)); }
        public static bool SuppressOldRuntimeWarnings { get => S("SuppressOldRuntimeWarnings", false); set => W("SuppressOldRuntimeWarnings", value, nameof(SuppressOldRuntimeWarnings)); }

        // -------------------------------------------------------------------------
        // Public API (matches Properties.Settings.Default)
        // -------------------------------------------------------------------------

        public static void Save() { }

        public static void Reset()
        {
            if (File.Exists(FilePath))
                File.Delete(FilePath);
        }

        // -------------------------------------------------------------------------
        // Infrastructure
        // -------------------------------------------------------------------------

        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Skymu", "shared.xml"
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
                return doc.Root.Element("UI")?.Element("General")?.Element(key)?.Value ?? defaultValue;
            }
            catch { return defaultValue; }
        }

        private static void Set(string key, string value)
        {
            var doc = LoadOrCreate();
            var node = doc.Root.Element("UI").Element("General");
            var el = node.Element(key);
            if (el == null) node.Add(new XElement(key, value));
            else el.Value = value;
            doc.Save(FilePath);
        }

        // Typed read helpers
        private static string S(string k, string def) => Get(k, def) ?? def;
        private static bool S(string k, bool def) => bool.TryParse(Get(k, def.ToString()), out var v) ? v : def;
        private static int S(string k, int def) => int.TryParse(Get(k, def.ToString()), out var v) ? v : def;
        private static double Xd(string k, double def) => double.TryParse(Get(k, def.ToString()), out var v) ? v : def;

        // Write + notify helper
        private static void W<T>(string key, T value, string propName)
        {
            Set(key, value.ToString());
            Default.Notify(propName);
        }
    }
}