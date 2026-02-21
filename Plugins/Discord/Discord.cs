/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using Discord.Classes;
using DiscordProtos.DiscordUsers.V1;
using Google.Protobuf;
using MiddleMan;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Text.Json.Serialization;
using System.Threading;
using System.Threading.Tasks;
using static DiscordProtos.DiscordUsers.V1.PreloadedUserSettings.Types;

namespace Discord
{
    public class Core : ICore
    {
        // Plugin details
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;
        public string Name { get { return "Discord"; } }
        public string InternalName { get { return "skymu-discord-plugin"; } }
        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[] { new AuthTypeInfo(AuthenticationMethod.Token, "Token") };
            }
        }

        // Initialize API classes and strings
        // The Discord token used by all of the Discord plugin
        public string DscToken;
        // We reuse this to avoid creating more API instances, which is quite heavy
        internal static readonly API api = new API();
        // We reuse this to avoid creating more HelperMethod instances, despite being lightweight
        private readonly HelperMethods helperMethods = new HelperMethods();
        // Track the active channel ID for real-time updates
        private string _activeChannelId;
        public SynchronizationContext _uiContext;
        // This is to verify what users is in the recents list, used for message handling in WebSockets so we can refresh the list
        public readonly Dictionary<string, string> _recentChannelMap = new();
        // The current user's identifier
        private string _currentUserId;
        // The current user's username
        private string _currentGlobalName;

        // Magic numbers used for some stuff...
        private const int MAX_MESSAGES_LIMIT = 30;
        private const int WARNING_WS_MS = 5000;
        private const int DM_CHANNEL_TYPE = 1;
        private const int GROUP_CHANNEL_TYPE = 3;
        internal const int API_VERSION = 9;

        // String constants
        private const string USERS_ME = "users/@me";
        private const string PROTO_ENDPOINT = USERS_ME + "/settings-proto/1";

        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();
        public readonly Dictionary<string, HashSet<string>> _typingUsersPerChannel = new();

        public ClickableConfiguration[] ClickableConfigurations
        {
            get
            {
                return new ClickableConfiguration[]
                {
                    new ClickableConfiguration(ClickableItemType.User, "<@!", ">"),
                    new ClickableConfiguration(ClickableItemType.User, "<@", ">"),
                    new ClickableConfiguration(ClickableItemType.ServerRole, "<@&", ">"),
                    new ClickableConfiguration(ClickableItemType.ServerChannel, "<#", ">")
                };
            }
        }

        public User MyInformation { get; private set; }
        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();
        public ObservableCollection<Participant> ContactsList { get; private set; } = new ObservableCollection<Participant>();
        public ObservableCollection<Participant> RecentsList { get; private set; } = new ObservableCollection<Participant>();

        private enum ListType
        {
            Contacts,
            Recents
        }
        public void Dispose()
        {
            WebSocketMgr._webSocket = null;
            UserStatusMgr.UserStatusStore.Clear();
            UserIdToChannelId = new Dictionary<string, string>();
        }

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            DscToken = username;
            return await StartClient();
        }

        public string GetActiveChannelID()
        {
            return _activeChannelId;
        }

        public async Task<string> GetQRCode()
        {
            return String.Empty;
        }

        public Task<LoginResult> AuthenticateTwoFA(string code)
            => Task.FromResult(LoginResult.Success);

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            DscToken = credential.PasswordOrToken;
            if (string.IsNullOrWhiteSpace(DscToken))
            {
                return LoginResult.Failure;
            }

            return await StartClient().ConfigureAwait(false);
        }

        public Task<SavedCredential> StoreCredential()
            => Task.FromResult(new SavedCredential(_currentGlobalName, DscToken, AuthenticationMethod.Token));

        public async Task<LoginResult> StartClient()
        {
            string userCheckTkn = await api.SendAPI(USERS_ME, HttpMethod.Get, DscToken, null, null, null).ConfigureAwait(false);
            if (userCheckTkn.Contains("username"))
            {
                // Parse and store username
                var parsedUser = JsonNode.Parse(userCheckTkn).AsObject();
                _currentGlobalName = parsedUser["global_name"]?.GetValue<string>() ?? parsedUser["username"]?.GetValue<string>() ?? "discord_user#0000";

                WebSocketMgr.EnsureConnected(DscToken, OnWebSocketMessageReceived, this);
                return LoginResult.Success;
            }
            else
            {
                if (userCheckTkn.Contains("401: Unauthorized"))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Your token has been rejected, possibly due to a display name, username, or password change, or simply because it is invalid.\n\nPlease retrieve a new token."));
                }
                else if (userCheckTkn.Contains("[API/ParseError]"))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("The provided token has an invalid format. Please ensure that you are entering it correctly."));
                }
                else if (userCheckTkn.Contains("[API/RequestError]"))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("There was an error performing the request (perhaps Discord's servers are down?) Please try again later."));
                }
                else
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("An unknown error occurred during the login process. Please try again.\n\n" + userCheckTkn));
                }
                return LoginResult.Failure;
            }
        }

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;
            JsonObject parsedDetails = null;

            try
            {
                string userDetails = await api.SendAPI(
                    USERS_ME,
                    HttpMethod.Get,
                    DscToken,
                    null, null, null).ConfigureAwait(false);

                parsedDetails = JsonNode.Parse(userDetails).AsObject();

                string userId = parsedDetails["id"]?.GetValue<string>() ?? string.Empty;
                _currentUserId = userId;
                string displayName = parsedDetails["global_name"]?.GetValue<string>() ?? string.Empty;
                string dscUserName = parsedDetails["username"]?.GetValue<string>() ?? string.Empty;

                var readyTask = WebSocketMgr.WaitUntilReady();
                var delayTask = Task.Delay(WARNING_WS_MS);

                if (await Task.WhenAny(readyTask, delayTask) == delayTask)
                {
                    OnWarning?.Invoke(this, new PluginMessageEventArgs(
                        "The WebSocket is taking an unusually long time to initialize. " +
                        "This could be due to slow internet speeds or Discord throttling the connection."));
                }

                if (!await readyTask)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs(
                        "The WebSocket failed to initialize. This could be due to network errors, an outdated network stack, or Discord forcibly closing the connection."));
                    return false;
                }

                string mainUsrStatus = WebSocketMgr.GetUserStatus("0");
                UserConnectionStatus mainStatusMapped = helperMethods.MapStatus(mainUsrStatus);

                MyInformation = new User(
                    HelperMethods.GetDisplayName(displayName, dscUserName), dscUserName, userId, WebSocketMgr.GetCustomStatus(userId), mainStatusMapped);

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(
                    $"Parse error: {ex.Message}\nResponse from server:\n{parsedDetails?.ToJsonString() ?? "null"}"));
                return false;
            }
        }

        public Task<bool> PopulateContactsList()
            => PopulateListsBackend(ListType.Contacts);

        public Task<bool> PopulateRecentsList()
            => PopulateListsBackend(ListType.Recents);

        internal static Dictionary<string, string> UserIdToChannelId = new Dictionary<string, string>();

        private async Task<bool> PopulateListsBackend(ListType lType)
        {
            try
            {
                var dscChannels = HelperMethods.GetUserChannels(
                    lType == ListType.Recents);

                foreach (var channel in dscChannels)
                {
                    int type = channel["type"]?.GetValue<int>() ?? 0;

                    if (type == DM_CHANNEL_TYPE)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        if (recipients is null || recipients.Count == 0) continue;

                        var recipient = recipients[0] as JsonObject;
                        if (recipient is null) continue;

                        string userId = recipient["id"]?.GetValue<string>();
                        string channelId = channel["id"]?.GetValue<string>();

                        if (!UserIdToChannelId.ContainsKey(userId))
                        {
                            UserIdToChannelId.Add(userId, channelId);
                        }

                        string displayName = recipient["global_name"]?.GetValue<string>();
                        string dscUserName = recipient["username"]?.GetValue<string>();
                        string avatarHash = recipient["avatar"]?.GetValue<string>();

                        if (lType == ListType.Recents)
                        {
                            _recentChannelMap[channelId] = userId;
                        }

                        byte[] avatarImage = await helperMethods.GetCachedAvatarAsync(userId, avatarHash, false);
                        string status = WebSocketMgr.GetUserStatus(userId);
                        string customStatus = WebSocketMgr.GetCustomStatus(userId);
                        var profileData = new User(displayName ?? dscUserName, dscUserName, userId, customStatus, helperMethods.MapStatus(status), avatarImage);

                        if (lType == ListType.Recents)
                            RecentsList.Add(profileData);
                        else
                            ContactsList.Add(profileData);
                    }
                    else if (type == GROUP_CHANNEL_TYPE)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        int recipientCount = recipients?.Count ?? 0;
                        int memberCount = recipientCount + 1;

                        User[] members = null;
                        if (recipients != null && recipients.Count > 0)
                        {
                            members = recipients
                                .OfType<JsonObject>()
                                .Select(r => new User(
                                    r["global_name"]?.GetValue<string>() ?? r["username"]?.GetValue<string>() ?? "Unknown",
                                    r["username"]?.GetValue<string>() ?? "Unknown",
                                    r["id"]?.GetValue<string>() ?? "0"
                                ))
                                .ToArray();
                        }

                        string channelId = channel["id"]?.GetValue<string>();
                        string groupName = channel["name"]?.GetValue<string>();
                        string avatarHash = channel["icon"]?.GetValue<string>();

                        if (lType == ListType.Recents)
                        {
                            _recentChannelMap[channelId] = null;
                        }

                        if (string.IsNullOrWhiteSpace(groupName))
                        {
                            var recipientNames = recipients?
                                .OfType<JsonObject>()
                                .Select(r =>
                                    r["global_name"]?.GetValue<string>() ??
                                    r["username"]?.GetValue<string>())
                                .Where(n => !string.IsNullOrWhiteSpace(n));

                            groupName = recipientNames is not null
                                        ? string.Join(", ", recipientNames)
                                        : "N/A";
                        }

                        byte[] avatarImage = await helperMethods.GetCachedAvatarAsync(channelId, avatarHash, true);
                        var profileData = new Group(groupName, channelId, memberCount, members, avatarImage);

                        if (lType == ListType.Recents)
                            RecentsList.Add(profileData);
                        else
                            ContactsList.Add(profileData);
                    }
                }
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Error while populating lists: {ex.Message}"));
                return false;
            }
            return true;
        }

        public async Task<bool> SetActiveConversation(string identifier)
        {
            TypingUsersList.Clear();
            ActiveConversation.Clear();

            if (!HelperMethods.TryToGetChannelId(identifier, out var channelId))
                return false;

            _activeChannelId = channelId;

            try
            {
                string json = await api.SendAPI(
                    $"/channels/{channelId}/messages?limit={MAX_MESSAGES_LIMIT}",
                    HttpMethod.Get,
                    DscToken,
                    null, null, null);

                var parsed = JsonNode.Parse(json);

                if (parsed is not JsonArray messages)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Unexpected response format: {json}"));
                    return false;
                }

                foreach (var node in messages.Reverse())
                {
                    var item = await DiscordMsgParser.ParseMessage(node);
                    if (item is not null)
                        ActiveConversation.Add(item);
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                _activeChannelId = null;
                return false;
            }
        }

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment, string parent_message_identifier)
        {
            if (string.IsNullOrWhiteSpace(identifier) || (string.IsNullOrWhiteSpace(text) && attachment is null))
                return false;

            if (!HelperMethods.TryToGetChannelId(identifier, out var channelId))
                return false;

            try
            {
                var locationOpt = new { location = "chat_input" };
                string jsonOpt = JsonSerializer.Serialize(locationOpt);
                string OptEncoded = Convert.ToBase64String(Encoding.UTF8.GetBytes(jsonOpt));

                var discordOpts = new Dictionary<string, string>
                {
                    { "X-Context-Properties", OptEncoded },
                };


                string fileName = null;
                object payloadJson = null;

                if (parent_message_identifier != null)
                    payloadJson = new { content = text ?? "", message_reference = new { message_id = parent_message_identifier } };
                else
                    payloadJson = new { content = text ?? "" };

                if (attachment is not null)
                {
                    fileName = attachment?.Name ?? "file";
                    if (attachment.Type != AttachmentType.Image && attachment.Type != AttachmentType.File)
                    {
                        OnWarning?.Invoke(this, new PluginMessageEventArgs($"Unsupported attachment type: {attachment.Type}. Discord supports image and file attachments.\n\nSending message without attachment."));
                        attachment = null;
                    }
                }

                string response = await api.SendAPI($"/channels/{channelId}/messages", HttpMethod.Post, DscToken, payloadJson, attachment is not null ? attachment.File : null, fileName, discordOpts).ConfigureAwait(false);
                return !string.IsNullOrEmpty(response) && !response.Contains("error", StringComparison.OrdinalIgnoreCase);
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        internal async Task<PreloadedUserSettings> FetchProtoSettings() // gets the latest proto settings from the server
        {
            // get current proto blob from Discord
            string current = await api.SendAPI(
                PROTO_ENDPOINT,
                HttpMethod.Get,
                DscToken,
                null, null, null).ConfigureAwait(false);

            if (string.IsNullOrWhiteSpace(current))
                return null;

            var json = JsonNode.Parse(current)?.AsObject();
            string base64 = json?["settings"]?.GetValue<string>();

            if (string.IsNullOrWhiteSpace(base64))
                return null;

            // decode proto
            byte[] bytes = Convert.FromBase64String(base64);
            return PreloadedUserSettings.Parser.ParseFrom(bytes);
        }

        internal async Task<bool> UpdateProtoSettings(PreloadedUserSettings settings) // updates the server proto settings blob 
        {
            // encode proto
            byte[] updatedBytes = settings.ToByteArray();
            string updatedBase64 = Convert.ToBase64String(updatedBytes);

            var body = new
            {
                settings = updatedBase64
            };

            // send updated proto
            string response = await api.SendAPI(
                PROTO_ENDPOINT,
                HttpMethod.Patch,
                DscToken,
                body,
                null, null, null).ConfigureAwait(false);

            Debug.WriteLine(response);
            return !response.Contains("message", StringComparison.OrdinalIgnoreCase);
        }

        public async Task<bool> SetPresenceStatus(UserConnectionStatus status) 
        {
            PreloadedUserSettings settings = new PreloadedUserSettings(); // create settings object
            settings.Status = new StatusSettings();

            // map to proto enum
            settings.Status.Status = status switch // update status
            {
                UserConnectionStatus.Online => "online",
                UserConnectionStatus.Away => "idle",
                UserConnectionStatus.DoNotDisturb => "dnd",
                UserConnectionStatus.Invisible => "invisible",
                UserConnectionStatus.Offline => "offline",
                _ => "offline"
            };

           return await UpdateProtoSettings(settings); // try push
        }


        public async Task<bool> SetTextStatus(string status)
        {
            if (String.IsNullOrEmpty(status)) return false;

            PreloadedUserSettings settings = new PreloadedUserSettings(); // create settings object
            settings.Status = new StatusSettings();

            settings.Status.CustomStatus.Text = status; // set text of status
            return await UpdateProtoSettings(settings); // try push
        }

        private bool ShouldNotify(HelperClasses.MessageReceivedEventArgs e)
        {
            // Get the channel info to check its type
            var privateChannels = WebSocketMgr.GetPrivateChannels();
            var channel = privateChannels
                .OfType<JsonObject>()
                .FirstOrDefault(c => c["id"]?.GetValue<string>() == e.ChannelId);

            if (channel != null)
            {
                int channelType = channel["type"]?.GetValue<int>() ?? -1;

                // Always notify for DMs (type 1) and Group DMs (type 3)
                if (channelType == 1 || channelType == 3)
                    return true;
            }

            // For server channels (guild channels), only notify if:
            // 1. User is mentioned in the content
            // 2. User is replied to

            string currentUserId = _currentUserId;

            // Check if replied to current user
            if (e.ParentMessage is not null && e.ParentMessage.Sender.Identifier == currentUserId)
                return true;

            // Check if current user is mentioned in the message
            if (!string.IsNullOrEmpty(e.Text) && e.Text.Contains($"<@{currentUserId}>"))
                return true;

            return false;
        }

        private void OnWebSocketMessageReceived(object sender, HelperClasses.MessageReceivedEventArgs e)
        {
            // Fire notification only for created messages
            if (e.EventType == MessageEventType.Create && ShouldNotify(e))
            {
                UserConnectionStatus status = helperMethods.MapStatus(
                    WebSocketMgr.GetUserStatus(e.Sender.Identifier)
                );

                Message message = new Message(
                    e.Identifier,
                    e.Sender,
                    e.Timestamp,
                    e.Text,
                    e.Attachments,
                    e.ParentMessage
                );

                Notification?.Invoke(this, new NotificationEventArgs(message, status, e.ChannelId));
            }

            // Ignore other channels
            if (e.ChannelId != _activeChannelId)
                return;

            _uiContext?.Post(_ =>
            {
                try
                {
                    switch (e.EventType)
                    {
                        case MessageEventType.Create:
                            {
                                // Remove typing indicator
                                var typingUser = TypingUsersList
                                    .FirstOrDefault(u => u.Identifier == e.Sender.Identifier);

                                if (typingUser is not null)
                                    TypingUsersList.Remove(typingUser);

                                if (_typingUsersPerChannel.TryGetValue(e.ChannelId, out var users))
                                    users.Remove(e.Sender.Identifier);

                                Message message = new Message(
                                    e.Identifier,
                                    e.Sender,
                                    e.Timestamp,
                                    e.Text,
                                    e.Attachments,
                                    e.ParentMessage
                                );

                                ActiveConversation.Add(message);
                                break;
                            }

                        case MessageEventType.Delete:
                            {
                                var existing = ActiveConversation
                                .OfType<Message>()
                                    .FirstOrDefault(m => m.Identifier == e.Identifier);

                                if (existing != null)
                                    ActiveConversation.Remove(existing);

                                break;
                            }

                        case MessageEventType.BulkDelete:
                            {
                                foreach (var id in e.BulkIdentifiers ?? Enumerable.Empty<string>())
                                {
                                    var msg = ActiveConversation
                                    .OfType<Message>()
                                        .FirstOrDefault(m => m.Identifier == id);

                                    if (msg != null)
                                        ActiveConversation.Remove(msg);
                                }

                                break;
                            }
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Message event handling error: {ex.Message}");
                }

            }, null);
        }

    }
}