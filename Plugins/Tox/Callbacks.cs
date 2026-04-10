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
using System.Runtime.InteropServices;
using System.Text;
using static ToxCore;

namespace Tox
{
    class Callbacks
    {
        const string FILE_NOT_SUPPORTED = "Hey, sorry but this client does not support file transfers. It will be automatically cancelled.";

        internal void Dispose()
        {
            _OnConnectionStatus = null;
            _OnFriendName = null;
            _OnFriendStatusMessage = null;
            _OnFriendStatus = null;
            _OnFriendConnectionStatus = null;
            _OnFriendTyping = null;
            //_OnFriendRequest = null; TODO: Restore this once Skymu implements it. 
            _OnFriendMessage = null;
            _OnFileRecvControl = null;
            _OnFileRecv = null;
            _OnFileRecvChunk = null;
            _OnConferenceMessage = null;
            _OnConferencePeerName = null;
            _OnConferencePeerListChanged = null;
            _OnCall = null;
            _OnCallState = null;
            _OnAudioReceiveFrame = null;
            _OnVideoReceiveFrame = null;
        }
        internal void LogInit(IntPtr opt)
        {
            _OnLog = OnLog; tox_options_set_log_callback(opt, _OnLog);
        }
        internal void Init(IntPtr tox, IntPtr user_data, IntPtr av)
        {
            
            _OnConnectionStatus = OnConnectionStatus; tox_callback_self_connection_status(tox, _OnConnectionStatus);
            _OnFriendName = OnFriendName; tox_callback_friend_name(tox, _OnFriendName);
            _OnFriendStatusMessage = OnFriendStatusMessage; tox_callback_friend_status_message(tox, _OnFriendStatusMessage);
            _OnFriendStatus = OnFriendStatus; tox_callback_friend_status(tox, _OnFriendStatus);
            _OnFriendConnectionStatus = OnFriendConnectionStatus; tox_callback_friend_connection_status(tox, _OnFriendConnectionStatus);
            _OnFriendTyping = OnFriendTyping; tox_callback_friend_typing(tox, _OnFriendTyping);
            //_OnFriendRequest = OnFriendRequest; tox_callback_friend_request(tox, _OnFriendRequest);
            _OnFriendMessage = OnFriendMessage; tox_callback_friend_message(tox, _OnFriendMessage);
            _OnFileRecvControl = OnFileRecvControl; tox_callback_file_recv_control(tox, _OnFileRecvControl);
            _OnFileChunkRequest = OnFileChunkRequest; tox_callback_file_chunk_request(tox, _OnFileChunkRequest);
            _OnFileRecv = OnFileRecv; tox_callback_file_recv(tox, _OnFileRecv);
            _OnFileRecvChunk = OnFileRecvChunk; tox_callback_file_recv_chunk(tox, _OnFileRecvChunk);
            _OnConferenceMessage = OnConferenceMessage; tox_callback_conference_message(tox, _OnConferenceMessage);
            _OnConferenceTitle = OnConferenceTitle; tox_callback_conference_title(tox, _OnConferenceTitle);
            _OnConferencePeerName = OnConferencePeerName; tox_callback_conference_peer_name(tox, _OnConferencePeerName);
            _OnConferencePeerListChanged = OnConferencePeerListChanged; tox_callback_conference_peer_list_changed(tox, _OnConferencePeerListChanged);
            _OnCall = OnCall; toxav_callback_call(av, _OnCall, user_data);
            _OnCallState = OnCallState; toxav_callback_call_state(av, _OnCallState, user_data);
            _OnAudioReceiveFrame = OnAudioReceiveFrame; toxav_callback_audio_receive_frame(av, _OnAudioReceiveFrame, user_data);
            _OnVideoReceiveFrame = OnVideoReceiveFrame; toxav_callback_video_receive_frame(av, _OnVideoReceiveFrame, user_data);
        }

        #region self, core

        tox_log_cb _OnLog;
        static void OnLog(IntPtr tox, Tox_Log_Level level, string file, UInt32 line, string func, string message, IntPtr user_data)
        {
            if (level == Tox_Log_Level.TRACE || level == Tox_Log_Level.DEBUG) return;
            Debug.WriteLine($"Tox: [{level}] {func}: {message}");
        }

        tox_self_connection_status_cb _OnConnectionStatus;
        void OnConnectionStatus(IntPtr tox, Tox_Connection status, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: Got connection status {status}");
            Helper.GC(user_data).tox_started.TrySetResult(true);
        }

        #endregion

        #region friend stuff

        tox_friend_name_cb _OnFriendName;
        void OnFriendName(IntPtr tox, UInt32 fid, string name, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
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
            Core core = Helper.GC(user_data);
            User user = core.users[(int)fid];
            core.UCP(_ =>
            {
                user.Status = message;
            });
        }


        tox_friend_status_cb _OnFriendStatus;
        void OnFriendStatus(IntPtr tox, UInt32 fid, Tox_User_Status status, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            User user = core.users[(int)fid];
            core.UCP(_ =>
            {
                user.ConnectionStatus = Helper.MapStatus(status);
            });
        }

        tox_friend_connection_status_cb _OnFriendConnectionStatus;
        void OnFriendConnectionStatus(IntPtr tox, UInt32 fid, Tox_Connection connection_status, IntPtr user_data)
        { // Time to send avatar, according to Tox specs
            if (connection_status == Tox_Connection.NONE) return;
            Core core = Helper.GC(user_data);
            User user = core.users[(int)fid];
            byte[] pfp = core.currentUser.ProfilePicture;
            byte[] hash = new byte[tox_hash_length()];
            tox_hash(hash, pfp, (UIntPtr)pfp.Length);
            UInt32 trid = tox_file_send(tox, fid, Tox_File_Kind.AVATAR, (UInt64)pfp.Length, 0, Encoding.ASCII.GetString(hash), (UIntPtr)tox_hash_length(), out Tox_Err_File_Send err);
            if (core.transfers.ContainsKey(trid))
            {
                core.transfers.Remove(trid);
                core.transfer_info.Remove(trid);
            }
            core.transfers.Add(trid, core.currentUser.ProfilePicture);
            core.transfer_info.Add(trid, (Tox_File_Kind.AVATAR, ""));
            Debug.WriteLine($"Sending my PFP to {fid}");
        }

        tox_friend_typing_cb _OnFriendTyping;
        void OnFriendTyping(IntPtr tox, UInt32 fid, bool typing, IntPtr user_data)
        {
            string fids = fid.ToString();
            Core core = Helper.GC(user_data);
            if (!core.typingUsersPerChannel.ContainsKey(fids))
                core.typingUsersPerChannel.Add(fids, new HashSet<User>());

            if (typing)
                core.typingUsersPerChannel[fids].Add(core.users[(int)fid]);
            else
                core.typingUsersPerChannel[fids].Remove(core.users[(int)fid]);

            core.UCP(_ =>
            {
                if (core.activecid == fids)
                    if (typing)
                        core.TypingUsersList.Add(core.users[(int)fid]);
                    else
                        core.TypingUsersList.Remove(core.users[(int)fid]);
            });
        }

        // TODO: friend_read_receipt

        tox_friend_request_cb _OnFriendRequest;
        void OnFriendRequest(IntPtr tox, string public_key, string message, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            tox_friend_add_norequest(tox, public_key, out Tox_Err_Friend_Add err);
            if (err != Tox_Err_Friend_Add.OK)
            {
                core.ERR($"Failed to add friend: {Helper.PTSA(tox_err_friend_add_to_string(err))}");
            }
            core.SAVE();
        }

        tox_friend_message_cb _OnFriendMessage;
        void OnFriendMessage(IntPtr tox, UInt32 fid, Tox_Message_Type type, string msg, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            core.UCP(_ =>
            {
                Message message = new Message($"{fid}_{Guid.NewGuid().ToString()}", core.users[(int)fid], Helper.TIME(), msg);
                core.RaiseMessageEvent(new MessageRecievedEventArgs(fid.ToString(), message, false));
            });
        }

        #endregion

        #region file

        tox_file_recv_control_cb _OnFileRecvControl;
        void OnFileRecvControl(IntPtr tox, UInt32 friend_number, UInt32 file_number, Tox_File_Control control, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            switch (control)
            {
                case Tox_File_Control.CANCEL:
                    Debug.WriteLine($"Tox: File {file_number} by/at {friend_number} got cancelled");
                    core.transfers.Remove(file_number);
                    core.transfer_info.Remove(file_number);
                    break;
                case Tox_File_Control.RESUME:
                    Debug.WriteLine($"Tox: File {file_number} by/at {friend_number} got resumed");
                    break;
            }
        }

        tox_file_chunk_request_cb _OnFileChunkRequest;
        void OnFileChunkRequest(IntPtr tox, UInt32 fid, UInt32 file_number, UInt64 position, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            if (!core.transfers.ContainsKey(file_number))
            {
                Debug.WriteLine($"Tox: File {file_number} is no longer stored locally, but a chunk was requested");
                return;
            }

            byte[] chunk = new byte[(int)length];
            Array.Copy(core.transfers[file_number], (int)position, chunk, 0, (int)length);
            tox_file_send_chunk(tox, fid, file_number, position, chunk, length, out Tox_Err_File_Send_Chunk err);
            if (err != Tox_Err_File_Send_Chunk.OK)
                Debug.WriteLine($"Tox: Something went wrong sending file {file_number} to {fid}: {Helper.PTSA(tox_err_file_send_chunk_to_string(err))}");
        }

        tox_file_recv_cb _OnFileRecv;
        void OnFileRecv(IntPtr tox, UInt32 fid, UInt32 file_number, Tox_File_Kind kind, UInt64 file_size, string filename, UIntPtr filename_length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            Debug.WriteLine($"Tox: Got file {file_number} of kind {kind} from {fid} with {file_size} bytes as the length");
            if (kind == Tox_File_Kind.AVATAR)
            {
                User friend = core.users[(int)fid];
                if (file_size == 0) // no pfp anymore (unoriginal af)
                {
                    core.UCP(_ =>
                    {
                        friend.ProfilePicture = null;
                    });
                    return;
                }
                else if (friend.ProfilePicture != null)
                {
                    byte[] hash = new byte[tox_hash_length()];
                    tox_hash(hash, friend.ProfilePicture, (UIntPtr)friend.ProfilePicture.Length);
                    if (Helper.BATS(hash) == filename) // cache hit
                    {
                        tox_file_control(tox, fid, file_number, Tox_File_Control.CANCEL, out _);
                        return;
                    }
                }
                // accept!
                if (!tox_file_control(tox, fid, file_number, Tox_File_Control.RESUME, out Tox_Err_File_Control err))
                {
                    core.ERR($"Tox: Error accepting the avatar: {Helper.PTSA(tox_err_file_control_to_string(err))}");
                    return;
                }
                core.transfers.Add(file_number, new byte[file_size]);
                core.transfer_info.Add(file_number, (kind, "")); // PFP, so no need to specify path
            }
            else
            {
                core.UCP(_ =>
                {
                    string sfid = fid.ToString();
                    string pkey = Helper.PKEY(tox, fid);
                    Message message = new Message($"{sfid}_{Guid.NewGuid().ToString()}", core.users[(int)fid], Helper.TIME(), $"I have tried to send you a file {filename}, but the Tox plugin currently does not support that.");
                    core.RaiseMessageEvent(new MessageRecievedEventArgs(fid.ToString(), message, false));
                });
                tox_file_control(tox, fid, file_number, Tox_File_Control.CANCEL, out _);
                tox_friend_send_message(tox, fid, Tox_Message_Type.NORMAL, FILE_NOT_SUPPORTED, (UIntPtr)FILE_NOT_SUPPORTED.Length, out _);
            }
        }

        tox_file_recv_chunk_cb _OnFileRecvChunk;
        void OnFileRecvChunk(IntPtr tox, UInt32 fid, UInt32 file_number, UInt64 position, IntPtr data, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            if (!core.transfers.ContainsKey(file_number))
            {
                Debug.WriteLine($"Tox: File {file_number} is not known");
                return;
            }
            byte[] bdata = core.transfers[file_number];

            if (length == UIntPtr.Zero)
            {
                Debug.WriteLine($"Tox: File {file_number} has finished transfering");
                if (core.transfer_info[file_number].kind == Tox_File_Kind.AVATAR)
                {
                    Debug.WriteLine("Tox: Got profile picture");
                    string avatar_cache_dir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "tox", "avatars");
                    if (!Directory.Exists(avatar_cache_dir)) Directory.CreateDirectory(avatar_cache_dir);

                    byte[] pubkey = new byte[tox_public_key_size()];
                    if (!tox_friend_get_public_key(tox, fid, pubkey, out Tox_Err_Friend_Get_Public_Key err))
                    {
                        core.ERR($"Failed to get public key of friend {fid} for saving the new avatar: {Helper.PTSA(tox_err_friend_get_public_key_to_string(err))}");
                        return;
                    }

                    File.WriteAllBytes(Path.Combine(avatar_cache_dir, Helper.BATS(pubkey) + ".png"), bdata);
                    core.UCP(_ =>
                    {
                        core.users[(int)fid].ProfilePicture = bdata;
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
            Core core = Helper.GC(user_data);
            byte[] pkeyb = new byte[tox_public_key_size()];
            tox_conference_peer_get_public_key(tox, cid, pid, pkeyb, out _);
            if (Helper.BATS(pkeyb) != core.currentUser.Identifier)
                core.UCP(_ =>
                {
                    Message message = new Message($"{cid}/{pid}_{Guid.NewGuid().ToString()}", core.conferences[cid].users[pid], Helper.TIME(), msg);
                    core.RaiseMessageEvent(new MessageRecievedEventArgs("C" + cid, message, false));
                });
        }


        tox_conference_title_cb _OnConferenceTitle;
        void OnConferenceTitle(IntPtr tox, UInt32 cid, UInt32 pid, string title, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            Group g = core.conferences[cid].conference;
            string orig = g.DisplayName;
            g.DisplayName = title;
            UIntPtr uname_size = tox_conference_peer_get_name_size(tox, cid, pid, out Tox_Err_Conference_Peer_Query err);
            string uname;
            if (uname_size == UIntPtr.Zero || err != Tox_Err_Conference_Peer_Query.OK)
            {
                byte[] pkeyb = new byte[tox_public_key_size()];
                uname = Helper.BATS(pkeyb);
            }
            else
            {
                byte[] unameb = new byte[(int)uname_size];
                tox_conference_peer_get_name(tox, cid, pid, unameb, out _);
                uname = Encoding.ASCII.GetString(unameb);
            }
            core.UCP(_ =>
            {
                core.conferences[cid].conference.DisplayName = title;
                Helper.PeerListRefresh(core, tox, cid);
            });
        }

        tox_conference_peer_name_cb _OnConferencePeerName;
        void OnConferencePeerName(IntPtr tox, UInt32 cid, UInt32 pid, string name, UIntPtr length, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            Helper.PeerListRefresh(core, tox, cid);
        }

        tox_conference_peer_list_changed_cb _OnConferencePeerListChanged;
        void OnConferencePeerListChanged(IntPtr tox, UInt32 cid, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            Debug.WriteLine($"Tox: Peer list for conference {cid} changed");
            Helper.PeerListRefresh(core, tox, cid);
            Debug.WriteLine($"Tox: New user list length: {core.conferences[cid].users.Count}");
        }

        #endregion

        #region AV

        toxav_call_cb _OnCall;
        void OnCall(IntPtr av, UInt32 fid, bool audio_enabled, bool video_enabled, IntPtr user_data)
        {
            Debug.WriteLine($"Tox: beep beep im {fid} and i audio {audio_enabled} n i video {video_enabled}");
        }

        // TODO: call_state
        toxav_call_state_cb _OnCallState;
        void OnCallState(IntPtr av, UInt32 fid, Toxav_Friend_Call_State state, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            Debug.WriteLine($"Tox: Got call state {state} for {fid}");
            if ((state & Toxav_Friend_Call_State.ERROR) != 0)
            {
                core.ERR("Something went wrong calling the contact. No error provided.");
                core.avWaiter?.TrySetResult(false);
                return;
            }
            if ((state & Toxav_Friend_Call_State.FINISHED) != 0)
            {
                Debug.WriteLine($"Tox: Call with {fid} ended/declined");
                core.avWaiter?.TrySetResult(false);
                return;
            }

            #region sending/accepting parsing

            if ((state & Toxav_Friend_Call_State.SENDING_A) != 0)
            {
                Core.avACall.RAudio = true;
            } else
            {
                Core.avACall.RAudio = false;
            }
            if ((state & Toxav_Friend_Call_State.SENDING_V) != 0)
            {
                Core.avACall.RVideo = true;
            } else
            {
                Core.avACall.RVideo = false;
            }
            if ((state & Toxav_Friend_Call_State.ACCEPTING_A) != 0)
            {
                Core.avACall.SAudio = true;
            } else
            {
                Core.avACall.SAudio = false;
            }
            if ((state & Toxav_Friend_Call_State.ACCEPTING_V) != 0)
            {
                Core.avACall.SVideo = true;
            } else
            {
                Core.avACall.SVideo = false;
            }

            #endregion

            core.avWaiter?.TrySetResult(true);
        }

        // TODO: audio_bit_rate

        toxav_audio_receive_frame_cb _OnAudioReceiveFrame;
        void OnAudioReceiveFrame(IntPtr av, UInt32 fid, IntPtr pcmPtr, UIntPtr sample_count, byte channels, UInt32 sampling_rate, IntPtr user_data)
        {
            int expectedSize = (int)sample_count * channels;
            Int16[] pcm = new Int16[expectedSize];
            Marshal.Copy(pcmPtr, pcm, 0, expectedSize);

            Core core = Helper.GC(user_data);
            Core.avACall.caller.HandleVoicePacket(pcm, sample_count, channels, sampling_rate);
        }

        // TODO: video_bit_rate

        toxav_video_receive_frame_cb _OnVideoReceiveFrame;
        void OnVideoReceiveFrame(IntPtr av, UInt32 fid, UInt16 width, UInt16 height, IntPtr y, IntPtr u, IntPtr v, Int32 ystride, Int32 ustride, Int32 vstride, IntPtr user_data)
        {
            Core core = Helper.GC(user_data);
            Debug.WriteLine($"Tox: got video by {fid} but not handling");
        }

        #endregion
    }
}
