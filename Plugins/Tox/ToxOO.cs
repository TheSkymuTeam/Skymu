/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using static Tox.Helper;
using static ToxCore;

namespace ToxOO {
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
        public static bool Compatible(UInt32 major, UInt32 minor, UInt32 patch) => tox_version_is_compatible(major, minor, patch);
    }

    public static class Size
    {
        public static UInt32 publicKey { get => tox_public_key_size(); }
        public static UInt32 secretKey { get => tox_secret_key_size(); }
        public static UInt32 dhtId { get => tox_dht_id_size(); }
        public static UInt32 conferenceUid { get => tox_conference_uid_size(); }
        public static UInt32 conferenceId { get => tox_conference_id_size(); }
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

        public UInt32 FriendAdd(string address, string message = null)
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
        public tox_conference_invite_cb conferenceInvite { set => tox_callback_conference_invite(ptr, value); }
        #endregion
    }

    public class Friend
    {
        public IntPtr ptr;
        public UInt32 id;

        public Friend(IntPtr ptr, UInt32 id)
        {
            this.ptr = ptr;
            this.id = id;
            tox_friend_get_last_online(ptr, id, out var err);
            if (err == Tox_Err_Friend_Get_Last_Online.FRIEND_NOT_FOUND)
                throw new ArgumentException("Friend not found");
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
}