using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

#pragma warning disable CA1416

namespace Skymu
{
    internal class CredentialsHelper
    {
        private const string CREDENTIALS_PATH = @"Software\Skymu\Credentials";
        internal static void Write(string[] credentials)
        {
            using (RegistryKey key = Registry.CurrentUser.CreateSubKey(CREDENTIALS_PATH + "\\" + Universal.Plugin.InternalName))
            {
                if (key is not null)
                {
                    for (int i = 0; i < credentials.Length; i++)
                    {
                        key.SetValue(i.ToString(), EncryptToString(credentials[i]));
                    }
                }
            }
        }

        internal static void Purge(string plugin, bool throwOnMissingSubKey = true)
        {
            Registry.CurrentUser.DeleteSubKeyTree(CREDENTIALS_PATH + "\\" + plugin, throwOnMissingSubKey);
        }

        internal static void PurgeAll()
        {
            Registry.CurrentUser.DeleteSubKeyTree(CREDENTIALS_PATH, false);
        }

        internal static string[] GetSavedCredentialPlugins()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(CREDENTIALS_PATH))
            {
                if (key is not null)
                {
                    string[] subKeyNames = key.GetSubKeyNames();

                    if (subKeyNames != null && subKeyNames.Length > 0)
                    {
                        return subKeyNames;
                    }
                }
            }

            return new string[0];
        }


        internal static string[] Read(string plugin)
        {
            string[] credentials;
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(
       CREDENTIALS_PATH + "\\" + plugin))
            {
                if (key is not null)
                {
                    string[] valueNames = key.GetValueNames();
                    credentials = new string[valueNames.Length];

                    for (int i = 0; i < valueNames.Length; i++)
                    {
                        credentials[i] = DecryptFromString(key.GetValue(valueNames[i])?.ToString());
                    }

                    if (credentials.Length <= 0)
                    {
                        credentials = new string[1];
                    }
                }
                else
                {
                    credentials = new string[1];
                }
            }
            return credentials;
        }

        private static string EncryptToString(string plaintext)
        {
            byte[] data = Encoding.UTF8.GetBytes(plaintext);
            byte[] encrypted = ProtectedData.Protect(data, null, DataProtectionScope.CurrentUser);
            return Convert.ToBase64String(encrypted);
        }

        private static string DecryptFromString(string encryptedString)
        {
            if (encryptedString is not null)
            {
                try
                {
                    byte[] encryptedData = Convert.FromBase64String(encryptedString);
                    byte[] decrypted = ProtectedData.Unprotect(encryptedData, null, DataProtectionScope.CurrentUser);
                    return Encoding.UTF8.GetString(decrypted);
                }
                catch { return String.Empty; }
            }
            else
            {
                return String.Empty;
            }
        }
    }
}
