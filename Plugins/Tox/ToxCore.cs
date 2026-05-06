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

// Also grab ToxOO.cs if you prefer object-oriented.

using System;
using System.IO;
using System.Runtime.InteropServices;

public static class ToxCore
{
    private const string Lib = "libtoxcore.dll";
    public static string toxDir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "tox");
    public static string AvatarDir = Path.Combine(toxDir, "avatars");

    #region node stuff (unofficial)

    public struct ToxNode
    {
        public string ip;
        public UInt16 port;
        public byte[] public_key;
    }
    private static byte[] FromHex(string hex)
    {
        int len = hex.Length;
        if (len != 64)
        {
            throw new ArgumentException($"Hex string must be 64 characters long, got {len}");
        }
        byte[] result = new byte[len / 2];

        for (int i = 0; i < 64; i += 2)
            result[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);

        return result;
    }
    public static ToxNode[] toxNodes = {
        new ToxNode { ip = "85.143.221.42", port = 33445, public_key = FromHex("DA4E4ED4B697F2E9B000EEFE3A34B554ACD3F45F5C96EAEA2516DD7FF9AF7B43") },
        new ToxNode { ip = "2a04:ac00:1:9f00:5054:ff:fe01:becd", port = 33445, public_key = FromHex("DA4E4ED4B697F2E9B000EEFE3A34B554ACD3F45F5C96EAEA2516DD7FF9AF7B43") },
        new ToxNode { ip = "78.46.73.141", port = 33445, public_key = FromHex("02807CF4F8BB8FB390CC3794BDF1E8449E9A8392C5D3F2200019DA9F1E812E46") },
        new ToxNode { ip = "2a01:4f8:120:4091::3", port = 33445, public_key = FromHex("02807CF4F8BB8FB390CC3794BDF1E8449E9A8392C5D3F2200019DA9F1E812E46") },
        new ToxNode { ip = "tox.initramfs.io", port = 33445, public_key = FromHex("3F0A45A268367C1BEA652F258C85F4A66DA76BCAA667A49E770BCC4917AB6A25") },
        new ToxNode { ip = "205.185.115.131", port = 53, public_key = FromHex("3091C6BEB2A993F1C6300C16549FABA67098FF3D62C6D253828B531470B53D68") },
        new ToxNode { ip = "tox.kurnevsky.net", port = 33445, public_key = FromHex("82EF82BA33445A1F91A7DB27189ECFC0C013E06E3DA71F588ED692BED625EC23") },
        new ToxNode { ip = "188.225.9.167", port = 33445, public_key = FromHex("1911341A83E02503AB1FD6561BD64AF3A9D6C3F12B5FBB656976B2E678644A67") },
        new ToxNode { ip = "95.181.230.108", port = 33445, public_key = FromHex("B5FFECB4E4C26409EBB88DB35793E7B39BFA3BA12AC04C096950CB842E3E130A") },
    };

    #endregion

    #region log

    public enum Tox_Log_Level
    {
        TRACE,
        DEBUG,
        INFO,
        WARNING,
        ERROR,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_log_level_to_string(Tox_Log_Level value);

    #endregion

    #region options

    #region enum and struct

    public enum Tox_Proxy_Type
    {
        NONE,
        HTTP,
        SOCKS5,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_proxy_type_to_string(Tox_Proxy_Type value);

    public enum Tox_Savedata_Type
    {
        NONE,
        TOX_SAVE,
        SECRET_KEY,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_savedata_type_to_string(Tox_Savedata_Type value);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_log_cb(IntPtr tox, Tox_Log_Level level, [MarshalAs(UnmanagedType.LPStr)] string file, UInt32 line, [MarshalAs(UnmanagedType.LPStr)] string func, [MarshalAs(UnmanagedType.LPStr)] string message, IntPtr user_data);

    #endregion

    #region getter and setter hive

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_ipv6_enabled(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_ipv6_enabled(IntPtr options, bool ipv6_enabled);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_udp_enabled(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_udp_enabled(IntPtr options, bool udp_enabled);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_local_discovery_enabled(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_local_discovery_enabled(IntPtr options, bool local_discovery_enabled);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_dht_announcements_enabled(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_dht_announcements_enabled(IntPtr options, bool dht_announcements_enabled);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Proxy_Type tox_options_get_proxy_type(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_proxy_type(IntPtr options, Tox_Proxy_Type proxy_type);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_options_get_proxy_host(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_proxy_host(IntPtr options, [MarshalAs(UnmanagedType.LPStr)] string proxy_host);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_options_get_proxy_port(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_proxy_port(IntPtr options, UInt16 proxy_port);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_options_get_start_port(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_start_port(IntPtr options, UInt16 start_port);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_options_get_end_port(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_end_port(IntPtr options, UInt16 end_port);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_options_get_tcp_port(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_tcp_port(IntPtr options, UInt16 tcp_port);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_hole_punching_enabled(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_hole_punching_enabled(IntPtr options, bool hole_punching_enabled);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Savedata_Type tox_options_get_savedata_type(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_savedata_type(IntPtr options, Tox_Savedata_Type savedata_type);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_options_get_savedata_data(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_set_savedata_data(IntPtr options, byte[] savedata_data, UIntPtr length);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_options_get_savedata_length(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_savedata_length(IntPtr options, UIntPtr savedata_length);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern tox_log_cb tox_options_get_log_callback(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_log_callback(IntPtr options, tox_log_cb log_callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_options_get_log_userdata(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_log_userdata(IntPtr options, IntPtr log_userdata);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_experimental_owned_data(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_experimental_owned_data(IntPtr options, bool experimental_owned_data);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_experimental_thread_safety(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_experimental_thread_safety(IntPtr options, bool experimental_thread_safety);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_experimental_groups_persistence(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_experimental_groups_persistence(IntPtr options, bool experimental_groups_persistence);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_options_get_experimental_disable_dns(IntPtr options);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_set_experimental_disable_dns(IntPtr options, bool experimental_disable_dns);

    #endregion

    #region actual options stuff

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_default(IntPtr options);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_copy(IntPtr dest, IntPtr src);

    public enum Tox_Err_Options_New
    {
        OK,
        MALLOC,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_options_new_to_string(Tox_Err_Options_New value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_options_new(out Tox_Err_Options_New err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_options_free(IntPtr options);

    #endregion

    #endregion

    #region version stuff

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_version_major();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_version_minor();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_version_patch();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_version_is_compatible(UInt32 major, UInt32 minor, UInt32 patch);

    #endregion

    #region Initial size/length constant getter

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_public_key_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_secret_key_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_dht_id_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_uid_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_id_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_nospam_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_address_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_name_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_status_message_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_friend_request_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_message_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_custom_packet_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_hash_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_file_id_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_filename_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_max_hostname_length();

    #endregion

    #region very important enum? has User_Status and Message_Type

    public enum Tox_User_Status
    {
        NONE,
        AWAY,
        BUSY,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_user_status_to_string(Tox_User_Status value);

    public enum Tox_Message_Type
    {
        NORMAL,
        ACTION,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_message_type_to_string(Tox_Message_Type value);

    #endregion

    #region important actions

    public enum Tox_Err_New
    {
        OK,
        NULL,
        MALLOC,
        PORT_ALLOC,
        PROXY_BAD_TYPE,
        PROXY_BAD_HOST,
        PROXY_BAD_PORT,
        PROXY_NOT_FOUND,
        LOAD_ENCRYPTED,
        LOAD_BAD_FORMAT,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_new_to_string(Tox_Err_New value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_new(IntPtr options, out Tox_Err_New error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_kill(IntPtr tox);

    #endregion

    #region get savedata (size)

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_get_savedata_size(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_get_savedata(IntPtr tox, [Out] byte[] savedata);

    #endregion

    #region bootstrap

    public enum Tox_Err_Bootstrap
    {
        OK,
        NULL,
        BAD_HOST,
        BAD_PORT,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_bootstrap_to_string(Tox_Err_Bootstrap value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_bootstrap(IntPtr tox, [MarshalAs(UnmanagedType.LPStr)] string host, ushort port, [In] byte[] public_key, out Tox_Err_Bootstrap error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_add_tcp_relay(IntPtr tox, [MarshalAs(UnmanagedType.LPStr)] string host, UInt16 port, [In] byte[] public_key, out Tox_Err_Bootstrap error);

    #endregion

    #region connection stuff

    public enum Tox_Connection
    {
        NONE,
        TCP,
        UDP,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_connection_to_string(Tox_Connection value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Connection tox_self_get_connection_status(IntPtr tox);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_self_connection_status_cb(IntPtr tox, Tox_Connection connection_status, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_self_connection_status(IntPtr tox, tox_self_connection_status_cb callback);

    #endregion

    #region iterate

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_iteration_interval(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_iterate(IntPtr tox, IntPtr user_data);

    #endregion

    #region self get/set info

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_address(IntPtr tox, [Out] byte[] address);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_set_nospam(IntPtr tox, UInt32 nospam);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_self_get_nospam(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_public_key(IntPtr tox, [Out] byte[] public_key);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_secret_key(IntPtr tox, [Out] byte[] secret_key);

    public enum Tox_Err_Set_Info
    {
        OK,
        NULL,
        TOO_LONG,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_set_info_to_string(Tox_Err_Set_Info value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_self_set_name(IntPtr tox, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr length, out Tox_Err_Set_Info error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_self_get_name_size(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_name(IntPtr tox, [Out] byte[] name);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_self_set_status_message(IntPtr tox, [MarshalAs(UnmanagedType.LPStr)] string status_message, UIntPtr length, out Tox_Err_Set_Info error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_self_get_status_message_size(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_status_message(IntPtr tox, [Out] byte[] name);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_set_status(IntPtr tox, Tox_User_Status status);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_User_Status tox_self_get_status(IntPtr tox);

    #endregion

    #region friend stuff, getter

    public enum Tox_Err_Friend_Add
    {
        OK,
        NULL,
        TOO_LONG,
        NO_MESSAGE,
        OWN_KEY,
        ALREADY_SENT,
        BAD_CHECKSUM,
        SET_NEW_NOSPAM,
        MALLOC,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_add_to_string(Tox_Err_Friend_Add value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_friend_add(IntPtr tox, byte[] address, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, out Tox_Err_Friend_Add error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_friend_add_norequest(IntPtr tox, byte[] public_key, out Tox_Err_Friend_Add error);

    public enum Tox_Err_Friend_Delete
    {
        OK,
        FRIEND_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_delete_to_string(Tox_Err_Friend_Delete value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_delete(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Delete error);

    public enum Tox_Err_Friend_By_Public_Key
    {
        OK,
        NULL,
        NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_by_public_key_to_string(Tox_Err_Friend_By_Public_Key value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_friend_by_public_key(IntPtr tox, byte[] public_key, out Tox_Err_Friend_By_Public_Key error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_exists(IntPtr tox, UInt32 friend_number);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_self_get_friend_list_size(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_friend_list(IntPtr tox, [Out] UInt32[] friend_list); // TESTME

    public enum Tox_Err_Friend_Get_Public_Key
    {
        OK,
        FRIEND_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_get_public_key_to_string(Tox_Err_Friend_Get_Public_Key value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_get_public_key(IntPtr tox, UInt32 friend_number, [Out] byte[] public_key, out Tox_Err_Friend_Get_Public_Key error);

    public enum Tox_Err_Friend_Get_Last_Online
    {
        OK,
        FRIEND_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_get_last_online_to_string(Tox_Err_Friend_Get_Last_Online value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt64 tox_friend_get_last_online(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Get_Last_Online error);

    public enum Tox_Err_Friend_Query
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_query_to_string(Tox_Err_Friend_Query value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_friend_get_name_size(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Query error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_get_name(IntPtr tox, UInt32 friend_number, [Out] byte[] name, out Tox_Err_Friend_Query error);
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_name_cb(IntPtr tox, UInt32 friend_number, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_name(IntPtr tox, tox_friend_name_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_friend_get_status_message_size(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Query error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_get_status_message(IntPtr tox, UInt32 friend_number, [Out] byte[] name, out Tox_Err_Friend_Query error);
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_status_message_cb(IntPtr tox, UInt32 friend_number, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_status_message(IntPtr tox, tox_friend_status_message_cb callback);

    /* Deprecated
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_User_Status tox_friend_get_status(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Query error);
    */
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_status_cb(IntPtr tox, UInt32 friend_number, Tox_User_Status status, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_status(IntPtr tox, tox_friend_status_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Connection tox_friend_get_connection_status(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Query error);
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_connection_status_cb(IntPtr tox, UInt32 friend_number, Tox_Connection connection_status, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_connection_status(IntPtr tox, tox_friend_connection_status_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_get_typing(IntPtr tox, UInt32 friend_number, out Tox_Err_Friend_Query error);
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_typing_cb(IntPtr tox, UInt32 friend_number, bool typing, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_typing(IntPtr tox, tox_friend_typing_cb callback);

    #endregion

    #region set typing

    public enum Tox_Err_Set_Typing
    {
        OK,
        FRIEND_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_set_typing_to_string(Tox_Err_Set_Typing value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_self_set_typing(IntPtr tox, UInt32 friend_number, bool typing, out Tox_Err_Set_Typing error);

    #endregion

    #region friend send message n cb

    public enum Tox_Err_Friend_Send_Message
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        SENDQ,
        TOO_LONG,
        EMPTY,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_send_message_to_string(Tox_Err_Friend_Send_Message value);


    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_friend_send_message(IntPtr tox, UInt32 friend_number, Tox_Message_Type type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, out Tox_Err_Friend_Send_Message error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_read_receipt_cb(IntPtr tox, UInt32 friend_number, UInt32 message_id, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_read_receipt(IntPtr tox, tox_friend_read_receipt_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_request_cb(IntPtr tox, byte[] public_key, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_request(IntPtr tox, tox_friend_request_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_message_cb(IntPtr tox, UInt32 friend_number, Tox_Message_Type type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_message(IntPtr tox, tox_friend_message_cb callback);

    #endregion

    #region hash

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_hash([Out] byte[] hash, [MarshalAs(UnmanagedType.LPStr)] string data, UIntPtr length);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_hash([Out] byte[] hash, byte[] data, UIntPtr length);

    #endregion

    #region file stuff

    public enum Tox_File_Kind
    {
        DATA = 0,
        AVATAR,
        STICKER,
        // Here the file_id is the specified hash of the data.
        SHA1,
        SHA256,
    }

    public enum Tox_File_Control
    {
        RESUME,
        PAUSE,
        CANCEL,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_file_control_to_string(Tox_File_Control value);

    public enum Tox_Err_File_Control
    {
        OK,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        CONTROL_NOT_FOUND,
        CONTROL_NOT_PAUSE,
        CONTROL_DENIED,
        CONTROL_ALREADY_PAUSED,
        CONTROL_SENDQ,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_file_control_to_string(Tox_Err_File_Control value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_file_control(IntPtr tox, UInt32 friend_number, UInt32 file_number, Tox_File_Control control, out Tox_Err_File_Control error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_file_recv_control_cb(IntPtr tox, UInt32 friend_number, UInt32 file_number, Tox_File_Control control, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_file_recv_control(IntPtr tox, tox_file_recv_control_cb callback);

    public enum Tox_Err_File_Seek
    {
        OK,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        NOT_FOUND,
        DENIED,
        INVALID_POSITION,
        SENDQ,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_file_seek_to_string(Tox_Err_File_Seek value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_file_seek(IntPtr tox, UInt32 friend_number, UInt32 file_number, UInt64 position, out Tox_Err_File_Seek error);

    public enum Tox_Err_File_Get
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_file_get_to_string(Tox_Err_File_Get value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_file_get_file_id(IntPtr tox, UInt32 friend_number, UInt32 file_number, out Tox_Err_File_Get error);

    public enum Tox_Err_File_By_Id
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_file_by_id_to_string(Tox_Err_File_By_Id value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_file_by_id(IntPtr tox, UInt32 friend_number, UInt32 file_number, out Tox_Err_File_By_Id error);

    public enum Tox_Err_File_Send
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        NAME_TOO_LONG,
        TOO_MANY,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_file_send_to_string(Tox_Err_File_Send value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_file_send(IntPtr tox, UInt32 friend_number, Tox_File_Kind kind, UInt64 file_size, UInt32 file_id, string filename, UIntPtr filename_length, out Tox_Err_File_Send error);

    public enum Tox_Err_File_Send_Chunk
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        NOT_FOUND,
        NOT_TRANSFERRING,
        INVALID_LENGTH,
        SENDQ,
        WRONG_POSITION,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_file_send_chunk_to_string(Tox_Err_File_Send_Chunk value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_file_send_chunk(IntPtr tox, UInt32 friend_number, UInt32 file_number, UInt64 position, [MarshalAs(UnmanagedType.LPStr)] string data, UIntPtr length, out Tox_Err_File_Send_Chunk error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_file_send_chunk(IntPtr tox, UInt32 friend_number, UInt32 file_number, UInt64 position, byte[] data, UIntPtr length, out Tox_Err_File_Send_Chunk error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_file_chunk_request_cb(IntPtr tox, UInt32 friend_number, UInt32 file_number, UInt64 position, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_file_chunk_request(IntPtr tox, tox_file_chunk_request_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_file_recv_cb(IntPtr tox, UInt32 friend_number, UInt32 file_number, Tox_File_Kind kind, UInt64 file_size, [MarshalAs(UnmanagedType.LPStr)] string filename, UIntPtr filename_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_file_recv(IntPtr tox, tox_file_recv_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_file_recv_chunk_cb(IntPtr tox, UInt32 friend_number, UInt32 file_number, UInt64 position, IntPtr data, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_file_recv_chunk(IntPtr tox, tox_file_recv_chunk_cb callback);

    #endregion

    #region conference

    public enum Tox_Conference_Type
    {
        TEXT,
        AV,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_conference_type_to_string(Tox_Conference_Type value);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_conference_invite_cb(IntPtr tox, UInt32 friend_number, Tox_Conference_Type type, [MarshalAs(UnmanagedType.LPStr)] string cookie, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_conference_invite(IntPtr tox, tox_conference_invite_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_conference_connected_cb(IntPtr tox, UInt32 conference_number, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_conference_connected(IntPtr tox, tox_conference_connected_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_conference_message_cb(IntPtr tox, UInt32 conference_number, UInt32 peer_number, Tox_Message_Type type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_conference_message(IntPtr tox, tox_conference_message_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_conference_title_cb(IntPtr tox, UInt32 conference_number, UInt32 peer_number, [MarshalAs(UnmanagedType.LPStr)] string title, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_conference_title(IntPtr tox, tox_conference_title_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_conference_peer_name_cb(IntPtr tox, UInt32 conference_number, UInt32 peer_number, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_conference_peer_name(IntPtr tox, tox_conference_peer_name_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_conference_peer_list_changed_cb(IntPtr tox, UInt32 conference_number, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_conference_peer_list_changed(IntPtr tox, tox_conference_peer_list_changed_cb callback);

    public enum Tox_Err_Conference_New
    {
        OK,
        INIT,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_new_to_string(Tox_Err_Conference_New value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_new(IntPtr tox, out Tox_Err_Conference_New error);

    public enum Tox_Err_Conference_Delete
    {
        OK,
        CONFERENCE_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_delete_to_string(Tox_Err_Conference_Delete value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_delete(IntPtr tox, UInt32 conference_number, out Tox_Err_Conference_Delete error);

    public enum Tox_Err_Conference_Peer_Query
    {
        OK,
        CONFERENCE_NOT_FOUND,
        PEER_NOT_FOUND,
        NO_CONNECTION,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_peer_query_to_string(Tox_Err_Conference_Peer_Query value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_peer_count(IntPtr tox, UInt32 conference_number, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_conference_peer_get_name_size(IntPtr tox, UInt32 conference_number, UInt32 peer_number, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_peer_get_name(IntPtr tox, UInt32 conference_number, UInt32 peer_number, [Out] byte[] name, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_peer_get_public_key(IntPtr tox, UInt32 conference_number, UInt32 peer_number, [Out] byte[] public_key, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_peer_number_is_ours(IntPtr tox, UInt32 conference_number, UInt32 peer_number, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_offline_peer_count(IntPtr tox, UInt32 conference_number, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_conference_offline_peer_get_name_size(IntPtr tox, UInt32 offline_peer_number, UInt32 peer_number, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_offline_peer_get_name(IntPtr tox, UInt32 conference_number, UInt32 offline_peer_number, [Out] byte[] name, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_offline_peer_get_public_key(IntPtr tox, UInt32 conference_number, UInt32 offline_peer_number, [Out] byte[] public_key, out Tox_Err_Conference_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt64 tox_conference_offline_peer_get_last_active(IntPtr tox, UInt32 conference_number, UInt32 offline_peer_number, out Tox_Err_Conference_Peer_Query error);

    public enum Tox_Err_Conference_Set_Max_Offline
    {
        OK,
        CONFERENCE_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_set_max_offline_to_string(Tox_Err_Conference_Set_Max_Offline value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_set_max_offline(IntPtr tox, UInt32 conference_number, UInt32 max_offline, out Tox_Err_Conference_Set_Max_Offline error);

    public enum Tox_Err_Conference_Invite
    {
        OK,
        CONFERENCE_NOT_FOUND,
        FAIL_SEND,
        NO_CONNECTION,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_invite_to_string(Tox_Err_Conference_Invite value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_invite(IntPtr tox, UInt32 friend_number, UInt32 conference_number, out Tox_Err_Conference_Invite error);

    public enum Tox_Err_Conference_Join
    {
        OK,
        INVALIID_LENGTH,
        WRONG_TYPE,
        FRIEND_NOT_FOUND,
        DUPLICATE,
        INIT_FAIL,
        FAIL_SEND,
        NULL,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_join_to_string(Tox_Err_Conference_Join value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_join(IntPtr tox, UInt32 friend_number, [MarshalAs(UnmanagedType.LPStr)] string cookie, UIntPtr length, out Tox_Err_Conference_Join error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_join(IntPtr tox, UInt32 friend_number, byte[] cookie, UIntPtr length, out Tox_Err_Conference_Join error);

    public enum Tox_Err_Conference_Send_Message
    {
        OK,
        CONFERENCE_NOT_FOUND,
        TOO_LONG,
        NO_CONNECTION,
        FAIL_SEND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_send_message_to_string(Tox_Err_Conference_Send_Message value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_send_message(IntPtr tox, UInt32 conference_number, Tox_Message_Type type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, out Tox_Err_Conference_Send_Message error);

    public enum Tox_Err_Conference_Title
    {
        OK,
        CONFERENCE_NOT_FOUND,
        INVALID_LENGTH,
        FAIL_SEND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_title_to_string(Tox_Err_Conference_Title value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_conference_get_title_size(IntPtr tox, UInt32 conference_number, out Tox_Err_Conference_Title error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_get_title(IntPtr tox, UInt32 conference_number, [Out] byte[] title, out Tox_Err_Conference_Title error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_set_title(IntPtr tox, UInt32 conference_number, [MarshalAs(UnmanagedType.LPStr)] string title, UIntPtr length, out Tox_Err_Conference_Title error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_conference_get_chatlist_size(IntPtr tox);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_conference_get_chatlist(IntPtr tox, [Out] UInt32[] chatlist);

    public enum Tox_Err_Conference_Get_Type
    {
        OK,
        CONFERENCE_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_get_type_to_string(Tox_Err_Conference_Get_Type value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Conference_Type tox_conference_get_type(IntPtr tox, UInt32 conference_number, out Tox_Err_Conference_Get_Type error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_conference_get_id(IntPtr tox, UInt32 conference_number, [Out] byte[] id);

    public enum Tox_Err_Conference_By_Id
    {
        OK,
        NULL,
        NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_by_id_to_string(Tox_Err_Conference_By_Id value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_by_id(IntPtr tox, [MarshalAs(UnmanagedType.LPStr)] string id, out Tox_Err_Conference_By_Id error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_conference_by_id(IntPtr tox, byte[] id, out Tox_Err_Conference_By_Id error);

    // tox_conference_get_uid: deprecated

    public enum Tox_Err_Conference_By_Uid
    {
        OK,
        NULL,
        NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_conference_by_uid_to_string(Tox_Err_Conference_By_Uid value);
    // Why is the above not marked as deprecated? The actual function is. // EDIT: This is how ToxCore moves

    // tox_conference_by_uid: deprecated

    #endregion

    #region custom packet

    public enum Tox_Err_Friend_Custom_Packet
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        PACKET_INVALID,
        PACKET_EMPTY,
        PACKET_TOO_LONG,
        PACKET_SENDQ,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_friend_custom_packet_to_string(Tox_Err_Friend_Custom_Packet value);

    // Basically UDP
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_send_lossy_packet(IntPtr tox, UInt32 friend_number, byte[] data, UIntPtr length, out Tox_Err_Friend_Custom_Packet error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_send_lossy_packet(IntPtr tox, UInt32 friend_number, [MarshalAs(UnmanagedType.LPStr)] string data, UIntPtr length, out Tox_Err_Friend_Custom_Packet error);
    // Basically TCP
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_send_lossless_packet(IntPtr tox, UInt32 friend_number, byte[] data, UIntPtr length, out Tox_Err_Friend_Custom_Packet error);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_friend_send_lossless_packet(IntPtr tox, UInt32 friend_number, [MarshalAs(UnmanagedType.LPStr)] string data, UIntPtr length, out Tox_Err_Friend_Custom_Packet error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_lossy_packet_cb(IntPtr tox, UInt32 friend_number, byte[] data, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_lossy_packet(IntPtr tox, tox_friend_lossy_packet_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_friend_lossless_packet_cb(IntPtr tox, UInt32 friend_number, byte[] data, UIntPtr length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_friend_lossless_packet(IntPtr tox, tox_friend_lossless_packet_cb callback);

    #endregion

    #region "low-level network information"

    public enum Tox_Err_Get_Port
    {
        OK,
        NOT_BOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_get_port_to_string(Tox_Err_Get_Port value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_self_get_dht_id(IntPtr tox, [Out] byte[] dht_id);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_self_get_udp_port(IntPtr tox, out Tox_Err_Get_Port error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_self_get_tcp_port(IntPtr tox, out Tox_Err_Get_Port error);

    #endregion

    #region group chats (NGC?)

    #region length stuff

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_topic_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_part_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_message_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_custom_lossy_packet_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_custom_lossless_packet_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_group_name_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_max_password_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_chat_id_size();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_peer_public_key_size();

    #endregion

    #region Group chat state enumerators

    public enum Tox_Group_Privacy_State
    {
        PUBLIC,
        PRIVATE,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_group_privacy_state_to_string(Tox_Group_Privacy_State value);

    // Hello boolean how are you?
    public enum Tox_Group_Topic_Lock
    {
        ENABLED,
        DISABLED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_group_topic_lock_to_string(Tox_Group_Topic_Lock value);

    public enum Tox_Group_Voice_State
    {
        ALL,
        MODERATOR,
        FOUNDER,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_group_voice_state_to_string(Tox_Group_Voice_State value);

    public enum Tox_Group_Role
    {
        FOUNDER,
        MODERATOR,
        USER,
        OBSERVER,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_group_role_to_string(Tox_Group_Role value);

    #endregion

    #region Group chat instance management

    public enum Tox_Err_Group_New
    {
        OK,
        TOO_LONG,
        EMPTY,
        INIT,
        STATE,
        ANNOUNCE,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_new_to_string(Tox_Err_Group_New value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_new(IntPtr tox, Tox_Group_Privacy_State privacy_state, [MarshalAs(UnmanagedType.LPStr)] string group_name, UIntPtr group_name_length, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr name_length, out Tox_Err_Group_New error);

    public enum Tox_Err_Group_Join
    {
        OK,
        INIT,
        BAD_CHAT_ID,
        EMPTY,
        TOO_LONG,
        PASSWORD,
        CORE,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_join_to_string(Tox_Err_Group_Join value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_join(IntPtr tox, byte[] chat_id, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr name_length, [MarshalAs(UnmanagedType.LPStr)] string password, UIntPtr password_length, out Tox_Err_Group_Join error);

    public enum Tox_Err_Group_Is_Connected
    {
        OK,
        GROUP_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_is_connected_to_string(Tox_Err_Group_Is_Connected value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_is_connected(IntPtr tox, UInt32 group_number, out Tox_Err_Group_Is_Connected error);

    public enum Tox_Err_Group_Disconnect
    {
        OK,
        GROUP_NOT_FOUND,
        ALREADY_DISCONNECTED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_disconnect_to_string(Tox_Err_Group_Disconnect value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_disconnect(IntPtr tox, UInt32 group_number, out Tox_Err_Group_Disconnect error);

    public enum Tox_Err_Group_Reconnect
    {
        OK,
        GROUP_NOT_FOUND,
        CORE,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_reconnect_to_string(Tox_Err_Group_Reconnect value);

    // tox_group_reconnect: deprecated

    public enum Tox_Err_Group_Leave
    {
        OK,
        GROUP_NOT_FOUND,
        TOO_LONG,
        FAIL_SEND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_leave_to_string(Tox_Err_Group_Reconnect value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_is_disconnect(IntPtr tox, UInt32 group_number, [MarshalAs(UnmanagedType.LPStr)] string part_message, UIntPtr length, out Tox_Err_Group_Leave error);

    #endregion

    #region Group user-visible client information

    public enum Tox_Err_Group_Self_Query
    {
        OK,
        GROUP_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_self_query_to_string(Tox_Err_Group_Self_Query value);

    public enum Tox_Err_Group_Self_Name_Set
    {
        OK,
        GROUP_NOT_FOUND,
        TOO_LONG,
        INVALID,
        FAIL_SEND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_self_name_set_to_string(Tox_Err_Group_Self_Name_Set value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_self_set_name(IntPtr tox, UInt32 group_number, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr length, out Tox_Err_Group_Self_Name_Set error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_group_self_get_name_size(IntPtr tox, UInt32 group_number, out Tox_Err_Group_Self_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_self_get_name(IntPtr tox, UInt32 group_number, [Out] byte[] name, out Tox_Err_Group_Self_Query error);

    public enum Tox_Err_Group_Self_Status_Set
    {
        OK,
        GROUP_NOT_FOUND,
        FAIL_SEND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_self_status_set_to_string(Tox_Err_Group_Self_Status_Set value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_self_set_status(IntPtr tox, UInt32 group_number, [MarshalAs(UnmanagedType.LPStr)] string status, UIntPtr length, Tox_Err_Group_Self_Status_Set error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_User_Status tox_group_self_get_status(IntPtr tox, UInt32 group_number, out Tox_Err_Group_Self_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Group_Role tox_group_self_get_role(IntPtr tox, UInt32 group_number, out Tox_Err_Group_Self_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_self_get_peer_id(IntPtr tox, UInt32 group_number, out Tox_Err_Group_Self_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_self_get_public_key(IntPtr tox, UInt32 group_number, [Out] byte[] public_key, out Tox_Err_Group_Self_Query error);

    #endregion

    #region Peer-specific group state queries

    public enum Tox_Err_Group_Peer_Query
    {
        OK,
        GROUP_NOT_FOUND,
        PEER_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_peer_query_to_string(Tox_Err_Group_Peer_Query value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_group_peer_get_name_size(IntPtr tox, UInt32 group_number, UInt32 peer_id, out Tox_Err_Group_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_peer_get_name(IntPtr tox, UInt32 group_number, UInt32 peer_id, [Out] byte[] name, out Tox_Err_Group_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_User_Status tox_group_peer_get_status(IntPtr tox, UInt32 group_number, UInt32 peer_id, out Tox_Err_Group_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Group_Role tox_group_peer_get_role(IntPtr tox, UInt32 group_number, UInt32 peer_id, out Tox_Err_Group_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Connection tox_group_peer_get_connection_status(IntPtr tox, UInt32 group_number, UInt32 peer_id, out Tox_Err_Group_Peer_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_peer_get_public_key(IntPtr tox, UInt32 group_number, UInt32 peer_id, [Out] byte[] public_key, out Tox_Err_Group_Peer_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_peer_name_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr name_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_peer_name(IntPtr tox, tox_group_peer_name_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_peer_status_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_User_Status status, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_peer_status(IntPtr tox, tox_group_peer_status_cb callback);

    #endregion

    #region Group chat state queries and events

    public enum Tox_Err_Group_State_Query
    {
        OK,
        GROUP_NOT_FOUND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_state_query_to_string(Tox_Err_Group_State_Query value);

    public enum Tox_Err_Group_Topic_Set
    {
        OK,
        GROUP_NOT_FOUND,
        TOO_LONG,
        PERMISSIONS,
        FAIL_CREATE,
        FAIL_SEND,
        DISCONNECTED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_topic_set_to_string(Tox_Err_Group_Topic_Set value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_set_topic(IntPtr tox, UInt32 group_number, [MarshalAs(UnmanagedType.LPStr)] string topic, UIntPtr length, out Tox_Err_Group_Topic_Set error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_group_get_topic_size(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_get_topic(IntPtr tox, UInt32 group_number, [Out] byte[] topic, out Tox_Err_Group_State_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_topic_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, [MarshalAs(UnmanagedType.LPStr)] string topic, UIntPtr topic_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_topic(IntPtr tox, tox_group_topic_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_group_get_name_size(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_get_name(IntPtr tox, UInt32 group_number, [Out] byte[] name, out Tox_Err_Group_State_Query error);

    /* 'cause it is something that doesn't exist
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_name_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, IntPtr name, UIntPtr topic_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_name(IntPtr tox, tox_group_topic_cb callback);
    */

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_get_chat_id(IntPtr tox, UInt32 group_number, [Out] byte[] chat_id, out Tox_Err_Group_State_Query error);

    public enum Tox_Err_Group_By_Id
    {
        OK,
        NULL,
        NOT_FOUND
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_by_id_to_string(Tox_Err_Group_By_Id value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_by_id(IntPtr tox, byte[] chat_id, out Tox_Err_Group_By_Id error);

    /// <summary>Requires 0.2.23, which is not out yet</summary>
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_get_group_list_size(IntPtr tox);

    /// <summary>Deprecated from 0.2.23</summary>
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_get_number_groups(IntPtr tox);

    /// <summary>Requires 0.2.23, which is not out yet</summary>
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_group_get_group_list(IntPtr tox, [Out] UInt32[] group_list);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Group_Privacy_State tox_group_get_privacy_state(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_privacy_state_cb(IntPtr tox, UInt32 group_number, Tox_Group_Privacy_State privacy_state, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_privacy_state(IntPtr tox, tox_group_privacy_state_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Group_Voice_State tox_group_get_voice_state(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_voice_state_cb(IntPtr tox, UInt32 group_number, Tox_Group_Voice_State voice_state, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_voice_state(IntPtr tox, tox_group_voice_state_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Tox_Group_Topic_Lock tox_group_get_topic_lock(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_topic_lock_cb(IntPtr tox, UInt32 group_number, Tox_Group_Topic_Lock topic_lock, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_topic_lock(IntPtr tox, tox_group_topic_lock_cb callback);

    // Yes, UInt16. In the next line, it's UInt32.
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt16 tox_group_get_peer_limit(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_peer_limit_cb(IntPtr tox, UInt32 group_number, UInt32 peer_limit, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_peer_limit(IntPtr tox, tox_group_peer_limit_cb callback);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UIntPtr tox_group_get_password_size(IntPtr tox, UInt32 group_number, out Tox_Err_Group_State_Query error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_get_password(IntPtr tox, UInt32 group_number, [Out] byte[] password, out Tox_Err_Group_State_Query error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_password_cb(IntPtr tox, UInt32 group_number, [MarshalAs(UnmanagedType.LPStr)] string password, UIntPtr password_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_password(IntPtr tox, tox_group_password_cb callback);

    #endregion

    #region Group chat message sending

    public enum Tox_Err_Group_Send_Message
    {
        OK,
        GROUP_NOT_FOUND,
        TOO_LONG,
        EMPTY,
        BAD_TYPE,
        PERMISSIONS,
        FAIL_SEND,
        DISCONNECTED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_send_message_to_string(Tox_Err_Group_Send_Message value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_send_message(IntPtr tox, UInt32 group_number, Tox_Message_Type message_type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, out Tox_Err_Group_Send_Message error);

    public enum Tox_Err_Group_Send_Private_Message
    {
        OK,
        GROUP_NOT_FOUND,
        PEER_NOT_FOUND,
        TOO_LONG,
        EMPTY,
        BAD_TYPE,
        PERMISSIONS,
        FAIL_SEND,
        DISCONNECTED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_send_private_message_to_string(Tox_Err_Group_Send_Private_Message value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_group_send_private_message(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_Message_Type message_type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr length, out Tox_Err_Group_Send_Private_Message error);

    public enum Tox_Err_Group_Send_Custom_Packet
    {
        OK,
        GROUP_NOT_FOUND,
        TOO_LONG,
        EMPTY,
        DISCONNECTED,
        FAIL_SEND,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_send_custom_packet_to_string(Tox_Err_Group_Send_Custom_Packet value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_send_custom_packet(IntPtr tox, UInt32 group_number, bool lossless, byte[] data, UIntPtr length, out Tox_Err_Group_Send_Custom_Packet error);

    public enum Tox_Err_Group_Send_Custom_Private_Packet
    {
        OK,
        GROUP_NOT_FOUND,
        TOO_LONG,
        EMPTY,
        PEER_NOT_FOUND,
        FAIL_SEND,
        DISCONNECTED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_send_custom_private_packet_to_string(Tox_Err_Group_Send_Custom_Private_Packet value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_send_custom_private_packet(IntPtr tox, UInt32 group_number, UInt32 peer_id, bool lossless, byte[] data, UIntPtr length, out Tox_Err_Group_Send_Custom_Private_Packet error);

    #endregion

    #region Group chat message receiving

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_message_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_Message_Type message_type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr message_length, UInt32 message_id, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_message(IntPtr tox, tox_group_message_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_private_message_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_Message_Type message_type, [MarshalAs(UnmanagedType.LPStr)] string message, UIntPtr message_length, UInt32 message_id, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_private_message(IntPtr tox, tox_group_private_message_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_custom_packet_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_Message_Type message_type, byte[] data, UIntPtr data_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_custom_packet(IntPtr tox, tox_group_custom_packet_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_custom_private_packet_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_Message_Type message_type, byte[] data, UIntPtr data_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_custom_private_packet(IntPtr tox, tox_group_custom_packet_cb callback);

    #endregion

    #region Group chat inviting and join/part events

    public enum Tox_Err_Group_Invite_Friend
    {
        OK,
        GROUP_NOT_FOUND,
        FRIEND_NOT_FOUND,
        INVITE_FAIL,
        FAIL_SEND,
        DISCONNECTED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_invite_friend_to_string(Tox_Err_Group_Invite_Friend value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_invite_friend(IntPtr tox, UInt32 group_number, UInt32 friend_number, out Tox_Err_Group_Invite_Friend error);

    public enum Tox_Err_Group_Invite_Accept
    {
        OK,
        BAD_INVITE,
        INIT_FAILED,
        TOO_LONG,
        EMPTY,
        PASSWORD,
        FRIEND_NOT_FOUND,
        FAIL_SEND,
        NULL
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_group_invite_accept_to_string(Tox_Err_Group_Invite_Accept value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_group_invite_accept(IntPtr tox, UInt32 friend_number, byte[] invite_data, UIntPtr length, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr name_length, [MarshalAs(UnmanagedType.LPStr)] string password, UIntPtr password_length, out Tox_Err_Group_Invite_Accept error);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_invite_cb(IntPtr tox, UInt32 friend_number, byte[] invite_data, UIntPtr invite_data_length, [MarshalAs(UnmanagedType.LPStr)] string group_name, UIntPtr group_name_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_invite(IntPtr tox, tox_group_invite_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_peer_join_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_peer_join(IntPtr tox, tox_group_peer_join_cb callback);

    public enum Tox_Group_Exit_Type
    {
        QUIT,
        TIMEOUT,
        DISCONNECTED,
        SELF_DISCONNECTED,
        KICK,
        SYNC_ERROR,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_group_exit_type_to_string(Tox_Group_Exit_Type value);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_peer_exit_cb(IntPtr tox, UInt32 group_number, UInt32 peer_id, Tox_Group_Exit_Type exit_type, [MarshalAs(UnmanagedType.LPStr)] string name, UIntPtr name_length, [MarshalAs(UnmanagedType.LPStr)] string part_message, UIntPtr parg_message_length, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_peer_exit(IntPtr tox, tox_group_peer_exit_cb callback);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_self_join_cb(IntPtr tox, UInt32 group_number, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_self_join(IntPtr tox, tox_group_self_join_cb callback);

    public enum Tox_Group_Join_Fail
    {
        PEER_LIMIT,
        INVALID_PASSWORD,
        UNKNOWN,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_group_join_fail_to_string(Tox_Group_Join_Fail value);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void tox_group_join_fail_cb(IntPtr tox, UInt32 group_number, Tox_Group_Join_Fail fail_type, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_callback_group_join_fail(IntPtr tox, tox_group_join_fail_cb callback);

    #endregion

    #region Group chat Founder controls

    // 4909
    // TODO: Implement founder controls

    #endregion

    #region Group chat moderation controls

    // 5208
    // TODO: Implement moderation controls

    #endregion

    #endregion

    #region av

    #region basics (new, iterate, kill, get_tox)

    public enum Toxav_Err_New
    {
        OK,
        NULL,
        MALLOC,
        MULTIPLE,
    }
    // So there is no error converter for Toxav_Err_New? Why?

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr toxav_new(IntPtr tox, out Toxav_Err_New err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_kill(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr toxav_get_tox(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 toxav_iteration_interval(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_iterate(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 toxav_audio_iteration_interval(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_audio_iterate(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 toxav_video_iteration_interval(IntPtr av);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_video_iterate(IntPtr av);

    #endregion

    #region initiation

    public enum Toxav_Err_Call
    {
        OK,
        MALLOC,
        SYNC,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CONNECTED,
        FRIEND_ALREADY_IN_CALL,
        INVALID_BIT_RATE,
    }
    // Still no error converter? Sure...

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_call(IntPtr av, UInt32 friend_number, UInt32 audio_bit_rate, UInt32 video_bit_rate, out Toxav_Err_Call error);

    // sorry what? user_data? Isn't that what iterate gets? ...NO? WHAT THE FUCK IS WRONG WITH TOXAV?
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_call_cb(IntPtr av, UInt32 friend_number, bool audio_enabled, bool video_enabled, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_callback_call(IntPtr av, toxav_call_cb callback, IntPtr user_data);

    public enum Toxav_Err_Answer
    {
        OK,
        SYNC,
        CODEC_INITIALIZATION,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_CALLING,
        INVALID_BIT_RATE,
    }

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_answer(IntPtr av, UInt32 friend_number, UInt32 audio_bit_rate, UInt32 video_bit_rate, out Toxav_Err_Answer error);

    #endregion

    #region non-transfer stuff (states, etc)

    public enum Toxav_Friend_Call_State
    {
        NONE = 0,
        ERROR = 1,
        FINISHED = 2,
        SENDING_A = 4,
        SENDING_V = 8,
        ACCEPTING_A = 16,
        ACCEPTING_V = 32,
    }

    // uint32_t state according to the header... WHAT?? Am I tripping? What is wrong with me? Am I even... no. I am alive.
    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_call_state_cb(IntPtr av, UInt32 friend_number, Toxav_Friend_Call_State state, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_callback_call_state(IntPtr av, toxav_call_state_cb callback, IntPtr user_data);

    public enum Toxav_Call_Control
    {
        RESUME,
        PAUSE,
        CANCEL,
        MUTE_AUDIO,
        UNMUTE_AUDIO,
        HIDE_VIDEO,
        SHOW_VIDEO,
    }

    public enum Toxav_Err_Call_Control
    {
        OK,
        SYNC,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_IN_CALL,
        INVALID_TRANSITION,
    }

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_call_control(IntPtr av, UInt32 friend_number, Toxav_Call_Control control, out Toxav_Err_Call_Control err);

    public enum Toxav_Err_Bit_Rate_Set
    {
        OK,
        SYNC,
        INVALID_BIT_RATE,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_IN_CALL,
    }

    #endregion

    #region A/V out

    public enum Toxav_Err_Send_Frame
    {
        OK,
        NULL,
        FRIEND_NOT_FOUND,
        FRIEND_NOT_IN_CALL,
        SYNC,
        INVALID,
        PAYLOAD_TYPE_DISABLED,
        RTP_FAILED,
    }

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_audio_send_frame(IntPtr av, UInt32 friend_number, Int16[] pcm, UIntPtr sample_count, byte channels, UInt32 sampling_rate, out Toxav_Err_Send_Frame err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_audio_set_bit_rate(IntPtr av, UInt32 friend_number, UInt32 bitrate, out Toxav_Err_Bit_Rate_Set err);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_audio_bit_rate_cb(IntPtr av, UInt32 friend_number, UInt32 audio_bit_rate, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_callback_audio_bit_rate(IntPtr av, toxav_audio_bit_rate_cb callback, IntPtr user_data);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_video_send_frame(IntPtr av, UInt32 friend_number, UInt16 width, UInt16 height, byte[] y, byte[] u, byte[] v, out Toxav_Err_Send_Frame err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_video_set_bit_rate(IntPtr av, UInt32 friend_number, UInt32 bitrate, out Toxav_Err_Bit_Rate_Set err);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_video_bit_rate_cb(IntPtr av, UInt32 friend_number, UInt32 video_bit_rate, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_callback_video_bit_rate(IntPtr av, toxav_video_bit_rate_cb callback, IntPtr user_data);

    #endregion

    #region A/V in

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_audio_receive_frame_cb(IntPtr av, UInt32 friend_number, IntPtr pcm, UIntPtr sample_count, byte channels, UInt32 sampling_rate, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_callback_audio_receive_frame(IntPtr av, toxav_audio_receive_frame_cb callback, IntPtr user_data);

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_video_receive_frame_cb(IntPtr av, UInt32 friend_number, UInt16 width, UInt16 height, IntPtr y, IntPtr u, IntPtr v, Int32 ystride, Int32 ustride, Int32 vstride, IntPtr user_data);
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void toxav_callback_video_receive_frame(IntPtr av, toxav_video_receive_frame_cb callback, IntPtr user_data);

    #endregion

    #region Group A/V blobs (legacy?)

    [UnmanagedFunctionPointer(CallingConvention.Cdecl)]
    public delegate void toxav_audio_data_cb(IntPtr tox, UInt32 conference_number, UInt32 peer_number, Int16[] pcm, UInt32 samples, byte channels, UInt32 sample_rate, IntPtr user_data);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Int32 toxav_add_av_groupchat(IntPtr tox, toxav_audio_data_cb audio_callback, IntPtr user_data);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Int32 toxav_join_av_groupchat(
        IntPtr tox, UInt32 friend_number, byte[] data, UInt16 length,
        toxav_audio_data_cb audio_callback, IntPtr user_data);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Int32 toxav_group_send_audio(
        IntPtr tox, UInt32 conference_number, Int16[] pcm, UInt32 samples, byte channels,
        UInt32 sample_rate);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Int32 toxav_groupchat_enable_av(
        IntPtr tox, UInt32 conference_number,
        toxav_audio_data_cb audio_callback, IntPtr user_data);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern Int32 toxav_groupchat_disable_av(IntPtr tox, UInt32 conference_number);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool toxav_groupchat_av_enabled(IntPtr tox, UInt32 conference_number);

    #endregion

    #endregion

    #region encryptsave

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_pass_salt_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_pass_key_length();
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern UInt32 tox_pass_encryption_extra_length();

    public enum Tox_Err_Key_Derivation
    {
        OK,
        NULL,
        FAILED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_key_derivation_to_string(Tox_Err_Key_Derivation value);

    public enum Tox_Err_Encryption
    {
        OK,
        NULL,
        KEY_DERIVATION_FAILED,
        FAILED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_encryption_to_string(Tox_Err_Encryption value);

    public enum Tox_Err_Decryption
    {
        OK,
        NULL,
        TOX_ERR_DECRYPTION_INVALID_LENGTH,
        TOX_ERR_DECRYPTION_BAD_FORMAT,
        KEY_DERIVATION_FAILED,
        FAILED,
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_decryption_to_string(Tox_Err_Decryption value);

    // part 1

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_pass_encrypt(byte[] plaintext, UIntPtr plaintext_len, [MarshalAs(UnmanagedType.LPStr)] string passphrase, UIntPtr passphrase_len, byte[] ciphertext, out Tox_Err_Encryption err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_pass_decrypt(byte[] ciphertext, UIntPtr ciphertext_len, [MarshalAs(UnmanagedType.LPStr)] string passphrase, UIntPtr passphrase_len, [Out] byte[] plaintext, out Tox_Err_Decryption err);

    // part 2

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern void tox_pass_key_free(IntPtr key);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_pass_key_derive([MarshalAs(UnmanagedType.LPStr)] string passphrase, UIntPtr passphrase_len, out Tox_Err_Key_Derivation error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_pass_key_derive_with_salt([MarshalAs(UnmanagedType.LPStr)] string passphrase, UIntPtr passphrase_len, byte[] salt, out Tox_Err_Key_Derivation error);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_pass_key_encrypt(IntPtr key, byte[] plaintext, UIntPtr plaintext_len, byte[] ciphertext, out Tox_Err_Encryption err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_pass_key_decrypt(IntPtr key, byte[] ciphertext, UIntPtr ciphertext_len, [Out] byte[] plaintext, out Tox_Err_Decryption err);

    public enum Tox_Err_Get_Salt
    {
        OK,
        NULL,
        BAD_FORMAT
    }
    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern IntPtr tox_err_get_salt_to_string(Tox_Err_Get_Salt value);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_get_salt(byte[] ciphertext, [Out] byte[] salt, out Tox_Err_Get_Salt err);

    [DllImport(Lib, CallingConvention = CallingConvention.Cdecl)]
    public static extern bool tox_is_data_encrypted(byte[] data);

    #endregion

    #region future

    public static UInt32 Ftox_group_get_group_list_size(IntPtr tox)
    {
        try
        {
            return tox_group_get_group_list_size(tox);
        }
        catch (EntryPointNotFoundException _)
        {
            return tox_group_get_number_groups(tox);
        }
    }

    public static void Ftox_group_get_group_list(IntPtr tox, [Out] UInt32[] group_list)
    {
        try
        {
            tox_group_get_group_list(tox, group_list);
        }
        catch (EntryPointNotFoundException _)
        {
            UInt32 gc = Ftox_group_get_group_list_size(tox);
            for (UInt32 i = 0; i < UInt32.MaxValue && group_list.Length < gc; i++)
            {
                tox_group_self_get_peer_id(tox, i, out Tox_Err_Group_Self_Query err);
                if (err == Tox_Err_Group_Self_Query.OK)
                {
                    group_list[i] = i;
                }
            }
        }
    }

    #endregion
}
