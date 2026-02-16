/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Windows;

namespace Skymu
{
    public class LanguageManager : INotifyPropertyChanged
    {
        private readonly Dictionary<string, string> ldict = new();
        private readonly Dictionary<string, string> llist = new(StringComparer.OrdinalIgnoreCase);
        public IReadOnlyDictionary<string, string> Languages => llist;
        private string currentPath;
        public string this[string key]
        {
            get
            {
                if (!ldict.TryGetValue(key, out var value))
                    return key;

                return value.Replace(
                    "Skype",
                    Properties.Settings.Default.BrandingName,
                    StringComparison.OrdinalIgnoreCase);
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public LanguageManager()
        {
            if (DesignerProperties.GetIsInDesignMode(new DependencyObject())) return;
            string lang = Properties.Settings.Default.Language ?? "English";
            if (!Scan()) Universal.ExceptionHandler(new Exception("Could not find any compatible files in directory /languages."));
            if (!Load(llist.TryGetValue(lang, out var path) ? path : String.Empty)) Universal.ExceptionHandler(new Exception("Could not load language \"" + lang + "\"."));
            Properties.Settings.Default.PropertyChanged += Settings_PropertyChanged;
        }

        private void Settings_PropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(Properties.Settings.Default.Language))
            {
                LoadFromSettings();
            }
        }

        private void LoadFromSettings()
        {
            string lang = Properties.Settings.Default.Language ?? "English";

            if (llist.TryGetValue(lang, out var path))
            {
                Load(path);
            }
        }

        public bool Load(string path)
        {
            if (String.IsNullOrEmpty(path) || !File.Exists(path)) return false;
            currentPath = path;
            ldict.Clear();
            foreach (string line in File.ReadLines(currentPath))
            {
                if (string.IsNullOrWhiteSpace(line) || line.StartsWith("#")) continue;
                int idx = line.IndexOf('=');
                if (idx > 0)
                {
                    string key = line.Substring(0, idx).Trim();
                    string value = line.Substring(idx + 1).Trim();
                    ldict[key] = value;
                }
            }
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(null));
            return true;
        }

        public bool Scan()
        {
            string directoryPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "languages");

            if (!Directory.Exists(directoryPath))   
                return false;

            llist.Clear();
            foreach (var file in Directory.GetFiles(directoryPath, "*.lang"))
            {
                string? languageName = null;

                foreach (var line in File.ReadLines(file))
                {
                    if (string.IsNullOrWhiteSpace(line) || line.StartsWith("#"))
                        continue;

                    int idx = line.IndexOf('=');
                    if (idx <= 0)
                        continue;

                    string key = line[..idx].Trim();

                    if (key.Equals("s_LANGUAGE_NAME", StringComparison.OrdinalIgnoreCase))
                    {
                        languageName = line[(idx + 1)..].Trim();
                        break; 
                    }
                }

                if (!string.IsNullOrWhiteSpace(languageName))
                {
                    llist[languageName] = file;
                }
            }
            return true;
        }

        public string Format(string key, params object[] args)
        {
            if (!ldict.TryGetValue(key, out var value))
                return key;

            int index = 0;
            value = System.Text.RegularExpressions.Regex.Replace(
                value,
                "%[dsf]",
                _ => "{" + index++ + "}"
            );

            return string.Format(value, args);
        }
    }
}
