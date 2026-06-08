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
using System.ComponentModel;
using System.Text.Json;
using System.Windows.Controls;

namespace Skymu.Forms
{
    public partial class HomeUnavailable : Page
    {
        public HomeUnavailable()
        {
            InitializeComponent();
            Universal.Lang.PropertyChanged += RefreshText;
            RefreshText(null, null);
        }

        private void RefreshText(object sender, PropertyChangedEventArgs e)
        {
            var el = SkypeHome.GetLanguage();
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
