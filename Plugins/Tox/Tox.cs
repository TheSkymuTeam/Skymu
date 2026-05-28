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
using System.Collections.ObjectModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using ToxOO;
using Yggdrasil;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using Yggdrasil.Tools.Windows;
using static Tox.Helper;
using static ToxCore;

namespace Tox
{
    public class Core : ICore, ICall, IListManagement
    {
        #region Variables

        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<PluginYesNoEventArgs> ShowYesNo;
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
        public int TypingTimeout => 5000;
        public int TypingRepeat => 5000;

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
        readonly Callbacks cbs = new Callbacks();
        internal User currentUser;
        bool disposed = false;
        internal Dictionary<UInt32, User> friends = new Dictionary<uint, User>();
        internal Dictionary<UInt32, Message> messages = new Dictionary<uint, Message>();
        internal string profile;
        internal FileStream profilelock;
        internal string savepass;
        readonly string sessionid = GUID();
        internal ToxOO.Tox tox;
        Timer toxTimer;
        internal Dictionary<UInt32, byte[]> transfers = new Dictionary<UInt32, byte[]>();
        internal Dictionary<UInt32, (Tox_File_Kind kind, string path)> transfer_info
            = new Dictionary<UInt32, (Tox_File_Kind kind, string path)>();
        internal Dictionary<string, HashSet<User>> typingUsersPerChannel
            = new Dictionary<string, HashSet<User>>();
        internal SynchronizationContext uiContext;
        IntPtr user_data;

        public void Dispose() => IDispose();
        private void IDispose(bool save = true)
        {
            disposed = true;

            Debug.WriteLine("Tox: Flushing");
            try
            {
                avCts?.Cancel();
                if (avACall.Active)
                    avFinished.Task.Wait();
                avCts = new CancellationTokenSource();
                avTimer?.Dispose();
                avThread = null;
            }
            catch (Exception e)
            {
                ERR("An error occurred trying to flush AV: " + e);
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
                    ERR("An error occurred trying to save profile. Some of your progress is lost. " + e);
                }
            tox?.Dispose();
            Debug.WriteLine("Tox: Flushed Tox");
            try
            {
                profilelock.Unlock(0, 0);
                profilelock.Dispose();
                File.Delete(Path.Combine(toxDir, profile + ".lock"));
            }
            catch (Exception e)
            {
                ERR("An error occurred trying to release profile lock. " + e);
            }
            cbs.Dispose();

            activecid = null;
            avACall = new CallStruct();
            avFinished = new TaskCompletionSource<bool>();
            avWaiter = new TaskCompletionSource<bool>();
            currentUser = null;
            friends = new Dictionary<uint, User>();
            messages = new Dictionary<uint, Message>();
            profile = null;
            savepass = null;
            transfers = new Dictionary<UInt32, byte[]>();
            transfer_info = new Dictionary<UInt32, (Tox_File_Kind kind, string path)>();
            typingUsersPerChannel = new Dictionary<string, HashSet<User>>();
            uiContext = null;
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
        // onCALLincoming
        internal void CALL(CallEventArgs cea) => OnIncomingCall?.Invoke(this, cea);
        // CallStateChanged
        internal void CSC(CallEventArgs cea) => OnCallStateChanged?.Invoke(this, cea);
        // SAVE. Any other questions?
        internal void SAVE() => Save(tox, profile, this);
        // ShowYesNo
        internal void SYN(PluginYesNoEventArgs e) => ShowYesNo?.Invoke(this, e);

        // https://stackoverflow.com/a/3202085
        static bool IsFileLocked(IOException exception)
        {
            var errorCode = Marshal.GetHRForException(exception) & ((1 << 16) - 1);
            return errorCode == 32 || errorCode == 33;
        }

        #endregion

        #region Auth/startup

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            if (authType == AuthenticationMethod.Password)
            {
                if (!File.Exists(Path.Combine(toxDir, profile + ".tox")))
                {
                    TaskCompletionSource<bool> tcs = new TaskCompletionSource<bool>();
                    ShowYesNo?.Invoke(this, new PluginYesNoEventArgs(
                        "Are you sure that you want to create an encrypted profile? Since the password is not stored, avoid this option unless you want the security.",
                        (yes) => tcs.TrySetResult(yes)));
                    bool choice = await tcs.Task;
                    if (!choice) return LoginResult.Failure;
                }
                savepass = password;
            }
            else if (authType == AuthenticationMethod.Token) { }
            else
                return LoginResult.UnsupportedAuthType;
            profile = username;

            return StartClient();
        }
        public async Task<LoginResult> Authenticate(SavedCredential creds)
        {
            if (creds.AuthenticationType == AuthenticationMethod.Token) { }
            else
                return LoginResult.UnsupportedAuthType;
            profile = creds.PasswordOrToken;

            return StartClient();
        }
        public async Task<SavedCredential> StoreCredential()
        {
            // savepass is filled = encrypted save = saving the pass goes against the point of encrypting it
            if (string.IsNullOrEmpty(savepass))
                return new SavedCredential(currentUser, profile, AuthenticationMethod.Token, InternalName);
            return null;
        }

        const string FileLockedErrS = "Tox profile is locked";
        const string FileLockedErrE = ". Are you running an another instance of this program, or an another Tox client?";
        const string FileLockedErr = FileLockedErrS + FileLockedErrE;
        LoginResult StartClient()
        {
            try
            {
                ArchedLibHelper.ImportLibraryFromPath("libtox");
            }
            catch (PlatformNotSupportedException)
            {
                ERR("This plugin does not support your current architecture.");
                return LoginResult.Failure;
            }
            catch (DllNotFoundException)
            {
                ERR("libtoxcore.dll was not found.\nNote: Using encrypted mode will NOT fix this issue.");
                return LoginResult.Failure;
            }

            Debug.WriteLine($"Tox: Running on {ToxOO.Version.str}");
            if (!ToxOO.Version.Compatible(0, 2, 22))
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Your c-toxcore version is NOT compatible with Skymu. An unexpected crash may happen. We do not offer assistance with this."));
            var opt = new Options
            {
                logCallback = cbs.OnLogPtr
            };

            var newprofile = false;
            var path = Path.Combine(toxDir, profile + ".tox");
            var lockpath = Path.Combine(toxDir, profile + ".lock");
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
                                        if (proc.ProcessName.ToLower().StartsWith(locklines[1]) && locklines[2] == Dns.GetHostName() && locklines[3] != sessionid)
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

                opt.savedataType = Tox_Savedata_Type.TOX_SAVE;
                opt.experimentalGroupsPersistence = true;

                if (!String.IsNullOrEmpty(savepass))
                {
                    var file = File.OpenRead(path);
                    var esave = new byte[Size.encryptionExtra];
                    file.Read(esave, 0, (int)Size.encryptionExtra);
                    file.Close();
                    profilelock = new FileStream(path, FileMode.Open, FileAccess.ReadWrite, FileShare.None);
                    profilelock.Lock(0, 0);
                    File.WriteAllText(lockpath, $"{Process.GetCurrentProcess().Id}\nskymu\n{Dns.GetHostName()}\n{sessionid}");
                    var salt = new byte[Size.salt];
                    IntPtr key;
                    Tox_Err_Key_Derivation kerr;
                    if (tox_get_salt(esave, salt, out var err))
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
                        var edata = data;
                        data = new byte[data.Length - Size.encryptionExtra];
                        if (!tox_pass_key_decrypt(key, edata, (UIntPtr)edata.Length, data, out var derr))
                        {
                            ERR("Failed to decrypt profile. Incorrect password? Error: " + PTSA(tox_err_decryption_to_string(derr)));
                            IDispose(false);
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

                if (!opt.setSavedata(data))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Something went wrong setting the savedata."));
                    profilelock.Dispose();
                    File.Delete(lockpath);
                    return LoginResult.Failure;
                }
            }
            else
            {
                newprofile = true;
            }

            try
            {
                tox = new ToxOO.Tox(opt);
            }
            catch (Exception e)
            {
                if (e.Message == Tox_Err_New.LOAD_ENCRYPTED.ToString())
                    ERR("Failed to load profile, with LOAD_ENCRYPTED. Is the profile encrypted?");
                else
                    ERR($"Failed to initialize Tox core: {e.Message}");
                IDispose(false);
                return LoginResult.Failure;
            }
            finally
            {
                opt.Dispose();
            }

            av = toxav_new(tox.ptr, out var averr);
            if (averr != Toxav_Err_New.OK)
            {
                ERR($"Failed to initialize Toxav: {averr}");
                IDispose(false);
                return LoginResult.Failure;
            }

            var BootstrapSuccess = false;
            foreach (ToxNode node in toxNodes)
            {
                try
                {
                    tox.Bootstrap(node.ip, node.port, node.public_key);
                    BootstrapSuccess = true;
                    Debug.WriteLine($"Tox: Bootstrapped with node {node.ip}:{node.port}");
                }
                catch (Exception e)
                {
                    Debug.WriteLine($"Tox: Failed to bootstrap with node {node.ip}:{node.port}: {e.Message}");
                }
            }
            if (!BootstrapSuccess)
            {
                ERR("Failed to bootstrap with any of the specified nodes.");
                IDispose(false);
                return LoginResult.Failure;
            }
            Debug.WriteLine("Tox: Bootstrapped with all specified nodes");

            var public_key = tox.publicKey;
            var pubkey = BATS(public_key);
            string uname;
            if (newprofile)
            {
                tox.name = profile;
            }
            uname = tox.name;

            var status = tox.statusMessage;

            var avatarPath = Path.Combine(AvatarDir, pubkey + ".png");
            currentUser = new User(uname, profile, pubkey, status, PresenceStatus.Offline, File.Exists(avatarPath) ? File.ReadAllBytes(avatarPath) : null);

            var tid = tox.address;
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

            FriendListRefresh(this);

            return LoginResult.Success;
        }

        #endregion

        void ToxUpdate(object state)
        {
            tox.Iterate(user_data);
            try
            {
                toxTimer?.Change(tox.iterationInterval, Timeout.Infinite);
            } catch { }
        }

        #region Populate

        public async Task<bool> PopulateUserInformation()
        {
            uiContext = SynchronizationContext.Current;
            MyInformation = currentUser;
            return true;
        }

        public async Task<bool> PopulateContactsList() => FriendListRefresh(this, false);

        public async Task<bool> PopulateRecentsList() => FriendListRefresh(this, false);

        #endregion

        #region Actions

        public async Task<bool> SendMessage(string identifier, string otext, Attachment attachment, string parent_message_identifier)
        {
            // Shitty /me impl that JUST WORKS!!!
            var ME = otext.StartsWith("/me ");
            var type = ME ? Tox_Message_Type.ACTION : Tox_Message_Type.NORMAL;
            var text = otext;
            if (ME)
                text = otext.Substring(4);

            try
            {
                Conference c;
                try
                {
                    c = tox.ConferenceById(FromHex(identifier, (int)Size.conferenceId * 2));
                    if (c != null)
                    {
                        if (!c.sendMessage(type, text))
                        {
                            _ = Task.Run(async () =>
                            {
                                await Task.Delay(1000);
                                if (!disposed)
                                    await SendMessage(identifier, otext, attachment, parent_message_identifier);
                            });
                            return true;
                        }
                        return true;
                    }
                } catch { }
                var f = tox.FriendByPublicKey(FromHex(identifier, (int)Size.publicKey * 2));
                if (f == null) return false;
                var mid = f.SendMessage(type, text);
                if (mid == null)
                {
                    _ = Task.Run(async () =>
                    {
                        Thread.Sleep(1000);
                        if (!disposed)
                            await SendMessage(identifier, otext, attachment, parent_message_identifier);
                    });
                    return true;
                }
                messages.Add((uint)mid, new Message(mid + "_" + GUID(), currentUser, new DateTime(), text));
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Tox: Exception sending a message: {ex.Message}");
                return false;
            }
        }

        public async Task<ConversationItem[]> FetchMessages(Conversation conversation, Fetch fetch_type, int message_count, string identifier)
        {
            activecid = conversation.Identifier;
            TypingUsersList.Clear();
            try
            {
                var f = tox.FriendByPublicKey(FromHex(activecid, (int)Size.publicKey * 2));
                if (f != null && f.typing)
                    TypingUsersList.Add(friends[f.id]);
            } catch (ArgumentException) { }
            return new ConversationItem[0];
        }

        public async Task<bool> SetConnectionStatus(PresenceStatus status)
        {
            if (currentUser.ConnectionStatus == PresenceStatus.Offline)
            {
                ERR("You need to wait until you're no longer offline to do that.");
                return false;
            }
            Tox_User_Status tstatus = Tox_User_Status.NONE;
            switch (status)
            {
                case PresenceStatus.Online:
                    break;
                case PresenceStatus.Away:
                    tstatus = Tox_User_Status.AWAY;
                    break;
                case PresenceStatus.DoNotDisturb:
                    tstatus = Tox_User_Status.BUSY;
                    break;
                default:
                    ERR("Only Online, Away, Do Not Disturb is supported");
                    return false;
            };

            tox.status = tstatus;
            currentUser.ConnectionStatus = status;
            return true;
        }

        public async Task<bool> SetTextStatus(string status)
        {
            tox.statusMessage = status;
            return true;
        }

        public async Task<bool> SetTyping(string identifier, bool typing)
        {
            Debug.WriteLine($"Tox: Typing in {identifier}, {typing}");
            if (UInt32.TryParse(identifier, out UInt32 fid))
                tox.GetFriend(fid).typing = typing;
            return true;
        }

        public async Task<Metadata[]> FindNewContact(string query)
        {
            bool user = query.Length == Size.address * 2;
            bool group = query.Length == Size.groupId * 2;
            if (user)
                return new Metadata[1] { new User(query, "ToxUser", query) };
            else if (group)
                return new Metadata[1] { new Group(query, query, 0, new User[0]) };
            else
                return new Metadata[0];
        }

        public async Task<bool> AddContact(Metadata metadata, string message)
        {
            if (metadata is User user)
            {
                var fid = tox.FriendAdd(user.Identifier, message);
                var f = friends[fid];
                var dm = new DirectMessage(f, 0, f.Identifier);
                ContactsList.Add(dm);
                RecentsList.Add(dm);
            }
            else
            {
                var group = metadata as Group;
                var idt = FromHex(group.Identifier, (int)ToxOO.Size.groupId*2);

                tox_group_join(tox.ptr, idt, currentUser.DisplayName, (UIntPtr)currentUser.DisplayName.Length, null, (UIntPtr)0, out var err);
                Debug.WriteLine($"Tox group join: {PTSA(tox_err_group_join_to_string(err))}");
                RecentsList.Add(new Group(group.Identifier, group.Identifier, 0, new User[0]));
            }
            SAVE();
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
            avTimer?.Change((int)toxav_iteration_interval(av), Timeout.Infinite);
            if (avCts?.Token.IsCancellationRequested == true)
                avFinished.TrySetResult(true);
        }

        public async Task<ActiveCall> StartCall(string convo_id, bool is_video, bool start_muted) => await IStartCall(convo_id, is_video, start_muted);
        async Task<ActiveCall> IStartCall(string convo_id, bool is_video, bool start_muted, bool accept = false)
        {
            avACall = new CallStruct
            {
                SAudio = true,
                Identifier = tox.FriendByPublicKey(FromHex(convo_id, (int)Size.publicKey*2)).id,
                Active = true
            };
            if (accept)
            {
                if (!toxav_answer(av, avACall.Identifier, 64, 0, out var err))
                {
                    ERR("An error occurred when answering the call: " + err);
                    avACall = new CallStruct();
                    return null;
                }
            }
            else
            {
                avWaiter = new TaskCompletionSource<bool>();
                if (!toxav_call(av, avACall.Identifier, 64, 0, out var err))
                {
                    ERR($"Failed to start a call with friend {convo_id}: {err}");
                    avWaiter = null;
                    avACall = new CallStruct();
                    return null;
                }

                var suc = await avWaiter.Task;
                avWaiter = null;
                if (!suc)
                {
                    avACall = new CallStruct();
                    return null;
                }
            }
            avACall.caller = new ToxCall(av, avACall.Identifier);
            avACall.caller.Start();

            if (start_muted)
                toxav_call_control(av, avACall.Identifier, Toxav_Call_Control.MUTE_AUDIO, out _);

            return new ActiveCall($"{convo_id}_{GUID()}", convo_id, is_video, new User[0]);
        }

        public async Task<bool> EndCall(ActiveCall call)
        {
            var cid = avACall.Identifier;
            avACall.caller?.Stop();
            avACall = new CallStruct();
            if (!toxav_call_control(av, cid, Toxav_Call_Control.CANCEL, out var err))
            {
                ERR($"Could not finish call: {err}");
                return false;
            }
            return true;
        }

        public async Task<ActiveCall> AnswerCall(string convo_id)
        {
            return await IStartCall(convo_id, false, false, true);
        }

        public async Task<bool> DeclineCall(string convo_id)
        {
            bool suc = toxav_call_control(av, UInt32.Parse(convo_id), Toxav_Call_Control.CANCEL, out var err);
            if (!suc)
                ERR("An error occured when declining the call: " + err);
            return suc;
        }

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
