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
using System.Runtime.InteropServices;
using System.Text;
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
        public static DateTime TIME() => DateTimeOffset.UtcNow.DateTime;

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

        public static void save(ToxOO.Tox tox, string savename, Core core)
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
                if (tox_get_salt(esave, salt, out var err))
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

        public static void PeerListRefresh(Core core, IntPtr tox, Conference conference)
        {
            var users = new Dictionary<UInt32, User>();
            var ua = new List<User>();

            var pksize = (int)tox_public_key_size();

            foreach (var p in conference.peers)
            { 
                var pkey = BATS(p.publicKey);
                users.Add(p.id, new User(p.name, pkey, "C" + conference.cid + "/" + pkey, null, PresenceStatus.Online));
            }
            ua = users.Values.ToList();
            // Who needs to access offline users anyways.
            foreach (var p in conference.offlinePeers)
            {
                var pkey = BATS(p.publicKey);
                ua.Add(new User(p.name, pkey, "C" + conference.cid + "/" + pkey, null, PresenceStatus.Offline));
            }
            if (core.conferences.ContainsKey(conference.id))
            {
                core.conferences[conference.id].users.Clear();
                foreach (var kvp in users)
                {
                    core.conferences[conference.id].users[kvp.Key] = kvp.Value;
                    core.conferences[conference.id].conference.Members = ua.ToArray();
                }
            }
            else
            {
                var group = new Group(conference.title, "C"+BATS(conference.cid), 0, ua.ToArray());
                core.conferences.Add(conference.id, (users, group));
                core.RecentsList.Add(group);
            }
        }

        public static void PeerListRefreshGC(Core core, IntPtr tox, UInt32 cid)
        {
            var pkbyte = new byte[Size.groupId];
            if (!tox_group_get_chat_id(tox, cid, pkbyte, out var err))
            {
                core.ERR($"Failed to get public key for conference {cid}: {err}");
                return;
            }
            var pubkey = BATS(pkbyte);
            var name = pubkey;
            var titleb = new byte[(int)tox_group_get_name_size(tox, cid, out var gnerr)];
            if (titleb.Length != 0)
            {
                tox_group_get_name(tox, cid, titleb, out gnerr);
                name = Encoding.ASCII.GetString(titleb);
            }

            var pc = tox_conference_peer_count(tox, cid, out var cpcerr);
            if (cpcerr != Tox_Err_Conference_Peer_Query.OK)
            {
                core.ERR($"Failed to get peer count for conference {cid}: {PTSA(tox_err_conference_peer_query_to_string(cpcerr))}");
                return;
            }

            var users = new Dictionary<UInt32, User>();
            var ua = new List<User>();

            var pksize = (int)tox_public_key_size();

            for (UInt32 pid = 0; pid < pc; pid++)
            {
                var pubkeyb = new byte[pksize];
                tox_conference_peer_get_public_key(tox, cid, pid, pubkeyb, out _);
                string ppkey = BATS(pubkeyb);

                var nameb = new byte[(int)tox_conference_peer_get_name_size(tox, cid, pid, out _)];
                if (nameb.Length != 0)
                    tox_conference_peer_get_name(tox, cid, pid, nameb, out _);
                string pname = nameb.Length != 0 ? Encoding.ASCII.GetString(nameb) : ppkey;

                users.Add(pid, new User(pname, ppkey, "C" + cid + "/" + ppkey, null, PresenceStatus.Online));
            }
            ua = users.Values.ToList();

            for (UInt32 pid = 0; pid < tox_conference_offline_peer_count(tox, cid, out _); pid++)
            {
                var pubkeyb = new byte[pksize];
                tox_conference_offline_peer_get_public_key(tox, cid, pid, pubkeyb, out _);
                var ppkey = BATS(pubkeyb);
                var nameb = new byte[(int)tox_conference_offline_peer_get_name_size(tox, cid, pid, out _)];
                if (nameb.Length != 0)
                    tox_conference_offline_peer_get_name(tox, cid, pid, nameb, out _);
                var pname = nameb.Length != 0 ? Encoding.ASCII.GetString(nameb) : ppkey;

                ua.Add(new User(pname, ppkey, "C" + cid + "/" + ppkey, null, PresenceStatus.Offline));
            }
            if (core.conferences.ContainsKey(cid))
            {
                core.conferences[cid].users.Clear();
                foreach (var kvp in users)
                {
                    core.conferences[cid].users[kvp.Key] = kvp.Value;
                    core.conferences[cid].conference.Members = ua.ToArray();
                }
            }
            else
            {
                var group = new Group(name, "C" + cid, 0, ua.ToArray());
                core.conferences.Add(cid, (users, group));
                core.RecentsList.Add(group);
            }
        }

        #endregion
    }
}
