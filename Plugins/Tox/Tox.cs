/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
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
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using static ToxCore;

namespace Tox
{
    public class Core : ICore//, ICall No calls yet
    {
        #region Variables

        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;
        public event EventHandler<CallEventArgs> OnIncomingCall;
        public event EventHandler<CallEventArgs> OnCallStateChanged;
        public ObservableCollection<User> TypingUsersList { get; private set; } = [];
        public string Name => "Tox";
        public string InternalName => "tox";
        public bool SupportsServers => false;
        public bool SupportsVideoCalls => true;
        public AuthTypeInfo[] AuthenticationTypes => new[]
        {
            new AuthTypeInfo(AuthenticationMethod.Password, "Profile name", "Encrypted save"),
            new AuthTypeInfo(AuthenticationMethod.Token, "Profile name", "Unencrypted save")
        };

        public User MyInformation { get; private set; }
        public ObservableCollection<DirectMessage> ContactsList { get; private set; } = [];
        public ObservableCollection<Conversation> RecentsList { get; private set; } = [];
        public ObservableCollection<Server> ServerList { get; private set; } = [];

        internal string activecid;
        IntPtr av;
        CancellationTokenSource av_cts = new ();
        internal TaskCompletionSource<bool> av_finished = new();
        Thread avThread;
        Timer avTimer;
        Callbacks cbs = new ();
        internal User currentUser;
        internal Dictionary<UInt32, (Dictionary<UInt32, User> users, Group conference)> conferences = [];
        bool disposed = false;
        internal string profile;
        internal FileStream profilelock;
        string savepass;
        IntPtr tox;
        Timer toxTimer;
        internal Dictionary<UInt32, byte[]> transfers = [];
        internal Dictionary<UInt32, (Tox_File_Kind kind, string path)> transfer_info = [];
        internal TaskCompletionSource<bool> tox_started = new();
        internal Dictionary<string, HashSet<User>> typingUsersPerChannel = [];
        internal SynchronizationContext uiContext;
        internal List<User> users = [];
        IntPtr user_data;

        public void Dispose()
        {
            disposed = true;

            Debug.WriteLine("Tox: Flushing");
            av_cts.Cancel();
            av_finished.Task.Wait();
            avTimer?.Dispose();
            avThread?.Abort();
            avThread = null;
            toxav_kill(av);
            toxTimer?.Dispose();
            SAVE();
            tox_kill(tox);
            profilelock.Unlock(0, 0);
            profilelock.Dispose();
            File.Delete(Path.Combine(toxDir, profile + ".lock"));
            cbs.Dispose();
            cbs = null;

            activecid = null;
            av_cts = new ();
            av_finished = new ();
            currentUser = null;
            conferences = [];
            profile = null;
            savepass = null;
            transfers = [];
            transfer_info = [];
            tox_started = new ();
            typingUsersPerChannel = [];
            uiContext = null;
            users = [];
            user_data = IntPtr.Zero;
        }

        #endregion

        #region Helper

        internal void RaiseMessageEvent(MessageEventArgs args) => MessageEvent?.Invoke(this, args);
        // UiContextPost
        internal void UCP(SendOrPostCallback d) => uiContext?.Post(d, null);
        // ERRor
        internal void ERR(string err) { OnError?.Invoke(this, new PluginMessageEventArgs(err)); Debug.WriteLine("Tox: ERROR: "+err); }
        internal void SAVE() => Helper.save(tox, profile, this);
        // UserNAME
        string UNAME(IntPtr tox, UInt32 fid)
        {
            int uname_size = (int)tox_friend_get_name_size(tox, fid, out Tox_Err_Friend_Query fqerr);
            if (fqerr != Tox_Err_Friend_Query.OK)
            {
                ERR($"Failed to get name size for friend {fid}: {Helper.PTSA(tox_err_friend_query_to_string(fqerr))}");
                return null;
            }
            if (uname_size == 0)
                return null;
            else
            {
                byte[] unameb = new byte[uname_size];
                tox_friend_get_name(tox, fid, unameb, out fqerr);
                return Encoding.ASCII.GetString(unameb);
            }
        }
        internal byte[] GrabAvatar(UInt32 fid)
        {
            string avatar_cache_dir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), "tox", "avatars");
            if (!Directory.Exists(avatar_cache_dir)) return null;

            byte[] pubkey = new byte[tox_public_key_size()];
            if (!tox_friend_get_public_key(tox, fid, pubkey, out _)) return null;
            string pkey = Helper.BATS(pubkey);

            string path = Path.Combine(avatar_cache_dir, pkey + ".png");
            if (!File.Exists(path)) return null;
            return File.ReadAllBytes(path);
        }
        // https://stackoverflow.com/a/3202085
        static bool IsFileLocked(IOException exception)
        {
            int errorCode = Marshal.GetHRForException(exception) & ((1 << 16) - 1);
            return errorCode == 32 || errorCode == 33;
        }
        bool HasConversation(Conversation conversation, ObservableCollection<Conversation> list)
        {
            foreach (Conversation c in list)
            {
                if (c.Identifier == conversation.Identifier)
                    return true;
            }
            return false;
        }
        bool HasConversation(string identifier, ObservableCollection<Conversation> list)
        {
            foreach (Conversation c in list)
            {
                if (c.Identifier == identifier)
                    return true;
            }
            return false;
        }
        // fuck C# or whatever
        bool HasConversation(DirectMessage conversation, ObservableCollection<DirectMessage> list)
        {
            foreach (Conversation c in list)
            {
                if (c.Identifier == conversation.Identifier)
                    return true;
            }
            return false;
        }
        bool HasConversation(string identifier, ObservableCollection<DirectMessage> list)
        {
            foreach (Conversation c in list)
            {
                if (c.Identifier == identifier)
                    return true;
            }
            return false;
        }

        #endregion

        #region Auth/startup

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            if (authType == AuthenticationMethod.Password)
                return LoginResult.UnsupportedAuthType;//savepass = password;
            else if (authType == AuthenticationMethod.Token) { }
            else
                return LoginResult.UnsupportedAuthType;
            profile = username;

            return await StartClient();
        }
        public async Task<LoginResult> Authenticate(SavedCredential creds)
        {
            if (creds.AuthenticationType == AuthenticationMethod.Password)
                return LoginResult.UnsupportedAuthType;//savepass = creds.PasswordOrToken;
            else if (creds.AuthenticationType == AuthenticationMethod.Token) { }
            else
                return LoginResult.UnsupportedAuthType;
            profile = creds.User.Username;

            return await StartClient();
        }
        public Task<SavedCredential> StoreCredential()
        {
            if (string.IsNullOrEmpty(savepass))
                return Task.FromResult(new SavedCredential(currentUser, "", AuthenticationMethod.Token, InternalName));
            return Task.FromResult<SavedCredential>(null);
        }

        string FileLockedErr = "Tox profile is locked. Are you running an another instance of this program, or an another Tox client?";
        async Task<LoginResult> StartClient()
        {
            IntPtr opt = tox_options_new(out Tox_Err_Options_New oerr);
            tox_options_set_log_callback(opt, Callbacks.tox_log_cb);

            #region .tox file mess
            string path = Path.Combine(toxDir, profile + ".tox");
            string lockpath = Path.Combine(toxDir, profile + ".lock");
            if (File.Exists(path))
            {
                byte[] data;
                try
                { // Mess ahead - be careful
                    if (File.Exists(lockpath))
                    {
                        string lockinfo = File.ReadAllText(lockpath);
                        // see if the process in the 1st line exists and is named 2nd line* (* for anything), and if the 3rd line matches the host name
                        string[] locklines = lockinfo.Split('\n');
                        if (locklines.Length >= 3)
                        {
                            if (!string.IsNullOrEmpty(locklines[0]))
                            {
                                if (int.TryParse(locklines[0], out int pid))
                                {
                                    try
                                    {
                                        Process proc = Process.GetProcessById(pid);
                                        if (proc.ProcessName.ToLower().StartsWith(locklines[1]) && locklines[2] == Dns.GetHostName())
                                        {
                                            ERR(FileLockedErr);
                                            return LoginResult.Failure;
                                        }
                                    }
                                    catch (ArgumentException)
                                    {
                                        // process doesn't exist, can continue
                                    }
                                }
                            }
                        }
                        else
                        {
                            ERR(FileLockedErr);
                            return LoginResult.Failure;
                        }
                        File.Delete(lockpath);
                    }
                    data = File.ReadAllBytes(path);
                    profilelock = new FileStream(path, FileMode.Open, FileAccess.ReadWrite, FileShare.None);
                    File.WriteAllText(lockpath, $"{Process.GetCurrentProcess().Id}\nskymu\n{Dns.GetHostName()}\n{Guid.NewGuid().ToString()}");
                }
                catch (IOException e)
                {
                    if (!IsFileLocked(e))
                        throw e; // file not locked
                    ERR(FileLockedErr);
                    return LoginResult.Failure; 
                }
                profilelock.Lock(0, 0);
                tox_options_set_savedata_type(opt, Tox_Savedata_Type.TOX_SAVE);
                tox_options_set_savedata_data(opt, data, (UIntPtr)data.Length);
                tox_options_set_savedata_length(opt, (UIntPtr)data.Length);
            } else
            {
                OnWarning?.Invoke(this, new PluginMessageEventArgs("No existing profile found, starting with a new one."));
            }
            #endregion

            tox = tox_new(opt, out Tox_Err_New nerr);
            if (nerr != Tox_Err_New.OK)
            {
                ERR($"Failed to initialize Tox core: {Helper.PTSA(tox_err_new_to_string(nerr))}");
                return LoginResult.Failure;
            }

            av = toxav_new(tox, out Toxav_Err_New averr);
            if (averr != Toxav_Err_New.OK)
            {
                ERR($"Failed to initialize Toxav: {averr}");
                Dispose();
                return LoginResult.Failure;
            }

            bool BootstrapSuccess = false;
            foreach (ToxNode node in toxNodes)
            {
                if (!tox_bootstrap(tox, node.ip, node.port, node.public_key, out Tox_Err_Bootstrap berr))
                {
                    Debug.WriteLine($"Tox: Failed to bootstrap with node {node.ip}:{node.port}: {Helper.PTSA(tox_err_bootstrap_to_string(berr))}");
                }
                else
                {
                    BootstrapSuccess = true;
                    Debug.WriteLine($"Tox: Bootstrapped with node {node.ip}:{node.port}");
                }
            }
            if (!BootstrapSuccess)
            {
                ERR("Failed to bootstrap with any of the specified nodes.");
                Dispose();
                return LoginResult.Failure;
            }
            Debug.WriteLine("Tox: Bootstrapped with all specified nodes");

            cbs.Init(tox);

            byte[] public_key = new byte[tox_public_key_size()];
            tox_self_get_public_key(tox, public_key);
            int uname_size = (int)tox_self_get_name_size(tox);
            string uname;
            if (uname_size == 0)
            {
                Debug.WriteLine("Tox: No username set, using public key");
                uname = Helper.BATS(public_key);
            }
            else
            {
                byte[] unameb = new byte[uname_size];
                tox_self_get_name(tox, unameb);
                uname = Encoding.ASCII.GetString(unameb);
            }

            int status_size = (int)tox_self_get_status_message_size(tox);
            string status = null;
            if (status_size != 0)
            {
                byte[] statusb = new byte[status_size];
                tox_self_get_status_message(tox, statusb);
                status = Encoding.ASCII.GetString(statusb);
            }

            string pubkey = Helper.BATS(public_key);
            string avatarPath = Path.Combine(AvatarDir, pubkey+".png");
            if (File.Exists(avatarPath))
                currentUser = new User(uname, profile, pubkey, status, UserConnectionStatus.Online, File.ReadAllBytes(avatarPath));
            else
                currentUser = new User(uname, profile, pubkey, status, UserConnectionStatus.Online);

            currentUser.PublicUsername = pubkey;


            user_data = GCHandle.ToIntPtr(GCHandle.Alloc(this));
            toxTimer = new Timer(ToxUpdate, null, 0, 1);

            avThread = new Thread(_ =>
            {
                avTimer = new Timer(AVUpdate, null, 0, 1);
            });
            avThread.Start();

            await tox_started.Task;

            return LoginResult.Success;
        }

        #endregion

        void ToxUpdate(object state)
        {
            tox_iterate(tox, user_data);
            int next = (int)tox_iteration_interval(tox);
            toxTimer.Change(next, Timeout.Infinite);
        }

        #region Populate
        
        public Task<bool> PopulateSidebarInformation()
        {
            uiContext = SynchronizationContext.Current;
            MyInformation = currentUser;
            return Task.FromResult(true);
        }

        public async Task<bool> PopulateContactsList()
        {
            UInt32[] friend_list = new UInt32[(int)tox_self_get_friend_list_size(tox)];
            tox_self_get_friend_list(tox, friend_list);

            foreach (UInt32 fid in friend_list)
            {
                if (!HasConversation("fid.ToString()", ContactsList))
                {
                    string uname = UNAME(tox, fid);

                    string status = null;
                    int status_size = (int)tox_friend_get_status_message_size(tox, fid, out _);
                    if (status_size != 0)
                    {
                        byte[] statusb = new byte[status_size];
                        tox_friend_get_status_message(tox, fid, statusb, out _);
                        status = Encoding.ASCII.GetString(statusb);
                    }

                    User user;
                    int idx = (int)fid;
                    if (idx >= 0 && idx < users.Count && users[idx] != null)
                        user = users[idx];
                    else
                    {
                        byte[] public_key = new byte[tox_public_key_size()];
                        tox_friend_get_public_key(tox, fid, public_key, out Tox_Err_Friend_Get_Public_Key err);
                        if (err != Tox_Err_Friend_Get_Public_Key.OK)
                        {
                            ERR($"Failed to get public key for friend {fid}: {Helper.PTSA(tox_err_friend_get_public_key_to_string(err))}");
                            return false;
                        }
                        string pubkey = Helper.BATS(public_key);
                        user = new User(
                            uname ?? pubkey,
                            pubkey,
                            pubkey,
                            status,
                            UserConnectionStatus.Offline,
                            GrabAvatar(fid)
                        );
                    }

                    if (users.Count < (int)fid + 1)
                    {
                        users.Add(user);
                    }
                    else
                    {
                        users[idx].Username = uname;
                        users[idx].Status = status;
                        users[idx].ConnectionStatus = UserConnectionStatus.Offline;
                    }
                    DirectMessage dm = new (user, 0, fid.ToString());
                    ContactsList.Add(dm);
                }
            }
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            UInt32[] friend_list = new UInt32[(int)tox_self_get_friend_list_size(tox)];
            tox_self_get_friend_list(tox, friend_list);

            foreach (UInt32 fid in friend_list)
            {
                if (!HasConversation(fid.ToString(), RecentsList))
                {
                    string uname = UNAME(tox, fid);

                    string status = null;
                    int status_size = (int)tox_friend_get_status_message_size(tox, fid, out _);
                    if (status_size != 0)
                    {
                        byte[] statusb = new byte[status_size];
                        tox_friend_get_status_message(tox, fid, statusb, out _);
                        status = Encoding.ASCII.GetString(statusb);
                    }

                    User user;
                    int idx = (int)fid;
                    if (idx >= 0 && idx < users.Count && users[idx] != null)
                        user = users[idx];
                    else
                    {
                        byte[] public_key = new byte[tox_public_key_size()];
                        tox_friend_get_public_key(tox, fid, public_key, out Tox_Err_Friend_Get_Public_Key err);
                        if (err != Tox_Err_Friend_Get_Public_Key.OK)
                        {
                            ERR($"Failed to get public key for friend {fid}: {Helper.PTSA(tox_err_friend_get_public_key_to_string(err))}");
                            return false;
                        }
                        string pubkey = Helper.BATS(public_key);
                        user = new User(
                            uname ?? pubkey,
                            pubkey,
                            pubkey,
                            status,
                            UserConnectionStatus.Offline,
                            GrabAvatar(fid)
                        );
                    }

                    if (users.Count < (int)fid + 1)
                    {
                        users.Add(user);
                    }
                    else
                    {
                        users[idx].Username = uname;
                        users[idx].Status = status;
                        users[idx].ConnectionStatus = UserConnectionStatus.Offline;
                    }
                    DirectMessage dm = new (user, 0, fid.ToString());
                    RecentsList.Add(dm);
                }
            }

            UInt32[] chatlist = new UInt32[(int)tox_conference_get_chatlist_size(tox)];
            if (chatlist.Length != 0)
            {
                tox_conference_get_chatlist(tox, chatlist);
                foreach (UInt32 cid in chatlist)
                {
                    Helper.PeerListRefresh(this, tox, cid);
                }
            }

            return true;
        }

        #endregion

        #region Actions

        public async Task<bool> SendMessage(string identifier, string otext, Attachment attachment, string parent_message_identifier)
        {
            bool ME = otext.StartsWith("/me "); // Shitty /me impl

            var type = ME ? Tox_Message_Type.ACTION : Tox_Message_Type.NORMAL;
            string text = otext;
            if (ME)
                text = otext.Substring(4);

            if (identifier.StartsWith("C"))
            {
                tox_conference_send_message(tox, UInt32.Parse(identifier.Substring(1)), type, text, (UIntPtr)text.Length, out Tox_Err_Conference_Send_Message err);
                if (err != Tox_Err_Conference_Send_Message.OK)
                {
                    if (err == Tox_Err_Conference_Send_Message.NO_CONNECTION)
                    {
                        _ = Task.Run(async () =>
                        {
                            Thread.Sleep(1000);
                            if (!disposed)
                                await SendMessage(identifier, otext, attachment, parent_message_identifier);
                        });
                        return true;
                    }
                    ERR($"Failed to send message to friend {identifier}: {Helper.PTSA(tox_err_conference_send_message_to_string(err))}");
                    return false;
                }
                DateTimeOffset timestamp = Helper.TIME();
                UCP(_ => RaiseMessageEvent(new MessageRecievedEventArgs(identifier,
                    new Message($"{identifier}_{Guid.NewGuid().ToString()}", currentUser, timestamp.DateTime, text), false)
                ));
            }
            else
            {
                tox_friend_send_message(tox, UInt32.Parse(identifier), type, text, (UIntPtr)text.Length, out Tox_Err_Friend_Send_Message err);
                if (err != Tox_Err_Friend_Send_Message.OK)
                {
                    if (err == Tox_Err_Friend_Send_Message.FRIEND_NOT_CONNECTED)
                    {
                        _ = Task.Run(async () =>
                        {
                            Thread.Sleep(1000);
                            if (!disposed)
                                await SendMessage(identifier, otext, attachment, parent_message_identifier);
                        });
                        return true;
                    }
                    ERR($"Failed to send message to friend {identifier}: {Helper.PTSA(tox_err_friend_send_message_to_string(err))}");
                    return false;
                }
                DateTimeOffset timestamp = Helper.TIME();
                UCP(_ => RaiseMessageEvent(new MessageRecievedEventArgs(identifier,
                    new Message($"{identifier}_{Guid.NewGuid().ToString()}", currentUser, timestamp.DateTime, text), false)
                ));
            }
            return true;
        }

        public async Task<ConversationItem[]> FetchMessages(Conversation conversation, Fetch fetch_type, int message_count, string identifier)
        {
            activecid = conversation.Identifier;
            TypingUsersList.Clear();
            if (typingUsersPerChannel.ContainsKey(conversation.Identifier))
            {
                foreach (User user in typingUsersPerChannel[conversation.Identifier])
                {
                    TypingUsersList.Add(user);
                }
            }
            return [];
        }

        public async Task<bool> SetConnectionStatus(UserConnectionStatus status)
        {
            Tox_User_Status tstatus;
            try
            {
#pragma warning disable CS8509
                tstatus = status switch
                {
                    UserConnectionStatus.Online => Tox_User_Status.NONE,
                    UserConnectionStatus.Away => Tox_User_Status.AWAY,
                    UserConnectionStatus.DoNotDisturb => Tox_User_Status.BUSY,
                };
#pragma warning restore CS8509
            }
            catch
            {
                ERR("Only Online, Away, Do Not Disturb is supported");
                return false;
            }

            tox_self_set_status(tox, tstatus);
            return true;
        }

        public async Task<bool> SetTextStatus(string status) {
            if (!tox_self_set_status_message(tox, status, (UIntPtr)status.Length, out Tox_Err_Set_Info err))
            {
                ERR("Failed to set status: "+Helper.PTSA(tox_err_set_info_to_string(err)));
                return false;
            }
            return true;
        }


        #endregion

        #region calls

        void AVUpdate(object state)
        {
            toxav_iterate(av);
            int next = (int)toxav_iteration_interval(av);
            avTimer.Change(next, Timeout.Infinite);
            if (av_cts.Token.IsCancellationRequested)
                av_finished.TrySetResult(true);
        }

        public async Task<ActiveCall> StartCall(string conversationId, bool isVideo, bool startMuted)
        {
            toxav_call(av, UInt32.Parse(conversationId), 0, 0, out Toxav_Err_Call err);
            if (err != Toxav_Err_Call.OK)
            {
                ERR($"Failed to start call with friend {conversationId}: {err}");
                return null;
            }

            return new ActiveCall("test", conversationId, isVideo, new User[0]);
        }
        public Task<bool> AnswerCall(ActiveCall call) => Task.FromResult(false);
        public Task<bool> DeclineCall(ActiveCall call) => Task.FromResult(false);
        public Task<bool> EndCall(ActiveCall call) => Task.FromResult(false);
        public Task<bool> SetMuted(ActiveCall call, bool muted) => Task.FromResult(false);
        public Task<bool> SetVideoEnabled(ActiveCall call, bool enabled) => Task.FromResult(false);

        #endregion

        #region Unimplemented stuff

        public Task<LoginResult> AuthenticateTwoFA(string code) => Task.FromResult(LoginResult.UnsupportedAuthType);
        public Task<string> GetQRCode() => Task.FromResult(string.Empty);
        public Task<bool> PopulateServerList() => Task.FromResult(false);
        public ClickableConfiguration[] ClickableConfigurations { get { return []; } }

        #endregion
    }
}
