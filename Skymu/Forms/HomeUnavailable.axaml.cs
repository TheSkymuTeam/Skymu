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

using Avalonia.Controls;
using Skymu.Preferences;
using System;
using System.ComponentModel;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.Json;

namespace Skymu.Forms
{
    public partial class HomeUnavailable : UserControl
    {
        public HomeUnavailable()
        {
            InitializeComponent();
            Universal.Lang.PropertyChanged += RefreshText;
            RefreshText(null, null);
        }

        public static JsonElement? GetLanguage()
        {
            string json = File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Languages", "home-unavailable.json"));

            string cultureName = "en-US";
            try
            {
                cultureName = CultureInfo.GetCultures(CultureTypes.AllCultures)
                    .FirstOrDefault(c =>
                        c.NativeName.StartsWith(Settings.Language) ||
                        c.DisplayName.StartsWith(Settings.Language) ||
                        c.EnglishName.StartsWith(Settings.Language)
                    )?.Name ?? "en-US";
            }
            catch { }

            string langChunk = cultureName.Split('-')[0];

            JsonDocument doc = JsonDocument.Parse(json);

            if (doc.RootElement.TryGetProperty(langChunk, out JsonElement lang))
            {
                return lang;
            }
            else if (doc.RootElement.TryGetProperty("en", out JsonElement fallbackLang))
            {
                return fallbackLang;
            }

            return null;
        }

        private void RefreshText(object sender, PropertyChangedEventArgs e)
        {
            var el = GetLanguage();
            if (el == null) return;
            var lang = (JsonElement)el;
            NoHomeHead.Text = lang.GetProperty("header").GetString().Replace("Skype", Settings.BrandingName);
            NoHomeBody.Text = lang.GetProperty("p1").GetString().Replace("Skype", Settings.BrandingName);
            NoHomeListHead.Text = lang.GetProperty("p2").GetString().Replace("Skype", Settings.BrandingName);
            NoHomeList1.Text = lang.GetProperty("list1li1").GetString();
            NoHomeList2.Text = lang.GetProperty("list1li2").GetString();
        }
    }
}
