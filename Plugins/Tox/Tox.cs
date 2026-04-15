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
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using static Tox.Helper;
using static ToxCore;

namespace Tox
{
    public class Core : ICore, ICall
    {
        #region Variables

        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;
        public event EventHandler<CallEventArgs> OnIncomingCall;
        public event EventHandler<CallEventArgs> OnCallStateChanged;
        public string Name => "Tox";
        public string InternalName => "tox";
        public bool SupportsServers => false;
        public bool SupportsVideoCalls => false;
        public AuthTypeInfo[] AuthenticationTypes => new[]
        {
            new AuthTypeInfo(AuthenticationMethod.Password, "Profile name", "Encrypted save"),
            new AuthTypeInfo(AuthenticationMethod.Token, "Profile name", "Unencrypted save")
        };

        public User MyInformation { get; private set; }
        public ObservableCollection<DirectMessage> ContactsList { get; private set; } = new ObservableCollection<DirectMessage>();
        public ObservableCollection<Conversation> RecentsList { get; private set; } = new ObservableCollection<Conversation>();
        public ObservableCollection<Server> ServerList { get; private set; } = new ObservableCollection<Server>();
        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();

        internal string activecid;
        IntPtr av;
        internal static CallStruct avACall; // avacall dot co dot uk call anywhere from india pakistan where only 4 pesos
        CancellationTokenSource avCts = new CancellationTokenSource();
        internal TaskCompletionSource<bool> avFinished = new TaskCompletionSource<bool>();
        internal TaskCompletionSource<bool> avWaiter = new TaskCompletionSource<bool>();
        Thread avThread;
        Timer avTimer;
        Callbacks cbs = new Callbacks();
        internal User currentUser;
        internal Dictionary<UInt32, (Dictionary<UInt32, User> users, Group conference)> conferences
    = new Dictionary<UInt32, (Dictionary<UInt32, User> users, Group conference)>();
        bool disposed = false;
        internal string profile;
        internal FileStream profilelock;
        internal string savepass;
        IntPtr tox;
        Timer toxTimer;
        internal Dictionary<UInt32, byte[]> transfers = new Dictionary<UInt32, byte[]>();
        internal Dictionary<UInt32, (Tox_File_Kind kind, string path)> transfer_info
            = new Dictionary<UInt32, (Tox_File_Kind kind, string path)>();
        internal TaskCompletionSource<bool> tox_started = new TaskCompletionSource<bool>();
        internal Dictionary<string, HashSet<User>> typingUsersPerChannel
            = new Dictionary<string, HashSet<User>>();
        internal SynchronizationContext uiContext;
        internal List<User> users = new List<User>();
        IntPtr user_data;

        public void Dispose()
        {
            dispose();
        }
        private void dispose(bool save = true)
        {
            disposed = true;

            Debug.WriteLine("Tox: Flushing");
            try
            {
                avCts.Cancel();
                avCts = new CancellationTokenSource();
                if (avACall.Active)
                    avFinished.Task.Wait();
                avTimer?.Dispose();
                avThread = null;
            }
            catch (Exception e)
            {
                ERR("An error occured trying to flush AV: " + e);
            }
            toxav_kill(av);
            toxTimer?.Dispose();
            if (save)
                try
                {
                    SAVE();
                }
                catch (Exception e)
                {
                    ERR("An error occured trying to save profile. Some of your progress is lost. " + e);
                }
            tox_kill(tox);
            Debug.WriteLine("Tox: Flushed Tox");
            try
            {
                profilelock.Unlock(0, 0);
                profilelock.Dispose();
                File.Delete(Path.Combine(toxDir, profile + ".lock"));
            }
            catch (Exception e)
            {
                ERR("An error occured trying to release profile lock. " + e);
            }
            cbs.Dispose();

            activecid = null;
            avACall = new CallStruct();
            avFinished = new TaskCompletionSource<bool>();
            avWaiter = new TaskCompletionSource<bool>();
            currentUser = null;
            conferences = new Dictionary<UInt32, (Dictionary<UInt32, User> users, Group conference)>();
            profile = null;
            savepass = null;
            transfers = new Dictionary<UInt32, byte[]>();
            transfer_info = new Dictionary<UInt32, (Tox_File_Kind kind, string path)>();
            tox_started = new TaskCompletionSource<bool>();
            typingUsersPerChannel = new Dictionary<string, HashSet<User>>();
            uiContext = null;
            users = new List<User>();
            user_data = IntPtr.Zero;
            Debug.WriteLine("Tox: Entire dispose process has finished");
        }

        #endregion

        #region Helper

        internal void RaiseMessageEvent(MessageEventArgs args) => MessageEvent?.Invoke(this, args);
        // UiContextPost
        internal void UCP(SendOrPostCallback d) => uiContext?.Post(d, null);
        // ERRor
        internal void ERR(string err) { Debug.WriteLine("Tox: ERROR: " + err); OnError?.Invoke(this, new PluginMessageEventArgs(err)); }
        internal void SAVE() => save(tox, profile, this);
        // UserNAME
        string UNAME(IntPtr tox, UInt32 fid)
        {
            int uname_size = (int)tox_friend_get_name_size(tox, fid, out Tox_Err_Friend_Query fqerr);
            if (fqerr != Tox_Err_Friend_Query.OK)
            {
                ERR($"Failed to get name size for friend {fid}: {PTSA(tox_err_friend_query_to_string(fqerr))}");
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

            string pkey;
            try
            {
                pkey = PKEY(tox, fid);
            }
            catch
            {
                return null;
            }

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

        bool HasConversation(string identifier, ObservableCollection<Conversation> list)
        {
            foreach (Conversation c in list)
            {
                if (c.Identifier == identifier)
                    return true;
            }
            return false;
        }
        bool HasConversation(string identifier, ObservableCollection<DirectMessage> list)
        {
            foreach (DirectMessage c in list)
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
                savepass = password;
            else if (authType == AuthenticationMethod.Token) { }
            else
                return LoginResult.UnsupportedAuthType;
            profile = username;

            return await StartClient();
        }
        public async Task<LoginResult> Authenticate(SavedCredential creds)
        {
            if (creds.AuthenticationType == AuthenticationMethod.Password)
                savepass = creds.PasswordOrToken;
            else if (creds.AuthenticationType == AuthenticationMethod.Token) { }
            else
                return LoginResult.UnsupportedAuthType;
            profile = creds.User.Username;

            return await StartClient();
        }
        public async Task<SavedCredential> StoreCredential()
        {
            // savepass is filled = encrypted save = saving the pass goes against the point of encrypting it
            if (string.IsNullOrEmpty(savepass))
                return new SavedCredential(currentUser, "", AuthenticationMethod.Token, InternalName);
            return null;
        }

        const string FileLockedErrS = "Tox profile is locked";
        const string FileLockedErrE = ". Are you running an another instance of this program, or an another Tox client?";
        const string FileLockedErr = FileLockedErrS + FileLockedErrE;
        async Task<LoginResult> StartClient()
        {
            IntPtr opt = tox_options_new(out Tox_Err_Options_New oerr);
            cbs.LogInit(opt);

            bool newprofile = false;
            string path = Path.Combine(toxDir, profile + ".tox");
            string lockpath = Path.Combine(toxDir, profile + ".lock");
            if (File.Exists(path))
            {
                byte[] data;
                #region .tox and .lock file mess
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
                                            ERR(FileLockedErrS + " by " + locklines[1] + FileLockedErrE);
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
                }
                catch (IOException e)
                {
                    if (!IsFileLocked(e))
                        throw e; // file not locked
                    ERR(FileLockedErr);
                    return LoginResult.Failure;
                }
                #endregion
                tox_options_set_savedata_type(opt, Tox_Savedata_Type.TOX_SAVE);

                if (!String.IsNullOrEmpty(savepass))
                {
                    FileStream file = File.OpenRead(path);
                    byte[] esave = new byte[tox_pass_encryption_extra_length()];
                    file.Read(esave, 0, (int)tox_pass_encryption_extra_length());
                    file.Close();
                    profilelock = new FileStream(path, FileMode.Open, FileAccess.ReadWrite, FileShare.None);
                    profilelock.Lock(0, 0);
                    File.WriteAllText(lockpath, $"{Process.GetCurrentProcess().Id}\nskymu\n{Dns.GetHostName()}\n{GUID()}");
                    byte[] salt = new byte[tox_pass_salt_length()];
                    IntPtr key;
                    Tox_Err_Key_Derivation kerr;
                    if (tox_get_salt(esave, salt, out Tox_Err_Get_Salt err))
                    {
                        key = tox_pass_key_derive_with_salt(savepass, (UIntPtr)savepass.Length, salt, out kerr);
                    }
                    else
                    {
                        key = tox_pass_key_derive(savepass, (UIntPtr)savepass.Length, out kerr);
                    }
                    if (kerr != Tox_Err_Key_Derivation.OK)
                    {
                        ERR("Failed to derive key for decrypting the save:" + kerr);
                        return LoginResult.Failure;
                    }
                    else
                    {
                        byte[] edata = data;
                        data = new byte[data.Length - tox_pass_encryption_extra_length()];
                        if (!tox_pass_key_decrypt(key, edata, (UIntPtr)edata.Length, data, out Tox_Err_Decryption derr))
                        {
                            ERR("Failed to decrypt profile. Incorrect password? Error: " + PTSA(tox_err_decryption_to_string(derr)));
                            dispose(false);
                            return LoginResult.Failure;
                        }
                    }
                }
                else
                {
                    profilelock = new FileStream(path, FileMode.Open, FileAccess.ReadWrite, FileShare.None);
                    profilelock.Lock(0, 0);
                    File.WriteAllText(lockpath, $"{Process.GetCurrentProcess().Id}\nskymu\n{Dns.GetHostName()}\n{GUID()}");
                }

                tox_options_set_savedata_data(opt, data, (UIntPtr)data.Length);
                tox_options_set_savedata_length(opt, (UIntPtr)data.Length);
            }
            else
            {
                newprofile = true;
            }

            tox = tox_new(opt, out Tox_Err_New nerr);
            if (nerr != Tox_Err_New.OK)
            {
                if (nerr == Tox_Err_New.LOAD_ENCRYPTED)
                    ERR("Failed to load profile, with LOAD_ENCRYPTED. Is the profile encrypted?");
                else
                    ERR($"Failed to initialize Tox core: {PTSA(tox_err_new_to_string(nerr))}");
                dispose(false);
                return LoginResult.Failure;
            }

            av = toxav_new(tox, out Toxav_Err_New averr);
            if (averr != Toxav_Err_New.OK)
            {
                ERR($"Failed to initialize Toxav: {averr}");
                dispose(false);
                return LoginResult.Failure;
            }

            bool BootstrapSuccess = false;
            foreach (ToxNode node in toxNodes)
            {
                if (!tox_bootstrap(tox, node.ip, node.port, node.public_key, out Tox_Err_Bootstrap berr))
                {
                    Debug.WriteLine($"Tox: Failed to bootstrap with node {node.ip}:{node.port}: {PTSA(tox_err_bootstrap_to_string(berr))}");
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
                dispose(false);
                return LoginResult.Failure;
            }
            Debug.WriteLine("Tox: Bootstrapped with all specified nodes");

            byte[] public_key = new byte[tox_public_key_size()];
            tox_self_get_public_key(tox, public_key);
            int uname_size = (int)tox_self_get_name_size(tox);
            string uname;
            if (uname_size == 0)
            {
                Debug.WriteLine("Tox: No username set, using public key");
                uname = BATS(public_key);
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

            string pubkey = BATS(public_key);
            string avatarPath = Path.Combine(AvatarDir, pubkey + ".png");
            if (File.Exists(avatarPath))
                currentUser = new User(uname, profile, pubkey, status, UserConnectionStatus.Online, File.ReadAllBytes(avatarPath));
            else
                currentUser = new User(uname, profile, pubkey, status, UserConnectionStatus.Online);

            byte[] tidb = new byte[tox_address_size()];
            tox_self_get_address(tox, tidb);
            string tid = BATS(tidb);
            Debug.WriteLine("Tox: Tox ID: " + tid);
            if (newprofile)
                OnWarning?.Invoke(this, new PluginMessageEventArgs("No existing profile found, starting with a new one. Your Tox ID: " + tid));
            // The username that appears on the statistics. It should be the Tox ID.
            currentUser.PublicUsername = tid;

            user_data = GCHandle.ToIntPtr(GCHandle.Alloc(this));
            cbs.Init(tox, user_data, av);

            toxTimer = new Timer(ToxUpdate, null, 0, 1);

            // Surely this does something, right? The doc I think tells you to use a dedotaded thread
            avThread = new Thread(_ =>
            {
                avTimer = new Timer(AVUpdate, null, 0, 1);
            });
            avThread.Start();

            // This is where you usually get stuck logging in. If you have any issues like that,
            // please ensure that you are connected, can reach even one of the bootstrap nodes
            // (especially in censored countries), and that you are stuck here, and not somewhere else.
            await tox_started.Task;

            return LoginResult.Success;
        }

        #endregion

        void ToxUpdate(object state)
        {
            tox_iterate(tox, user_data);
            if (toxTimer != null)
                toxTimer.Change((int)tox_iteration_interval(tox), Timeout.Infinite);
        }

        #region Populate

        public async Task<bool> PopulateUserInformation()
        {
            uiContext = SynchronizationContext.Current;
            MyInformation = currentUser;
            return true;
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
                            ERR($"Failed to get public key for friend {fid}: {PTSA(tox_err_friend_get_public_key_to_string(err))}");
                            return false;
                        }
                        string pubkey = BATS(public_key);
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
                    DirectMessage dm = new DirectMessage(user, 0, fid.ToString());
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
                            ERR($"Failed to get public key for friend {fid}: {PTSA(tox_err_friend_get_public_key_to_string(err))}");
                            return false;
                        }
                        string pubkey = BATS(public_key);
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
                    DirectMessage dm = new DirectMessage(user, 0, fid.ToString());
                    RecentsList.Add(dm);
                }
            }

            UInt32[] chatlist = new UInt32[(int)tox_conference_get_chatlist_size(tox)];
            if (chatlist.Length != 0)
            {
                tox_conference_get_chatlist(tox, chatlist);
                foreach (UInt32 cid in chatlist)
                {
                    PeerListRefresh(this, tox, cid);
                }
            }

            return true;
        }

        #endregion

        #region Actions

        public async Task<bool> SendMessage(string identifier, string otext, Attachment attachment, string parent_message_identifier)
        {
            // Shitty /me impl that JUST WORKS!!!
            bool ME = otext.StartsWith("/me ");
            var type = ME ? Tox_Message_Type.ACTION : Tox_Message_Type.NORMAL;
            string text = otext;
            if (ME)
                text = otext.Substring(4);

            if (identifier.StartsWith("C"))
            {
                UInt32 cid = UInt32.Parse(identifier.Substring(1));
                if (!tox_conference_send_message(tox, cid, type, text, (UIntPtr)text.Length, out Tox_Err_Conference_Send_Message err))
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
                    ERR($"Failed to send message to friend {identifier}: {PTSA(tox_err_conference_send_message_to_string(err))}");
                    return false;
                }
                UCP(_ => RaiseMessageEvent(new MessageRecievedEventArgs(identifier,
                    new Message($"{cid}/SELF_{GUID()}", currentUser, TIME(), text), false)
                ));
            }
            else
            {
                UInt32 mid = tox_friend_send_message(tox, UInt32.Parse(identifier), type, text, (UIntPtr)text.Length, out Tox_Err_Friend_Send_Message err);
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
                    ERR($"Failed to send message to friend {identifier}: {PTSA(tox_err_friend_send_message_to_string(err))}");
                    return false;
                }
                UCP(_ => RaiseMessageEvent(new MessageRecievedEventArgs(identifier,
                    new Message(mid.ToString(), currentUser, TIME(), text), false)
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
            return new ConversationItem[0];
        }

        public async Task<bool> SetConnectionStatus(UserConnectionStatus status)
        {
            Tox_User_Status tstatus = Tox_User_Status.NONE;
            switch (status)
            {
                case UserConnectionStatus.Online:
                    break;
                case UserConnectionStatus.Away:
                    tstatus = Tox_User_Status.AWAY;
                    break;
                case UserConnectionStatus.DoNotDisturb:
                    tstatus = Tox_User_Status.BUSY;
                    break;
                default:
                    ERR("Only Online, Away, Do Not Disturb is supported");
                    return false;
            };

            tox_self_set_status(tox, tstatus);
            return true;
        }

        public async Task<bool> SetTextStatus(string status)
        {
            if (!tox_self_set_status_message(tox, status, (UIntPtr)status.Length, out Tox_Err_Set_Info err))
            {
                ERR("Failed to set status: " + PTSA(tox_err_set_info_to_string(err)));
                return false;
            }
            return true;
        }


        #endregion

        #region calls

        internal struct CallStruct
        {
            public bool Active;
            public UInt32 Identifier;
            public ToxCall caller;
            // comments are the control enum, by the perspective of a friend
            public bool RAudio; // SENDING_A
            public bool SAudio; // ACCEPTING_A
            public bool RVideo; // SENDING_V
            public bool SVideo; // SENDING_V
        }

        void AVUpdate(object state)
        {
            toxav_iterate(av);
            if (avTimer != null)
                avTimer.Change((int)toxav_iteration_interval(av), Timeout.Infinite);
            if (avCts != null && avCts.Token.IsCancellationRequested)
                avFinished.TrySetResult(true);
        }

        public async Task<ActiveCall> StartCall(string convo_id, bool is_video, bool start_muted)
        {
            UInt32 cid = UInt32.Parse(convo_id);
            avWaiter = new TaskCompletionSource<bool>();
            if (!toxav_call(av, cid, 64, 0, out Toxav_Err_Call err))
            {
                ERR($"Failed to start a call with friend {convo_id}: {err}");
                avWaiter = null;
                return null;
            }

            avACall = new CallStruct();
            avACall.Identifier = UInt32.Parse(convo_id);
            avACall.Active = true;
            avACall.caller = new ToxCall(av, avACall.Identifier);
            avACall.caller.Start();

            bool suc = await avWaiter.Task;
            avWaiter = null;
            if (!suc)
            {
                avACall = new CallStruct();
                return null;
            }

            return new ActiveCall($"{convo_id}_{GUID()}", convo_id, is_video, new User[0]);
        }

        public async Task<bool> EndCall(ActiveCall call)
        {
            avACall.caller.Stop();
            avACall = new CallStruct();
            if (!toxav_call_control(av, UInt32.Parse(call.ConversationId), Toxav_Call_Control.CANCEL, out Toxav_Err_Call_Control err))
            {
                ERR($"Could not finish call: {err}");
                return false;
            }
            return true;
        }

        public async Task<ActiveCall> AnswerCall(string convo_id)
        {
            return await StartCall(convo_id, false, true); // TODO do this properly 
        }
        public async Task<bool> DeclineCall(string convo_id) => false;
        public async Task<bool> SetMuted(ActiveCall call, bool muted) => false;
        public async Task<bool> SetVideoEnabled(ActiveCall call, bool enabled) => false;

        #endregion

        #region Unimplemented stuff

        public async Task<LoginResult> AuthenticateTwoFA(string code) => LoginResult.UnsupportedAuthType;
        public async Task<string> GetQRCode() => string.Empty;
        public async Task<bool> PopulateServerList() => false;
        public ClickableConfiguration[] ClickableConfigurations
        {
            get { return new ClickableConfiguration[0]; }
        }

        #endregion
    }
}
