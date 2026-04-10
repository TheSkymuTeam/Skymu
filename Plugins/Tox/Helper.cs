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
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using static ToxCore;

namespace Tox
{
    internal class Helper
    {
        #region GenericQuick

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

        #endregion

        #region ToxQuick

        // PublicKEY
        public static string PKEY(IntPtr tox, UInt32 fid)
        {
            byte[] public_key = new byte[tox_public_key_size()];
            tox_friend_get_public_key(tox, fid, public_key, out Tox_Err_Friend_Get_Public_Key pkerr);
            if (pkerr != Tox_Err_Friend_Get_Public_Key.OK)
            {
                throw new Exception($"Failed to get public key for friend {fid}: {PTSA(tox_err_friend_get_public_key_to_string(pkerr))}");
            }
            return BATS(public_key);
        }

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

        public static void save(IntPtr tox, string savename, Core core)
        {
            byte[] data = new byte[(int)tox_get_savedata_size(tox)];
            tox_get_savedata(tox, data);
            core.profilelock.Dispose();
            File.WriteAllBytes(Path.Combine(ToxCore.toxDir, savename + ".tox"), data);
            core.profilelock = new FileStream(Path.Combine(ToxCore.toxDir, savename + ".tox"), FileMode.Open, FileAccess.ReadWrite, FileShare.None);
            core.profilelock.Lock(0, 0);
        }

        #endregion

        #region ToxAdvanced

        public static void PeerListRefresh(Core core, IntPtr tox, UInt32 cid)
        {
            byte[] pkbyte = new byte[tox_conference_id_size()];
            if (!tox_conference_get_id(tox, cid, pkbyte))
            {
                core.ERR($"Failed to get public key for conference {cid}");
                return;
            }
            string pubkey = Helper.BATS(pkbyte);
            string name = pubkey;
            byte[] titleb = new byte[(int)tox_conference_get_title_size(tox, cid, out Tox_Err_Conference_Title gterr)];
            if (titleb.Length != 0)
            {
                tox_conference_get_title(tox, cid, titleb, out gterr);
                name = Encoding.ASCII.GetString(titleb);
            }

            UInt32 pc = tox_conference_peer_count(tox, cid, out Tox_Err_Conference_Peer_Query cpcerr);
            if (cpcerr != Tox_Err_Conference_Peer_Query.OK)
            {
                core.ERR($"Failed to get peer count for conference {cid}: {Helper.PTSA(tox_err_conference_peer_query_to_string(cpcerr))}");
                return;
            }

            Dictionary<UInt32, User> users = new Dictionary<UInt32, User>();
            List<User> ua = new List<User>();

            int pksize = (int)tox_public_key_size();

            for (UInt32 pid = 0; pid < pc; pid++)
            {
                byte[] pubkeyb = new byte[pksize];
                tox_conference_peer_get_public_key(tox, cid, pid, pubkeyb, out _);
                string ppkey = BATS(pubkeyb);

                byte[] nameb = new byte[(int)tox_conference_peer_get_name_size(tox, cid, pid, out _)];
                if (nameb.Length != 0)
                    tox_conference_peer_get_name(tox, cid, pid, nameb, out _);
                string pname = nameb.Length != 0 ? Encoding.ASCII.GetString(nameb) : ppkey;

                users.Add(pid, new User(pname, ppkey, "C" + cid + "/" + ppkey, null, UserConnectionStatus.Online));
            }
            ua = users.Values.ToList();
            // Who needs to access offline users anyways.
            for (UInt32 pid = 0; pid < tox_conference_offline_peer_count(tox, cid, out _); pid++)
            {
                byte[] pubkeyb = new byte[pksize];
                tox_conference_offline_peer_get_public_key(tox, cid, pid, pubkeyb, out _);
                string ppkey = BATS(pubkeyb);
                byte[] nameb = new byte[(int)tox_conference_offline_peer_get_name_size(tox, cid, pid, out _)];
                if (nameb.Length != 0)
                    tox_conference_offline_peer_get_name(tox, cid, pid, nameb, out _);
                string pname = nameb.Length != 0 ? Encoding.ASCII.GetString(nameb) : ppkey;

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

        #endregion
    }
}
