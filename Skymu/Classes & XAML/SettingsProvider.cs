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

// This code is currently unused. There seems to be no way to change the default settings provider in WPF.

using Microsoft.Win32;
using System.Collections.Specialized;
using System.Configuration;

#pragma warning disable CA1416

namespace Skymu
{
    public sealed class RegistrySettingsProvider : SettingsProvider
    {
        private const string BaseKey = @"Software\Skymu\Preferences";

        public override void Initialize(string name, NameValueCollection config)
        {
            if (string.IsNullOrEmpty(name))
                name = "RegistrySettingsProvider";

            base.Initialize(name, config);
        }

        public override string ApplicationName
        {
            get => "Skymu";
            set { }
        }
        public override SettingsPropertyValueCollection GetPropertyValues(
            SettingsContext context,
            SettingsPropertyCollection properties)
        {
            var values = new SettingsPropertyValueCollection();
            using var key = Registry.CurrentUser.CreateSubKey(BaseKey);

            foreach (SettingsProperty prop in properties)
            {
                var spv = new SettingsPropertyValue(prop);

                var registryValue = key.GetValue(prop.Name);

                if (registryValue != null)
                {
                    spv.SerializedValue = registryValue;
                }

                spv.IsDirty = false;
                values.Add(spv);
            }

            return values;
        }
        public override void SetPropertyValues(
            SettingsContext context,
            SettingsPropertyValueCollection values)
        {
            using var key = Registry.CurrentUser.CreateSubKey(BaseKey);

            foreach (SettingsPropertyValue value in values)
            {
                if (value.SerializedValue != null)
                {
                    key.SetValue(value.Property.Name, value.SerializedValue);
                }
            }
        }
    }
}