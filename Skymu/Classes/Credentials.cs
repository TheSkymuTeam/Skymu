/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

namespace Skymu
{
    internal static class Credentials
    {
        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
            "Skymu", "shared.json");
        private class CredentialEntry
        {
            public string Plugin { get; set; }
            public string Identifier { get; set; }
            public string Username { get; set; }
            public string DisplayName { get; set; }
            public string PasswordOrToken { get; set; }
            public string AuthenticationType { get; set; }
            public string ProfilePicture { get; set; }
        }

        private static List<CredentialEntry> ReadFile()
        {
            if (!File.Exists(FilePath))
                return new List<CredentialEntry>();

            try
            {
                string json = File.ReadAllText(FilePath);
                return JsonSerializer.Deserialize<List<CredentialEntry>>(json)
                       ?? new List<CredentialEntry>();
            }
            catch
            {
                return new List<CredentialEntry>();
            }
        }

        private static void WriteFile(List<CredentialEntry> entries)
        {
            Directory.CreateDirectory(Path.GetDirectoryName(FilePath));
            string json = JsonSerializer.Serialize(entries, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(FilePath, json);
        }

        private static CredentialEntry ToEntry(SavedCredential cred)
        {
            return new CredentialEntry
            {
                Plugin = cred.Plugin,
                Identifier = cred.User?.Identifier,
                Username = cred.User?.Username,
                DisplayName = cred.User?.DisplayName,
                PasswordOrToken = cred.PasswordOrToken != null ? Convert.ToBase64String(ProtectedData.Protect(System.Text.Encoding.UTF8.GetBytes(cred.PasswordOrToken), null,
                DataProtectionScope.CurrentUser)) : null,
                AuthenticationType = cred.AuthenticationType.ToString(),
                ProfilePicture = cred.User?.ProfilePicture != null ? Convert.ToBase64String(cred.User.ProfilePicture) : null
            };
        }

        private static SavedCredential FromEntry(CredentialEntry e)
        {
            byte[] avatar = null;
            if (!string.IsNullOrEmpty(e.ProfilePicture))
            {
                try { avatar = Convert.FromBase64String(e.ProfilePicture); } catch { }
            }

            AuthenticationMethod authType = AuthenticationMethod.Password;
            if (!string.IsNullOrEmpty(e.AuthenticationType))
                Enum.TryParse(e.AuthenticationType, out authType);

            var user = new User(e.DisplayName, e.Username, e.Identifier, null, UserConnectionStatus.Offline, avatar);

            string token = null;
            if (!string.IsNullOrEmpty(e.PasswordOrToken))
            {
                try
                {
                    token = System.Text.Encoding.UTF8.GetString(ProtectedData.Unprotect(
                        Convert.FromBase64String(e.PasswordOrToken),
                        null,
                        DataProtectionScope.CurrentUser));
                }
                catch { token = null; }
            }

            return new SavedCredential(user, token, authType, e.Plugin);
        }

        internal static void Save(SavedCredential credential)
        {
            List<CredentialEntry> entries = ReadFile();

            entries.RemoveAll(e =>
                e.Plugin == credential.Plugin &&
                e.Identifier == credential.User?.Identifier);

            entries.Add(ToEntry(credential));
            WriteFile(entries);
        }

        internal static SavedCredential Get(User user, string plugin)
        {
            List<CredentialEntry> entries = ReadFile();

            foreach (CredentialEntry e in entries)
            {
                if (e.Plugin == plugin && e.Identifier == user?.Identifier)
                    return FromEntry(e);
            }

            return null;
        }

        internal static SavedCredential GetFirst(string plugin)
        {
            List<CredentialEntry> entries = ReadFile();

            foreach (CredentialEntry e in entries)
            {
                if (e.Plugin == plugin)
                    return FromEntry(e);
            }

            return null;
        }

        internal static SavedCredential[] GetAll()
        {
            List<CredentialEntry> entries = ReadFile();
            List<SavedCredential> results = new List<SavedCredential>();

            foreach (CredentialEntry e in entries)
                results.Add(FromEntry(e));

            return results.ToArray();
        }

        internal static void Purge(User user, string plugin)
        {
            List<CredentialEntry> entries = ReadFile();
            entries.RemoveAll(e => e.Plugin == plugin && e.Identifier == user?.Identifier);
            WriteFile(entries);
        }

        internal static void PurgePlugin(string plugin)
        {
            List<CredentialEntry> entries = ReadFile();
            entries.RemoveAll(e => e.Plugin == plugin);
            WriteFile(entries);
        }

        internal static void PurgeAll()
        {
            if (File.Exists(FilePath))
                File.Delete(FilePath);
        }
    }
}