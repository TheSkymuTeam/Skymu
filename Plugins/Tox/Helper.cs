/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using ToxOO;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using static ToxCore;

namespace Tox
{
    internal class Helper
    {
        #region Generic

        // ByteArrayToString
        public static string BATS(byte[] ba) => BitConverter.ToString(ba).Replace("-", string.Empty);
        // GrabCore
        public static Core GC(IntPtr user_data) => (Core)GCHandle.FromIntPtr(user_data).Target;
        // GUID
        public static string GUID() => Guid.NewGuid().ToString();
        // PtrToStringAnsi
        public static string PTSA(IntPtr ptr) => Marshal.PtrToStringAnsi(ptr);
        // TIMEstamp
        public static DateTime TIME() => DateTimeOffset.Now.DateTime;

        public static byte[] FromHex(string hex) => FromHex(hex, 64);
        public static byte[] FromHex(string hex, int len)
        {
            if (hex.Length != len)
            {
                throw new ArgumentException($"Hex string must be {len} characters long, got {hex.Length}");
            }
            var result = new byte[hex.Length / 2];

            for (int i = 0; i < len; i += 2)
                result[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);

            return result;
        }


        #endregion

        #region Tox

        public static PresenceStatus MapStatus(Tox_User_Status status)
        {
            switch (status)
            {
                case Tox_User_Status.NONE:
                    return PresenceStatus.Online;
                case Tox_User_Status.AWAY:
                    return PresenceStatus.Away;
                case Tox_User_Status.BUSY:
                    return PresenceStatus.DoNotDisturb;
            };

            return PresenceStatus.Unknown;
        }

        public static void Save(ToxOO.Tox tox, string savename, Core core)
        {
            core.profilelock?.Dispose();
            var path = Path.Combine(ToxCore.toxDir, savename + ".tox");

            var data = tox.savedata;

            if (String.IsNullOrEmpty(core.savepass))
                File.WriteAllBytes(path, data);
            else // Oh femboy...
            {
                FileStream file = File.OpenRead(path);
                var esave = new byte[Size.encryptionExtra];
                file.Read(esave, 0, esave.Length);
                file.Close();
                var salt = new byte[Size.salt];
                IntPtr key;
                Tox_Err_Key_Derivation kerr;
                if (tox_get_salt(esave, salt, out var _))
                {
                    key = tox_pass_key_derive_with_salt(core.savepass, (UIntPtr)core.savepass.Length, salt, out kerr);
                }
                else
                {
                    key = tox_pass_key_derive(core.savepass, (UIntPtr)core.savepass.Length, out kerr);
                }
                if (kerr != Tox_Err_Key_Derivation.OK)
                {
                    core.ERR("Failed to derive key for encrypting the save. Some of your progress is lost: " + kerr);
                }
                else
                {
                    var edata = new byte[data.Length + Size.encryptionExtra];
                    if (tox_pass_key_encrypt(key, data, (UIntPtr)data.Length, edata, out var eerr))
                        File.WriteAllBytes(path, edata);
                    else
                    {
                        core.ERR("Failed to encrypt save. Some of your progress is lost: " + eerr);
                    }
                }
            }

            core.profilelock = new FileStream(path, FileMode.Open, FileAccess.ReadWrite, FileShare.None);
            core.profilelock.Lock(0, 0);
        }

        /// <summary>The public key should be in hex</summary>
        public static byte[] GrabAvatar(string pkey)
        {
            var avatar_cache_dir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "tox", "avatars");
            if (!Directory.Exists(avatar_cache_dir)) return null;
            var path = Path.Combine(avatar_cache_dir, pkey + ".png");
            if (!File.Exists(path)) return null;
            return File.ReadAllBytes(path);
        }

        public static bool FriendListRefresh(Core core, bool ucp = true)
        {
            var users = new Dictionary<UInt32, User>();
            foreach (var f in core.tox.friendArray)
            {
                if (!core.friends.ContainsKey(f.id))
                    core.friends.Add(f.id, new User(
                        f.name,
                        BATS(f.publicKey),
                        BATS(f.publicKey),
                        f.statusMessage,
                        PresenceStatus.Offline,
                        GrabAvatar(BATS(f.publicKey))
                        ));
                users.Add(f.id, core.friends[f.id]);
            }
            var conferences = new Dictionary<UInt32, Group>();
            foreach (var c in core.tox.conferenceArray)
            {
                var peers = new User[c.peerCount + c.offlinePeerCount];
                int i = 0;
                foreach (var p in c.peers)
                {
                    var pkey = BATS(p.publicKey);
                    foreach (var u in users.Values)
                    {
                        if (u.PublicUsername == pkey)
                        {
                            peers[i++] = u;
                            goto next;
                        }
                    }
                    peers[i++] = new User(p.name, pkey, pkey, null, PresenceStatus.Online);
                    next:;
                }
                foreach (var p in c.offlinePeers)
                {
                    var pkey = BATS(p.publicKey);
                    foreach (var u in users.Values)
                    {
                        if (u.PublicUsername == pkey)
                        {
                            peers[i++] = u;
                            goto next2;
                        }
                    }
                    peers[i++] = new User(p.name, pkey, pkey, null, PresenceStatus.Offline);
                    next2:;
                }
                conferences.Add(c.id, new Group(
                    c.title,
                    BATS(c.cid),
                    0,
                    peers
                ));
            }
            if (ucp)
                core.UCP(_ => ListsAdd(core, users, conferences));
            else
                ListsAdd(core, users, conferences);
            return true;
        }

        static void ListsAdd(Core core, Dictionary<UInt32, User> users, Dictionary<UInt32, Group> conferences)
        {
            core.ContactList.Clear();
            core.ConversationList.Clear();
            foreach (var kvp in users)
            {
                var dm = new DirectMessage(kvp.Value, 0, kvp.Value.Identifier);
                core.ContactList.Add(dm);
                core.ConversationList.Add(dm);
            }
            foreach (var kvp in conferences)
            {
                core.ConversationList.Add(kvp.Value);
            }
        }

        public static void ConferencePeerListRefresh(Core core, Conference conference)
        {
            var users = new Dictionary<UInt32, User>();
            foreach (var p in conference.peers)
            { 
                var pkey = BATS(p.publicKey);
                users.Add(p.id, new User(p.name, pkey, pkey, null, PresenceStatus.Online, GrabAvatar(pkey)));
            }
            var ua = users.Values.ToList();
            // Who needs to access offline users anyways.
            foreach (var p in conference.offlinePeers)
            {
                var pkey = BATS(p.publicKey);
                ua.Add(new User(p.name, pkey, pkey, null, PresenceStatus.Offline, GrabAvatar(pkey)));
            }
            var cid = BATS(conference.cid);
            foreach (var conv in core.ConversationList)
                if (conv is Group c)
                    if (c.Identifier == cid)
                    {
                        c.Members = ua.ToArray();
                        break;
                    }
        }

        public static int? UserIndex(Core core, UInt32 fid, Metadata[] list)
        {
            var pkey = BATS(core.tox.GetFriend(fid).publicKey);
            for (int i = 0; i < list.Length; i++)
                if (list[i].Identifier == pkey)
                    return i;
            return null;
        }

        #endregion

        #region native fun



        #endregion
    }
}
