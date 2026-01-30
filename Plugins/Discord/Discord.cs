/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
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
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
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
        public string TextUsername { get { return "Discord token"; } }
        public string CustomLoginButtonText { get { return "Sign in"; } }
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Passwordless; } }

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
        // This is the file Skymu uses to find the Discord token
        private const string credFile = "discord.smcred";

        public async Task<LoginResult> LoginMainStep(string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            DscToken = username;
            File.WriteAllText(credFile, DscToken);

            await StartClient();
            return LoginResult.Success;
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        private void SubscribeToWebSocketEvents()
        {
            if (_webSocket != null)
            {
                _webSocket.MessageReceived += OnWebSocketMessageReceived;
            }
        }

        private void OnWebSocketMessageReceived(object sender, MessageReceivedEventArgs e)
        {
            // Only add messages if they're for the currently active channel
            if (e.ChannelId == _activeChannelId)
            {
                try
                {
                    var messageItem = new MessageItem(e.MessageId, e.AuthorId, e.AuthorName, e.Content, e.Timestamp, e.ReplyToId, e.ReplyToName);

                    // Use SynchronizationContext to marshal to UI thread (works in plugins)
                    var context = SynchronizationContext.Current ?? _uiContext;
                    if (context != null)
                    {
                        context.Post(_ => ActiveConversation.Add(messageItem), null);
                    }
                    else
                    {
                        ActiveConversation.Add(messageItem);
                    }
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
                string conversation = await api.SendAPI($"/channels/{channelId}/messages?limit=50", HttpMethod.Get, DscToken, null, null, null);
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
                    string authorName = message["author"]["global_name"]?.GetValue<string>()
                        ?? message["author"]["username"]?.GetValue<string>()
                        ?? "Unknown";
                    string authorId = message["author"]["id"]?.GetValue<string>() ?? "0";
                    string content = message["content"]?.GetValue<string>() ?? "";
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
                    if (referencedMessage != null)
                    {
                        replyToId = referencedMessage["author"]?["id"]?.GetValue<string>();
                        replyToName = referencedMessage["author"]?["global_name"]?.GetValue<string>()
                            ?? referencedMessage["author"]?["username"]?.GetValue<string>()
                            ?? "Unknown";
                        replyMsgContent = referencedMessage["content"]?.GetValue<string>() ?? "";
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

        public SidebarData SidebarInformation { get; private set; }

        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();

        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;
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

                int timeout = 30; // 3 seconds
                while (!WebSocket.CanCheckData && timeout > 0)
                {
                    await Task.Delay(100).ConfigureAwait(false);
                    timeout--;
                }

                if (!WebSocket.CanCheckData)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("WebSocket failed to initialize in time."));
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
                        if (recipients == null || recipients.Count == 0) continue;

                        var recipient = recipients[0] as JsonObject;
                        if (recipient == null) continue;

                        string userId = recipient["id"]?.GetValue<string>();
                        string channelId = channel["id"]?.GetValue<string>();
                        string skymuId = $"{userId};{channelId}";
                        string globalName = recipient["global_name"]?.GetValue<string>();
                        string username = recipient["username"]?.GetValue<string>();
                        string avatarHash = recipient["avatar"]?.GetValue<string>();

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

                        if (string.IsNullOrWhiteSpace(name))
                        {
                            var recipientNames = recipients?
                                .OfType<JsonObject>()
                                .Select(r =>
                                    r["global_name"]?.GetValue<string>() ??
                                    r["username"]?.GetValue<string>())
                                .Where(n => !string.IsNullOrWhiteSpace(n));

                            name = recipientNames != null
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
                OnError?.Invoke(this, new PluginMessageEventArgs($"Parse error: {ex.Message}"));
                return false;
            }
            return true;
        }

        private async Task<ProfileData> CreateProfileDataAsync(pluginOOTBStuff ootb, string userId, string skymuId, string globalName, string username, string avatarHash, bool isGC = false, string manualStatus = null)
        {
            byte[] avatarImage = null;

            string statusStr = WebSocket.UserStatusStore.GetStatus(userId);
            int userStatus = ootb.MapStatus(statusStr);
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

        public async Task<LoginResult> TryAutoLogin()
        {
            if (!File.Exists(credFile))
                return LoginResult.Failure;

            DscToken = File.ReadAllText(credFile);

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

            if (userCheckTkn.Contains("401: Unauthorized"))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to automatically login to Discord, your token might be expired. Please log in again. Error:\n" + userCheckTkn));
                return LoginResult.Failure;
            }
            else if (userCheckTkn.Contains("username"))
            {
                // Do nothing and let the client continue as normal.
            }
            File.WriteAllText("discord.smcred", DscToken.ToString());
            if (_webSocket == null)
            {
                _webSocket = new WebSocket();
                SubscribeToWebSocketEvents();
            }

            return LoginResult.Success;
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
                    return $"https://cdn.discordapp.com/icons/{Id}/{Hash}.png?size=64";
                }
                else if (isGC)
                {
                    return $"https://cdn.discordapp.com/channel-icons/{Id}/{Hash}.png?size=64";
                }
                else
                {
                    return $"https://cdn.discordapp.com/avatars/{Id}/{Hash}.png?size=256";
                }
            }
        }
    }
}