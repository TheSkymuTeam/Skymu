/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Windows;
using System.Xml;

namespace Skymu.Theming
{
    public static class Colorizer
    {
        private static ResourceDictionary _currentColorway;
        private const string FallbackColorway = "Default";
        private static bool _loading = false;
        private static readonly Dictionary<string, string> _colorwayList =
            new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        public static List<KeyValuePair<string, string>> Colorways =>
            new List<KeyValuePair<string, string>>(_colorwayList);

        public static bool Scan()
        {
            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Colorways");
            if (!Directory.Exists(dir))
                return false;

            _colorwayList.Clear();

            foreach (string file in Directory.GetFiles(dir, "*.xaml"))
            {
                string name = ReadColorwayName(file);
                if (!string.IsNullOrWhiteSpace(name))
                    _colorwayList[name] = file;
            }

            Settings.Default.PropertyChanged += (s, e) => // OmegaAOL: add live updating
            {
                if (e.PropertyName == nameof(Settings.Colorway))
                    LoadFromSettings();
            };

            return _colorwayList.Count > 0;
        }

        public static void LoadFromSettings()
        {
            if (_loading) return;
            _loading = true;
            try
            {
                string colorwayName = Settings.Colorway;

                if (!string.IsNullOrEmpty(colorwayName) && _colorwayList.TryGetValue(colorwayName, out string path))
                {
                    LoadPath(path);
                    return;
                }

                if (_colorwayList.TryGetValue(FallbackColorway, out string fallbackPath))
                {
                    Debug.WriteLine($"[COLORWAY-MANAGER] Falling back to '{FallbackColorway}'");
                    LoadPath(fallbackPath);
                    Settings.Colorway = FallbackColorway;
                    return;
                }

                foreach (var kv in _colorwayList)
                {
                    Debug.WriteLine($"[COLORWAY-MANAGER] '{FallbackColorway}' not found, loading first available: '{kv.Key}'");
                    LoadPath(kv.Value);
                    Settings.Colorway = kv.Key;
                    return;
                }

                Universal.ExceptionHandler(new InvalidOperationException("No colorways available to load."));
            }
            finally
            {
                _loading = false;
            }
        }

        public static void Load(string colorway_name)
        {
            if (_colorwayList.TryGetValue(colorway_name, out string path))
                LoadPath(path);
            else
                Universal.ExceptionHandler(new FileNotFoundException($"Colorway '{colorway_name}' not found. Did you call Scan() first?"));
        }

        private static void LoadPath(string absolutePath)
        {
            var new_colorway = new ResourceDictionary
            {
                Source = new Uri(absolutePath, UriKind.Absolute)
            };

            var appResources = Application.Current.Resources;
            if (_currentColorway != null)
                appResources.MergedDictionaries.Remove(_currentColorway);

            appResources.MergedDictionaries.Add(new_colorway);
            _currentColorway = new_colorway;

            Debug.WriteLine($"[COLORWAY-MANAGER] Loaded: {absolutePath}");
            Debug.WriteLine($"[COLORWAY-MANAGER] MergedDictionaries count: {Application.Current.Resources.MergedDictionaries.Count}");
            foreach (var dict in Application.Current.Resources.MergedDictionaries)
                Debug.WriteLine("[COLORWAY-MANAGER] MergedDictionary: " + dict.Source);
        }

        private static string ReadColorwayName(string xamlPath)
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
                            if (key == "Colorway.Name")
                                return reader.ReadElementContentAsString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[COLORWAY-MANAGER] Failed to read {xamlPath}: {ex.Message}");
            }
            return null;
        }
    }
}