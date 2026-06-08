/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Skymu.Converters;
using Skymu.Credentials;
using Skymu.Databases;
using Skymu.Emoticons;
using Skymu.Enumerations;
using Skymu.Windows;
using Skymu.Helpers;
using System.Linq;
using Skymu.Sounds;
using Skymu.Preferences;
using Yggdrasil.Bottles;
using Skymu.Forms;
using Skymu.UserDirectory;
using Microsoft.Win32;
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
using System.Windows.Media;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using System.Windows.Controls;

namespace Skymu.ViewModels
{
    public partial class MainViewModel : ObservableObject
    {
        #region Shared state

        // this is an OC for now because only one conversation is loaded at any given time, must rework once "Split Window Mode"
        // is added and obviously we'll have multiple conversations loaded at the same time then
        public ObservableCollection<ConversationItem> ActiveConversation { get; }

        // OC's for the three types of lists shown in the UI that can be bound to in WPF
        public ObservableCollection<DirectMessage> ContactList;
        public ObservableCollection<Server> ServerList;
        public ObservableCollection<Conversation> ConversationList;

        // since the servers list is lazy-loaded, we need a TCS to handle the clicks on the "Servers" 
        // tab before the list has actually been populated
        private readonly TaskCompletionSource<bool> _serversLoadedSource = new TaskCompletionSource<bool>();

        // for the database, TODO change list loading so it attempts to load from DB first
        internal DatabaseManager Database
        {
            get => _database;
        }

        // this is different from ActiveConversation because in Yggdrasil "Conversation" is not a container of "ConversationItem"
        // even though the naming may imply that
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

        public event EventHandler ConversationChanged;

        public event EventHandler<SignOutRequestedEventArgs> SignOutRequested;

        public event Action<string> UserCountUpdated;

        public event Action<string> SpeedTestIconUpdated;

        public event Action<bool> CallActiveChanged;

        #endregion

        #region Commands

        public IAsyncRelayCommand<string> SendMessageCommand { get; }
        public IAsyncRelayCommand RunSpeedTestCommand { get; }
        private bool _isDownloading = false;
        public ICommand OpenImageCommand =>
            new RelayCommand<Attachment[]>(async attachments =>
            {
                if (attachments == null || attachments.Length == 0 || _isDownloading)
                    return;
                _isDownloading = true;

                string url = attachments[0].Url;
                string tempPath = Path.Combine(Path.GetTempPath(), $"skymu_attachment_temp");
                using (var response = await Universal.SkymuHttpClient.GetStreamAsync(url))
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

            // just in case something tries to use these lists before they've been populated, don't crash the app with NullReferenceException
            ContactList = new ObservableCollection<DirectMessage>();
            ServerList = new ObservableCollection<Server>();
            ConversationList = new ObservableCollection<Conversation>();

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
            VideoCallCommand = new RelayCommand(HandleVideoCall);
            CallCommand = new AsyncRelayCommand(HandleCall);
        }

        public async Task InitSidebar()
        {
            Universal.CurrentUser = await Universal.Plugin.GetUserInfo();
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
            _database.Accounts.Write(Universal.CurrentUser);

            ConversationList = new ObservableCollection<Conversation>(await Universal.Plugin.FetchConversations());
            _database.Conversations.Write(ConversationList);

            ContactList = new ObservableCollection<DirectMessage>(await Universal.Plugin.FetchContacts());
            _database?.Contacts.Write(ContactList);

            _ = LoadAndCacheServers();

            UserCountText = Universal.Lang["sCALLPHONES_RATES_LOADING"];
            UserCountUpdated?.Invoke(UserCountText);

            _ = SkymuApiStatusHandler();

            var curContext = SynchronizationContext.Current;
            Universal.CurrentUser.PropertyChanged += (o, e) =>
            {
                if (e.PropertyName == nameof(User.ConnectionStatus))
                    curContext.Post(_ =>
                        Tray.SetStatus(Universal.CurrentUser.ConnectionStatus)
                    , null);
            };

            Ready?.Invoke(this, EventArgs.Empty);
        }

        private async Task LoadAndCacheServers()
        {
            List<Server> servers = await Universal.Plugin.FetchServers();
            //_database?.Servers.Write(servers); // TODO add servers to database
            ServerList = new ObservableCollection<Server>(servers);
            _serversLoadedSource.TrySetResult(true);
        }

        #endregion

        #region Conversation handling

        /// <summary> For external usages </summary>
        public async void SelectConversation(Conversation conversation)
        {
            SelectedConversation = conversation;
            ConversationChanged?.Invoke(conversation, EventArgs.Empty);
        }

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

            List<ConversationItem> cached = _database?.Messages.Read(
                SelectedConversation,
                Settings.MsgLoadCount
            );
            List<ConversationItem> items;

            if (cached != null && cached.Count > 0)
            {
                items = cached;
                IsLoadingConversation = false;
                _ = SyncMessagesInBackground(
                    SelectedConversation,
                    cached[cached.Count - 1].Identifier
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

            if (items != null && items.Count > 0)
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
                                msg.PreviousMessageIdentifier = prev.Author.Identifier;
                                break;
                            }
                        }
                    }
                }
            }

            SubscribeConversationCollectionChanges();

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
                        message.Author.Identifier == Universal.CurrentUser?.Identifier
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
                            message.PreviousMessageIdentifier = prev.Author.Identifier;
                            break;
                        }
                    }

                    if (
                        message.Author.Identifier != Universal.CurrentUser?.Identifier
                        && IsWindowActive
                        && !_synchronizing
                    )
                    {
                        SoundManager.Play("message-recieved");
                    }
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
            _conversationCollectionHandler = null;
        }

        private async Task SyncMessagesInBackground(Conversation conversation, string afterId)
        {
            List<ConversationItem> items = await Universal.Plugin.FetchMessages(
                conversation,
                Fetch.NewestAfterIdentifier,
                Settings.MsgLoadCount,
                afterId
            );

            if (items == null || items.Count == 0)
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

        public void HandleIncoming(MessageBottle e)
        {
            if (e is MessageRecievedBottle eR)
            {
                var conversation = ConversationList.FirstOrDefault(c =>
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
                    if (message.Author?.Identifier == Universal.CurrentUser?.Identifier) return;
                    if ((Settings.NotificationTrigger & NotificationTriggerType.ALL) != 0)
                    {
                        new Notification(eR);
                        return;
                    }
                    if (eR.SentInServerChannel)
                    {
                        // for server channels (guild channels), only notify if:
                        // 1. replied to
                        // 2. pinged

                        if (
                            message.ParentMessage?.Author?.Identifier
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
                        if ((Settings.NotificationTrigger & NotificationTriggerType.PING) != 0)
                            new Notification(eR);
                    }
                    else
                    {
                        if ((Settings.NotificationTrigger & NotificationTriggerType.DM) != 0
                        )
                        {
                            if (
                                !IsWindowActive
                                || SelectedConversation?.Identifier != eR.ConversationId
                            )
                                new Notification(eR);
                        }
                    }
                }
            }
            else if (
                e is MessageDeletedBottle eD
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
                e is MessageEditedBottle eE
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

        private void UpdateRecentsListOnNewMessage(
            string conversationId,
            DateTime messageTimestamp
        )
        {
            var conversation = ConversationList.FirstOrDefault(c =>
                c.Identifier == conversationId
            );
            if (conversation == null)
                return;

            conversation.LastMessageTime = messageTimestamp;
            Skype5.Main.RefreshCompactRecentsView();
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
                Universal.CurrentUser,
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
                SoundManager.Play("message-sent");
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

        #region Sidebar tab data helpers

        // TODO: Do this via data binding! These helpers are temporary.

        public IList<object> GetConversationList() // this is not async because the conversation list is never lazy-loaded
        {
            return CompactRecentsHelper
                .GroupByDate(ConversationList)
                .Cast<object>()
                .ToList();
        }

        public async Task<List<Server>> GetServerList()
        {
            await _serversLoadedSource.Task;

            foreach (var server in ServerList)
            {
                server.GroupedChannels = ServerChannelHelper.GroupByCategory(
                    server.Channels,
                    server.CategoryMap
                );
            }
            return ServerList.ToList();
        }

        #endregion

        #region Sign out

        public class SignOutRequestedEventArgs : EventArgs
        {
            public bool switchuser { get; }

            public SignOutRequestedEventArgs(bool switchuser)
            {
                this.switchuser = switchuser;
            }
        }

        public void InitiateSignOut(bool switchuser = false)
        {
            if (!switchuser)
                CredentialManager.Purge(Universal.CurrentUser, Universal.Plugin.InternalName);
            SoundManager.Play("logout");
            Universal.HasLoggedIn = false;
            SignOutRequested?.Invoke(this, new SignOutRequestedEventArgs(switchuser));
            _ = UserCountAPI.CloseWS();
        }
        #endregion

        #region User count API

        private async Task SkymuApiStatusHandler()
        {
            if (Settings.DisablePingbacks)
                return;
            await UserCountAPI.GenerateUID();
            await UserCountAPI.SetUserStatus(
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
                await UserCountAPI.PingServer();
            }
        }

        #endregion

        public async Task SendFile()
        {         
            var dlg = new OpenFileDialog
            {
                Title = "Select a file to send",
                CheckFileExists = true
            };
            if (dlg.ShowDialog() == true)
            {
                string filePath = dlg.FileName;
                string fileName = Path.GetFileName(filePath);

                byte[] data = File.ReadAllBytes(filePath);
                Attachment file = new Attachment(data, fileName);
                await Universal.Plugin.SendMessage(SelectedConversation.Identifier, null, file);
            }
        }

        public void SavePositioning(Window window, ColumnDefinition sidebar)
        {
            if (!Settings.SaveWindowPosition) return;

            Settings.ConvListWidth = sidebar.ActualWidth;
            Settings.X = window.Left;
            Settings.Y = window.Top;
            Settings.Height = window.Height;
            Settings.Width = window.Width;
            Settings.Maximized = window.WindowState == WindowState.Maximized;
        }


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
                            Settings.ThemeRoot
                            + "/Chat/"
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
                var data = await Universal.SkymuHttpClient.GetByteArrayAsync(TEST_URL);
                sw.Stop();
                double mbps = data.Length * 8.0 / 1_000_000 / sw.Elapsed.TotalSeconds;
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
                Settings.ThemeRoot + "/Chat/" + final + ".png"
            );
        }

        private async Task HandleCallToggle()
        {
            if (IsCallActive)
            {
                IsCallActive = false;
                SoundManager.StopPlayback("call-ring");
                SoundManager.Play("call-end");
                CallActiveChanged?.Invoke(false);
            }
            else
            {
                IsCallActive = true;
                CallActiveChanged?.Invoke(true);
                await Task.Run(() => SoundManager.PlaySynchronous("call-init"));
                SoundManager.PlayLoop("call-ring");
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

        // https://stackoverflow.com/a/1759923
        public static T FindChild<T>(DependencyObject parent, string childName)
        where T : DependencyObject
        {
            // Confirm parent and childName are valid. 
            if (parent == null) return null;

            T foundChild = null;

            int childrenCount = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < childrenCount; i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);
                // If the child is not of the request child type child
                T childType = child as T;
                if (childType == null)
                {
                    // recursively drill down the tree
                    foundChild = FindChild<T>(child, childName);

                    // If the child is found, break so we do not overwrite the found child. 
                    if (foundChild != null) break;
                }
                else if (!string.IsNullOrEmpty(childName))
                {
                    var frameworkElement = child as FrameworkElement;
                    // If the child's name is set for search
                    if (frameworkElement != null && frameworkElement.Name == childName)
                    {
                        // if the child's name is of the request name
                        foundChild = (T)child;
                        break;
                    }
                }
                else
                {
                    // child element found.
                    foundChild = (T)child;
                    break;
                }
            }

            return foundChild;
        }
    }

}
