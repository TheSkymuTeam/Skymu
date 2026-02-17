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
        public event EventHandler<NotificationEventArgs> Notification;
        public string Name { get { return "Discord"; } }
        public string InternalName { get { return "skymu-discord-plugin"; } }
        public string TextUsername { get { return "Token"; } }
        public AuthenticationMethod[] AuthenticationType { get { return new[] { AuthenticationMethod.Token }; } }

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

        // Magic numbers used for some stuff...
        private const int MAX_MESSAGES_LIMIT = 30;
        private const int WARNING_WS_MS = 5000;
        private const int DM_CHANNEL_TYPE = 1;
        private const int GROUP_CHANNEL_TYPE = 3;

        public ObservableCollection<UserData> TypingUsersList { get; private set; } = new ObservableCollection<UserData>();
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

        public UserData MyInformation { get; private set; }
        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();
        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();
        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

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

        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
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

        public Task<LoginResult> LoginOptStep(string code)
            => Task.FromResult(LoginResult.Success);

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            DscToken = autoLoginCredentials[0];
            if (string.IsNullOrWhiteSpace(DscToken))
            {
                return LoginResult.Failure;
            }

            return await StartClient().ConfigureAwait(false);
        }

        public Task<string[]> SaveAutoLoginCredential()
            => Task.FromResult(new[] { DscToken });

        public async Task<LoginResult> StartClient()
        {
            string userCheckTkn = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null).ConfigureAwait(false);
            if (userCheckTkn.Contains("username"))
            {
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
                    OnError?.Invoke(this, new PluginMessageEventArgs("An unknown error occurred during the login process. Please try again."));
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
                    "users/@me",
                    HttpMethod.Get,
                    DscToken,
                    null, null, null).ConfigureAwait(false);

                parsedDetails = JsonNode.Parse(userDetails).AsObject();

                string userId = parsedDetails["id"]?.GetValue<string>() ?? string.Empty;
                _currentUserId = userId;
                string displayName = parsedDetails["global_name"]?.GetValue<string>() ?? string.Empty;
                string dscUserName = parsedDetails["username"]?.GetValue<string>() ?? string.Empty;
                Stopwatch sw = Stopwatch.StartNew();

                var waitTask = WebSocketMgr.WaitUntilReady();

                _ = Task.Run(async () =>
                {
                    await Task.Delay(WARNING_WS_MS);  // wait X seconds
                    if (!waitTask.IsCompleted)        // still waiting?
                    {
                        OnWarning?.Invoke(this, new PluginMessageEventArgs(
                            "The WebSocket is taking an unusually long time to initialize. " +
                            "This could be due to slow internet speeds, an outdated network stack (Windows 7, or Discord forcibly closing the connection."));
                    }
                });

                if (!(await waitTask)) 
                { 
                    OnError?.Invoke(this, new PluginMessageEventArgs(
                        "The WebSocket failed to initialize. This could be due to network errors or Discord forcibly closing the connection."));
                }

                string mainUsrStatus = WebSocketMgr.GetUserStatus("0");
                UserConnectionStatus mainStatusMapped = helperMethods.MapStatus(mainUsrStatus);

                MyInformation = new UserData(
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
                        var profileData = new UserData(displayName ?? dscUserName, dscUserName, userId, customStatus, helperMethods.MapStatus(status), avatarImage);

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

                        UserData[] members = null;
                        if (recipients != null && recipients.Count > 0)
                        {
                            members = recipients
                                .OfType<JsonObject>()
                                .Select(r => new UserData(
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
                        var profileData = new GroupData(groupName, channelId, memberCount, members, avatarImage);

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
                    var item = await MessageParser.ParseMessage(node);
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

        public async Task<bool> SendMessage(string identifier, string text)
        {
            if (string.IsNullOrWhiteSpace(identifier) || string.IsNullOrWhiteSpace(text))
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

                var messageBody = new { content = text };
                string response = await api.SendAPI($"/channels/{channelId}/messages", HttpMethod.Post, DscToken, messageBody, null, null, discordOpts).ConfigureAwait(false);

                return !string.IsNullOrEmpty(response) && !response.Contains("error", StringComparison.OrdinalIgnoreCase);
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
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
            if (e.ParentMessage.Sender.Identifier == currentUserId)
                return true;

            // Check if current user is mentioned in the message
            if (!string.IsNullOrEmpty(e.Text) && e.Text.Contains($"<@{currentUserId}>"))
                return true;

            return false;
        }

        private void OnWebSocketMessageReceived(object sender, HelperClasses.MessageReceivedEventArgs e)
        {
            // Fire notification for all messages (before filtering by active channel)
            if (ShouldNotify(e))
            {
                UserConnectionStatus status = helperMethods.MapStatus(
                    WebSocketMgr.GetUserStatus(e.Sender.Identifier)
                );

                MessageItem message = new MessageItem(
                        e.Identifier,
                        e.Sender,
                        e.Timestamp,
                        e.Text,
                        e.Attachments,
                        e.ParentMessage
                        );

                Notification?.Invoke(this, new NotificationEventArgs(message, status, e.ChannelId));
            }

            // Only add messages if they're for the currently active channel
            if (e.ChannelId != _activeChannelId) return;

            _uiContext?.Post(_ =>
            {
                var typingUser = TypingUsersList.FirstOrDefault(u => u.Identifier == e.Sender.Identifier);
                if (typingUser is not null)
                    TypingUsersList.Remove(typingUser);

                if (_typingUsersPerChannel.TryGetValue(e.ChannelId, out var users))
                    users.Remove(e.Sender.Identifier);

                try
                {
                    MessageItem message = new MessageItem(
                        e.Identifier,
                        e.Sender,
                        e.Timestamp,
                        e.Text,
                        e.Attachments,
                        e.ParentMessage
                        );

                    ActiveConversation.Add(message);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error adding message to conversation: {ex.Message}");
                }
            }, null);
        }
    }
}