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

        // Magic numbers used for some stuff...
        private const int MAX_MESSAGES_LIMIT = 30;
        private const int WEBSOCKET_TIMEOUT_RETRIES = 75;
        private const int RETRY_DELAY_MS = 75;
        private const int DM_CHANNEL_TYPE = 1;
        private const int GROUP_CHANNEL_TYPE = 3;

        public ObservableCollection<ProfileData> TypingUsersList { get; private set; } = new ObservableCollection<ProfileData>();
        public readonly Dictionary<string, HashSet<string>> _typingUsersPerChannel = new();

        public ClickableConfiguration[] ClickableConfigurations
        {
            get
            {
                return new ClickableConfiguration[]
                {
                    new ClickableDelimitationConfiguration
                    {
                        DelimiterLeft  = '<',
                        DelimiterRight = '>',
                        ClickableItems = new[]
                        {
                            new ClickableItemConfiguration(ClickableItemType.User, "@!"),
                            new ClickableItemConfiguration(ClickableItemType.User, "@"),
                            new ClickableItemConfiguration(ClickableItemType.ServerRole, "@&"),
                            new ClickableItemConfiguration(ClickableItemType.ServerChannel, "#")
                        }
                    }
                };
            }
        }

        public SidebarData SidebarInformation { get; private set; }
        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();
        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();
        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        private enum ListType
        {
            Contacts,
            Recents
        }

        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            DscToken = username;
            return await StartClient();
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
                string displayName = parsedDetails["global_name"]?.GetValue<string>() ?? string.Empty;
                string dscUserName = parsedDetails["username"]?.GetValue<string>() ?? string.Empty;

                if (!await WebSocketMgr.WaitUntilReady(
                        WEBSOCKET_TIMEOUT_RETRIES,
                        RETRY_DELAY_MS).ConfigureAwait(false))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs(
                        "The WebSocket failed to initialize in time. This could be because of slow internet speeds, or Discord forcibly closing the connection."));
                    return false;
                }

                string mainUsrStatus = WebSocketMgr.GetUserStatus("0");
                int mainStatusMapped = helperMethods.MapStatus(mainUsrStatus);

                SidebarInformation = new SidebarData(
                    HelperMethods.GetDisplayName(displayName, dscUserName), userId, "$0.00 - No subscription", mainStatusMapped);

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
                        string combinedId = $"{userId};{channelId}";
                        string displayName = recipient["global_name"]?.GetValue<string>();
                        string dscUserName = recipient["username"]?.GetValue<string>();
                        string avatarHash = recipient["avatar"]?.GetValue<string>();

                        if (lType == ListType.Recents)
                        {
                            _recentChannelMap[channelId] = userId;
                        }

                        var profileData = await CreateProfileData(helperMethods, userId, combinedId, displayName, dscUserName, avatarHash);

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

                        string combinedId = $"group;{channelId}";

                        var profileData = await CreateProfileData(
                            helperMethods, channelId, combinedId, groupName, null, avatarHash, true, $"{memberCount} members");

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
                    if (item != null)
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

        private async Task<ProfileData> CreateProfileData(HelperMethods helperMtds, string userId, string combinedId, string displayName, string username, string avatarHash, bool isGC = false, string setStatus = null)
        {
            byte[] avatarImage = null;

            string userStatusString = WebSocketMgr.GetUserStatus(userId);
            int userStatus = isGC
                ? UserConnectionStatus.Group
                : helperMtds.MapStatus(userStatusString);
            string customStatusString = WebSocketMgr.GetCustomStatus(userId);

            if (!string.IsNullOrEmpty(avatarHash))
            {
                avatarImage = await helperMtds.GetCachedAvatarAsync(userId, avatarHash, isGC).ConfigureAwait(false);
            }

            return new ProfileData(
                string.IsNullOrEmpty(displayName) ? username : displayName,
                combinedId,
                customStatusString ?? setStatus,
                userStatus,
                avatarImage
            );
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

        private void OnWebSocketMessageReceived(object sender, HelperClasses.MessageReceivedEventArgs e)
        {
            // Only add messages if they're for the currently active channel
            if (e.ChannelId != _activeChannelId) return;

            _uiContext?.Post(_ =>
            {
                var typingUser = TypingUsersList.FirstOrDefault(u => u.Identifier == e.AuthorId);
                if (typingUser != null)
                    TypingUsersList.Remove(typingUser);

                if (_typingUsersPerChannel.TryGetValue(e.ChannelId, out var users))
                    users.Remove(e.AuthorId);

                try
                {
                    var messageItem = new MessageItem(
                        e.MessageId, e.AuthorId, e.AuthorName,
                        e.Timestamp, e.Content, e.Media,
                        e.ReplyToId, e.ReplyToName, e.ReplyMsgContent);

                    ActiveConversation.Add(messageItem);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error adding message to conversation: {ex.Message}");
                }
            }, null);
        }
    }
}