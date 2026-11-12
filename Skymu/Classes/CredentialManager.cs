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

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Xml.Linq;
using Skymu.Preferences;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Skymu.Credentials
{
    internal static class CredentialManager
    {
        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            Universal.NAME,
#if DEBUG
            Settings.SeparateCredentialsForDebug ? "credentialsDebug.xml" : "credentials.xml"
#else
            "credentials.xml"
#endif
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
                cred.User?.Avatar != null
                    ? Convert.ToBase64String(cred.User.Avatar)
                    : null;

            return new XElement(
                "Credential",
                new XElement("Plugin", cred.Plugin),
                new XElement("Identifier", cred.User?.Identifier),
                new XElement("Username", cred.User?.Username),
                new XElement("DisplayName", cred.User?.DisplayName),
                new XElement("PasswordOrToken", encryptedToken),
                new XElement("AuthenticationType", cred.AuthenticationType.ToString()),
                new XElement("AutoLogin", cred.AutoLogin),
                new XElement("Avatar", avatar)
            );
        }

        private static SavedCredential FromElement(XElement e)
        {
            byte[] avatar = null;
            string picStr = (string)e.Element("Avatar");
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
                PresenceStatus.Offline,
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

            string autoStr = (string)e.Element("AutoLogin");
            bool autoLogin = !bool.TryParse(autoStr, out bool parsed) || parsed;

            return new SavedCredential(user, token, authType, (string)e.Element("Plugin"))
            {
                AutoLogin = autoLogin
            };
        }

        private static bool Matches(XElement e, string plugin, string identifier) =>
            (string)e.Element("Plugin") == plugin && (string)e.Element("Identifier") == identifier;

        internal static void Save(SavedCredential credential)
        {
            XDocument doc = ReadFile();
            XElement root = doc.Root;
            XElement element = ToElement(credential);

            List<XElement> existing = root.Elements("Credential")
                .Where(e => Matches(e, credential.Plugin, credential.User?.Identifier))
                .ToList();

            if (existing.Count > 0)
            {
                element.SetElementValue("AutoLogin", (string)existing[0].Element("AutoLogin") ?? "true");
                existing[0].ReplaceWith(element);
                foreach (XElement duplicate in existing.Skip(1))
                    duplicate.Remove();
            }
            else
            {
                root.Add(element);
            }

            WriteFile(doc);
        }

        internal static void SetAutoLogin(User user, string plugin, bool enabled)
        {
            XDocument doc = ReadFile();
            XElement e = doc.Root.Elements("Credential")
                .FirstOrDefault(x => Matches(x, plugin, user?.Identifier));
            if (e == null)
                return;

            e.SetElementValue("AutoLogin", enabled);
            WriteFile(doc);
        }

        internal static bool MoveUp(User user, string plugin) => Move(user, plugin, true);

        internal static bool MoveDown(User user, string plugin) => Move(user, plugin, false);

        private static bool Move(User user, string plugin, bool up)
        {
            XDocument doc = ReadFile();
            XElement e = doc.Root.Elements("Credential")
                .FirstOrDefault(x => Matches(x, plugin, user?.Identifier));
            if (e == null)
                return false;

            XElement neighbour = up
                ? e.ElementsBeforeSelf("Credential").LastOrDefault()
                : e.ElementsAfterSelf("Credential").FirstOrDefault();
            if (neighbour == null)
                return false;

            e.Remove();
            if (up)
                neighbour.AddBeforeSelf(e);
            else
                neighbour.AddAfterSelf(e);

            WriteFile(doc);
            return true;
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
