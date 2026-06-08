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

using Discord.Helpers;
using Discord.Networking;
using Discord.Networking.Managers;
using Discord.Protobuf;
using Discord.Users;
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
using Yggdrasil;
using Yggdrasil.Bottles;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Discord
{
    public class Core : ICore, ICall
    {
        #region Variables and plugin metadata

        public event EventHandler<CallBottle> IncomingCallTube;
        public event EventHandler<CallBottle> CallStateChangedTube;
        private CallSocket _callSocket = null;

        // Plugin details
        public bool SupportsVideoCalls => false; // not yet
        public event EventHandler<DialogBottle> DialogTube;
        public event EventHandler<MessageBottle> MessageTube;
        public event EventHandler<ListBottle> ListTube;
        public string Name { get { return "Discord"; } }
        public string InternalName { get { return "discord"; } }
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
        private string DiscordToken;
        // We reuse this to avoid creating more DiscordHttpClient instances, which is quite heavy
        internal static readonly DiscordHttpClient Client = new DiscordHttpClient();
        private ProtoSettings proto;
        internal AuthSocket authSocket = new AuthSocket();
        // Track the active channel ID for real-time updates
        private string _activeChannelId;
        public SynchronizationContext _uiContext;
        // This is to verify what users is in the recents list, used for message handling in WebSockets so we can refresh the list
        public Dictionary<string, string> _recentChannelMap = new Dictionary<string, string>();
        // The current user
        private User _currentUser;

        // Magic numbers used for some stuff...
        private const int WARNING_WS_MS = 5000;
        private const int DM_CHANNEL_TYPE = 1;
        private const int GROUP_CHANNEL_TYPE = 3;
        internal const int API_VERSION = 9;

        // String constants
        private const string USERS_ME = "users/@me";

        // Observable collections used in the Skymu UI
        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();

        public readonly Dictionary<string, HashSet<string>> _typingUsersPerChannel = new Dictionary<string, HashSet<string>>();
        internal static Dictionary<string, string> UserIdToChannelId = new Dictionary<string, string>();

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

        private enum ListType
        {
            Contacts,
            Recents,
            Servers
        }

        #endregion

        #region Authentication and basic plugin init

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            if (authType == AuthenticationMethod.Token)
                DiscordToken = username;
            else if (authType == AuthenticationMethod.QRCode)
                return LoginResult.TwoFARequired;
            else
                return LoginResult.UnsupportedAuthType;

            return await StartClient();
        }

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            DiscordToken = credential.PasswordOrToken;
            if (string.IsNullOrWhiteSpace(DiscordToken))
            {
                return LoginResult.Failure;
            }

            return await StartClient().ConfigureAwait(false);
        }


        public Task<LoginResult> AuthenticateTwoFA(string code)
        {
            var tcs = new TaskCompletionSource<LoginResult>();

            EventHandler<string> completedHandler = null;
            completedHandler = async (sender, message) =>
            {
                // Unsubscribe both handlers
                authSocket.TokenRecieved -= completedHandler;

                DiscordToken = message;
                var loginResult = await StartClient();
                tcs.SetResult(loginResult);
            };
            authSocket.TokenRecieved += completedHandler;

            return tcs.Task;
        }

        public async Task<string> GetQRCode()
        {
            var tcs = new TaskCompletionSource<string>();
            EventHandler<string> handler = null;
            handler = (sender, message) =>
            {
                authSocket.QRCodeGenerated -= handler;
                tcs.SetResult(message);
            };
            authSocket.QRCodeGenerated += handler;
            await authSocket.StartSocket();
            string qr = await tcs.Task;
            if (qr == "discord-close")
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Discord cancelled this QR login session. This can happen because:\n\n- You might be taking too long to scan the code" +
                    "\n- Discord updated something on their side and the plugin doesn't work anymore\n- You tried to scan the code using an old version of the Discord app or something like Aliucord"));
                return null;
            }
            else return qr;
        }

        public Task<SavedCredential> StoreCredential()
        {
            return Task.FromResult(new SavedCredential(_currentUser, DiscordToken, AuthenticationMethod.Token, InternalName));
        }

        public async Task<LoginResult> StartClient()
        {
            string userCheckTkn = await Client.Send(USERS_ME, HttpMethod.Get, DiscordToken, null, null, null).ConfigureAwait(false);
            if (userCheckTkn.Contains("username"))
            {
                // Parse and store details
                var parsedUser = JsonNode.Parse(userCheckTkn).AsObject();

                string id = parsedUser["id"]?.GetValue<string>();
                string username = parsedUser["username"]?.GetValue<string>() ?? "Anonymous";
                string displayName = parsedUser["global_name"]?.GetValue<string>() ?? username;
                string avatarHash = parsedUser["avatar"]?.GetValue<string>();
                byte[] avatar = await HelperMethods.GetCachedAvatarAsync(id, avatarHash, HelperMethods.DiscordChannelType.DirectMessage);
                _currentUser = new User(displayName, username, id, null, PresenceStatus.Offline, avatar); // temp just for StoreCredential
                return LoginResult.Success;
            }
            else
            {
                if (userCheckTkn.Contains("401: Unauthorized"))
                {
                    DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Your token has been rejected, possibly due to a display name, username, or password change, or simply because it is invalid.\n\nPlease retrieve a new token."));
                }
                else if (userCheckTkn.Contains("[API/ParseError]"))
                {
                    DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "The provided token has an invalid format. Please ensure that you are entering it correctly."));
                }
                else if (userCheckTkn.Contains("[API/RequestError]"))
                {
                    DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Could not communicate with Discord's servers. Check your internet connection and proxy settings.\n\n" + userCheckTkn.Replace("[API/RequestError]", string.Empty)));
                }
                else
                {
                    DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "An unknown error occurred during the login process. Please try again.\n\n" + userCheckTkn));
                }
                return LoginResult.Failure;
            }
        }

        public async Task<User> GetUserInfo()
        {
            try
            {
                WebSocketManager.EnsureConnected(DiscordToken, OnWebSocketMessageReceived, this); // fixes the websocket bug YEAAAAAAAAA
                WebSocketManager.SubscribeIncomingCall((sender, data) =>
                {
                    string channelId = data["channel_id"]?.GetValue<string>(); // Discord doesn't seem to give us the user ID of the person doing the ringing, oh well
                    if (string.IsNullOrEmpty(channelId)) return; // no channel ID - private, or some server side error? just in case, return
                    if (((JsonArray)data["ringing"])?.Any(id => id?.GetValue<string>() == _currentUser?.Identifier) != true) return; // the current user is not being rung, return
                    string callerId = data["ongoing_rings"]?[_currentUser?.Identifier]?.GetValue<string>(); // who's ringing the current user?
                    IncomingCallTube?.Invoke(this, new CallBottle(channelId, CallState.Ringing, UserStore.Get(callerId)));
                });
                _uiContext = SynchronizationContext.Current;


                proto = new ProtoSettings(DiscordToken);
            }
            catch (Exception ex) { DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Unexpected error while attempting to initialize WebSocket.\n\n" + ex.ToString())); }
            JsonObject parsedDetails = null;
            try
            {
                string userDetails = await Client.Send(
                    USERS_ME,
                    HttpMethod.Get,
                    DiscordToken,
                    null, null, null).ConfigureAwait(false);

                parsedDetails = JsonNode.Parse(userDetails).AsObject();

                var readyTask = WebSocketManager.WaitUntilReady();
                var delayTask = Task.Delay(WARNING_WS_MS);

                if (await Task.WhenAny(readyTask, delayTask) == delayTask)
                {
                    DialogTube?.Invoke(this, new DialogBottle(
                        DialogType.Warning,
                        "The WebSocket is taking an unusually long time to initialize. " +
                        "This could be due to slow internet speeds or Discord throttling the connection."));
                }

                if (!await readyTask)
                {
                    DialogTube?.Invoke(this, new DialogBottle(
                        DialogType.Error,
                        "The WebSocket failed to initialize. This could be due to network errors, an outdated network stack, or Discord forcibly closing the connection."));
                    return null;
                }

                _currentUser.ConnectionStatus = UserStore.Get("0")?.ConnectionStatus ?? PresenceStatus.Offline;
                _currentUser.Status = UserStore.Get(_currentUser.Identifier)?.Status;

                return _currentUser;
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(
                    DialogType.Error,
                    $"Parse error: {ex.Message}\nResponse from server:\n{parsedDetails?.ToJsonString() ?? "null"}"));
                return null;
            }
        }

        #endregion

        #region List population (contacts, servers, recents)

        public Task<List<DirectMessage>> FetchContacts() => FetchContactsOrConversations(ListType.Contacts)
    .ContinueWith(t => t.Result.OfType<DirectMessage>().ToList());

        public Task<List<Conversation>> FetchConversations() => FetchContactsOrConversations(ListType.Recents);

        public async Task<List<Server>> FetchServers()
        {
            var results = new List<Server>();
            try
            {
                var guilds = WebSocketManager.GetGuilds();
                foreach (var guildNode in guilds.OfType<JsonObject>())
                {
                    int memberCount = 0;
                    string guildId = guildNode["id"]?.GetValue<string>();
                    string guildName = guildNode["name"]?.GetValue<string>();
                    string iconHash = guildNode["icon"]?.GetValue<string>();
                    int.TryParse(guildNode["member_count"]?.ToString(), out memberCount);

                    if (string.IsNullOrWhiteSpace(guildId)) continue;

                    byte[] guildAvatar = await HelperMethods.GetCachedAvatarAsync(guildId, iconHash, HelperMethods.DiscordChannelType.Server);

                    var channelList = new List<ServerChannel>();
                    var categoryMap = new Dictionary<string, string>();

                    if (guildNode["channels"] is JsonArray channels)
                    {
                        foreach (var ch in channels.OfType<JsonObject>())
                        {
                            int typeValue = -1;
                            if (!int.TryParse(ch["type"]?.ToString(), out typeValue))
                                typeValue = -1;

                            if (typeValue == 4)
                            {
                                string categoryId = ch["id"]?.GetValue<string>();
                                string categoryName = ch["name"]?.GetValue<string>();
                                if (!string.IsNullOrWhiteSpace(categoryId) && !string.IsNullOrWhiteSpace(categoryName))
                                    categoryMap[categoryId] = categoryName;
                            }
                        }

                        foreach (var ch in channels.OfType<JsonObject>())
                        {
                            string channelId = ch["id"]?.GetValue<string>();
                            string channelName = ch["name"]?.GetValue<string>();
                            if (string.IsNullOrWhiteSpace(channelId)) continue;

                            int position = 0;
                            int.TryParse(ch["position"]?.ToString(), out position);
                            string parentId = ch["parent_id"]?.GetValue<string>();

                            int typeValue = -1;
                            if (!int.TryParse(ch["type"]?.ToString(), out typeValue))
                                typeValue = -1;

                            ChannelType channelType;
                            switch (typeValue)
                            {
                                case 0:
                                    channelType = ChannelType.Standard;

                                    bool everyoneDeniesSend = false;
                                    if (ch["permission_overwrites"] is JsonArray perms)
                                    {
                                        foreach (var perm in perms.OfType<JsonObject>())
                                        {
                                            string permId = perm["id"]?.GetValue<string>() ?? string.Empty;
                                            if (permId != guildId) continue;

                                            int deny = 0;
                                            int.TryParse(perm["deny"]?.ToString(), out deny);

                                            const int sendMessages = 0x400;
                                            if ((deny & sendMessages) != 0)
                                                everyoneDeniesSend = true;
                                        }
                                    }

                                    if (everyoneDeniesSend)
                                        channelType = ChannelType.ReadOnly;
                                    break;
                                case 2:
                                    channelType = ChannelType.Voice;
                                    break;
                                case 4:
                                    continue;
                                case 5:
                                    channelType = ChannelType.Announcement;
                                    break;
                                case 15:
                                    channelType = ChannelType.Forum;
                                    break;
                                default:
                                    channelType = ChannelType.NoAccess;
                                    break;
                            }
                            channelList.Add(new ServerChannel(channelName, channelId, guildId, 0, channelType, parentId, position));
                        }
                    }
                    results.Add(new Server(guildName, guildId, null, channelList.ToArray(), guildAvatar, categoryMap, memberCount));
                }
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Failed to populate servers: {ex.Message}"));
                return new List<Server>();
            }
            return results;
        }

        private async Task<List<Conversation>> FetchContactsOrConversations(ListType listType)
        {
            var results = new List<Conversation>();
            try
            {
                var dscChannels = HelperMethods.GetUserChannels(listType == ListType.Recents);

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
                            UserIdToChannelId.Add(userId, channelId);

                        string displayName = recipient["global_name"]?.GetValue<string>();
                        string dscUserName = recipient["username"]?.GetValue<string>();
                        string avatarHash = recipient["avatar"]?.GetValue<string>();

                        if (listType == ListType.Recents)
                            _recentChannelMap[channelId] = userId;

                        var profileData = await UserStore.GetOrCreateWithAvatar(userId, displayName ?? dscUserName, dscUserName, avatarHash);

                        DateTime lastMessageTime = GetTimestampFromSnowflake(channel["last_message_id"]?.GetValue<string>());

                        if (listType == ListType.Recents)
                            results.Add(new DirectMessage(profileData, 0, channelId, lastMessageTime));
                        else
                            results.Add(new DirectMessage(profileData, 0, channelId));
                    }
                    else if (type == GROUP_CHANNEL_TYPE && listType == ListType.Recents)
                    {
                        var recipients = channel["recipients"] as JsonArray;

                        User[] members = null;
                        if (recipients != null && recipients.Count > 0)
                        {
                            User[] temp = await Task.WhenAll(
                                recipients
                                    .OfType<JsonObject>()
                                    .Select(async r => await UserStore.GetOrCreateWithAvatar(
                                        r["id"]?.GetValue<string>() ?? "0",
                                        r["global_name"]?.GetValue<string>() ?? r["username"]?.GetValue<string>() ?? "Unknown",
                                        r["username"]?.GetValue<string>() ?? "Unknown"
                                    ))
                            );

                            members = new User[temp.Length + 1];
                            members[0] = _currentUser;
                            Array.Copy(temp, 0, members, 1, temp.Length);
                        }

                        string channelId = channel["id"]?.GetValue<string>();
                        string groupName = channel["name"]?.GetValue<string>();
                        string avatarHash = channel["icon"]?.GetValue<string>();

                        _recentChannelMap[channelId] = null;

                        if (string.IsNullOrWhiteSpace(groupName))
                        {
                            try
                            {
                                var recipientNames = recipients?
                                    .OfType<JsonObject>()
                                    .Select(r => r["global_name"]?.GetValue<string>() ?? r["username"]?.GetValue<string>())
                                    .Where(n => !string.IsNullOrWhiteSpace(n));

                                groupName = recipientNames != null ? string.Join(", ", recipientNames) : "N/A";
                            }
                            catch { DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Error constructing group name.")); }
                        }

                        byte[] avatarImage = await HelperMethods.GetCachedAvatarAsync(channelId, avatarHash, HelperMethods.DiscordChannelType.Group);
                        DateTime lastMessageTime = GetTimestampFromSnowflake(channel["last_message_id"]?.GetValue<string>());

                        results.Add(new Group(groupName, channelId, 0, members, avatarImage, lastMessageTime));
                    }
                }
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Error while fetching list: {ex.Message}"));
                return new List<Conversation>();
            }
            return results;
        }

        #endregion

        #region Fetching and sending messages

        private CancellationTokenSource _fetchCts; // omega: fix message overlap bug

        public async Task<List<ConversationItem>> FetchMessages(Conversation conversation, Fetch fetch_type, int message_count, string identifier)
        {
            if (_fetchCts != null)
            {
                _fetchCts.Cancel();
                _fetchCts.Dispose();
            }

            _fetchCts = new CancellationTokenSource();
            CancellationToken token = _fetchCts.Token;

            TypingUsersList.Clear();
            List<ConversationItem> messageList = new List<ConversationItem>();

            if (!HelperMethods.TryToGetChannelId(conversation.Identifier, out var channelId) || fetch_type == Fetch.Oldest)
                return messageList;

            _activeChannelId = channelId;
            string parameters = $"/channels/{channelId}/messages?limit={message_count}";
            if (fetch_type == Fetch.AfterIdentifier) parameters += "&after=" + identifier;
            else if (fetch_type == Fetch.BeforeIdentifier) parameters += "&before=" + identifier;

            try
            {
                token.ThrowIfCancellationRequested();
                string encJson = await Client.Send(parameters, HttpMethod.Get, DiscordToken, null, null, null, null, token);
                var parsed = JsonNode.Parse(encJson);
                token.ThrowIfCancellationRequested();

                if (!(parsed is JsonArray messages))
                {
                    if (parsed is JsonObject msg)
                    {
                        string text = string.Empty;
                        switch (msg["code"].GetValue<int>())
                        {
                            case 50001:
                                text = "You do not have access to this server channel.";
                                break;
                            default:
                                text = $"Discord says: {msg["message"].GetValue<string>()}\n\nError code {msg["code"].GetValue<string>()}";
                                break;
                        }
                        DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, text));
                    }
                    else
                    {
                        DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Unexpected response format: {encJson}"));
                    }
                    return new List<ConversationItem>();
                }

                foreach (var node in messages.Reverse())
                {
                    token.ThrowIfCancellationRequested();
                    var item = await MessageParser.ParseMessage(node);
                    if (item != null)
                        messageList.Add(item);
                }

                if (fetch_type == Fetch.NewestAfterIdentifier && identifier != null)
                    return messageList.Where(m => ulong.Parse(m.Identifier) > ulong.Parse(identifier)).ToList();

                return messageList;
            }
            catch (OperationCanceledException)
            {
                return new List<ConversationItem>(); // expected case
            }
            catch (Exception ex)
            {
                string message = $"Failed to load conversation: {ex.Message}";
                if (message.Contains("is an invalid start of a value")) message = "You are not connected to the internet, or Discord's servers are down.";
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, message));
                _activeChannelId = null;
                return new List<ConversationItem>();
            }
        }

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment, string parent_message_identifier, bool action)
        {
            if (string.IsNullOrWhiteSpace(identifier) || (string.IsNullOrWhiteSpace(text) && attachment == null))
                return false;

            if (!HelperMethods.TryToGetChannelId(identifier, out var channelId))
                return false;

            // edit message typeshit
            if (!string.IsNullOrWhiteSpace(text) && text.StartsWith("s/"))
            {
                var sedMatch = System.Text.RegularExpressions.Regex.Match(text, @"^s/([^/]+)/([^/]*)/?$");
                if (sedMatch.Success)
                {
                    string oldText = sedMatch.Groups[1].Value;
                    string newText = sedMatch.Groups[2].Value;

                    try
                    {
                        // fetch so it finds ur last msg
                        string parameters = $"/channels/{channelId}/messages?limit=20";
                        string encJson = await Client.Send(parameters, HttpMethod.Get, DiscordToken, null, null, null, null).ConfigureAwait(false);
                        var parsed = JsonNode.Parse(encJson);

                        if (parsed is JsonArray messages)
                        {
                            foreach (var node in messages)
                            {
                                var item = await MessageParser.ParseMessage(node).ConfigureAwait(false);

                                // last msg by the logged in user
                                if (item is Message msg && msg.Author?.Identifier == _currentUser?.Identifier)
                                {
                                    // replace n call
                                    string modifiedText = msg.Text.Replace(oldText, newText);
                                    return await EditMessage(identifier, msg.Identifier, modifiedText).ConfigureAwait(false);
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine($"Failed to edit message with SED: {ex.Message}");
                    }
                }
            }

            // delete message typeshit
            if (!string.IsNullOrWhiteSpace(text) && text.Trim() == "d/")
            {
                try
                {
                    // fetch so it finds ur last msg
                    string parameters = $"/channels/{channelId}/messages?limit=20";
                    string encJson = await Client.Send(parameters, HttpMethod.Get, DiscordToken, null, null, null, null).ConfigureAwait(false);
                    var parsed = JsonNode.Parse(encJson);

                    if (parsed is JsonArray messages)
                    {
                        foreach (var node in messages)
                        {
                            var item = await MessageParser.ParseMessage(node).ConfigureAwait(false);

                            // last msg by the logged in user
                            if (item is Message msg && msg.Author?.Identifier == _currentUser?.Identifier)
                            {
                                // call delete backend directly
                                await DeleteMessage(identifier, msg.Identifier).ConfigureAwait(false);

                                // better to show error than infinity stuck
                                return false;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Failed to delete message [TEST]: {ex.Message}");
                }
            }

            if (action)
                text = $"_{text}_"; // just like how official Discord client does it

            try
            {
                // Necessary for later, you'll see why
                // WHY, PATRICK????? 
                var locationOpt = new { location = "chat_input" };
                string jsonOpt = JsonSerializer.Serialize(locationOpt);
                string OptEncoded = Convert.ToBase64String(Encoding.UTF8.GetBytes(jsonOpt));

                // This is done just in case Discord tries to get our asses
                // I'm pretty sure this is only required because if you add someone and then chat to them immediately,
                // it will ban you on a 3rd-party client, like Skymu or Naticord
                var discordOpts = new Dictionary<string, string> { { "X-Context-Properties", OptEncoded }, };

                // Set the file name and file content properties
                string fileName = null;
                object payloadJson = null;

                if (parent_message_identifier != null)
                    payloadJson = new { content = text ?? string.Empty, message_reference = new { message_id = parent_message_identifier } };
                else
                    payloadJson = new { content = text ?? string.Empty };

                if (attachment != null)
                {
                    fileName = attachment?.Name ?? "file";
                }

                string msgResponse = await Client.Send($"/channels/{channelId}/messages", HttpMethod.Post, DiscordToken, payloadJson, attachment != null ? attachment.File : null, fileName, discordOpts).ConfigureAwait(false);
                return !string.IsNullOrEmpty(msgResponse) && !msgResponse.Contains("error");
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> EditMessage(string conversationId, string messageId, string newText)
        {
            if (string.IsNullOrWhiteSpace(conversationId) || string.IsNullOrWhiteSpace(messageId) || string.IsNullOrWhiteSpace(newText))
                return false;

            if (!HelperMethods.TryToGetChannelId(conversationId, out var channelId))
                return false;

            try
            {
                var payloadJson = new { content = newText };

                // Send a request to discord with PATCH to Edit the msg
                string msgResponse = await Client.Send(
                    $"/channels/{channelId}/messages/{messageId}",
                    new HttpMethod("PATCH"),
                    DiscordToken,
                    payloadJson,
                    null,
                    null,
                    null
                ).ConfigureAwait(false);

                return !string.IsNullOrEmpty(msgResponse) && !msgResponse.Contains("error");
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Failed to edit message: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> DeleteMessage(string conversationId, string messageId)
        {
            if (string.IsNullOrWhiteSpace(conversationId) || string.IsNullOrWhiteSpace(messageId))
                return false;

            if (!HelperMethods.TryToGetChannelId(conversationId, out var channelId))
                return false;

            try
            {
                // Send a request to discord with DELETE to Del the msg
                string msgResponse = await Client.Send(
                    $"/channels/{channelId}/messages/{messageId}",
                    HttpMethod.Delete,
                    DiscordToken,
                    null,
                    null,
                    null,
                    null
                ).ConfigureAwait(false);

                // Discord returns an empty string on success (204 No Content)
                // So msgResponse == string.Empty means this shii works
                return msgResponse != null && (msgResponse == string.Empty || !msgResponse.Contains("error"));
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Failed to delete message: {ex.Message}"));
                return false;
            }
        }

        #endregion

        #region Typing

        public int TypingTimeout => 5000;
        public int TypingRepeat => 10000;
        public async Task<bool> SetTyping(string identifier, bool typing)
        {
            if (!typing || string.IsNullOrWhiteSpace(identifier))
                return false;

            if (!HelperMethods.TryToGetChannelId(identifier, out var channelId))
                return false;

            try
            {
                string msgResponse = await Client.Send($"/channels/{channelId}/typing", HttpMethod.Post, DiscordToken).ConfigureAwait(false);
                return !string.IsNullOrEmpty(msgResponse) && !msgResponse.Contains("error");
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Failed to set typing status: {ex.Message}"));
                return false;
            }
        }

        #endregion

        #region Protocol Buffers

        public async Task<bool> SetConnectionStatus(PresenceStatus status)
        {
            proto._proto = await proto.FetchProtoSettings();
            switch (status)
            {
                case PresenceStatus.Online:
                    proto._proto.Status.Status = "online";
                    break;
                case PresenceStatus.Away:
                    proto._proto.Status.Status = "idle";
                    break;
                case PresenceStatus.DoNotDisturb:
                    proto._proto.Status.Status = "dnd";
                    break;
                case PresenceStatus.Invisible:
                    proto._proto.Status.Status = "invisible";
                    break;
                case PresenceStatus.Offline:
                default:
                    proto._proto.Status.Status = "offline";
                    break;
            }
            if (await proto.UpdateProtoSettings(proto._proto))
            {
                _currentUser.ConnectionStatus = status;
                return true;
            }
            else return false;
        }

        public async Task<bool> SetMood(string custStatus)
        {
            if (String.IsNullOrEmpty(custStatus)) return false;

            proto._proto = await proto.FetchProtoSettings();
            proto._proto.Status.CustomStatus.Text = custStatus;
            return await proto.UpdateProtoSettings(proto._proto);
        }

        #endregion

        #region WebSocket message handling

        private bool CheckIfGuildChannel(HelperClasses.DiscordMessageReceivedEventArgs e)
        {
            var privateChannels = WebSocketManager.GetPrivateChannels();
            var channel = privateChannels
                .OfType<JsonObject>()
                .FirstOrDefault(c => c["id"]?.GetValue<string>() == e.ChannelId);

            if (channel != null)
            {
                int channelType = channel["type"]?.GetValue<int>() ?? -1;
                if (channelType == DM_CHANNEL_TYPE || channelType == GROUP_CHANNEL_TYPE)
                    return false;
            }
            return true;
        }


        private void OnWebSocketMessageReceived(object sender, HelperClasses.DiscordMessageReceivedEventArgs e)
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

                            var message = new Message(e.Identifier, e.Sender, e.Timestamp, e.Text, e.Attachments, e.ParentMessage);
                            MessageTube?.Invoke(this, new MessageRecievedBottle(e.ChannelId, message, CheckIfGuildChannel(e)));
                            break;
                        }
                    case MessageEventType.Update:
                        {
                            var message = new Message(e.Identifier, e.Sender, e.Timestamp, e.Text, e.Attachments, e.ParentMessage);
                            MessageTube?.Invoke(this, new MessageEditedBottle(e.ChannelId, e.Identifier, message));
                            break;
                        }
                    case MessageEventType.Delete:
                        {
                            MessageTube?.Invoke(this, new MessageDeletedBottle(e.ChannelId, e.Identifier));
                            break;
                        }
                    case MessageEventType.BulkDelete:
                        {
                            foreach (var id in e.BulkIdentifiers ?? Enumerable.Empty<string>())
                                MessageTube?.Invoke(this, new MessageDeletedBottle(e.ChannelId, id));
                            break;
                        }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Message event handling error: {ex.Message}");
            }
        }

        #endregion

        #region Calling functionality

        public async Task<ActiveCall> StartCall(string convo_id, bool is_video_call, bool start_muted)
        {
            return await InitiateCall(false, convo_id, is_video_call, start_muted);
        }

        public async Task<ActiveCall> AnswerCall(string convo_id)
        {
            return await InitiateCall(true, convo_id);
        }

        public async Task<ActiveCall> InitiateCall(bool is_answering_call, string convo_id, bool is_video_call = false, bool start_muted = true)
        {
            var call_established = new TaskCompletionSource<bool>();
            var call_picked_up = new TaskCompletionSource<WebSocket.VoiceServerUpdateEventArgs>();
            EventHandler<WebSocket.VoiceServerUpdateEventArgs> vsHandler = null;

            vsHandler = async (sender, e) =>
            {
                WebSocketManager.UnsubscribeVoiceServerUpdated(vsHandler);
                if (!is_answering_call) _ = Client.Send($"channels/{convo_id}/call/ring", HttpMethod.Post, DiscordToken, new { recipients = (string[])null });
                call_established.TrySetResult(true);
                CallSocket socket = new CallSocket(e.VoiceEndpoint, e.VoiceToken, e.SessionId, e.UserId, convo_id, start_muted);
                socket.OnCallEstablished += () =>
                {
                    Debug.WriteLine("[CALL-INIT] Event recieved, call has been picked up by the remote user. Setting result of task call_picked_up...");
                    bool result = call_picked_up.TrySetResult(e);
                    Debug.WriteLine("[CALL-INIT] Set result " + result + " for the call_picked_up event.");
                };
                socket.OnHangUp += () =>
                {
                    CallStateChangedTube?.Invoke(this, new CallBottle(convo_id, CallState.Ended));
                };
                socket.OnCallFailed += reason =>
                {
                    CallStateChangedTube?.Invoke(this, new CallBottle(convo_id, CallState.Failed, reason));
                };
                _callSocket = socket;
                await socket.ConnectAsync();
            };

            string voicePayloadJson = JsonSerializer.Serialize(new
            {
                op = 4,
                d = new
                {
                    guild_id = (string)null,
                    channel_id = convo_id,
                    self_mute = start_muted,
                    self_deaf = false,
                    self_video = is_video_call,
                    flags = 2
                }
            });

            WebSocketManager.SubscribeVoiceServerUpdated(vsHandler);
            await WebSocketManager.SendPayload(voicePayloadJson);
            Debug.WriteLine("[CALL-INIT] Voice payload sent.");
            if (await Task.WhenAny(call_established.Task, Task.Delay(5000)) != call_established.Task)
            {
                Debug.WriteLine("[CALL-INIT] Discord failed to respond with CALL_UPDATE in the 5 second time limit. Cancelling call.");
                return null;
            }
            else Debug.WriteLine("[CALL-INIT] Discord responded with CALL_UPDATE and the call has been established.");
            var voiceEvent = await call_picked_up.Task;
            Debug.WriteLine("[CALL-INIT] Call initialization complete. Returning the active call.");
            return new ActiveCall(voiceEvent.SessionId, convo_id, is_video_call, new User[0]);
        }
        public async Task<bool> DeclineCall(string convo_id)
        {
            await EndCall(null);
            return true;
        }
        public async Task<bool> SetMuted(ActiveCall call, bool muted)
        {
            _callSocket.SetMute(muted);
            await WebSocketManager.SendPayload(JsonSerializer.Serialize(new
            {
                op = 4,
                d = new
                {
                    guild_id = (string)null,
                    channel_id = call.ConversationId,
                    self_mute = muted,
                    self_deaf = false
                }
            }));
            return true;
        }

        public async Task<bool> EndCall(ActiveCall call)
        {
            try
            {
                await WebSocketManager.SendPayload(JsonSerializer.Serialize(new
                {
                    op = 4,
                    d = new
                    {
                        guild_id = (string)null,
                        channel_id = (string)null,
                        self_mute = false,
                        self_deaf = false
                    }
                }));
                _callSocket.WSDispose();
            }
            catch (Exception ex) { Debug.WriteLine("[CALL-END] Exception while ending call: " + ex.Message); }
            return true;
        }
        public Task<bool> SetVideoEnabled(ActiveCall call, bool enabled) => Task.FromResult(false);

        #endregion

        #region Getters

        public string GetActiveChannelID() { return _activeChannelId; }

        private DateTime GetTimestampFromSnowflake(string snowflake)
        {
            if (string.IsNullOrEmpty(snowflake) || !long.TryParse(snowflake, out long snowflakeId))
                return DateTime.MinValue;

            // Discord's epoch for snowflakes
            const long discordEpoch = 1420070400000L;
            // We generate the timestamp based on the epoch from earlier
            long epochTimestamp = (snowflakeId >> 22) + discordEpoch;
            // Return the generated result
            return DateTimeOffset.FromUnixTimeMilliseconds(epochTimestamp).LocalDateTime;
        }

        #endregion

        #region Disposal

        public void Dispose()
        {
            // Dispose of the WebSocket
            WebSocketManager.Socket = null;

            // Clear all of the users stored
            UserStore.Clear();

            // Clear the recent channel and user ID to channel ID converter maps
            _recentChannelMap.Clear();
            UserIdToChannelId.Clear();

            // Create a new dictionary for the both of them
            _recentChannelMap = new Dictionary<string, string>();
            UserIdToChannelId = new Dictionary<string, string>();
        }

        #endregion
    }
}
