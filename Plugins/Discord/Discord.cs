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
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection.Metadata;
using System.Text.Json.Nodes;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;

namespace Discord
{
    public class Core : ICore, INotifyPropertyChanged
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
        // We reuse this to avoid creating more WebSocket instances, which is quite heavy
        private static WebSocket _webSocket;
        internal static WebSocket WebSocket => _webSocket;
        // We reuse this to avoid creating more API instances, which is quite heavy
        internal static readonly API api = new API();
        // We reuse this to avoid creating more OOTB instances, despite being lightweight
        private readonly pluginOOTBStuff _ootb = new pluginOOTBStuff();
        // Track the active channel ID for real-time updates
        private string _activeChannelId;
        private SynchronizationContext _uiContext;
        // This is to verify what users is in the recents list, used for message handling in WebSockets so we can refresh the list
        public readonly Dictionary<string, string?> _recentChannelMap = new();

        private bool _isTyping;
        public bool IsTyping
        {
            get => _isTyping;
            private set
            {
                if (_isTyping == value) return;
                _isTyping = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(IsTyping)));
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;

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

        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            DscToken = username;

            return await StartClient();
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        private void SubscribeToWebSocketEvents()
        {
            if (_webSocket is not null)
            {
                _webSocket.MessageReceived += OnWebSocketMessageReceived;
            }
        }

        private void OnWebSocketMessageReceived(object sender, MessageReceivedEventArgs e)
        {
            if (_recentChannelMap.ContainsKey(e.ChannelId))
            {
                // TouchRecent(e.ChannelId); // Reimplement this in the UI not in the plugin please
            }

            // Only add messages if they're for the currently active channel
            if (e.ChannelId == _activeChannelId)
            {
                try
                {
                    var messageItem = new MessageItem(e.MessageId, e.AuthorId, e.AuthorName, e.Content, e.Timestamp, e.ReplyToId, e.ReplyToName, e.ReplyMsgContent);

                    _uiContext.Post(_ => ActiveConversation.Add(messageItem), null);

                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error adding message to conversation: {ex.Message}");
                }
            }
        }

        public async Task<bool> SendMessage(string identifier, string text)
        {
            if (string.IsNullOrEmpty(identifier) || string.IsNullOrEmpty(text))
                return false;

            string[] parts = identifier.Split(';');
            if (parts.Length < 2)
                return false;

            string channelId = parts[1];

            try
            {
                var messageBody = new { content = text };
                string response = await api.SendAPI($"/channels/{channelId}/messages", HttpMethod.Post, DscToken, messageBody).ConfigureAwait(false);

                return !string.IsNullOrEmpty(response) && !response.Contains("error");
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(string identifier)
        {
            ActiveConversation.Clear();
            if (string.IsNullOrEmpty(identifier))
            {
                _activeChannelId = null;
                return false;
            }

            string[] parts = identifier.Split(';');
            if (parts.Length < 2)
            {
                _activeChannelId = null;
                return false;
            }

            string channelId = parts[1];
            _activeChannelId = channelId; // Store the active channel ID for WebSocket filtering

            try
            {
                // Fetch initial message history
                string conversation = await api.SendAPI($"/channels/{channelId}/messages?limit=100", HttpMethod.Get, DscToken, null, null, null);
                var parsedJson = JsonNode.Parse(conversation);

                if (parsedJson is not JsonArray messages)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Unexpected response format: {conversation}"));
                    return false;
                }

                var sortedMessages = messages.Reverse();
                foreach (var message in sortedMessages)
                {
                    string messageId = message["id"]?.GetValue<string>() ?? "0";
                    string authorName = message["member"]?["nick"]?.GetValue<string>()
                       ?? message["author"]["global_name"]?.GetValue<string>()
                       ?? message["author"]["username"]?.GetValue<string>()
                       ?? "[unknown user]";
                    string authorId = message["author"]["id"]?.GetValue<string>() ?? "0";
                    string content = message["content"]?.GetValue<string>() ?? "";
                    var mentions = message["mentions"] as JsonArray;
                    content = MentionsReplaceIDWithUsername(mentions, content);
                    if (message["attachments"] is JsonArray attachments && attachments.Count > 0) // image placeholder
                    {
                        content = string.IsNullOrEmpty(content) ? "[image]" : "[image] " + content;
                    }
                    string timestampStr = message["timestamp"]?.GetValue<string>();

                    DateTime timestamp = DateTime.UtcNow;
                    if (!string.IsNullOrEmpty(timestampStr))
                    {
                        DateTime.TryParse(timestampStr, out timestamp);
                    }

                    // Handle reply/reference information
                    string replyToId = null;
                    string replyToName = null;
                    string replyMsgContent = null;

                    var referencedMessage = message["referenced_message"];
                    if (referencedMessage is not null)
                    {
                        replyToId = referencedMessage["author"]?["id"]?.GetValue<string>();
                        replyToName = referencedMessage["member"]?["nick"]?.GetValue<string>()
                       ?? referencedMessage["author"]["global_name"]?.GetValue<string>()
                       ?? referencedMessage["author"]["username"]?.GetValue<string>()
                       ?? "[unknown user]";
                        replyMsgContent = referencedMessage["content"]?.GetValue<string>() ?? "[unavailable]";
                        var refMentions = referencedMessage["mentions"] as JsonArray;
                        replyMsgContent = MentionsReplaceIDWithUsername(refMentions, replyMsgContent);
                    }

                    ActiveConversation.Add(new MessageItem(
                        messageID: messageId,
                        sentByIdentifier: authorId,
                        sentByDisplayName: authorName,
                        body: content,
                        time: timestamp,
                        replyToIdentifier: replyToId,
                        replyToDisplayName: replyToName,
                        replyToBody: replyMsgContent
                    ));
                }

                // Now the WebSocket event handler will automatically add new messages
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                _activeChannelId = null;
                return false;
            }
        }

        internal static string MentionsReplaceIDWithUsername(JsonArray mentions, string content)
        {
            if (mentions != null)
            {
                foreach (var mention in mentions)
                {
                    string id = mention["id"]?.GetValue<string>();
                    if (id == null) continue;

                    string displayName = mention["member"]?["nick"]?.GetValue<string>()
                                         ?? mention["global_name"]?.GetValue<string>()
                                         ?? mention["username"]?.GetValue<string>()
                                         ?? "Unknown";

                    content = Regex.Replace(
                        content,
                        $@"<@!?{Regex.Escape(id)}>",
                        $"<@{displayName}>"
                    );
                }
            }
            return content;
        }

        public SidebarData SidebarInformation { get; private set; }

        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();

        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current; // this really should be moved
            // User details
            string globalName;
            string username;
            string id;
            JsonObject parsedJson = new JsonObject();
            int mainUsrStatusSkymu = 0;

            // Personal user details like the username and also Skymu online server count
            try
            {
                string userDetails = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null).ConfigureAwait(false);
                parsedJson = JsonNode.Parse(userDetails).AsObject();
                id = parsedJson["id"]?.GetValue<string>() ?? String.Empty;
                globalName = parsedJson["global_name"]?.GetValue<string>() ?? String.Empty;
                username = parsedJson["username"]?.GetValue<string>() ?? String.Empty;

                int timeout = 100; // 3 seconds
                while (!WebSocket.CanCheckData && timeout > 0)
                {
                    await Task.Delay(100).ConfigureAwait(false);
                    timeout--;
                }

                if (!WebSocket.CanCheckData)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("The WebSocket failed to initialize in time. This could be because of slow internet speeds, or Discord forcibly closing the connection."));
                    return false;
                }

                string mainUsrStatus = WebSocket.UserStatusStore.GetStatus("0");
                mainUsrStatusSkymu = _ootb.MapStatus(mainUsrStatus);
            }
            catch (Exception ex)
            {

                OnError?.Invoke(this, new PluginMessageEventArgs($"Parse error: {ex.Message}\nResponse from server:\n" + parsedJson.ToJsonString()));
                return false;
            }

            SidebarInformation = new SidebarData(string.IsNullOrEmpty(globalName) ? username : globalName, id, "$0.00 - No subscription", mainUsrStatusSkymu);
            return true;
        }

        private enum ListType
        {
            Contacts,
            Recents
        }

        public async Task<bool> PopulateContactsList()
        {
            return await PopulateListsBackend(ListType.Contacts);
        }

        public async Task<bool> PopulateRecentsList()
        {
            return await PopulateListsBackend(ListType.Recents);
        }

        private async Task<bool> PopulateListsBackend(ListType lType)
        {
            try
            {
                var privateChannels = WebSocket.privateChannelsData as JsonArray ?? new JsonArray();
                var allChannels = privateChannels
                    .OfType<JsonObject>()
                    .Where(c => c["type"]?.GetValue<int>() == 1 || c["type"]?.GetValue<int>() == 3);

                if (lType == ListType.Recents)
                {
                    allChannels = allChannels
                        .OrderByDescending(c => c["last_message_id"]?.GetValue<string>() ?? "0");
                }

                foreach (var channel in allChannels)
                {
                    int type = channel["type"]?.GetValue<int>() ?? 0;

                    if (type == 1)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        if (recipients is null || recipients.Count == 0) continue;

                        var recipient = recipients[0] as JsonObject;
                        if (recipient is null) continue;

                        string userId = recipient["id"]?.GetValue<string>();
                        string channelId = channel["id"]?.GetValue<string>();
                        string skymuId = $"{userId};{channelId}";
                        string globalName = recipient["global_name"]?.GetValue<string>();
                        string username = recipient["username"]?.GetValue<string>();
                        string avatarHash = recipient["avatar"]?.GetValue<string>();

                        if (lType == ListType.Recents)
                        {
                            _recentChannelMap[channelId] = userId;
                        }

                        var profileData = await CreateProfileDataAsync(_ootb, userId, skymuId, globalName, username, avatarHash);

                        if (lType == ListType.Recents)
                            RecentsList.Add(profileData);
                        else
                            ContactsList.Add(profileData);
                    }
                    else if (type == 3)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        int recipientCount = recipients?.Count ?? 0;
                        int memberCount = recipientCount + 1;

                        string channelId = channel["id"]?.GetValue<string>();
                        string name = channel["name"]?.GetValue<string>();
                        string avatarHash = channel["icon"]?.GetValue<string>();

                        if (lType == ListType.Recents)
                        {
                            _recentChannelMap[channelId] = null;
                        }

                        if (string.IsNullOrWhiteSpace(name))
                        {
                            var recipientNames = recipients?
                                .OfType<JsonObject>()
                                .Select(r =>
                                    r["global_name"]?.GetValue<string>() ??
                                    r["username"]?.GetValue<string>())
                                .Where(n => !string.IsNullOrWhiteSpace(n));

                            name = recipientNames is not null
                                ? string.Join(", ", recipientNames)
                                : "N/A";
                        }

                        string skymuId = $"group;{channelId}";

                        var profileData = await CreateProfileDataAsync(
                            _ootb, channelId, skymuId, name, name, avatarHash, true, $"{memberCount} members");

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

        private void TouchRecent(string channelId)
        {
            if (string.IsNullOrEmpty(channelId))
                return;

            ProfileData existing = null;

            foreach (var item in RecentsList)
            {
                if (item.Identifier is not null && item.Identifier.EndsWith(";" + channelId))
                {
                    existing = item;
                    break;
                }
            }

            if (existing is null)
                return;

            if (RecentsList.IndexOf(existing) == 0)
                return;

            bool isActiveChannel = channelId == _activeChannelId;

            void MoveToTop()
            {
                RecentsList.Remove(existing);
                RecentsList.Insert(0, existing);

                if (isActiveChannel)
                {
                    // TODO: Implement something in the GUI that lets me reselect an item visually but not actually
                    //       OmegaAOL can you do this please? Would be really helpfull
                }
            }


            _uiContext?.Post(_ => MoveToTop(), null);

        }

        private async Task<ProfileData> CreateProfileDataAsync(pluginOOTBStuff ootb, string userId, string skymuId, string globalName, string username, string avatarHash, bool isGC = false, string manualStatus = null)
        {
            byte[] avatarImage = null;

            string statusStr = WebSocket.UserStatusStore.GetStatus(userId);
            int userStatus;
            if (isGC) userStatus = UserConnectionStatus.Group;
            else userStatus = ootb.MapStatus(statusStr);
            string custStatusStr = WebSocket.UserStatusStore.GetCustomStatus(userId);

            if (!string.IsNullOrEmpty(avatarHash))
            {
                avatarImage = await ootb.GetCachedAvatarAsync(userId, avatarHash, isGC).ConfigureAwait(false);
            }

            return new ProfileData(
                string.IsNullOrEmpty(globalName) ? username : globalName,
                skymuId,
                custStatusStr ?? manualStatus,
                userStatus,
                avatarImage
            );
        }

        public async Task<string[]> SaveAutoLoginCredential()
        {
            return new string[] { DscToken };
        }

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            DscToken = autoLoginCredentials[0];
            if (string.IsNullOrWhiteSpace(DscToken))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Your saved Discord token appears to be invalid or has expired. Please log in again."));
                return LoginResult.Failure;
            }

            return await StartClient().ConfigureAwait(false);
        }

        public async Task<LoginResult> StartClient()
        {
            string userCheckTkn = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null).ConfigureAwait(false);
            if (userCheckTkn.Contains("username"))
            {
                if (_webSocket is null)
                {
                    _webSocket = new WebSocket(DscToken);
                    SubscribeToWebSocketEvents();
                }

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

        // This is used for any custom stuff needed by the Discord plugin.
        public class pluginOOTBStuff
        {
            private readonly string cacheDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "avatar-cache");
            private static readonly HttpClient _httpClient = new HttpClient();

            public pluginOOTBStuff()
            {
                // Make sure the cache directory exists
                Directory.CreateDirectory(cacheDir);
            }

            // So we don't have to fetch the data everytime
            public async Task<byte[]> GetCachedAvatarAsync(string userId, string hash, bool isGC)
            {
                string cachedFile = Path.Combine(cacheDir, $"{hash}-{userId}.png");

                if (File.Exists(cachedFile))
                    return await File.ReadAllBytesAsync(cachedFile);

                string pattern = $"*-{userId}.png";
                foreach (var file in Directory.GetFiles(cacheDir, pattern))
                {
                    if (file != cachedFile)
                        File.Delete(file);
                }

                string url = GetAvatarUrl(userId, hash, false, isGC);
                byte[] data = await _httpClient.GetByteArrayAsync(url).ConfigureAwait(false);
                await File.WriteAllBytesAsync(cachedFile, data).ConfigureAwait(false);
                return data;
            }

            public int MapStatus(string statusStr)
            {
                return statusStr switch
                {
                    "online" => UserConnectionStatus.Online,
                    "idle" => UserConnectionStatus.Away,
                    "dnd" => UserConnectionStatus.DoNotDisturb,
                    "offline" => UserConnectionStatus.Invisible,
                    _ => UserConnectionStatus.Invisible
                };
            }

            public string GetAvatarUrl(string Id, string Hash, bool isServer, bool isGC)
            {
                if (isServer)
                {
                    return $"https://cdn.discordapp.com/icons/{Id}/{Hash}.png?size=128";
                }
                else if (isGC)
                {
                    return $"https://cdn.discordapp.com/channel-icons/{Id}/{Hash}.png?size=128";
                }
                else
                {
                    return $"https://cdn.discordapp.com/avatars/{Id}/{Hash}.png?size=128";
                }
            }
        }
    }
}