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
// This code is EXPIREMENTAL and has not been reviewed by
// persfidious, patricktbp, or HUBAXE. (ported by Xaero)
// It is a port of logic that previously lived in Main.xaml.cs.
/*==========================================================*/

using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Skymu.Converters;
using Skymu.Credentials;
using Skymu.Databases;
using Skymu.Emoticons;
using Skymu.Helpers;
using Skymu.Preferences;
using Skymu.UserDirectory;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Skymu.ViewModels
{
    public partial class MainViewModel : ObservableObject
    {
        #region Shared state

        public ObservableCollection<ConversationItem> ActiveConversation { get; }
        public ObservableCollection<MessageGroup> GroupedConversation { get; }

        internal DatabaseManager Database
        {
            get => _database;
        }

        private Conversation _selectedConversation;
        public Conversation SelectedConversation
        {
            get => _selectedConversation;
            set => SetProperty(ref _selectedConversation, value);
        }

        private bool _isLoadingConversation;
        public bool IsLoadingConversation
        {
            get => _isLoadingConversation;
            set => SetProperty(ref _isLoadingConversation, value);
        }

        private string _userCountText;
        public string UserCountText
        {
            get => _userCountText;
            set => SetProperty(ref _userCountText, value);
        }

        private string _typingText = string.Empty;
        public string TypingText
        {
            get => _typingText;
            private set => SetProperty(ref _typingText, value);
        }

        private bool _isTypingVisible;
        public bool IsTypingVisible
        {
            get => _isTypingVisible;
            private set => SetProperty(ref _isTypingVisible, value);
        }

        private bool _isCallActive;
        public bool IsCallActive
        {
            get => _isCallActive;
            set => SetProperty(ref _isCallActive, value);
        }

        public bool IsWindowActive { get; set; }

        #endregion

        #region Events for the View

        public event EventHandler Ready;

        public event EventHandler ConversationLoaded;

        public event EventHandler ConversationOpened;

        public event EventHandler ConversationItemChanged;

        public event EventHandler SignOutRequested;

        public event Action<string> UserCountUpdated;

        public event Action<string> SpeedTestIconUpdated;

        public event Action<bool> CallActiveChanged;

        #endregion

        #region Commands

        public IAsyncRelayCommand<string> SendMessageCommand { get; }
        public IAsyncRelayCommand RunSpeedTestCommand { get; }
        public IRelayCommand SignOutCommand { get; }
        private bool _isDownloading = false;
        public ICommand OpenImageCommand =>
            new RelayCommand<Attachment[]>(async attachments =>
            {
                if (attachments == null || attachments.Length == 0 || _isDownloading)
                    return;
                _isDownloading = true;

                string url = attachments[0].Url;
                string tempPath = Path.Combine(Path.GetTempPath(), $"skymu_attachment_temp");
                using (var response = await Universal.WebClient.GetStreamAsync(url))
                using (var fileStream = File.Create(tempPath))
                {
                    await response.CopyToAsync(fileStream);
                }
                string ext = ImageHelper.ResolveExtension(
                    File.ReadAllBytes(tempPath),
                    attachments[0].Name
                ); // TODO spin off to helper method
                string finalPath = tempPath + ext;
                if (File.Exists(finalPath))
                    File.Delete(finalPath);
                File.Move(tempPath, finalPath);
                Universal.OpenUrl(finalPath);

                _isDownloading = false;
            });
        public IRelayCommand VideoCallCommand { get; }
        public IAsyncRelayCommand CallCommand { get; }
        public IAsyncRelayCommand CallToggleCommand { get; }
        public IAsyncRelayCommand<string> SelectConversationCommand { get; }

        #endregion

        #region Private state

        private DatabaseManager _database;
        private Action<int> _userCountHandler;
        private NotifyCollectionChangedEventHandler _conversationCollectionHandler;
        private readonly Dictionary<string, Message> _pendingPreviewMessages;
        private bool _synchronizing;
        private bool _typingIndicatorSubscribed;
        private bool _typingActive;
        private Timer _typingTimer;
        private Timer _typingRepeatTimer;

        private const string SKYMU_PREFIX = "@skymu/";
        private const string SKYMU_SENDING = SKYMU_PREFIX + "sending";

        #endregion

        #region Icon dictionaries

        private static readonly Dictionary<PresenceStatus, int> StatusMap = new Dictionary<
            PresenceStatus,
            int
        >
        {
            { PresenceStatus.Online, 2 },
            { PresenceStatus.OnlineMobile, 2 },
            { PresenceStatus.Away, 3 },
            { PresenceStatus.AwayMobile, 3 },
            { PresenceStatus.DoNotDisturb, 5 },
            { PresenceStatus.DoNotDisturbMobile, 5 },
            { PresenceStatus.Invisible, 19 },
            { PresenceStatus.Blocked, 9 },
            { PresenceStatus.Offline, 14 },
            { PresenceStatus.Unknown, 0 },
        };

        private static readonly Dictionary<ChannelType, int> ChannelTypeMap = new Dictionary<
            ChannelType,
            int
        >
        {
            { ChannelType.Standard, 2 },
            { ChannelType.ReadOnly, 2 },
            { ChannelType.Announcement, 6 },
            { ChannelType.Voice, 1 },
            { ChannelType.Restricted, 2 },
            { ChannelType.Forum, 9 },
            { ChannelType.NoAccess, 4 },
        };

        public static int GetIntFromStatus(PresenceStatus status) =>
            StatusMap.TryGetValue(status, out int v) ? v : 0;

        public static int GetIntFromChannelType(ChannelType channel) =>
            ChannelTypeMap.TryGetValue(channel, out int v) ? v : 0;

        public PresenceStatus GetStatusFromInt(int value) =>
            StatusMap.FirstOrDefault(x => x.Value == value).Key;

        #endregion

        #region Init

        public MainViewModel()
        {
            Universal.ActiveViewModel = this;
            ActiveConversation = new ObservableCollection<ConversationItem>();
            GroupedConversation = new ObservableCollection<MessageGroup>();
            _pendingPreviewMessages = new Dictionary<string, Message>();
            _typingActive = false;
            _typingTimer = new Timer(
                _ =>
                {
                    Universal.Plugin.SetTyping(SelectedConversation?.Identifier, false);
                    _typingRepeatTimer.Change(Timeout.Infinite, Timeout.Infinite);
                    _typingActive = false;
                },
                null,
                Timeout.Infinite,
                Timeout.Infinite
            );

            _typingRepeatTimer = new Timer(
                _ =>
                {
                    Universal.Plugin.SetTyping(SelectedConversation?.Identifier, true);
                    _typingActive = false;
                },
                null,
                Timeout.Infinite,
                Timeout.Infinite
            );

            SendMessageCommand = new AsyncRelayCommand<string>(SendMessage);
            RunSpeedTestCommand = new AsyncRelayCommand(RunSpeedTest);
            SignOutCommand = new RelayCommand(InitiateSignOut);
            VideoCallCommand = new RelayCommand(HandleVideoCall);
            CallCommand = new AsyncRelayCommand(HandleCall);
        }

        public async Task InitSidebar()
        {
            try
            {
                await Universal.Plugin.PopulateUserInformation();
                await Universal.Plugin.PopulateRecentsList();
            }
            catch (Exception ex)
            {
                Universal.PluginErrorHandler(Universal.Plugin, new PluginMessageEventArgs("Error when populating informations: " + ex.Message));
                return;
            }
            Universal.CurrentUser = Universal.Plugin.MyInformation;

            if (string.IsNullOrEmpty(Universal.CurrentUser?.Identifier))
            {
                Universal.ExceptionHandler(
                    new InvalidOperationException(
                        "Plugin did not return a valid user object to initialize the database."
                    )
                );
                return;
            }
            _database = new DatabaseManager(Universal.CurrentUser);
            _database.Conversations.Write(Universal.Plugin.RecentsList.ToArray());
            _ = LoadAndCacheContacts();
            _database.Accounts.Write(Universal.CurrentUser);

            UserCountText = Universal.Lang["sCALLPHONES_RATES_LOADING"];
            UserCountUpdated?.Invoke(UserCountText);

            _ = SkymuApiStatusHandler();

            Ready?.Invoke(this, EventArgs.Empty);
        }

        private async Task LoadAndCacheContacts()
        {
            await Universal.Plugin.PopulateContactsList();
            _database?.Contacts.Write(Universal.Plugin.ContactsList.ToArray());
        }

        #endregion

        #region Conversation handling

        public async void HandleConversationSelected(object selectedItem)
        {
            if (selectedItem == null)
                return;
            SelectedConversation = (Conversation)selectedItem;
            await SetConversation();
        }

        public async void HandleServerItemSelected(ServerChannel channel)
        {
            if (channel == null)
                return;
            SelectedConversation = channel;
            await SetConversation();
        }

        public async Task SetConversation()
        {
            if (SelectedConversation == null)
                return;

            ClearActiveConversation();
            ConversationOpened?.Invoke(this, EventArgs.Empty);
            IsLoadingConversation = true;

            ConversationItem[] cached = _database?.Messages.Read(
                SelectedConversation,
                Settings.MsgLoadCount
            );
            ConversationItem[] items;

            if (cached != null && cached.Length > 0)
            {
                items = cached;
                IsLoadingConversation = false;
                _ = SyncMessagesInBackground(
                    SelectedConversation,
                    cached[cached.Length - 1].Identifier
                );
            }
            else
            {
                items = await Universal.Plugin.FetchMessages(
                    SelectedConversation,
                    Fetch.Newest,
                    Settings.MsgLoadCount,
                    null
                );
                _database?.Messages.Write(items, SelectedConversation);
            }

            if (SelectedConversation == null)
                return;

            if (items != null && items.Length > 0)
            {
                foreach (ConversationItem item in items)
                    ActiveConversation.Add(item);

                // Back-fill PreviousMessageIdentifier
                for (int i = 0; i < ActiveConversation.Count; i++)
                {
                    if (ActiveConversation[i] is Message msg)
                    {
                        for (int j = i - 1; j >= 0; j--)
                        {
                            if (ActiveConversation[j] is Message prev)
                            {
                                msg.PreviousMessageIdentifier = prev.Sender.Identifier;
                                break;
                            }
                        }
                    }
                }
            }

            SubscribeConversationCollectionChanges();
            Application.Current.Dispatcher.Invoke(() => BuildGroupedConversation());

            IsLoadingConversation = false;
            ConversationLoaded?.Invoke(this, EventArgs.Empty);
        }

        private void SubscribeConversationCollectionChanges()
        {
            if (_conversationCollectionHandler != null)
                ActiveConversation.CollectionChanged -= _conversationCollectionHandler;

            Conversation currentConv = SelectedConversation;

            _conversationCollectionHandler = (s, args) =>
            {
                if (IsLoadingConversation)
                    return;
                if (args.Action != NotifyCollectionChangedAction.Add)
                    return;

                foreach (var addedItem in args.NewItems)
                {
                    if (!(addedItem is Message message))
                        continue;

                    if (
                        message.Sender.Identifier == Universal.CurrentUser?.Identifier
                        && message.Identifier != null
                        && !message.Identifier.StartsWith(SKYMU_SENDING)
                    )
                    {
                        var match =
                            _pendingPreviewMessages.Values.LastOrDefault(p =>
                                p.Text == message.Text
                            ) ?? _pendingPreviewMessages.Values.LastOrDefault();

                        if (match != null)
                        {
                            _pendingPreviewMessages.Remove(match.Identifier);
                            Application.Current.Dispatcher.BeginInvoke(
                                new Action(() =>
                                {
                                    RemoveFromGroupedConversation(match);
                                    ActiveConversation.Remove(match);
                                })
                            );
                        }
                    }

                    int idx = ActiveConversation.IndexOf(message);
                    for (int i = idx - 1; i >= 0; i--)
                    {
                        if (
                            ActiveConversation[i] is Message prev
                            && !prev.Identifier.StartsWith(SKYMU_SENDING)
                        )
                        {
                            message.PreviousMessageIdentifier = prev.Sender.Identifier;
                            break;
                        }
                    }

                    if (
                        message.Sender.Identifier != Universal.CurrentUser?.Identifier
                        && IsWindowActive
                        && !_synchronizing
                    )
                    {
                        Sounds.Play("message-recieved");
                    }

                    Application.Current.Dispatcher.BeginInvoke(
                        new Action(() => AppendToGroupedConversation(message))
                    );
                }

                ConversationItemChanged?.Invoke(this, EventArgs.Empty);
            };

            ActiveConversation.CollectionChanged += _conversationCollectionHandler;
        }

        public void ClearActiveConversation()
        {
            _pendingPreviewMessages.Clear();
            Universal.Plugin?.TypingUsersList?.Clear();

            if (_conversationCollectionHandler != null)
                ActiveConversation.CollectionChanged -= _conversationCollectionHandler;

            ActiveConversation.Clear();
            GroupedConversation.Clear();
            _conversationCollectionHandler = null;
        }

        private async Task SyncMessagesInBackground(Conversation conversation, string afterId)
        {
            ConversationItem[] items = await Universal.Plugin.FetchMessages(
                conversation,
                Fetch.NewestAfterIdentifier,
                Settings.MsgLoadCount,
                afterId
            );

            if (items == null || items.Length == 0)
                return;
            _database?.Messages.Write(items, conversation);

            if (SelectedConversation != conversation)
                return;

            _synchronizing = true;
            foreach (ConversationItem item in items)
                ActiveConversation.Add(item);
            _synchronizing = false;
        }

        #endregion

        #region Image viewer
        private void OpenImageViewer() { }

        #endregion

        #region Incoming item handler

        public void HandleIncoming(MessageEventArgs e)
        {
            if (e is MessageRecievedEventArgs eR)
            {
                var conversation = Universal.Plugin.RecentsList.FirstOrDefault(c =>
                    c.Identifier == eR.ConversationId
                );
                if (conversation != null)
                    Database.Messages.WriteRow(eR.Item, conversation);

                // TODO: have editing and deletion persist in database
                if (SelectedConversation?.Identifier == eR.ConversationId)
                    ActiveConversation.Add(eR.Item);
                if (eR.Item is Message message)
                {
                    UpdateRecentsListOnNewMessage(e.ConversationId, message.Time);
                    if ((Settings.NotificationTrigger & Classes.NotificationTriggerType.ALL) != 0)
                    {
                        new Views.Notification(eR);
                        return;
                    }
                    if (eR.SentInServerChannel)
                    {
                        // for server channels (guild channels), only notify if:
                        // 1. replied to
                        // 2. pinged

                        if (
                            message.ParentMessage?.Sender?.Identifier
                            == Universal.CurrentUser?.Identifier
                        )
                        { /* case 1 is true, continue */
                        }
                        else if (
                            !string.IsNullOrEmpty(message.Text)
                            && !string.IsNullOrEmpty(Universal.CurrentUser?.DisplayName)
                            && message.Text.Contains($"<@{Universal.CurrentUser.DisplayName}>")
                        )
                        { /* case 2 is true, continue */
                        }
                        else
                        {
                            return;
                        }
                        if ((Settings.NotificationTrigger & Classes.NotificationTriggerType.PING) != 0)
                            new Views.Notification(eR);
                    }
                    else
                    {
                        if (
                            message.Sender.Identifier != Universal.CurrentUser?.Identifier
                            && (Settings.NotificationTrigger & Classes.NotificationTriggerType.DM) != 0
                        )
                        {
                            if (
                                !IsWindowActive
                                || SelectedConversation?.Identifier != eR.ConversationId
                            )
                                new Views.Notification(eR);
                        }
                    }
                }
            }
            else if (
                e is MessageDeletedEventArgs eD
                && SelectedConversation?.Identifier == e.ConversationId
            )
            {
                var item = ActiveConversation.FirstOrDefault(x => x.Identifier == eD.DeletedItemId);
                if (item is Message deleted_msg)
                {
                    int index = ActiveConversation.IndexOf(deleted_msg);
                    ActiveConversation.RemoveAt(index);
                    if (Settings.MessageLogger)
                    {
                        deleted_msg.Text += " ==[deleted]==";
                        ActiveConversation.Insert(index, deleted_msg);
                    }
                }
            }
            else if (
                e is MessageEditedEventArgs eE
                && SelectedConversation?.Identifier == e.ConversationId
            )
            {
                var index =
                    ActiveConversation
                        .Select((item, i) => new { item, i })
                        .LastOrDefault(x => x.item.Identifier == eE.OldItemId)
                        ?.i
                    ?? -1;

                if (index != -1)
                {
                    Message edited_msg = eE.NewItem as Message;
                    if (!Settings.MessageLogger)
                    {
                        ActiveConversation.RemoveAt(index);
                    }

                    edited_msg.Text += " ==[edited]==";

                    int insertIndex = Math.Min(
                        index + (Settings.MessageLogger ? 1 : 0),
                        ActiveConversation.Count
                    );

                    ActiveConversation.Insert(insertIndex, edited_msg);
                }
            }
        }

        private static void UpdateRecentsListOnNewMessage(
            string conversationId,
            DateTime messageTimestamp
        )
        {
            var conversation = Universal.Plugin.RecentsList.FirstOrDefault(c =>
                c.Identifier == conversationId
            );
            if (conversation == null)
                return;

            conversation.LastMessageTime = messageTimestamp;
            Skyaeris.Main.RefreshCompactRecentsView();
        }

        #endregion

        #region Message sending

        public async Task SendMessage(string text)
        {
            if (string.IsNullOrEmpty(text) || SelectedConversation == null)
                return;

            StopTyping();

            string tempId = SKYMU_SENDING + "/" + Guid.NewGuid().ToString();
            var preview = new Message(
                tempId,
                Universal.Plugin.MyInformation,
                DateTime.Now,
                text,
                null,
                null
            );

            _pendingPreviewMessages[tempId] = preview;
            ActiveConversation.Add(preview);

            bool sent = false;
            try
            {
                sent = await Universal.Plugin.SendMessage(SelectedConversation.Identifier, text);
            }
            catch { }

            if (sent)
            {
                Sounds.Play("message-sent");
            }
            else
            {
                if (_pendingPreviewMessages.TryGetValue(tempId, out var pending))
                {
                    _pendingPreviewMessages.Remove(tempId);
                    _ = Application.Current.Dispatcher.BeginInvoke(
                        new Action(() =>
                        {
                            ActiveConversation.Remove(pending);
                        })
                    );
                }
                Universal.MessageBox("Error sending message.");
            }
        }

        #endregion

        #region Sidebar tab data

        public async Task<IList<object>> GetContactsItems()
        {
            if (Universal.Plugin.ContactsList == null || Universal.Plugin.ContactsList.Count < 1)
                await Universal.Plugin.PopulateContactsList();
            return Universal.Plugin.ContactsList.Cast<object>().ToList();
        }

        public async Task<IList<object>> GetRecentsItems()
        {
            if (Universal.Plugin.RecentsList == null || Universal.Plugin.RecentsList.Count < 1)
                await Universal.Plugin.PopulateRecentsList();
            return CompactRecentsHelper
                .GroupByDate(Universal.Plugin.RecentsList)
                .Cast<object>()
                .ToList();
        }

        public async Task<IList<object>> GetServerItems()
        {
            if (Universal.Plugin.ServerList == null || Universal.Plugin.ServerList.Count < 1)
                await Universal.Plugin.PopulateServerList();

            foreach (var server in Universal.Plugin.ServerList)
            {
                server.GroupedChannels = ServerChannelHelper.GroupByCategory(
                    server.Channels,
                    server.CategoryMap
                );
            }
            return Universal.Plugin.ServerList.Cast<object>().ToList();
        }

        public IList<object> GetGroupedRecents()
        {
            return CompactRecentsHelper
                .GroupByDate(Universal.Plugin.RecentsList)
                .Cast<object>()
                .ToList();
        }

        #endregion

        #region Sign out

        public void InitiateSignOut()
        {
            CredentialManager.Purge(Universal.CurrentUser, Universal.Plugin.InternalName);
            Sounds.Play("logout");
            Universal.HasLoggedIn = false;
            SignOutRequested?.Invoke(this, EventArgs.Empty);
            _ = UserCountAPI.CloseWS();
        }
        #endregion

        #region User count API

        private async Task SkymuApiStatusHandler()
        {
            if (Settings.DisablePingbacks)
                return;
            await UserCountAPI.GenerateUID();
            await UserCountAPI.SetUsrStatus(
                true,
                Universal.CurrentUser?.DisplayName,
                Universal.CurrentUser?.PublicUsername,
                Universal.CurrentUser?.Identifier
            );
            await UserCountAPI.ConnectWS();
            _ = PingLoop();

            if (_userCountHandler != null)
                UserCountAPI.OnUserCountUpdate -= _userCountHandler;

            _userCountHandler = count =>
            {
                string text = Universal.Lang.Format("sTOTAL_USERS_ONLINE", count);
                UserCountText = text;
                UserCountUpdated?.Invoke(text);
            };
            UserCountAPI.OnUserCountUpdate += _userCountHandler;
        }

        private static async Task PingLoop()
        {
            while (true)
            {
                await Task.Delay(45000);
                await UserCountAPI.SendPingToServ();
            }
        }

        #endregion

        public void SubscribeTypingIndicator()
        {
            if (_typingIndicatorSubscribed)
                return;
            _typingIndicatorSubscribed = true;
            Universal.Plugin.TypingUsersList.CollectionChanged += (s, e) => RefreshTypingState();
        }

        private void RefreshTypingState()
        {
            int count = Universal.Plugin.TypingUsersList.Count;
            if (count <= 0)
            {
                Application.Current?.Dispatcher.BeginInvoke(
                    new Action(() =>
                    {
                        IsTypingVisible = false;
                        TypingText = string.Empty;
                    })
                );
                return;
            }
            User[] profiles = Universal.Plugin.TypingUsersList.Take(3).ToArray();
            string text;
            switch (count)
            {
                case 1:
                    text = $"{profiles[0].DisplayName} is typing...";
                    break;
                case 2:
                    text = $"{profiles[0].DisplayName} and {profiles[1].DisplayName} are typing...";
                    break;
                case 3:
                    text =
                        $"{profiles[0].DisplayName}, {profiles[1].DisplayName}, and {profiles[2].DisplayName} are typing...";
                    break;
                default:
                    text = "Multiple people are typing...";
                    break;
            }
            Application.Current?.Dispatcher.BeginInvoke(
                new Action(() =>
                {
                    TypingText = text;
                    IsTypingVisible = true;
                })
            );
        }

        public void StopTyping()
        {
            _typingTimer.Change(0, Timeout.Infinite);
        }

        public void StartTyping()
        {
            _typingTimer.Change(Universal.Plugin.TypingTimeout, Timeout.Infinite);
            if (!_typingActive)
            {
                Universal.Plugin.SetTyping(SelectedConversation?.Identifier, true);
                _typingRepeatTimer.Change(Universal.Plugin.TypingRepeat, Universal.Plugin.TypingRepeat);
                _typingActive = true;
            }
        }

        public async Task RunSpeedTest()
        {
            const string TEST_URL = "https://speed.cloudflare.com/__down?bytes=10485760";
            const string PREFIX = "network-";

            var cts = new CancellationTokenSource();
            var token = cts.Token;

            var animTask = Task.Run(
                async () =>
                {
                    int idx = 0;
                    while (!token.IsCancellationRequested)
                    {
                        string uri =
                            ConversionHelpers.GetAssetBasePrefix()
                            + "Chat/"
                            + PREFIX
                            + (idx + 1)
                            + ".png";
                        SpeedTestIconUpdated?.Invoke(uri);
                        idx = (idx + 1) % 5;
                        await Task.Delay(100);
                    }
                },
                token
            );

            string final = PREFIX;
            try
            {
                var sw = Stopwatch.StartNew();
                var data = await Universal.WebClient.GetByteArrayAsync(TEST_URL);
                sw.Stop();
                double mbps = (data.Length * 8.0) / 1_000_000 / sw.Elapsed.TotalSeconds;
                if (mbps >= 50)
                    final += "5";
                else if (mbps >= 20)
                    final += "4";
                else if (mbps >= 10)
                    final += "3";
                else if (mbps >= 5)
                    final += "2";
                else
                    final += "1";
            }
            catch
            {
                final += "none";
            }
            finally
            {
                cts.Cancel();
                await animTask;
            }

            SpeedTestIconUpdated?.Invoke(
                ConversionHelpers.GetAssetBasePrefix() + "Chat/" + final + ".png"
            );
        }

        private async Task HandleCallToggle()
        {
            if (IsCallActive)
            {
                IsCallActive = false;
                Sounds.StopPlayback("call-ring");
                Sounds.Play("call-end");
                CallActiveChanged?.Invoke(false);
            }
            else
            {
                IsCallActive = true;
                CallActiveChanged?.Invoke(true);
                await Task.Run(() => Sounds.PlaySynchronous("call-init"));
                Sounds.PlayLoop("call-ring");
            }
        }

        private async Task HandleCall()
        {
            Universal.NotImplemented("Voice calling");
            /*if (IsCallActive)
            {
                await HandleCallToggle();
                CallDropdown.Visibility = Visibility.Visible;
                CallButton.TextLeftMargin = 26;
                CallButton.RightWidth = 4;
                CallButton.Text = Universal.Lang["sZAPBUTTON_CALL"];
            }
            else
            {
                WindowBase callwin = new WindowBase(new CallScreen());
                callwin.HeaderText = "DU DU DUN. DU DU DOO";
                callwin.HeaderIcon = WindowBase.IconType.SkypeOut;
                callwin.Show();
                CallButton.IsEnabled = false;
                CallButton.Text = Universal.Lang["sPARTICIPANT_ACTIVE_PHONE"];
                await vmodel.HandleCallToggle();
                CallButton.IsEnabled = true;
                CallButton.Text = Universal.Lang["sZAP_ACTIONBUTTON_HANGUP"];
                CallDropdown.Visibility = Visibility.Collapsed;
                CallButton.TextLeftMargin = 30;
                CallButton.RightWidth = 23;
            }*/
        }

        public void HandleVideoCall()
        {
            Universal.NotImplemented("Video calling");
        }

        public string ConvertHexKeyToUnicode(string hexKey)
        {
            try
            {
                var sb = new StringBuilder();
                foreach (var part in hexKey.Split('-'))
                    sb.Append(char.ConvertFromUtf32(Convert.ToInt32(part, 16)));
                return sb.ToString();
            }
            catch
            {
                return string.Empty;
            }
        }

        public IEnumerable<(string key, string filename)> GetUniqueEmojiList()
        {
            return EmojiDictionary
                .Map.GroupBy(kvp => kvp.Value)
                .Select(g => g.First())
                .Select(kvp => (kvp.Key, kvp.Value));
        }

        public PresenceStatus GetConnectionStatusFromName(string menuItemName)
        {
            PresenceStatus status;
            switch (menuItemName)
            {
                case "online":
                    status = PresenceStatus.Online;
                    break;
                case "offline":
                    status = PresenceStatus.Offline;
                    break;
                case "invisible":
                    status = PresenceStatus.Invisible;
                    break;
                case "away":
                    status = PresenceStatus.Away;
                    break;
                case "dnd":
                    status = PresenceStatus.DoNotDisturb;
                    break;
                case "call_forwarding":
                    Universal.NotImplemented(
                        Universal.Lang["sF_OPTIONS_PAGE_FORWARDINGANDVOICEMAIL"]
                    );
                    status = PresenceStatus.Unknown;
                    break;
                default:
                    status = PresenceStatus.Unknown;
                    break;
            }
            return status;
        }

        public void BuildGroupedConversation()
        {
            GroupedConversation.Clear();
            bool isGroupOrServer =
                SelectedConversation is Group || SelectedConversation is ServerChannel;
            int i = 0;
            while (i < ActiveConversation.Count)
            {
                if (!(ActiveConversation[i] is Message firstMsg))
                {
                    i++;
                    continue;
                }
                bool isSelf = firstMsg.Sender?.Identifier == Universal.CurrentUser?.Identifier;
                bool showName = !isSelf && isGroupOrServer;
                bool isImage =
                    firstMsg.Attachments != null
                    && firstMsg.Attachments.Any(a =>
                        a.Type == AttachmentType.Image || a.Type == AttachmentType.ThumbnailImage
                    );
                if (isImage)
                {
                    GroupedConversation.Add(new MessageGroup(new[] { firstMsg }, showName));
                    i++;
                    continue;
                }
                var batch = new List<Message> { firstMsg };
                int j = i + 1;
                while (j < ActiveConversation.Count)
                {
                    if (!(ActiveConversation[j] is Message nextMsg))
                        break;
                    if (nextMsg.Sender?.Identifier != firstMsg.Sender?.Identifier)
                        break;
                    if ((nextMsg.Time - batch[batch.Count - 1].Time).TotalSeconds >= 60)
                        break;
                    if (
                        nextMsg.Attachments != null
                        && nextMsg.Attachments.Any(a =>
                            a.Type == AttachmentType.Image
                            || a.Type == AttachmentType.ThumbnailImage
                        )
                    )
                        break;
                    batch.Add(nextMsg);
                    j++;
                }
                GroupedConversation.Add(new MessageGroup(batch, showName));
                i = j;
            }
        }

        private void AppendToGroupedConversation(Message message)
        {
            bool isGroupOrServer =
                SelectedConversation is Group || SelectedConversation is ServerChannel;
            bool isSelf = message.Sender?.Identifier == Universal.CurrentUser?.Identifier;
            bool showName = !isSelf && isGroupOrServer;
            bool isImage =
                message.Attachments != null
                && message.Attachments.Any(a =>
                    a.Type == AttachmentType.Image || a.Type == AttachmentType.ThumbnailImage
                );

            if (!isImage && GroupedConversation.Count > 0)
            {
                var lastGroup = GroupedConversation[GroupedConversation.Count - 1];
                if (
                    !lastGroup.IsImageGroup
                    && lastGroup.Sender?.Identifier == message.Sender?.Identifier
                )
                {
                    var lastMsg = lastGroup.Messages[lastGroup.Messages.Count - 1];
                    if ((message.Time - lastMsg.Time).TotalSeconds < 60)
                    {
                        lastGroup.Messages.Add(message);
                        return;
                    }
                }
            }
            GroupedConversation.Add(new MessageGroup(new[] { message }, showName));
        }

        private void RemoveFromGroupedConversation(Message message)
        {
            for (int i = 0; i < GroupedConversation.Count; i++)
            {
                var group = GroupedConversation[i];
                if (group.Messages.Contains(message))
                {
                    group.Messages.Remove(message);
                    if (group.Messages.Count == 0)
                        GroupedConversation.RemoveAt(i);
                    return;
                }
            }
        }
    }

    public class MessageGroup
    {
        public ObservableCollection<Message> Messages { get; }
        public bool ShowSenderName { get; }
        public User Sender => Messages.Count > 0 ? Messages[0].Sender : null;
        public DateTime Time =>
            Messages.Count > 0 ? Messages[Messages.Count - 1].Time : default(DateTime);

        public bool IsImageGroup
        {
            get
            {
                if (Messages.Count != 1 || Messages[0].Attachments == null)
                    return false;
                foreach (var a in Messages[0].Attachments)
                    if (a.Type == AttachmentType.Image || a.Type == AttachmentType.ThumbnailImage)
                        return true;
                return false;
            }
        }

        public MessageGroup(IList<Message> messages, bool showSenderName)
        {
            Messages = new ObservableCollection<Message>(messages);
            ShowSenderName = showSenderName;
        }
    }
}
