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
using System.IO;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using GcmFactory = GitCredentialManager.CredentialManager;
using GcmStore = GitCredentialManager.ICredentialStore;


namespace Skymu.Crossplatform
{
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
            private const string Service = "https://www.skymu.app/gcm-key";
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
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[SKYMU-SecretProtection] KeyStore.TryGet failed: {ex}");
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
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[SKYMU-SecretProtection] KeyStore.TrySet failed: {ex}");
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
