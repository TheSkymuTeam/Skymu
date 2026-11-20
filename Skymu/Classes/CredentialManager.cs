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

using Skymu.Crossplatform;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;
using Skymu.Preferences;

namespace Skymu.Credentials
{
    internal static class CredentialManager
    {
        private static readonly string FilePath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            Universal.NAME,
#if DEBUG
            Settings.SeparateCredentialsForDebug ? "credentials_debug.xml" : "credentials.xml"
#else
            "credentials.xml"
#endif
        );

        // Every public operation is a read-modify-write of the whole file.
        private static readonly object Gate = new object();

        private static XDocument ReadFile()
        {
            if (!File.Exists(FilePath))
                return new XDocument(new XElement("Credentials"));

            try
            {
                XDocument doc = XDocument.Load(FilePath);
                if (doc.Root != null && doc.Root.Name == "Credentials")
                    return doc;
            }
            catch { }

            // We archive the unreadable file 
            try
            {
                File.Move(
                    FilePath,
                    FilePath + ".corrupt-" + DateTime.UtcNow.ToString("yyyyMMddHHmmss"),
                    true
                );
            }
            catch { }

            return new XDocument(new XElement("Credentials"));
        }

        private static void WriteFile(XDocument doc)
        {
            UnixPermissions.CreateDirectory(Path.GetDirectoryName(FilePath));

            // Write to a temp file
            string temp = FilePath + ".tmp";
            doc.Save(temp);
            UnixPermissions.RestrictFile(temp);

            File.Move(temp, FilePath, true);
        }

        private static string Context(string plugin, string identifier) =>
            plugin + "\0" + identifier;

        private static XElement ToElement(SavedCredential cred)
        {
            XElement tokenElement = new XElement("PasswordOrToken");

            if (
                cred.PasswordOrToken != null
                && SecretProtection.TryProtect(
                    cred.PasswordOrToken,
                    Context(cred.Plugin, cred.User?.Identifier),
                    out string protection,
                    out string value,
                    out string keyId
                )
            )
            {
                tokenElement.Value = value;
                tokenElement.SetAttributeValue("Protection", protection);
                if (keyId != null)
                    tokenElement.SetAttributeValue("KeyId", keyId);
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
                tokenElement,
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

            string plugin = (string)e.Element("Plugin");
            string identifier = (string)e.Element("Identifier");

            var user = new User(
                (string)e.Element("DisplayName"),
                (string)e.Element("Username"),
                identifier,
                null,
                PresenceStatus.Offline,
                avatar
            );

            // Check protection. OLD FILES WILL NOT BE MIGRATED IN, THIS IS SKYMU CONVENTION
            XElement tokenElement = e.Element("PasswordOrToken");
            string token = SecretProtection.TryUnprotect(
                (string)tokenElement?.Attribute("Protection"),
                (string)tokenElement,
                (string)tokenElement?.Attribute("KeyId"),
                Context(plugin, identifier)
            );

            string autoStr = (string)e.Element("AutoLogin");
            bool autoLogin = !bool.TryParse(autoStr, out bool parsed) || parsed;

            return new SavedCredential(user, token, authType, plugin)
            {
                AutoLogin = autoLogin
            };
        }

        private static bool Matches(XElement e, string plugin, string identifier) =>
            (string)e.Element("Plugin") == plugin && (string)e.Element("Identifier") == identifier;

        internal static void Save(SavedCredential credential)
        {
            lock (Gate)
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
        }

        internal static void SetAutoLogin(User user, string plugin, bool enabled)
        {
            lock (Gate)
            {
                XDocument doc = ReadFile();
                XElement e = doc.Root.Elements("Credential")
                    .FirstOrDefault(x => Matches(x, plugin, user?.Identifier));
                if (e == null)
                    return;

                e.SetElementValue("AutoLogin", enabled);
                WriteFile(doc);
            }
        }

        internal static bool MoveUp(User user, string plugin) => Move(user, plugin, true);

        internal static bool MoveDown(User user, string plugin) => Move(user, plugin, false);

        private static bool Move(User user, string plugin, bool up)
        {
            lock (Gate)
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
        }

        internal static SavedCredential Get(User user, string plugin)
        {
            lock (Gate)
            {
                XDocument doc = ReadFile();

                foreach (XElement e in doc.Root.Elements("Credential"))
                {
                    if (Matches(e, plugin, user?.Identifier))
                        return FromElement(e);
                }

                return null;
            }
        }

        internal static SavedCredential GetFirst(string plugin)
        {
            lock (Gate)
            {
                XDocument doc = ReadFile();

                foreach (XElement e in doc.Root.Elements("Credential"))
                {
                    if ((string)e.Element("Plugin") == plugin)
                        return FromElement(e);
                }

                return null;
            }
        }

        internal static SavedCredential[] GetAll()
        {
            lock (Gate)
            {
                XDocument doc = ReadFile();
                List<SavedCredential> results = new List<SavedCredential>();

                foreach (XElement e in doc.Root.Elements("Credential"))
                    results.Add(FromElement(e));

                return results.ToArray();
            }
        }

        internal static void Purge(User user, string plugin)
        {
            lock (Gate)
            {
                XDocument doc = ReadFile();
                doc.Root.Elements("Credential")
                    .Where(e => Matches(e, plugin, user?.Identifier))
                    .Remove();
                WriteFile(doc);
            }
        }

        internal static void PurgePlugin(string plugin)
        {
            lock (Gate)
            {
                XDocument doc = ReadFile();
                doc.Root.Elements("Credential")
                    .Where(e => (string)e.Element("Plugin") == plugin)
                    .Remove();
                WriteFile(doc);
            }
        }

        internal static void PurgeAll()
        {
            lock (Gate)
            {
                if (File.Exists(FilePath))
                    File.Delete(FilePath);
            }
        }
    }
}