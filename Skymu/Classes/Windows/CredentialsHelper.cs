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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.Json;
using MiddleMan;

namespace Skymu
{
    internal class CredentialsHelper
    {

        /// <summary>
        /// Writes a plugin's credential to Windows Credential Manager, overwriting if it already exists
        /// </summary>
        internal static void Write(SavedCredential credential, string pluginInternalName)
        {
            string targetName = Universal.Name + " (" + pluginInternalName + ")";

            // Serialize the credential to JSON
            var credentialData = new
            {
                Username = credential.Username,
                PasswordOrToken = credential.PasswordOrToken,
                AuthenticationType = credential.AuthenticationType.ToString(),
                ProfilePicture = credential.ProfilePicture != null
                    ? Convert.ToBase64String(credential.ProfilePicture)
                    : null
            };

            string json = JsonSerializer.Serialize(credentialData);
            byte[] jsonBytes = Encoding.UTF8.GetBytes(json);

            IntPtr credBlobPtr = Marshal.AllocHGlobal(jsonBytes.Length);
            try
            {
                Marshal.Copy(jsonBytes, 0, credBlobPtr, jsonBytes.Length);

                var cred = new CREDENTIAL
                {
                    Type = CRED_TYPE.GENERIC,
                    TargetName = targetName,
                    UserName = credential.Username,
                    CredentialBlob = credBlobPtr,  
                    CredentialBlobSize = (uint)jsonBytes.Length,
                    Persist = CRED_PERSIST.LOCAL_MACHINE,
                    AttributeCount = 0,
                    Attributes = IntPtr.Zero,
                    Comment = null,
                    TargetAlias = null
                };

                if (!CredWrite(ref cred, 0))
                {
                    throw new System.ComponentModel.Win32Exception(Marshal.GetLastWin32Error());
                }
            }
            finally
            {
                Marshal.FreeHGlobal(credBlobPtr);  
            }
        }

        /// <summary>
        /// Reads a specific plugin's credential from Windows Credential Manager
        /// </summary>
        internal static SavedCredential Read(string pluginInternalName)
        {
            string targetName = Universal.Name + " (" + pluginInternalName + ")";

            if (!CredRead(targetName, CRED_TYPE.GENERIC, 0, out IntPtr credPtr))
            {
                int error = Marshal.GetLastWin32Error();
                if (error == ERROR_NOT_FOUND)
                    return null;

                throw new System.ComponentModel.Win32Exception(error);
            }

            try
            {
                var cred = Marshal.PtrToStructure<CREDENTIAL>(credPtr);
                byte[] blobBytes = new byte[cred.CredentialBlobSize];
                Marshal.Copy(cred.CredentialBlob, blobBytes, 0, (int)cred.CredentialBlobSize);

                string json = Encoding.UTF8.GetString(blobBytes);
                var credentialData = JsonSerializer.Deserialize<JsonElement>(json);

                string username = credentialData.GetProperty("Username").GetString();
                string passwordOrToken = credentialData.GetProperty("PasswordOrToken").GetString();
                string authTypeStr = credentialData.GetProperty("AuthenticationType").GetString();
                AuthenticationMethod authType = Enum.Parse<AuthenticationMethod>(authTypeStr);

                byte[] profilePicture = null;
                if (credentialData.TryGetProperty("ProfilePicture", out var picElement)
                    && picElement.ValueKind != JsonValueKind.Null)
                {
                    profilePicture = Convert.FromBase64String(picElement.GetString());
                }

                return new SavedCredential(username, passwordOrToken, authType, profilePicture);
            }
            catch
            {
                Universal.ExceptionHandler(new Exception("Failed to parse credential data from Windows Credential Manager."));
                return null;
            }
            finally
            {
                CredFree(credPtr);
            }
        }

        /// <summary>
        /// Deletes a specific plugin's credential from Windows Credential Manager
        /// </summary>
        internal static void Purge(string pluginInternalName, bool throwOnMissing = true)
        {
            string targetName = Universal.Name + " (" + pluginInternalName + ")";

            if (!CredDelete(targetName, CRED_TYPE.GENERIC, 0))
            {
                int error = Marshal.GetLastWin32Error();
                if (error == ERROR_NOT_FOUND && !throwOnMissing)
                    return;

                throw new System.ComponentModel.Win32Exception(error);
            }
        }

        /// <summary>
        /// Deletes all Skymu credentials from Windows Credential Manager
        /// </summary>
        internal static void PurgeAll()
        {
            string[] plugins = GetSavedCredentialPlugins();
            foreach (string plugin in plugins)
            {
                Purge(plugin, throwOnMissing: false);
            }
        }

        /// <summary>
        /// Gets list of plugin internal names that have saved credentials
        /// </summary>
        internal static string[] GetSavedCredentialPlugins()
        {
            IntPtr credCountPtr = IntPtr.Zero;
            IntPtr credPtrPtr = IntPtr.Zero;

            try
            {
                if (!CredEnumerate(Universal.Name + "*", 0, out int count, out credPtrPtr))
                {
                    int error = Marshal.GetLastWin32Error();
                    if (error == ERROR_NOT_FOUND)
                        return new string[0];

                    throw new System.ComponentModel.Win32Exception(error);
                }

                var plugins = new List<string>();
                IntPtr[] credPtrs = new IntPtr[count];
                Marshal.Copy(credPtrPtr, credPtrs, 0, count);

                foreach (IntPtr credPtr in credPtrs)
                {
                    var cred = Marshal.PtrToStructure<CREDENTIAL>(credPtr);

                    // Target name format: "Skymu (skymu-discord-plugin)"
                    // Extract the plugin name from inside the parentheses
                    string prefix = Universal.Name + " (";
                    if (cred.TargetName.StartsWith(prefix) && cred.TargetName.EndsWith(")"))
                    {
                        int startIndex = prefix.Length;
                        int length = cred.TargetName.Length - startIndex - 1; // -1 for the closing ')'
                        string pluginName = cred.TargetName.Substring(startIndex, length);
                        plugins.Add(pluginName);
                    }
                }

                return plugins.ToArray();
            }
            finally
            {
                if (credPtrPtr != IntPtr.Zero)
                    CredFree(credPtrPtr);
            }
        }

        #region P/Invoke declarations

        private const int ERROR_NOT_FOUND = 1168;

        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        private struct CREDENTIAL
        {
            public uint Flags;
            public CRED_TYPE Type;
            [MarshalAs(UnmanagedType.LPWStr)]
            public string TargetName;
            [MarshalAs(UnmanagedType.LPWStr)]
            public string Comment;
            public System.Runtime.InteropServices.ComTypes.FILETIME LastWritten;
            public uint CredentialBlobSize;
            public IntPtr CredentialBlob;
            public CRED_PERSIST Persist;
            public uint AttributeCount;
            public IntPtr Attributes;
            [MarshalAs(UnmanagedType.LPWStr)]
            public string TargetAlias;
            [MarshalAs(UnmanagedType.LPWStr)]
            public string UserName;
        }

        private enum CRED_TYPE : uint
        {
            GENERIC = 1,
            DOMAIN_PASSWORD = 2,
            DOMAIN_CERTIFICATE = 3,
            DOMAIN_VISIBLE_PASSWORD = 4,
            GENERIC_CERTIFICATE = 5,
            DOMAIN_EXTENDED = 6,
            MAXIMUM = 7,
            MAXIMUM_EX = 1007
        }

        private enum CRED_PERSIST : uint
        {
            SESSION = 1,
            LOCAL_MACHINE = 2,
            ENTERPRISE = 3
        }

        [DllImport("advapi32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        private static extern bool CredWrite([In] ref CREDENTIAL userCredential, [In] uint flags);

        [DllImport("advapi32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        private static extern bool CredRead(
            string target,
            CRED_TYPE type,
            int reservedFlag,
            out IntPtr credentialPtr);

        [DllImport("advapi32.dll", SetLastError = true)]
        private static extern bool CredFree([In] IntPtr cred);

        [DllImport("advapi32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        private static extern bool CredDelete(string target, CRED_TYPE type, int flags);

        [DllImport("advapi32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
        private static extern bool CredEnumerate(
            string filter,
            int flags,
            out int count,
            out IntPtr pCredentials);

        #endregion
    }
}