/*==========================================================*/
// This file is licensed in MIT.
/*==========================================================*/
// Copyright 2026 The Skymu Team
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated
// documentation files (the “Software”), to deal in the
// Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute,
// sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice
// shall be included in all copies or substantial portions of
// the Software.
//
// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
// KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
// OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
// OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using static Tox.Helper;
using static ToxCore;

// shit
class Shit
{
    internal static void pqerr(Tox_Err_Conference_Peer_Query err)
    {
        switch (err)
        {
            case Tox_Err_Conference_Peer_Query.OK: return;
            case Tox_Err_Conference_Peer_Query.CONFERENCE_NOT_FOUND: throw new ObjectDisposedException("Conference");
            case Tox_Err_Conference_Peer_Query.PEER_NOT_FOUND: throw new ObjectDisposedException("Peer");
            case Tox_Err_Conference_Peer_Query.NO_CONNECTION: throw new InvalidOperationException("No connection");
            default: throw new Exception(err.ToString());
        }
    }
    internal static void cperr(Tox_Err_Conference_Peer_Query err)
    {
        if (err != Tox_Err_Conference_Peer_Query.OK)
            switch (err)
            {
                case Tox_Err_Conference_Peer_Query.CONFERENCE_NOT_FOUND: throw new ObjectDisposedException("Conference");
                case Tox_Err_Conference_Peer_Query.PEER_NOT_FOUND: throw new ObjectDisposedException("Peer");
                case Tox_Err_Conference_Peer_Query.NO_CONNECTION: throw new InvalidOperationException("No connection");
                default: throw new Exception(err.ToString());
            }
    }
    internal static byte[] FromHex(string hex, UInt32 leng = 64)
    {
        var len = hex.Length;
        if (len != leng)
        {
            throw new ArgumentException($"Hex string must be {leng} characters long, got {len}");
        }
        var result = new byte[len / 2];

        for (int i = 0; i < leng; i += 2)
            result[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);

        return result;
    }
}

namespace ToxOO
{
    public class Options
    {
        public IntPtr ptr;

        public Options()
        {
            ptr = tox_options_new(out var err);
            if (err != Tox_Err_Options_New.OK)
            {
                if (err == Tox_Err_Options_New.MALLOC) throw new OutOfMemoryException();
                else throw new Exception(err.ToString());
            }
        }

        public void Dispose()
        {
            tox_options_free(ptr);
            ptr = IntPtr.Zero;
        }

        public Options Copy()
        {
            Options o = new Options();
            tox_options_copy(o.ptr, ptr);
            return o;
        }
        public void Copy(Options o) => tox_options_copy(o.ptr, ptr);

        public void Default() => tox_options_default(ptr);

        public bool ipv6Enabled
        {
            get => tox_options_get_ipv6_enabled(ptr);
            set => tox_options_set_ipv6_enabled(ptr, value);
        }
        public bool udpEnabled
        {
            get => tox_options_get_udp_enabled(ptr);
            set => tox_options_set_udp_enabled(ptr, value);
        }
        public bool localDiscoveryEnabled
        {
            get => tox_options_get_local_discovery_enabled(ptr);
            set => tox_options_set_local_discovery_enabled(ptr, value);
        }
        public bool dhtAnnouncementsEnabled
        {
            get => tox_options_get_ipv6_enabled(ptr);
            set => tox_options_set_ipv6_enabled(ptr, value);
        }
        public Tox_Proxy_Type proxyType
        {
            get => tox_options_get_proxy_type(ptr);
            set => tox_options_set_proxy_type(ptr, value);
        }
        public string proxyHost
        {
            get => PTSA(tox_options_get_proxy_host(ptr));
            set => tox_options_set_proxy_host(ptr, value);
        }
        public UInt16 proxyPort
        {
            get => tox_options_get_proxy_port(ptr);
            set => tox_options_set_proxy_port(ptr, value);
        }
        public UInt16 startPort
        {
            get => tox_options_get_start_port(ptr);
            set => tox_options_set_start_port(ptr, value);
        }
        public UInt16 endPort
        {
            get => tox_options_get_end_port(ptr);
            set => tox_options_set_end_port(ptr, value);
        }
        public UInt16 tcpPort
        {
            get => tox_options_get_tcp_port(ptr);
            set => tox_options_set_tcp_port(ptr, value);
        }
        public bool holePunchingEnabled
        {
            get => tox_options_get_hole_punching_enabled(ptr);
            set => tox_options_set_hole_punching_enabled(ptr, value);
        }
        public Tox_Savedata_Type savedataType
        {
            get => tox_options_get_savedata_type(ptr);
            set => tox_options_set_savedata_type(ptr, value);
        }
        public byte[] savedata
        {
            get
            {
                int size = (int)tox_options_get_savedata_length(ptr);
                byte[] data = new byte[size];
                Marshal.Copy(ptr, data, 0, size);
                return data;
            }
            set => tox_options_set_savedata_data(ptr, value, (UIntPtr)value.Length);
        }
        public tox_log_cb logCallback
        {
            get => tox_options_get_log_callback(ptr);
            set => tox_options_set_log_callback(ptr, value);
        }
        public IntPtr logUserData
        {
            get => tox_options_get_log_userdata(ptr);
            set => tox_options_set_log_userdata(ptr, value);
        }
        public bool experimentalOwnedData
        {
            get => tox_options_get_experimental_owned_data(ptr);
            set => tox_options_set_experimental_owned_data(ptr, value);
        }
        public bool experimentalThreadSafety
        {
            get => tox_options_get_experimental_thread_safety(ptr);
            set => tox_options_set_experimental_thread_safety(ptr, value);
        }
        public bool experimentalGroupsPersistence
        {
            get => tox_options_get_experimental_groups_persistence(ptr);
            set => tox_options_set_experimental_groups_persistence(ptr, value);
        }
        public bool experimentalDisableDns
        {
            get => tox_options_get_experimental_disable_dns(ptr);
            set => tox_options_set_experimental_disable_dns(ptr, value);
        }
    }

    public static class Version
    {
        public static UInt32 major { get => tox_version_major(); }
        public static UInt32 minor { get => tox_version_minor(); }
        public static UInt32 patch { get => tox_version_patch(); }
        public static string str { get => $"{major}.{minor}.{patch}"; }
        public static bool Compatible(UInt32 major, UInt32 minor, UInt32 patch) => tox_version_is_compatible(major, minor, patch);
    }

    public static class Size
    {
        public static UInt32 publicKey { get => tox_public_key_size(); }
        public static UInt32 secretKey { get => tox_secret_key_size(); }
        public static UInt32 dhtId { get => tox_dht_id_size(); }
        public static UInt32 conferenceUid { get => tox_conference_uid_size(); }
        public static UInt32 conferenceId { get => tox_conference_id_size(); }
        public static UInt32 groupTopic { get => tox_group_max_topic_length(); }
        public static UInt32 groupPart { get => tox_group_max_part_length(); }
        public static UInt32 groupMessage { get => tox_group_max_message_length(); }
        public static UInt32 groupCustomLossyPacket { get => tox_group_max_custom_lossy_packet_length(); }
        public static UInt32 groupCustomLosslessPacket { get => tox_group_max_custom_lossless_packet_length(); }
        public static UInt32 groupName { get => tox_group_max_group_name_length(); }
        public static UInt32 groupPassword { get => tox_group_max_group_name_length(); }
        public static UInt32 groupId { get => tox_group_chat_id_size(); }
        public static UInt32 groupPeerPublicKey { get => tox_group_peer_public_key_size(); }
        public static UInt32 nospam { get => tox_nospam_size(); }
        public static UInt32 address { get => tox_address_size(); }
        public static UInt32 name { get => tox_max_name_length(); }
        public static UInt32 statusMessage { get => tox_max_status_message_length(); }
        public static UInt32 friendRequest { get => tox_max_friend_request_length(); }
        public static UInt32 message { get => tox_max_message_length(); }
        public static UInt32 customPacket { get => tox_max_custom_packet_size(); }
        public static UInt32 hash { get => tox_hash_length(); }
        public static UInt32 fileId { get => tox_file_id_length(); }
        public static UInt32 filename { get => tox_max_filename_length(); }
        public static UInt32 hostname { get => tox_max_hostname_length(); }
        #region toxencryptsave
        public static UInt32 salt { get => tox_pass_salt_length(); }
        public static UInt32 key { get => tox_pass_key_length(); }
        public static UInt32 encryptionExtra { get => tox_pass_encryption_extra_length(); }
        #endregion
    }

    public class Tox
    {
        public IntPtr ptr;

        public Tox(Options options)
        {
            ptr = tox_new(options.ptr, out var err);
            if (err != Tox_Err_New.OK)
                switch (err)
                {
                    case Tox_Err_New.MALLOC: throw new OutOfMemoryException();
                    case Tox_Err_New.NULL: throw new ArgumentNullException();
                    case Tox_Err_New.PROXY_BAD_HOST:
                    case Tox_Err_New.PROXY_BAD_PORT:
                    case Tox_Err_New.PROXY_BAD_TYPE:
                        throw new ArgumentException(err.ToString());
                    default: throw new Exception(err.ToString());
                }
        }
        public void Dispose()
        {
            tox_kill(ptr);
            ptr = IntPtr.Zero;
        }

        #region self stuff

        public UIntPtr savedataSize { get => tox_get_savedata_size(ptr); }
        public byte[] savedata
        {
            get
            {
                var savedata = new byte[(int)savedataSize];
                tox_get_savedata(ptr, savedata);
                return savedata;
            }
        }

        public void Bootstrap(string host, UInt16 port, byte[] public_key)
        {
            if (!tox_bootstrap(ptr, host, port, public_key, out var err))
            {
                if (err == Tox_Err_Bootstrap.NULL || err == Tox_Err_Bootstrap.BAD_HOST || err == Tox_Err_Bootstrap.BAD_PORT) throw new ArgumentNullException();
                else
                    throw new Exception(err.ToString());
            }
        }
        public void AddTcpRelay(string host, UInt16 port, byte[] public_key)
        {
            if (!tox_add_tcp_relay(ptr, host, port, public_key, out var err))
            {
                if (err == Tox_Err_Bootstrap.NULL || err == Tox_Err_Bootstrap.BAD_HOST || err == Tox_Err_Bootstrap.BAD_PORT) throw new ArgumentNullException();
                else
                    throw new Exception(err.ToString());
            }
        }

        public Tox_Connection connectionStatus { get => tox_self_get_connection_status(ptr); }
        public tox_self_connection_status_cb selfConnectionStatus { set => tox_callback_self_connection_status(ptr, value); }

        public UInt32 iterationInterval { get => tox_iteration_interval(ptr); }
        public void Iterate(IntPtr user_data) => tox_iterate(ptr, user_data);

        public string address
        {
            get
            {
                var address = new byte[Size.address];
                tox_self_get_address(ptr, address);
                return BATS(address);
            }
        }
        public UInt32 nospam
        {
            get => tox_self_get_nospam(ptr);
            set => tox_self_set_nospam(ptr, value);
        }
        public byte[] publicKey
        {
            get
            {
                var public_key = new byte[Size.publicKey];
                tox_self_get_public_key(ptr, public_key);
                return public_key;
            }
        }

        static void setInfoEx(Tox_Err_Set_Info err)
        {
            switch (err)
            {
                case Tox_Err_Set_Info.TOO_LONG: throw new ArgumentException("Value is too long");
                case Tox_Err_Set_Info.NULL: throw new ArgumentNullException();
                default: throw new Exception(err.ToString());
            }
        }
        public string name
        {
            get
            {
                var size = (int)tox_self_get_name_size(ptr);
                var name = new byte[size];
                tox_self_get_name(ptr, name);
                string uname = Encoding.ASCII.GetString(name);
                if (String.IsNullOrEmpty(uname))
                    return BATS(publicKey);
                return uname;
            }
            set
            {
                if (!tox_self_set_name(ptr, value, (UIntPtr)value.Length, out Tox_Err_Set_Info err))
                    setInfoEx(err);
            }
        }
        public string statusMessage
        {
            get
            {
                int size = (int)tox_self_get_status_message_size(ptr);
                var status_message = new byte[size];
                tox_self_get_status_message(ptr, status_message);
                return Encoding.ASCII.GetString(status_message);
            }
            set
            {
                if (!tox_self_set_status_message(ptr, value, (UIntPtr)value.Length, out Tox_Err_Set_Info err))
                    setInfoEx(err);
            }
        }
        public Tox_User_Status status
        {
            get => tox_self_get_status(ptr);
            set => tox_self_set_status(ptr, value);
        }

        #endregion

        #region friend

        public UInt32 FriendAdd(string address, string message = null) => FriendAdd(Shit.FromHex(address, Size.address * 2), message);

        public UInt32 FriendAdd(byte[] address, string message = null)
        {
            UInt32 fid;
            Tox_Err_Friend_Add err;
            if (String.IsNullOrEmpty(message))
                fid = tox_friend_add_norequest(ptr, address, out err);
            else
                fid = tox_friend_add(ptr, address, message, (UIntPtr)message.Length, out err);
            if (err != Tox_Err_Friend_Add.OK)
                switch (err)
                {
                    case Tox_Err_Friend_Add.NULL: throw new ArgumentNullException();
                    case Tox_Err_Friend_Add.TOO_LONG: throw new ArgumentException("Message too long");
                    case Tox_Err_Friend_Add.NO_MESSAGE: throw new ArgumentNullException("No message provided");
                    case Tox_Err_Friend_Add.OWN_KEY: throw new InvalidOperationException("Cannot add yourself");
                    case Tox_Err_Friend_Add.ALREADY_SENT: throw new InvalidOperationException("Request already sent");
                    case Tox_Err_Friend_Add.BAD_CHECKSUM: throw new InvalidDataException("Bad checksum");
                    case Tox_Err_Friend_Add.SET_NEW_NOSPAM: throw new InvalidOperationException("Friend is already there with different nospam");
                    case Tox_Err_Friend_Add.MALLOC: throw new OutOfMemoryException();
                    default: throw new Exception(err.ToString());
                }
            return fid;
        }
        public void FriendDelete(UInt32 fid)
        {
            if (!tox_friend_delete(ptr, fid, out Tox_Err_Friend_Delete err))
                switch (err)
                {
                    case Tox_Err_Friend_Delete.FRIEND_NOT_FOUND: throw new ArgumentException("Friend not found");
                    default: throw new Exception(err.ToString());
                }
        }
        public UInt32 FriendByPublicKey(byte[] public_key)
        {
            UInt32 fid = tox_friend_by_public_key(ptr, public_key, out Tox_Err_Friend_By_Public_Key err);
            if (err != Tox_Err_Friend_By_Public_Key.OK)
                switch (err)
                {
                    case Tox_Err_Friend_By_Public_Key.NULL: throw new ArgumentNullException();
                    case Tox_Err_Friend_By_Public_Key.NOT_FOUND: throw new ArgumentException("Friend not found");
                    default: throw new Exception(err.ToString());
                }
            return fid;
        }
        public bool FriendExists(UInt32 fid) => tox_friend_exists(ptr, fid);
        public UIntPtr friendCount { get => tox_self_get_friend_list_size(ptr); }
        public UInt32[] friendIds
        {
            get
            {
                UInt32[] flist = new UInt32[(int)friendCount];
                tox_self_get_friend_list(ptr, flist);
                return flist;
            }
        }
        public Dictionary<UInt32, Friend> friends
        {
            get
            {
                Dictionary<UInt32, Friend> friends = new Dictionary<UInt32, Friend>();
                foreach (UInt32 fid in friendIds)
                {
                    friends[fid] = new Friend(ptr, fid);
                }
                return friends;
            }
        }
        public Friend[] friendArray
        {
            get
            {
                Friend[] friends = new Friend[(int)friendCount];
                int i = 0;
                foreach (UInt32 fid in friendIds)
                {
                    friends[i] = new Friend(ptr, fid);
                    i++;
                }
                return friends;
            }
        }
        public Friend GetFriend(UInt32 fid) => new Friend(ptr, fid);

        public tox_friend_name_cb friendName { set => tox_callback_friend_name(ptr, value); }
        public tox_friend_status_message_cb friendStatusMessage { set => tox_callback_friend_status_message(ptr, value); }
        public tox_friend_status_cb friendStatus { set => tox_callback_friend_status(ptr, value); }
        public tox_friend_connection_status_cb friendConnectionStatus { set => tox_callback_friend_connection_status(ptr, value); }
        public tox_friend_typing_cb friendTyping { set => tox_callback_friend_typing(ptr, value); }
        public tox_friend_read_receipt_cb friendReadReceipt { set => tox_callback_friend_read_receipt(ptr, value); }
        public tox_friend_request_cb friendRequest { set => tox_callback_friend_request(ptr, value); }
        public tox_friend_message_cb friendMessage { set => tox_callback_friend_message(ptr, value); }

        #endregion

        #region file TODO

        /// <param name="hash">byte[] of size Size.hash</param>
        /// <returns>If the result was null or not</returns>
        public static bool Hash(byte[] data, [Out] byte[] hash) => tox_hash(hash, data, (UIntPtr)data.Length);
        /// <param name="hash">byte[] of size Size.hash</param>
        /// <returns>If the result was null or not</returns>
        public static bool Hash(string data, [Out] byte[] hash) => tox_hash(hash, data, (UIntPtr)data.Length);

        #endregion

        #region conference

        void caexp(Tox_Err_Conference_Join err)
        {
            if (err != Tox_Err_Conference_Join.OK)
                switch (err)
                {
                    case Tox_Err_Conference_Join.INVALIID_LENGTH: throw new ArgumentException("Invalid length");
                    case Tox_Err_Conference_Join.WRONG_TYPE: throw new ArgumentException("Invalid cookie?");
                    case Tox_Err_Conference_Join.FRIEND_NOT_FOUND: throw new ArgumentException("Friend not found");
                    case Tox_Err_Conference_Join.DUPLICATE: throw new InvalidOperationException("Duplicate/already joined");
                    case Tox_Err_Conference_Join.INIT_FAIL: throw new ExternalException("Failed to initialize");
                    case Tox_Err_Conference_Join.FAIL_SEND: throw new ExternalException("Failed to send join packet");
                    case Tox_Err_Conference_Join.NULL: throw new ArgumentNullException("Cookie was NULL");
                    default: throw new Exception(err.ToString());
                }
        }
        public UInt32 ConferenceAdd(UInt32 fid, string cookie)
        {
            var cid = tox_conference_join(ptr, fid, cookie, (UIntPtr)cookie.Length, out var err);
            caexp(err);
            return fid;
        }
        public UInt32 ConferenceAdd(UInt32 fid, byte[] cookie)
        {
            var cid = tox_conference_join(ptr, fid, cookie, (UIntPtr)cookie.Length, out var err);
            caexp(err);
            return fid;
        }
        public void ConferenceDelete(UInt32 cid)
        {
            if (!tox_conference_delete(ptr, cid, out Tox_Err_Conference_Delete err))
                switch (err)
                {
                    case Tox_Err_Conference_Delete.CONFERENCE_NOT_FOUND: throw new ArgumentException("Conference not found");
                    default: throw new Exception(err.ToString());
                }
        }
        public Conference ConferenceById(byte[] id)
        {
            UInt32 cid = tox_conference_by_id(ptr, id, out Tox_Err_Conference_By_Id err);
            if (err != Tox_Err_Conference_By_Id.OK)
                switch (err)
                {
                    case Tox_Err_Conference_By_Id.NULL: throw new ArgumentNullException();
                    case Tox_Err_Conference_By_Id.NOT_FOUND: return null;
                    default: throw new Exception(err.ToString());
                }
            return new Conference(ptr, cid);
        }
        public UIntPtr conferenceCount { get => tox_conference_get_chatlist_size(ptr); }
        public UInt32[] conferenceIds
        {
            get
            {
                UInt32[] clist = new UInt32[(int)conferenceCount];
                tox_conference_get_chatlist(ptr, clist);
                return clist;
            }
        }
        public Dictionary<UInt32, Conference> conferences
        {
            get
            {
                Dictionary<UInt32, Conference> Conferences = new Dictionary<UInt32, Conference>();
                foreach (UInt32 cid in conferenceIds)
                {
                    Conferences[cid] = new Conference(ptr, cid);
                }
                return Conferences;
            }
        }
        public Conference[] conferenceArray
        {
            get
            {
                Conference[] Conferences = new Conference[(int)conferenceCount];
                int i = 0;
                foreach (UInt32 cid in conferenceIds)
                {
                    Conferences[i] = new Conference(ptr, cid);
                    i++;
                }
                return Conferences;
            }
        }
        public Conference GetConference(UInt32 cid) => new Conference(ptr, cid);

        public tox_conference_invite_cb conferenceInvite { set => tox_callback_conference_invite(ptr, value); }
        public tox_conference_connected_cb conferenceConnected { set => tox_callback_conference_connected(ptr, value); }
        public tox_conference_message_cb conferenceMessage { set => tox_callback_conference_message(ptr, value); }
        public tox_conference_title_cb conferenceTitle { set => tox_callback_conference_title(ptr, value); }
        public tox_conference_peer_name_cb conferencePeerName { set => tox_callback_conference_peer_name(ptr, value); }
        public tox_conference_peer_list_changed_cb conferencePeerListChanged { set => tox_callback_conference_peer_list_changed(ptr, value); }

        #endregion
    }

    public class Friend
    {
        public IntPtr ptr;
        public UInt32 id;

        public Friend(IntPtr tox, UInt32 id)
        {
            tox_friend_get_last_online(tox, id, out var err);
            if (err == Tox_Err_Friend_Get_Last_Online.FRIEND_NOT_FOUND)
                throw new ArgumentException("Friend not found");
            ptr = tox;
            this.id = id;
        }
        public byte[] publicKey
        {
            get
            {
                var pubkey = new byte[Size.publicKey];
                tox_friend_get_public_key(ptr, id, pubkey, out var err);
                if (err != Tox_Err_Friend_Get_Public_Key.OK)
                    switch (err)
                    {
                        case Tox_Err_Friend_Get_Public_Key.FRIEND_NOT_FOUND: throw new ObjectDisposedException("Friend");
                        default: throw new Exception(err.ToString());
                    }
                return pubkey;
            }
        }
        public UInt64 lastOnline
        {
            get
            {
                var stat = tox_friend_get_last_online(ptr, id, out var err);
                if (err != Tox_Err_Friend_Get_Last_Online.OK)
                    switch (err)
                    {
                        case Tox_Err_Friend_Get_Last_Online.FRIEND_NOT_FOUND: throw new ObjectDisposedException("Friend");
                        default: throw new Exception(err.ToString());
                    }
                return stat;
            }
        }

        void fqerr(Tox_Err_Friend_Query err)
        {
            switch (err)
            {
                case Tox_Err_Friend_Query.NULL: throw new ArgumentNullException();
                case Tox_Err_Friend_Query.FRIEND_NOT_FOUND: throw new ObjectDisposedException("Friend");
                default: throw new Exception(err.ToString());
            }
        }
        public string name
        {
            get
            {
                var name = new byte[(int)tox_friend_get_name_size(ptr, id, out _)];
                if (!tox_friend_get_name(ptr, id, name, out var err))
                    fqerr(err);
                var uname = Encoding.ASCII.GetString(name);
                if (String.IsNullOrEmpty(uname))
                    return BATS(publicKey);
                return uname;
            }
        }
        public string statusMessage
        {
            get
            {
                var stat = new byte[(int)tox_friend_get_status_message_size(ptr, id, out _)];
                if (!tox_friend_get_status_message(ptr, id, stat, out var err))
                    fqerr(err);
                return Encoding.ASCII.GetString(stat);
            }
        }
        /* Deprecated
        public Tox_User_Status status
        {
            get
            {
                var stat = tox_friend_get_status(ptr, id, out var err);
                if (err != Tox_Err_Friend_Query.OK)
                    fqerr(err);
                return stat;
            }
        }
        */
        public Tox_Connection connectionStatus
        {
            get
            {
                var stat = tox_friend_get_connection_status(ptr, id, out var err);
                if (err != Tox_Err_Friend_Query.OK)
                    fqerr(err);
                return stat;
            }
        }
        public bool typing
        {
            get
            {
                var stat = tox_friend_get_typing(ptr, id, out var err);
                if (err != Tox_Err_Friend_Query.OK)
                    fqerr(err);
                return stat;
            }
            set
            {
                if (!tox_self_set_typing(ptr, id, value, out var err))
                    switch (err)
                    {
                        case Tox_Err_Set_Typing.FRIEND_NOT_FOUND: throw new ObjectDisposedException("Friend");
                        default: throw new Exception(err.ToString());
                    }
            }
        }

        /// <returns>Message ID. Null if the contact is offline.</returns>
        public UInt32? SendMessage(Tox_Message_Type type, string message)
        {
            var mid = tox_friend_send_message(ptr, id, type, message, (UIntPtr)message.Length, out var err);
            if (err != Tox_Err_Friend_Send_Message.OK)
                switch (err)
                {
                    case Tox_Err_Friend_Send_Message.NULL: throw new ArgumentNullException();
                    case Tox_Err_Friend_Send_Message.FRIEND_NOT_FOUND: throw new ObjectDisposedException("Friend");
                    case Tox_Err_Friend_Send_Message.FRIEND_NOT_CONNECTED: return null;
                    case Tox_Err_Friend_Send_Message.SENDQ: throw new OutOfMemoryException();
                    case Tox_Err_Friend_Send_Message.TOO_LONG: throw new ArgumentException("Message too long");
                    case Tox_Err_Friend_Send_Message.EMPTY: throw new ArgumentException("Empty message");
                }
            return mid;
        }
    }

    public class Conference
    {
        public IntPtr ptr;
        public UInt32 id;

        public Conference(IntPtr tox, UInt32 id)
        {
            tox_conference_get_type(tox, id, out var err);
            if (err == Tox_Err_Conference_Get_Type.CONFERENCE_NOT_FOUND)
                throw new ObjectDisposedException("Conference");
            ptr = tox;
            this.id = id;
        }
        /// <summary>This creates a new conference.</summary>
        public Conference(IntPtr tox)
        {
            id = tox_conference_new(tox, out var err);
            if (err != Tox_Err_Conference_New.OK)
                switch (err)
                {
                    default: throw new Exception(err.ToString());
                }
            ptr = tox;
        }

        /// <summary>Please dispose the object properly after this!</summary>
        public void Delete()
        {
            if (!tox_conference_delete(ptr, id, out var err))
                switch (err)
                {
                    case Tox_Err_Conference_Delete.CONFERENCE_NOT_FOUND: throw new ObjectDisposedException("Conference");
                    default: throw new Exception(err.ToString());
                }
        }

        public UInt32 peerCount
        {
            get
            {
                UInt32 peerCount = tox_conference_peer_count(ptr, id, out var err);
                Shit.pqerr(err);
                return peerCount;
            }
        }
        public ConferencePeer[] peers
        {
            get
            {
                var ps = new ConferencePeer[peerCount];
                for (UInt32 i = 0; i < ps.Length; i++)
                {
                    ps[i] = new ConferencePeer(ptr, id, i);
                }
                return ps;
            }
        }
        // name, pubkey, numer_is_ours

        public UInt32 offlinePeerCount
        {
            get
            {
                UInt32 peerCount = tox_conference_offline_peer_count(ptr, id, out var err);
                Shit.pqerr(err);
                return peerCount;
            }
        }
        public COfflinePeer[] offlinePeers
        {
            get
            {
                var ps = new COfflinePeer[offlinePeerCount];
                for (UInt32 i = 0; i < ps.Length; i++)
                {
                    ps[i] = new COfflinePeer(ptr, id, i);
                }
                return ps;
            }
        }
        // offline name, pkey, last active

        // set max offline, invite
        public bool sendMessage(Tox_Message_Type type, string message)
        {
            var suc = tox_conference_send_message(ptr, id, type, message, (UIntPtr)message.Length, out var err);
            if (err != Tox_Err_Conference_Send_Message.OK)
                switch (err)
                {
                    case Tox_Err_Conference_Send_Message.CONFERENCE_NOT_FOUND: throw new ObjectDisposedException("Friend");
                    case Tox_Err_Conference_Send_Message.TOO_LONG: throw new ArgumentException("Message too long");
                    case Tox_Err_Conference_Send_Message.NO_CONNECTION: return false;
                    case Tox_Err_Conference_Send_Message.FAIL_SEND: throw new ExternalException(err.ToString());
                }
            return suc;
        }

        void cterr(Tox_Err_Conference_Title err)
        {
            switch (err)
            {
                case Tox_Err_Conference_Title.CONFERENCE_NOT_FOUND: throw new ObjectDisposedException("Conference not found");
                case Tox_Err_Conference_Title.INVALID_LENGTH: throw new ObjectDisposedException("Conference not found");
                case Tox_Err_Conference_Title.FAIL_SEND: throw new ObjectDisposedException("Conference not found");
                default: throw new Exception(err.ToString());
            }
        }
        public string title
        {
            get
            {
                var size = tox_conference_get_title_size(ptr, id, out var serr);
                if (size == (UIntPtr)0 || serr != Tox_Err_Conference_Title.OK)
                    return BATS(cid);
                var title = new byte[(int)size];
                if (!tox_conference_get_title(ptr, id, title, out var err))
                    cterr(err);
                var uname = Encoding.ASCII.GetString(title);
                
                return uname;
            }
            set
            {
                if (!tox_conference_set_title(ptr, id, value, (UIntPtr)value.Length, out var err))
                    cterr(err);
            }
        }
        public Tox_Conference_Type Type
        {
            get
            {
                var type = tox_conference_get_type(ptr, id, out var err);
                if (err != Tox_Err_Conference_Get_Type.OK)
                    switch (err)
                    {
                        case Tox_Err_Conference_Get_Type.CONFERENCE_NOT_FOUND: throw new ObjectDisposedException("Conference");
                        default: throw new Exception(err.ToString());
                    }
                return type;
            }
        }
        /// <summary>This is not the internal ID.</summary>
        public byte[] cid
        {
            get
            {
                var cid = new byte[Size.conferenceId];
                if (!tox_conference_get_id(ptr, id, cid))
                    throw new ExternalException();
                return cid;
            }
        }
    }
    /// <summary>INTERNAL - DO NOT USE</summary>
    public class AnyConferencePeer
    {
        public IntPtr ptr;
        public UInt32 cid;
        public UInt32 id;

        public AnyConferencePeer(IntPtr tox, UInt32 cid, UInt32 id)
        {
            ptr = tox;
            this.cid = cid;
            this.id = id;
        }
    }
    public class ConferencePeer : AnyConferencePeer
    {
        public ConferencePeer(IntPtr tox, UInt32 cid, UInt32 id) : base(tox, cid, id)
        {
            tox_conference_peer_get_name_size(tox, cid, id, out var err);
            if (err == Tox_Err_Conference_Peer_Query.CONFERENCE_NOT_FOUND)
                throw new ObjectDisposedException("Conference");
            else if (err == Tox_Err_Conference_Peer_Query.PEER_NOT_FOUND)
                throw new ObjectDisposedException("Peer");
        }

        public string name
        {
            get
            {
                var name = new byte[(int)tox_conference_peer_get_name_size(ptr, cid, id, out var serr)];
                Shit.cperr(serr);
                if (!tox_conference_peer_get_name(ptr, cid, id, name, out var err))
                    Shit.cperr(err);
                var uname = Encoding.ASCII.GetString(name);
                if (String.IsNullOrEmpty(uname))
                    return BATS(publicKey);
                return uname;
            }
        }
        public byte[] publicKey
        {
            get
            {
                var pubkey = new byte[Size.publicKey];
                tox_conference_peer_get_public_key(ptr, cid, id, pubkey, out var err);
                Shit.cperr(err);
                return pubkey;
            }
        }
    }
    public class COfflinePeer : AnyConferencePeer
    {
        public COfflinePeer(IntPtr tox, UInt32 cid, UInt32 id) : base(tox, cid, id)
        {
            tox_conference_offline_peer_get_name_size(tox, cid, id, out var err);
            if (err == Tox_Err_Conference_Peer_Query.CONFERENCE_NOT_FOUND)
                throw new ObjectDisposedException("Conference");
            else if (err == Tox_Err_Conference_Peer_Query.PEER_NOT_FOUND)
                throw new ObjectDisposedException("Offline peer");
        }

        public string name
        {
            get
            {
                var name = new byte[(int)tox_conference_offline_peer_get_name_size(ptr, cid, id, out var serr)];
                Shit.cperr(serr);
                if (!tox_conference_offline_peer_get_name(ptr, cid, id, name, out var err))
                    Shit.cperr(err);
                var uname = Encoding.ASCII.GetString(name);
                if (String.IsNullOrEmpty(uname))
                    return BATS(publicKey);
                return uname;
            }
        }
        public byte[] publicKey
        {
            get
            {
                var pubkey = new byte[Size.publicKey];
                tox_conference_offline_peer_get_public_key(ptr, cid, id, pubkey, out var err);
                Shit.cperr(err);
                return pubkey;
            }
        }
    }
}