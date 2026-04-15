/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace Skymu.Credentials
{
    internal static class CredentialManager
    {
        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Skymu",
            "credentials.xml"
        );

        private static XDocument ReadFile()
        {
            if (!File.Exists(FilePath))
                return new XDocument(new XElement("Credentials"));

            try
            {
                return XDocument.Load(FilePath);
            }
            catch
            {
                return new XDocument(new XElement("Credentials"));
            }
        }

        private static void WriteFile(XDocument doc)
        {
            Directory.CreateDirectory(Path.GetDirectoryName(FilePath));
            doc.Save(FilePath);
        }

        private static XElement ToElement(SavedCredential cred)
        {
            string encryptedToken = null;
            if (cred.PasswordOrToken != null)
            {
                encryptedToken = Convert.ToBase64String(
                    ProtectedData.Protect(
                        System.Text.Encoding.UTF8.GetBytes(cred.PasswordOrToken),
                        null,
                        DataProtectionScope.CurrentUser
                    )
                );
            }

            string avatar =
                cred.User?.ProfilePicture != null
                    ? Convert.ToBase64String(cred.User.ProfilePicture)
                    : null;

            return new XElement(
                "Credential",
                new XElement("Plugin", cred.Plugin),
                new XElement("Identifier", cred.User?.Identifier),
                new XElement("Username", cred.User?.Username),
                new XElement("DisplayName", cred.User?.DisplayName),
                new XElement("PasswordOrToken", encryptedToken),
                new XElement("AuthenticationType", cred.AuthenticationType.ToString()),
                new XElement("ProfilePicture", avatar)
            );
        }

        private static SavedCredential FromElement(XElement e)
        {
            byte[] avatar = null;
            string picStr = (string)e.Element("ProfilePicture");
            if (!string.IsNullOrEmpty(picStr))
            {
                try
                {
                    avatar = Convert.FromBase64String(picStr);
                }
                catch { }
            }

            AuthenticationMethod authType = AuthenticationMethod.Password;
            string authStr = (string)e.Element("AuthenticationType");
            if (!string.IsNullOrEmpty(authStr))
                Enum.TryParse(authStr, out authType);

            var user = new User(
                (string)e.Element("DisplayName"),
                (string)e.Element("Username"),
                (string)e.Element("Identifier"),
                null,
                UserConnectionStatus.Offline,
                avatar
            );

            string token = null;
            string tokenStr = (string)e.Element("PasswordOrToken");
            if (!string.IsNullOrEmpty(tokenStr))
            {
                try
                {
                    token = System.Text.Encoding.UTF8.GetString(
                        ProtectedData.Unprotect(
                            Convert.FromBase64String(tokenStr),
                            null,
                            DataProtectionScope.CurrentUser
                        )
                    );
                }
                catch
                {
                    token = null;
                }
            }

            return new SavedCredential(user, token, authType, (string)e.Element("Plugin"));
        }

        private static bool Matches(XElement e, string plugin, string identifier) =>
            (string)e.Element("Plugin") == plugin && (string)e.Element("Identifier") == identifier;

        internal static void Save(SavedCredential credential)
        {
            XDocument doc = ReadFile();
            XElement root = doc.Root;

            root.Elements("Credential")
                .Where(e => Matches(e, credential.Plugin, credential.User?.Identifier))
                .Remove();

            root.Add(ToElement(credential));
            WriteFile(doc);
        }

        internal static SavedCredential Get(User user, string plugin)
        {
            XDocument doc = ReadFile();

            foreach (XElement e in doc.Root.Elements("Credential"))
            {
                if (Matches(e, plugin, user?.Identifier))
                    return FromElement(e);
            }

            return null;
        }

        internal static SavedCredential GetFirst(string plugin)
        {
            XDocument doc = ReadFile();

            foreach (XElement e in doc.Root.Elements("Credential"))
            {
                if ((string)e.Element("Plugin") == plugin)
                    return FromElement(e);
            }

            return null;
        }

        internal static SavedCredential[] GetAll()
        {
            XDocument doc = ReadFile();
            List<SavedCredential> results = new List<SavedCredential>();

            foreach (XElement e in doc.Root.Elements("Credential"))
                results.Add(FromElement(e));

            return results.ToArray();
        }

        internal static void Purge(User user, string plugin)
        {
            XDocument doc = ReadFile();
            doc.Root.Elements("Credential")
                .Where(e => Matches(e, plugin, user?.Identifier))
                .Remove();
            WriteFile(doc);
        }

        internal static void PurgePlugin(string plugin)
        {
            XDocument doc = ReadFile();
            doc.Root.Elements("Credential")
                .Where(e => (string)e.Element("Plugin") == plugin)
                .Remove();
            WriteFile(doc);
        }

        internal static void PurgeAll()
        {
            if (File.Exists(FilePath))
                File.Delete(FilePath);
        }
    }
}
