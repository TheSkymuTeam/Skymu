using System;
using System.IO;
using System.Diagnostics;
using System.Collections.Generic;
using System.Windows;
using System.Xml;
using Skymu.Preferences;

namespace Skymu.Theming
{
    public static class ThemeManager
    {
        private static ResourceDictionary _currentTheme;
        private const string FallbackTheme = "Default";
        private static bool _loading = false;
        private static readonly Dictionary<string, string> _themeList =
            new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        public static List<KeyValuePair<string, string>> ColorThemes =>
            new List<KeyValuePair<string, string>>(_themeList);

        public static bool Scan()
        {
            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Themes");
            if (!Directory.Exists(dir))
                return false;

            _themeList.Clear();

            foreach (string file in Directory.GetFiles(dir, "*.xaml"))
            {
                string name = ReadThemeName(file);
                if (!string.IsNullOrWhiteSpace(name))
                    _themeList[name] = file;
            }

            Settings.Default.PropertyChanged += (s, e) => // OmegaAOL: add live updating
            {
                if (e.PropertyName == nameof(Settings.ColorTheme))
                    LoadFromSettings();
            };

            return _themeList.Count > 0;
        }

        public static void LoadFromSettings()
        {
            if (_loading) return;
            _loading = true;
            try
            {
                string themeName = Settings.ColorTheme;

                if (!string.IsNullOrEmpty(themeName) && _themeList.TryGetValue(themeName, out string path))
                {
                    LoadPath(path);
                    return;
                }

                if (_themeList.TryGetValue(FallbackTheme, out string fallbackPath))
                {
                    Debug.WriteLine($"[ThemeManager] Falling back to '{FallbackTheme}'");
                    LoadPath(fallbackPath);
                    Settings.ColorTheme = FallbackTheme;
                    return;
                }

                foreach (var kv in _themeList)
                {
                    Debug.WriteLine($"[ThemeManager] '{FallbackTheme}' not found, loading first available: '{kv.Key}'");
                    LoadPath(kv.Value);
                    Settings.ColorTheme = kv.Key;
                    return;
                }

                throw new InvalidOperationException("No themes available to load.");
            }
            finally
            {
                _loading = false;
            }
        }

        public static void Load(string themeName)
        {
            if (_themeList.TryGetValue(themeName, out string path))
                LoadPath(path);
            else
                throw new FileNotFoundException($"Theme '{themeName}' not found. Did you call Scan() first?");
        }

        private static void LoadPath(string absolutePath)
        {
            var newTheme = new ResourceDictionary
            {
                Source = new Uri(absolutePath, UriKind.Absolute)
            };

            var appResources = Application.Current.Resources;
            if (_currentTheme != null)
                appResources.MergedDictionaries.Remove(_currentTheme);

            appResources.MergedDictionaries.Add(newTheme);
            _currentTheme = newTheme;

            Debug.WriteLine($"[ThemeManager] Loaded: {absolutePath}");
            Debug.WriteLine($"[ThemeManager] MergedDictionaries count: {Application.Current.Resources.MergedDictionaries.Count}");
            foreach (var dict in Application.Current.Resources.MergedDictionaries)
                Debug.WriteLine(dict.Source);
        }

        private static string ReadThemeName(string xamlPath)
        {
            try
            {
                using (var reader = XmlReader.Create(xamlPath))
                {
                    while (reader.Read())
                    {
                        if (reader.NodeType == XmlNodeType.Element && reader.LocalName == "String")
                        {
                            string key = reader.GetAttribute("Key", "http://schemas.microsoft.com/winfx/2006/xaml");
                            if (key == "Theme.Name")
                                return reader.ReadElementContentAsString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ThemeManager] Failed to read {xamlPath}: {ex.Message}");
            }
            return null;
        }
    }
}