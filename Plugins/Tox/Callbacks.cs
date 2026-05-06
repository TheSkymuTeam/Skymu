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
using System.Runtime.InteropServices;
using System.Text;
using ToxOO;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using static Tox.Helper;
using static ToxCore;

namespace Tox
{
    class Callbacks
    {
        const string FILE_NOT_SUPPORTED = "Hey, sorry but this client does not support file transfers. It will be automatically cancelled.";

        internal void Dispose()
        {
            _OnConnectionStatus = null;
            #region friend
            _OnFriendName = null;
            _OnFriendStatusMessage = null;
            _OnFriendStatus = null;
            _OnFriendConnectionStatus = null;
            _OnFriendTyping = null;
            _OnFriendRequest = null;
            _OnFriendMessage = null;
            #endregion
            #region file
            _OnFileRecvControl = null;
            _OnFileRecv = null;
            _OnFileRecvChunk = null;
            #endregion
            #region conference
            _OnConferenceMessage = null;
            _OnConferencePeerName = null;
            _OnConferencePeerListChanged = null;
            #endregion
            #region av
            _OnCall = null;
            _OnCallState = null;
            _OnAudioReceiveFrame = null;
            _OnVideoReceiveFrame = null;
            #endregion
            #region group
            _OnGroupInvite = null;
            _OnGroupSelfJoin = null;
            #endregion
        }
        internal void Init(ToxOO.Tox tox, IntPtr user_data, IntPtr av)
        {
            _OnConnectionStatus = OnConnectionStatus; tox.selfConnectionStatus = _OnConnectionStatus;
            #region friend
            _OnFriendName = OnFriendName; tox.friendName = _OnFriendName;
            _OnFriendStatusMessage = OnFriendStatusMessage; tox.friendStatusMessage = _OnFriendStatusMessage;
            _OnFriendStatus = OnFriendStatus; tox.friendStatus = _OnFriendStatus;
            _OnFriendConnectionStatus = OnFriendConnectionStatus; tox.friendConnectionStatus = _OnFriendConnectionStatus;
            _OnFriendTyping = OnFriendTyping; tox.friendTyping = _OnFriendTyping;
            //_OnFriendRequest = OnFriendRequest; tox.friendRequest = _OnFriendRequest; TODO: Restore this once Skymu implements it. 
            _OnFriendMessage = OnFriendMessage; tox.friendMessage = _OnFriendMessage;
            #endregion
            #region file
            _OnFileRecvControl = OnFileRecvControl; tox_callback_file_recv_control(tox.ptr, _OnFileRecvControl);
            _OnFileChunkRequest = OnFileChunkRequest; tox_callback_file_chunk_request(tox.ptr, _OnFileChunkRequest);
            _OnFileRecv = OnFileRecv; tox_callback_file_recv(tox.ptr, _OnFileRecv);
            _OnFileRecvChunk = OnFileRecvChunk; tox_callback_file_recv_chunk(tox.ptr, _OnFileRecvChunk);
            #endregion
            #region conference
            _OnConferenceMessage = OnConferenceMessage; tox.conferenceMessage = _OnConferenceMessage;
            _OnConferenceTitle = OnConferenceTitle; tox.conferenceTitle = _OnConferenceTitle;
            _OnConferencePeerName = OnConferencePeerName; tox.conferencePeerName = _OnConferencePeerName;
            _OnConferencePeerListChanged = OnConferencePeerListChanged; tox.conferencePeerListChanged = _OnConferencePeerListChanged;
            #endregion
            #region av
            _OnCall = OnCall; toxav_callback_call(av, _OnCall, user_data);
            _OnCallState = OnCallState; toxav_callback_call_state(av, _OnCallState, user_data);
            _OnAudioReceiveFrame = OnAudioReceiveFrame; toxav_callback_audio_receive_frame(av, _OnAudioReceiveFrame, user_data);
            _OnVideoReceiveFrame = OnVideoReceiveFrame; toxav_callback_video_receive_frame(av, _OnVideoReceiveFrame, user_data);
            #endregion
            #region group
            _OnGroupInvite = OnGroupInvite; tox_callback_group_invite(tox.ptr, _OnGroupInvite);
            _OnGroupSelfJoin = OnGroupSelfJoin; tox_callback_group_self_join(tox.ptr, _OnGroupSelfJoin);
            #endregion
        }

        static void OnLog(IntPtr tox, Tox_Log_Level level, string file, UInt32 line, string func, string message, IntPtr user_data)
        {
            // Maybe: Uncomment: if (level == Tox_Log_Level.TRACE || level == Tox_Log_Level.DEBUG) return;
            Debug.WriteLine($"Tox: [{level}] {func}: {message} ({file}:{line})");
        }
        public tox_log_cb OnLogPtr = OnLog;

        #region self, core

        tox_self_connection_status_cb _OnConnectionStatus;
        void OnConnectionStatus(IntPtr tox, Tox_Connection status, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: Got connection status {status}");
            GC(user_data).tox_started?.TrySetResult(true);
        }

        #endregion

        #region friend stuff

        #region info

        tox_friend_name_cb _OnFriendName;
        void OnFriendName(IntPtr tox, UInt32 fid, string name, UIntPtr length, IntPtr user_data)
        {
            Core core = GC(user_data);
            core.ContactsList[(int)fid].DisplayName = name;
            foreach (Metadata u in core.RecentsList)
            {
                if (u is DirectMessage && u.Identifier == fid.ToString())
                {
                    u.DisplayName = name;
                }
            }
        }

        tox_friend_status_message_cb _OnFriendStatusMessage;
        void OnFriendStatusMessage(IntPtr tox, UInt32 fid, string message, UIntPtr length, IntPtr user_data)
        {
            Core core = GC(user_data);
            User user = core.users[fid];
            core.UCP(_ =>
            {
                user.Status = message;
            });
        }


        tox_friend_status_cb _OnFriendStatus;
        void OnFriendStatus(IntPtr tox, UInt32 fid, Tox_User_Status status, IntPtr user_data)
        {
            Core core = GC(user_data);
            User user = core.users[fid];
            core.UCP(_ =>
            {
                user.ConnectionStatus = MapStatus(status);
            });
        }

        tox_friend_connection_status_cb _OnFriendConnectionStatus;
        void OnFriendConnectionStatus(IntPtr tox, UInt32 fid, Tox_Connection connection_status, IntPtr user_data)
        { // Time to send avatar, according to Tox specs
            if (connection_status != Tox_Connection.NONE)
            {
                if (connection_status == Tox_Connection.NONE) return;
                Debug.WriteLine($"Tox: Sending my PFP to {fid} as a {connection_status} connection was established");
                Core core = GC(user_data);
                byte[] pfp = core.currentUser.ProfilePicture;
                byte[] hash = new byte[tox_hash_length()];
                tox_hash(hash, pfp, (UIntPtr)pfp.Length);
                UInt32 trid = tox_file_send(tox, fid, Tox_File_Kind.AVATAR, (UInt64)pfp.Length, 0, Encoding.ASCII.GetString(hash), (UIntPtr)tox_hash_length(), out var err);
                if (core.transfers.ContainsKey(trid))
                {
                    core.transfers.Remove(trid);
                    core.transfer_info.Remove(trid);
                }
                core.transfers.Add(trid, core.currentUser.ProfilePicture);
                core.transfer_info.Add(trid, (Tox_File_Kind.AVATAR, ""));
            }
            else
                Debug.WriteLine($"Tox: Connection with {fid} got terminated");
        }

        #endregion

        tox_friend_typing_cb _OnFriendTyping;
        void OnFriendTyping(IntPtr tox, UInt32 fid, bool typing, IntPtr user_data)
        {
            var fids = fid.ToString();
            var core = GC(user_data);
            if (!core.typingUsersPerChannel.ContainsKey(fids))
                core.typingUsersPerChannel.Add(fids, new HashSet<User>());

            if (typing)
                core.typingUsersPerChannel[fids].Add(core.users[fid]);
            else
                core.typingUsersPerChannel[fids].Remove(core.users[fid]);

            core.UCP(_ =>
            {
                if (core.activecid == fids)
                    if (typing)
                        core.TypingUsersList.Add(core.users[fid]);
                    else
                        core.TypingUsersList.Remove(core.users[fid]);
            });
        }

        // TODO: friend_read_receipt

        tox_friend_request_cb _OnFriendRequest;
        void OnFriendRequest(IntPtr tox, byte[] public_key, string message, UIntPtr length, IntPtr user_data)
        {
            var core = GC(user_data);
            tox_friend_add_norequest(tox, public_key, out var err);
            if (err != Tox_Err_Friend_Add.OK)
            {
                core.ERR($"Failed to add friend: {PTSA(tox_err_friend_add_to_string(err))}");
            }
            core.SAVE();
        }

        tox_friend_message_cb _OnFriendMessage;
        void OnFriendMessage(IntPtr tox, UInt32 fid, Tox_Message_Type type, string msg, UIntPtr length, IntPtr user_data)
        {
            var core = GC(user_data);
            core.UCP(_ =>
            {
                var message = new Message($"{fid}_{GUID()}", core.users[fid], TIME(), msg);
                core.RaiseMessageEvent(new MessageRecievedEventArgs(fid.ToString(), message, false));
            });
        }

        // TODO: lossy_packet

        // TODO: lossless_packet

        #endregion

        #region file

        tox_file_recv_control_cb _OnFileRecvControl;
        void OnFileRecvControl(IntPtr tox, UInt32 friend_number, UInt32 file_number, Tox_File_Control control, IntPtr user_data)
        {
            var core = GC(user_data);
            Debug.WriteLine($"Tox: File {file_number} by/at {friend_number} got new state of {control}");
            switch (control)
            {
                case Tox_File_Control.CANCEL:
                    core.transfers.Remove(file_number);
                    core.transfer_info.Remove(file_number);
                    break;
            }
        }

        tox_file_chunk_request_cb _OnFileChunkRequest;
        void OnFileChunkRequest(IntPtr tox, UInt32 fid, UInt32 file_number, UInt64 position, UIntPtr length, IntPtr user_data)
        {
            var core = GC(user_data);
            if (!core.transfers.ContainsKey(file_number))
            {
                Debug.WriteLine($"Tox: File {file_number} is no longer registered as transfering locally, but a chunk was requested");
                return;
            }

            var chunk = new byte[(int)length];
            Array.Copy(core.transfers[file_number], (int)position, chunk, 0, (int)length);
            tox_file_send_chunk(tox, fid, file_number, position, chunk, length, out var err);
            if (err != Tox_Err_File_Send_Chunk.OK)
                Debug.WriteLine($"Tox: Something went wrong sending file {file_number} to {fid}: {PTSA(tox_err_file_send_chunk_to_string(err))}");
        }

        tox_file_recv_cb _OnFileRecv;
        void OnFileRecv(IntPtr tox, UInt32 fid, UInt32 file_number, Tox_File_Kind kind, UInt64 file_size, string filename, UIntPtr filename_length, IntPtr user_data)
        {
            var core = GC(user_data);
            Debug.WriteLine($"Tox: Got file {file_number} of kind {kind} from {fid} with {file_size} bytes as the length");
            if (kind == Tox_File_Kind.AVATAR)
            {
                User friend = core.users[fid];
                if (file_size == 0)
                { // no pfp anymore (unoriginal af) 
                    core.UCP(_ =>
                    {
                        friend.ProfilePicture = null;
                    });
                    return;
                }
                else if (friend.ProfilePicture != null)
                {
                    var hash = new byte[tox_hash_length()];
                    tox_hash(hash, friend.ProfilePicture, (UIntPtr)friend.ProfilePicture.Length);
                    if (BATS(hash) == filename)
                    { // cache hit
                        tox_file_control(tox, fid, file_number, Tox_File_Control.CANCEL, out _);
                        return;
                    }
                }
                if (!tox_file_control(tox, fid, file_number, Tox_File_Control.RESUME, out var err))
                { // accept!
                    core.ERR($"Tox: Error accepting the avatar: {PTSA(tox_err_file_control_to_string(err))}");
                    return;
                }
                core.transfers.Add(file_number, new byte[file_size]);
                core.transfer_info.Add(file_number, (kind, "")); // PFP, so no need to specify path
            }
            else
            {
                var sfid = fid.ToString();
                var pkey = BATS(core.tox.friends[fid].publicKey);
                core.UCP(_ =>
                {
                    Message message = new Message($"{sfid}_{GUID()}", core.users[fid], TIME(), $"I have tried to send you a file {filename}, but the Tox plugin currently does not support that.");
                    core.RaiseMessageEvent(new MessageRecievedEventArgs(fid.ToString(), message, false));
                });
                tox_file_control(tox, fid, file_number, Tox_File_Control.CANCEL, out _);
                core.tox.friends[fid].SendMessage(Tox_Message_Type.NORMAL, FILE_NOT_SUPPORTED);
            }
        }

        tox_file_recv_chunk_cb _OnFileRecvChunk;
        void OnFileRecvChunk(IntPtr tox, UInt32 fid, UInt32 file_number, UInt64 position, IntPtr data, UIntPtr length, IntPtr user_data)
        {
            var core = GC(user_data);
            if (!core.transfers.ContainsKey(file_number))
            {
                Debug.WriteLine($"Tox: File {file_number} is not known");
                return;
            }
            var bdata = core.transfers[file_number];

            if (length == UIntPtr.Zero)
            {
                Debug.WriteLine($"Tox: File {file_number} has finished transfering");
                if (core.transfer_info[file_number].kind == Tox_File_Kind.AVATAR)
                {
                    Debug.WriteLine("Tox: Got profile picture");
                    var avatar_cache_dir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "tox", "avatars");
                    if (!Directory.Exists(avatar_cache_dir)) Directory.CreateDirectory(avatar_cache_dir);

                    var pubkey = core.tox.friends[fid].publicKey;

                    File.WriteAllBytes(Path.Combine(avatar_cache_dir, BATS(pubkey) + ".png"), bdata);
                    core.UCP(_ =>
                    {
                        core.users[fid].ProfilePicture = bdata;
                    });
                }
                core.transfers.Remove(file_number);
                core.transfer_info.Remove(file_number);
                return;
            }

            try
            {
                Marshal.Copy(data, bdata, (int)position, (int)length);
            }
            catch (ArgumentException)
            {
                tox_file_control(tox, fid, file_number, Tox_File_Control.CANCEL, out _);
                core.transfers.Remove(file_number);
                core.transfer_info.Remove(file_number);
                Debug.WriteLine($"Tox: File {file_number} by {fid} got cancelled because of an invalid chunk position or length. The source might sent a shorter file_length than expected.");
                Debug.WriteLine($"Tox: File size: {bdata.Length}, chunk size: {length}, position: {position}");
            }
        }

        #endregion

        #region conference

        // TODO SOONISH: conference_invite - should be added soon

        // TODO LATER: conference_connected - not useful as of now

        tox_conference_message_cb _OnConferenceMessage;
        void OnConferenceMessage(IntPtr tox, UInt32 cid, UInt32 pid, Tox_Message_Type type, string msg, UIntPtr length, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: New conference message in {cid} by {pid}");
            var core = GC(user_data);
            var c = new Conference(tox, cid);
            // You can receive your own message too. In this case, we can abuse that to easily confirm message send.
            User sender = core.conferences[cid].users[pid];
            if (BATS(c.peers[pid].publicKey) == core.currentUser.Identifier)
                sender = core.currentUser;
            core.UCP(_ =>
            {
                var message = new Message($"{c.cid}/{pid}_{GUID()}", sender, TIME(), msg);
                core.RaiseMessageEvent(new MessageRecievedEventArgs("C"+BATS(c.cid), message, false));
            });
        }


        tox_conference_title_cb _OnConferenceTitle;
        void OnConferenceTitle(IntPtr tox, UInt32 cid, UInt32 pid, string title, UIntPtr length, IntPtr user_data)
        {
            var core = GC(user_data);
            core.UCP(_ =>
            {
                core.conferences[cid].conference.DisplayName = title;
                PeerListRefresh(core, tox, new Conference(tox, cid));
            });
        }

        tox_conference_peer_name_cb _OnConferencePeerName;
        void OnConferencePeerName(IntPtr tox, UInt32 cid, UInt32 pid, string name, UIntPtr length, IntPtr user_data)
        {
            // Too lazy to come up with something blazingly fast
            // TODO: Optimize this and PLChanged
            GC(user_data).UCP(_ =>
            {
                PeerListRefresh(GC(user_data), tox, new Conference(tox, cid));
            });
        }

        tox_conference_peer_list_changed_cb _OnConferencePeerListChanged;
        void OnConferencePeerListChanged(IntPtr tox, UInt32 cid, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: Peer list for conference {cid} changed");
            GC(user_data).UCP(_ =>
            {
                PeerListRefresh(GC(user_data), tox, new Conference(tox, cid));
            });
        }

        #endregion

        #region group chat

        // TODO: peer_name

        // TODO: peer_status

        // TODO: topic

        // TODO: name when it starts to exist

        // TODO: privacy_state

        // TODO: voice_state

        // TODO: topic_lock

        // TODO: peer_limit

        // TODO: password

        // TODO: message

        // TODO: private_message

        // TODO: custom_packet

        // TODO: custom_private_packet

        tox_group_invite_cb _OnGroupInvite;
        static void OnGroupInvite(IntPtr tox, UInt32 fid, byte[] invite_data, UIntPtr invite_data_length, string group_name, UIntPtr group_name_length, IntPtr user_data)
        {
            tox_group_invite_accept(tox, fid, invite_data, invite_data_length, "Skymuer", (UIntPtr)7, null, UIntPtr.Zero, out var err);
            Debug.WriteLine("Tox: Accepting invite: " + err);
        }

        // TODO: peer_join

        // TODO: peer_exit

        tox_group_self_join_cb _OnGroupSelfJoin;
        static void OnGroupSelfJoin(IntPtr tox, UInt32 group_number, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: You joined G{group_number}");
        }

        // TODO: join_fail

        #endregion

        #region AV

        toxav_call_cb _OnCall;
        void OnCall(IntPtr av, UInt32 fid, bool audio_enabled, bool video_enabled, IntPtr user_data)
        {
            var core = GC(user_data);
            Debug.WriteLine($"Tox: Incoming call from {fid} with audio {audio_enabled}, video {video_enabled}");
            core.CALL(new CallEventArgs(fid.ToString(), CallState.Ringing, core.users[fid]));
        }

        // TODO: call_state
        toxav_call_state_cb _OnCallState;
        void OnCallState(IntPtr av, UInt32 fid, Toxav_Friend_Call_State state, IntPtr user_data)
        {
            var core = GC(user_data);
            Debug.WriteLine($"Tox: Got call state {state} for {fid}");
            if ((state & Toxav_Friend_Call_State.ERROR) != 0)
            {
                core.ERR("Something went wrong with this call.");
                core.avWaiter?.TrySetResult(false);
                return;
            }
            if ((state & Toxav_Friend_Call_State.FINISHED) != 0)
            {
                Debug.WriteLine($"Tox: Call with {fid} ended/declined");
                core.CSC(new CallEventArgs(fid.ToString(), CallState.Ended));
                core.avWaiter?.TrySetResult(false);
                return;
            }

            #region sending/accepting parsing

            Core.avACall.RAudio = (state & Toxav_Friend_Call_State.SENDING_A) != 0;
            Core.avACall.SAudio = (state & Toxav_Friend_Call_State.ACCEPTING_V) != 0;
            Core.avACall.RVideo = (state & Toxav_Friend_Call_State.SENDING_V) != 0;
            Core.avACall.SVideo = (state & Toxav_Friend_Call_State.ACCEPTING_V) != 0;

            #endregion

            core.avWaiter?.TrySetResult(true);
        }

        // TODO: audio_bit_rate

        toxav_audio_receive_frame_cb _OnAudioReceiveFrame;
        void OnAudioReceiveFrame(IntPtr av, UInt32 fid, IntPtr pcmPtr, UIntPtr sample_count, byte channels, UInt32 sampling_rate, IntPtr user_data)
        {
            var expectedSize = (int)sample_count * channels;
            var pcm = new Int16[expectedSize];
            Marshal.Copy(pcmPtr, pcm, 0, expectedSize);

            Core.avACall.caller.HandleVoicePacket(pcm, sample_count, channels, sampling_rate);
        }

        // TODO: video_bit_rate

        toxav_video_receive_frame_cb _OnVideoReceiveFrame;
        void OnVideoReceiveFrame(IntPtr av, UInt32 fid, UInt16 width, UInt16 height, IntPtr y, IntPtr u, IntPtr v, Int32 ystride, Int32 ustride, Int32 vstride, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: got video by {fid} but not handling"); // TODO. This CB might be required for call to start, I am not sure. Anyways, it should be used eventually.
        }

        #endregion
    }
}
