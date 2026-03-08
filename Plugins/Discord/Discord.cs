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

using Discord.Classes;
using DiscordProtos.DiscordUsers.V1;
using Google.Protobuf;
using MiddleMan;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Tasks;

namespace Discord
{
    public class Core : ICore
    {
        // Plugin details
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;
        public string Name { get { return "Discord"; } }
        public string InternalName { get { return "skymu-discord-plugin"; } }
        public bool SupportsServers { get { return true; } }
        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[]
                {
                    new AuthTypeInfo(AuthenticationMethod.Token, "Token"),
                    new AuthTypeInfo(AuthenticationMethod.QRCode, "Username")
                };
            }
        }

        // Initialize API classes and strings
        // The Discord token used by all of the Discord plugin
        public string DscToken;
        // We reuse this to avoid creating more API instances, which is quite heavy
        internal static readonly API api = new API();
        internal AuthSocket socket = new AuthSocket();
        // Track the active channel ID for real-time updates
        private string _activeChannelId;
        public SynchronizationContext _uiContext;
        // This is to verify what users is in the recents list, used for message handling in WebSockets so we can refresh the list
        public readonly Dictionary<string, string> _recentChannelMap = new();
        // The current user
        private User _currentUser;

        // Magic numbers used for some stuff...
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

        public ObservableCollection<Server> ServerList { get; private set; } = new ObservableCollection<Server>();


        public async Task<bool> PopulateServerList()
        {
            try
            {
                ServerList?.Clear();

                var guilds = WebSocketMgr.GetGuilds();

                foreach (var guildNode in guilds.OfType<JsonObject>())
                {
                    string guildId = guildNode["id"]?.GetValue<string>();
                    string guildName = guildNode["name"]?.GetValue<string>();
                    string iconHash = guildNode["icon"]?.GetValue<string>();

                    if (string.IsNullOrWhiteSpace(guildId)) continue;

                    byte[] guildAvatar = await HelperMethods.GetCachedAvatarAsync(guildId, iconHash, false, true);

                    var channelList = new List<ServerChannel>();
                    if (guildNode["channels"] is JsonArray channels)
                    {
                        foreach (var ch in channels.OfType<JsonObject>())
                        {
                            string channelId = ch["id"]?.GetValue<string>();
                            string channelName = ch["name"]?.GetValue<string>();
                            if (string.IsNullOrWhiteSpace(channelId)) continue;


                            // Determine channel type
                            int typeValue = -1;
                            if (!int.TryParse(ch["type"]?.ToString(), out typeValue))
                                typeValue = -1;

                            ChannelType channelType;

                            switch (typeValue)
                            {
                                case 0: // Text channel, forum, etc
                                    channelType = ChannelType.Standard;

                                    // Only check @everyone overwrites for read-only  
                                    bool everyoneDeniesSend = false;
                                    if (ch["permission_overwrites"] is JsonArray perms)
                                    {
                                        foreach (var perm in perms.OfType<JsonObject>())
                                        {
                                            string permId = perm["id"]?.GetValue<string>() ?? "";
                                            if (permId != guildId) continue; // @everyone only  

                                            int deny = 0;
                                            int.TryParse(perm["deny"]?.ToString(), out deny);

                                            const int sendMessages = 0x400;
                                            if ((deny & sendMessages) != 0)
                                                everyoneDeniesSend = true;
                                        }
                                    }

                                    // Mark as read-only only if @everyone denies AND no role allows it  
                                    if (everyoneDeniesSend)
                                        channelType = ChannelType.ReadOnly;
                                    break;

                                case 2: // voice channel  
                                    channelType = ChannelType.Voice;
                                    break;

                                case 4: // category 
                                    continue; // skip

                                case 5: // announcement/news channel  
                                    channelType = ChannelType.Announcement;
                                    break;

                                case 15:
                                    channelType = ChannelType.Forum;
                                    break;

                                default:
                                    channelType = ChannelType.NoAccess;
                                    break;
                            }

                            channelList.Add(new ServerChannel(channelName, channelId, guildId, 0, channelType));
                        }
                    }

                    ServerList.Add(new Server(guildName, guildId, null, channelList.ToArray(), guildAvatar));
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to populate servers: {ex.Message}"));
                return false;
            }
        }

        public User MyInformation { get; private set; }
        public ObservableCollection<Conversation> ContactsList { get; private set; } = new ObservableCollection<Conversation>();
        public ObservableCollection<Conversation> RecentsList { get; private set; } = new ObservableCollection<Conversation>();

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
            if (authType == AuthenticationMethod.Token) DscToken = username;
            else if (authType == AuthenticationMethod.QRCode) return LoginResult.TwoFARequired;
            else return LoginResult.UnsupportedAuthType;

            return await StartClient();
        }

        public string GetActiveChannelID()
        {
            return _activeChannelId;
        }

        public async Task<string> GetQRCode()
        {
            var tcs = new TaskCompletionSource<string>();
            EventHandler<string> handler = null;
            handler = (sender, message) =>
            {
                socket.QRCodeGenerated -= handler;
                tcs.SetResult(message);
            };
            socket.QRCodeGenerated += handler;
            await socket.StartSocket();
            return await tcs.Task;
        }

        public Task<LoginResult> AuthenticateTwoFA(string code)
        {
            var tcs = new TaskCompletionSource<LoginResult>();

            EventHandler<string> completedHandler = null;
            completedHandler = async (sender, message) =>
            {
                // Unsubscribe both handlers
                socket.TokenRecieved -= completedHandler;

                DscToken = message;
                var loginResult = await StartClient();
                tcs.SetResult(loginResult);
            };
            socket.TokenRecieved += completedHandler;

            return tcs.Task;
        }

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
            => Task.FromResult(new SavedCredential(_currentUser.Username, DscToken, AuthenticationMethod.Token));

        public async Task<LoginResult> StartClient()
        {
            string userCheckTkn = await api.SendAPI(USERS_ME, HttpMethod.Get, DscToken, null, null, null).ConfigureAwait(false);
            if (userCheckTkn.Contains("username"))
            {
                // Parse and store details
                var parsedUser = JsonNode.Parse(userCheckTkn).AsObject();
                _currentUser = new User(null, parsedUser["username"]?.GetValue<string>() ?? "Anonymous", null); // temp just for StoreCredential

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
                    OnError?.Invoke(this, new PluginMessageEventArgs("Could not communicate with Discord's servers. Check your internet connection and proxy settings."));
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

                string global_name = parsedDetails["global_name"]?.GetValue<string>() ?? parsedDetails["username"]?.GetValue<string>() ?? "Anonymous";
                string username = parsedDetails["username"]?.GetValue<string>() ?? "Anonymous";
                string identifier = parsedDetails["id"]?.GetValue<string>();
                UserConnectionStatus status = HelperMethods.MapStatus(WebSocketMgr.GetUserStatus("0"));
                string custom_status = WebSocketMgr.GetCustomStatus(identifier);

                MyInformation = _currentUser = new User(global_name, username, identifier, custom_status, status); ;

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
                        if (recipients == null || recipients.Count == 0) continue;

                        var recipient = recipients[0] as JsonObject;
                        if (recipient == null) continue;

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

                        byte[] avatarImage = await HelperMethods.GetCachedAvatarAsync(userId, avatarHash, false);
                        string status = WebSocketMgr.GetUserStatus(userId);
                        string customStatus = WebSocketMgr.GetCustomStatus(userId);
                        var profileData = new User(displayName ?? dscUserName, dscUserName, userId, customStatus, HelperMethods.MapStatus(status), avatarImage);

                        if (lType == ListType.Recents)
                            RecentsList.Add(new DirectMessage(profileData, 0, channelId));
                        else
                            ContactsList.Add(new DirectMessage(profileData, 0, channelId));
                    }
                    else if (type == GROUP_CHANNEL_TYPE)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        int recipientCount = recipients?.Count ?? 0;

                        User[] members = null;

                        if (recipients != null && recipients.Count > 0)
                        {
                            User[] temp = recipients
                                .OfType<JsonObject>()
                                .Select(r => new User(
                                    r["global_name"]?.GetValue<string>() ?? r["username"]?.GetValue<string>() ?? "Unknown",
                                    r["username"]?.GetValue<string>() ?? "Unknown",
                                    r["id"]?.GetValue<string>() ?? "0"
                                ))
                                .ToArray();

                            members = new User[temp.Length + 1];

                            members[0] = _currentUser;
                            Array.Copy(temp, 0, members, 1, temp.Length);
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

                            groupName = recipientNames != null
                                        ? string.Join(", ", recipientNames)
                                        : "N/A";
                        }

                        byte[] avatarImage = await HelperMethods.GetCachedAvatarAsync(channelId, avatarHash, true);
                        var profileData = new Group(groupName, channelId, 0, members, avatarImage);

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

        public async Task<ConversationItem[]> FetchMessages(Conversation conversation, Fetch fetch_type, int message_count, string identifier)
        {
            TypingUsersList.Clear();
            List<ConversationItem> messageList = new List<ConversationItem>();

            if (!HelperMethods.TryToGetChannelId(conversation.Identifier, out var channelId) || fetch_type == Fetch.Oldest) // not implemented in discord
                return new ConversationItem[0];

            _activeChannelId = channelId;
            string parameters = $"/channels/{channelId}/messages?limit={message_count}";
            if (fetch_type == Fetch.AfterIdentifier) parameters += "&after=" + identifier;
            else if (fetch_type == Fetch.BeforeIdentifier) parameters += "&before=" + identifier;

            try
            {
                string json = await api.SendAPI(
                    parameters,
                    HttpMethod.Get,
                    DscToken,
                    null, null, null);

                var parsed = JsonNode.Parse(json);

                if (parsed is not JsonArray messages)
                {
                    if (parsed is JsonObject msg)
                    {
                        string text = String.Empty;
                        switch (msg["code"].GetValue<int>())
                        {
                            case 50001:
                                text = "You do not have access to this channel.";
                                break;
                            default:
                                text = $"Discord says: {msg["message"].GetValue<string>()}\n\nError code {msg["code"].GetValue<string>()}";
                                break;
                        }
                        OnWarning?.Invoke(this, new PluginMessageEventArgs(text));
                    }
                    else
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs($"Unexpected response format: {json}"));
                    }
                    return new ConversationItem[0];
                }

                foreach (var node in messages.Reverse())
                {
                    var item = await DiscordMsgParser.ParseMessage(node);
                    if (item != null)
                        messageList.Add(item);
                }

                return messageList.ToArray();
            }
            catch (Exception ex)
            {
                string message = $"Failed to load conversation: {ex.Message}";
                if (message.Contains("is an invalid start of a value")) message = "You are not connected to the internet, or Discord's servers are down.";
                OnError?.Invoke(this, new PluginMessageEventArgs(message));
                _activeChannelId = null;
                return new ConversationItem[0];
            }
        }

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment, string parent_message_identifier)
        {
            if (string.IsNullOrWhiteSpace(identifier) || (string.IsNullOrWhiteSpace(text) && attachment == null))
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

                if (attachment != null)
                {
                    fileName = attachment?.Name ?? "file";
                    if (attachment.Type != AttachmentType.Image && attachment.Type != AttachmentType.File)
                    {
                        OnWarning?.Invoke(this, new PluginMessageEventArgs($"Unsupported attachment type: {attachment.Type}. Discord supports image and file attachments.\n\nSending message without attachment."));
                        attachment = null;
                    }
                }

                string response = await api.SendAPI($"/channels/{channelId}/messages", HttpMethod.Post, DscToken, payloadJson, attachment != null ? attachment.File : null, fileName, discordOpts).ConfigureAwait(false);
                return !string.IsNullOrEmpty(response) && !response.Contains("error");
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

            HttpMethod Patch = new HttpMethod("PATCH"); // net standard compat

            // send updated proto
            string response = await api.SendAPI(
                PROTO_ENDPOINT,
                Patch,
                DscToken,
                body,
                null, null, null).ConfigureAwait(false);

            Debug.WriteLine(response);
            return !response.Contains("message");
        }

        public async Task<bool> SetPresenceStatus(UserConnectionStatus status)
        {
            PreloadedUserSettings settings = new PreloadedUserSettings(); // create settings object
            settings.Status = new PreloadedUserSettings.Types.StatusSettings();

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
            settings.Status = new PreloadedUserSettings.Types.StatusSettings();

            settings.Status.CustomStatus.Text = status; // set text of status
            return await UpdateProtoSettings(settings); // try push
        }

        private void OnWebSocketMessageReceived(object sender, HelperClasses.DiscordMessageReceivedEventArgs e)
        {
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
                                var typingUser = TypingUsersList
                                    .FirstOrDefault(u => u.Identifier == e.Sender.Identifier);
                                if (typingUser != null)
                                    TypingUsersList.Remove(typingUser);
                                if (_typingUsersPerChannel.TryGetValue(e.ChannelId, out var users))
                                    users.Remove(e.Sender.Identifier);

                                var message = new Message(
                                    e.Identifier,
                                    e.Sender,
                                    e.Timestamp,
                                    e.Text,
                                    e.Attachments,
                                    e.ParentMessage
                                );
                                MessageEvent?.Invoke(this, new MessageRecievedEventArgs(e.ChannelId, message));
                                break;
                            }

                        case MessageEventType.Update:
                            {
                                var message = new Message(
                                    e.Identifier,
                                    e.Sender,
                                    e.Timestamp,
                                    e.Text,
                                    e.Attachments,
                                    e.ParentMessage
                                );
                                MessageEvent?.Invoke(this, new MessageEditedEventArgs(e.ChannelId, e.Identifier, message));
                                break;
                            }

                        case MessageEventType.Delete:
                            {
                                MessageEvent?.Invoke(this, new MessageDeletedEventArgs(e.ChannelId, e.Identifier));
                                break;
                            }

                        case MessageEventType.BulkDelete:
                            {
                                foreach (var id in e.BulkIdentifiers ?? Enumerable.Empty<string>())
                                    MessageEvent?.Invoke(this, new MessageDeletedEventArgs(e.ChannelId, id));
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