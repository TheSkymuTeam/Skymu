using System;
using System.IO;
using System.Diagnostics;
using System.Windows;

namespace Skymu.Theming
{
    public static class ThemeManager
    {
        private static ResourceDictionary _currentTheme;

        public static void Load(string theme)
        {
            if (!theme.EndsWith(".xaml", StringComparison.OrdinalIgnoreCase))
                theme += ".xaml";

            var themePath = Path.Combine(
                AppDomain.CurrentDomain.BaseDirectory,
                "Themes",
                theme.ToLowerInvariant()
            );

            if (!File.Exists(themePath))
                throw new FileNotFoundException($"Theme not found: {themePath}");

            var newTheme = new ResourceDictionary
            {
                Source = new Uri(themePath, UriKind.Absolute)
            };

            var appResources = Application.Current.Resources;

            if (_currentTheme != null)
                appResources.MergedDictionaries.Remove(_currentTheme);

            appResources.MergedDictionaries.Add(newTheme);

            _currentTheme = newTheme;

            Debug.WriteLine(Application.Current.Resources.MergedDictionaries.Count);
            foreach (var dict in Application.Current.Resources.MergedDictionaries)
            {
                Debug.WriteLine(dict.Source);
            }
        }
    }
}