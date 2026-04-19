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

using MiddleMan;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using ToxOO;
using static ToxCore;

namespace Tox
{
    internal class Helper
    {
        #region Generic

        // ByteArrayToString
        public static string BATS(byte[] ba) => BitConverter.ToString(ba).Replace("-", "");
        // GrabCore
        public static Core GC(IntPtr user_data) => (Core)GCHandle.FromIntPtr(user_data).Target;
        // GUID
        public static string GUID() => Guid.NewGuid().ToString();
        // PtrToStringAnsi
        public static string PTSA(IntPtr ptr) => Marshal.PtrToStringAnsi(ptr);
        // TIMEstamp
        public static DateTime TIME() => DateTimeOffset.UtcNow.DateTime;

        public static byte[] FromHex(string hex)
        {
            var len = hex.Length;
            if (len != 64)
            {
                throw new ArgumentException($"Hex string must be 64 characters long, got {len}");
            }
            var result = new byte[len / 2];

            for (int i = 0; i < 64; i += 2)
                result[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);

            return result;
        }


        #endregion

        #region Tox

        public static UserConnectionStatus MapStatus(Tox_User_Status status)
        {
            switch (status)
            {
                case Tox_User_Status.NONE:
                    return UserConnectionStatus.Online;
                case Tox_User_Status.AWAY:
                    return UserConnectionStatus.Away;
                case Tox_User_Status.BUSY:
                    return UserConnectionStatus.DoNotDisturb;
            };
            return UserConnectionStatus.Unknown;
        }

        public static void save(ToxOO.Tox tox, string savename, Core core)
        {
            core.profilelock.Dispose();
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

        public static void PeerListRefresh(Core core, IntPtr tox, UInt32 cid)
        {
            var pkbyte = new byte[Size.conferenceId];
            if (!tox_conference_get_id(tox, cid, pkbyte))
            {
                core.ERR($"Failed to get public key for conference {cid}");
                return;
            }
            var pubkey = Helper.BATS(pkbyte);
            var name = pubkey;
            var titleb = new byte[(int)tox_conference_get_title_size(tox, cid, out var gterr)];
            if (titleb.Length != 0)
            {
                tox_conference_get_title(tox, cid, titleb, out gterr);
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

                users.Add(pid, new User(pname, ppkey, "C" + cid + "/" + ppkey, null, UserConnectionStatus.Online));
            }
            ua = users.Values.ToList();
            // Who needs to access offline users anyways.
            for (UInt32 pid = 0; pid < tox_conference_offline_peer_count(tox, cid, out _); pid++)
            {
                var pubkeyb = new byte[pksize];
                tox_conference_offline_peer_get_public_key(tox, cid, pid, pubkeyb, out _);
                var ppkey = BATS(pubkeyb);
                var nameb = new byte[(int)tox_conference_offline_peer_get_name_size(tox, cid, pid, out _)];
                if (nameb.Length != 0)
                    tox_conference_offline_peer_get_name(tox, cid, pid, nameb, out _);
                var pname = nameb.Length != 0 ? Encoding.ASCII.GetString(nameb) : ppkey;

                ua.Add(new User(pname, ppkey, "C" + cid + "/" + ppkey, null, UserConnectionStatus.Offline));
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
                Group group = new Group(name, "C" + cid, 0, ua.ToArray());
                core.conferences.Add(cid, (users, group));
                core.RecentsList.Add(group);
            }
        }

        public static void PeerListRefreshGC(Core core, IntPtr tox, UInt32 cid)
        {
            var pkbyte = new byte[tox_conference_id_size()];
            if (!tox_conference_get_id(tox, cid, pkbyte))
            {
                core.ERR($"Failed to get public key for conference {cid}");
                return;
            }
            var pubkey = Helper.BATS(pkbyte);
            var name = pubkey;
            var titleb = new byte[(int)tox_conference_get_title_size(tox, cid, out var gterr)];
            if (titleb.Length != 0)
            {
                tox_conference_get_title(tox, cid, titleb, out gterr);
                name = Encoding.ASCII.GetString(titleb);
            }

            var pc = tox_conference_peer_count(tox, cid, out var cpcerr);
            if (cpcerr != Tox_Err_Conference_Peer_Query.OK)
            {
                core.ERR($"Failed to get peer count for conference {cid}: {Helper.PTSA(tox_err_conference_peer_query_to_string(cpcerr))}");
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

                users.Add(pid, new User(pname, ppkey, "C" + cid + "/" + ppkey, null, UserConnectionStatus.Online));
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

                ua.Add(new User(pname, ppkey, "C" + cid + "/" + ppkey, null, UserConnectionStatus.Offline));
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
