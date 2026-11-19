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

using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Xml.Linq;
using Yggdrasil.Enumerations;
using Yggdrasil.Models;
using GcmFactory = GitCredentialManager.CredentialManager;
using GcmStore = GitCredentialManager.ICredentialStore;

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

    // We use AES-256-GCM for this. The key is stored in the credentials vault of each operating system , if that isn't working properly, it uses a credentials.key which is a bit less secure .
    internal static class SecretProtection
    {
        internal const string AesGcmId = "aesgcm";

        private const int NonceSize = 12;
        private const int TagSize = 16;

        private static AesGcm CreateAes(byte[] key) =>
#if NET8_0_OR_GREATER
            new AesGcm(key, TagSize);
#else
            new AesGcm(key);
#endif

        internal static bool TryProtect(
            string plaintext,
            string context,
            out string protection,
            out string value,
            out string keyId
        )
        {
            protection = null;
            value = null;
            keyId = null;

            // This should never happen , I don't think there's a platform that can run NET yet doesn't support AESGCM, but let's have it just in case.
            if (!AesGcm.IsSupported)
                return false;

            try
            {
                byte[] key = KeyProvider.GetKey(create: true);
                if (key == null)
                    return false;

                byte[] nonce = RandomNumberGenerator.GetBytes(NonceSize);
                byte[] plain = Encoding.UTF8.GetBytes(plaintext);
                byte[] cipher = new byte[plain.Length];
                byte[] tag = new byte[TagSize];

                using (AesGcm aes = CreateAes(key))
                    aes.Encrypt(nonce, plain, cipher, tag, Encoding.UTF8.GetBytes(context));

                byte[] all = new byte[NonceSize + TagSize + cipher.Length];
                Buffer.BlockCopy(nonce, 0, all, 0, NonceSize);
                Buffer.BlockCopy(tag, 0, all, NonceSize, TagSize);
                Buffer.BlockCopy(cipher, 0, all, NonceSize + TagSize, cipher.Length);

                protection = AesGcmId;
                value = Convert.ToBase64String(all);
                keyId = KeyProvider.KeyId(key);
                return true;
            }
            catch
            {
                protection = null;
                value = null;
                keyId = null;
                return false;
            }
        }

        internal static string TryUnprotect(
            string protection,
            string value,
            string keyId,
            string context
        )
        {
            if (string.IsNullOrEmpty(value) || protection != AesGcmId || !AesGcm.IsSupported)
                return null;

            try
            {
                byte[] key = KeyProvider.GetKey(create: false);
                if (key == null)
                    return null;

                if (keyId != null && keyId != KeyProvider.KeyId(key))
                    return null;

                byte[] all = Convert.FromBase64String(value);
                if (all.Length < NonceSize + TagSize)
                    return null;

                byte[] nonce = all[..NonceSize];
                byte[] tag = all[NonceSize..(NonceSize + TagSize)];
                byte[] cipher = all[(NonceSize + TagSize)..];
                byte[] plain = new byte[cipher.Length];

                using (AesGcm aes = CreateAes(key))
                    aes.Decrypt(nonce, cipher, tag, plain, Encoding.UTF8.GetBytes(context));

                return Encoding.UTF8.GetString(plain);
            }
            catch
            {
                return null;
            }
        }

        private static class KeyProvider
        {
            private static readonly object Gate = new object();
            private static byte[] cached;

            private static string KeyFilePath =>
                Path.Combine(
                    Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
                    Universal.NAME,
                    "credentials.key"
                );

            internal static string KeyId(byte[] key) =>
                Convert.ToHexString(SHA256.HashData(key)[..8]);

            internal static byte[] GetKey(bool create)
            {
                lock (Gate)
                {
                    if (cached != null)
                        return cached;

                    KeystoreState state = OsKeyStore.TryGet(out byte[] key);
                    if (state == KeystoreState.Found)
                        return cached = key;

                    key = ReadKeyFile();
                    if (key != null)
                        return cached = key;

                    if (!create)
                        return null;

                    key = RandomNumberGenerator.GetBytes(32);

                    // WARNING !!! KeyFile is stored next to the XML if we can't use the OS key store , not very safe ...
                    bool stored = state == KeystoreState.NotFound && OsKeyStore.TrySet(key);
                    if (!stored)
                        key = WriteKeyFile(key);

                    return cached = key;
                }
            }

            private static byte[] ReadKeyFile()
            {
                try
                {
                    if (!File.Exists(KeyFilePath))
                        return null;
                    byte[] key = Convert.FromBase64String(File.ReadAllText(KeyFilePath).Trim());
                    return key.Length == 32 ? key : null;
                }
                catch
                {
                    return null;
                }
            }

            // Returns the key that ended up in the file because maybe another process may have won a race .
            private static byte[] WriteKeyFile(byte[] key)
            {
                UnixPermissions.CreateDirectory(Path.GetDirectoryName(KeyFilePath));

                try
                {
                    using (
                        FileStream fs = new FileStream(
                            KeyFilePath,
                            FileMode.CreateNew,
                            FileAccess.Write
                        )
                    )
                    {
                        // To prevent corruptions .
                        UnixPermissions.RestrictFile(KeyFilePath);
                        byte[] bytes = Encoding.ASCII.GetBytes(Convert.ToBase64String(key));
                        fs.Write(bytes, 0, bytes.Length);
                    }
                    return key;
                }
                catch (IOException)
                {
                    return ReadKeyFile() ?? throw new IOException("Cannot create key file.");
                }
            }
        }

        private enum KeystoreState
        {
            Found,
            NotFound,
            Unavailable,
        }
        private static class OsKeyStore
        {
            private const string Service = "encryption-key";
            private const string Account = "credentials";

            private static GcmStore store;

            private static GcmStore Store
            {
                get
                {
                    if (store == null)
                    {
                        // REQUESTING SECRET SERVICE LA
                        if (
                            OperatingSystem.IsLinux()
                            && string.IsNullOrEmpty(
                                Environment.GetEnvironmentVariable("GCM_CREDENTIAL_STORE")
                            )
                        )
                            Environment.SetEnvironmentVariable(
                                "GCM_CREDENTIAL_STORE",
                                "secretservice"
                            );

                        store = GcmFactory.Create(Universal.NAME);
                    }
                    return store;
                }
            }

            internal static KeystoreState TryGet(out byte[] key)
            {
                key = null;
                try
                {
                    var credential = Store.Get(Service, Account);
                    if (credential == null)
                        return KeystoreState.NotFound;

                    byte[] bytes = Convert.FromBase64String(credential.Password);
                    if (bytes.Length != 32)
                        return KeystoreState.Unavailable;

                    key = bytes;
                    return KeystoreState.Found;
                }
                catch
                {
                    return KeystoreState.Unavailable;
                }
            }

            internal static bool TrySet(byte[] key)
            {
                try
                {
                    Store.AddOrUpdate(Service, Account, Convert.ToBase64String(key));
                    return true;
                }
                catch
                {
                    return false;
                }
            }
        }
    }

    // NET 6 don't have this by default ...
    internal static class UnixPermissions
    {
        [DllImport("libc", SetLastError = true)]
        private static extern int chmod(string path, uint mode);

        internal static void CreateDirectory(string dir)
        {
            bool existed = Directory.Exists(dir);
            Directory.CreateDirectory(dir);
            if (!existed)
                Chmod(dir, 448); 
        }

        internal static void RestrictFile(string path) => Chmod(path, 384);

        private static void Chmod(string path, uint mode)
        {
            if (OperatingSystem.IsWindows())
                return;
            try
            {
                chmod(path, mode);
            }
            catch { }
        }
    }
}