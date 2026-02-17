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

using MiddleMan;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Text;
using System.Text.Json;

#pragma warning disable CS8618
namespace Matrix
{
    public class Core : ICore
    {
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;
        public string Name { get { return "Matrix"; } }
        public string InternalName { get { return "skymu-matrix-plugin"; } }
        public string TextUsername { get { return "Identifier (@username:homeserver.com)"; } }
        public AuthenticationMethod[] AuthenticationType { get { return new[] { AuthenticationMethod.Password }; } }

        private string _accessToken;
        private string _userId;
        private string _homeserver = "https://matrix.org";
        private string _nextBatch;
        private static readonly HttpClient _httpClient = new HttpClient();
        private CancellationTokenSource _syncCancellationTokenSource;
        private SynchronizationContext _uiContext;
        private readonly MatrixOOTBStuff _ootb = new MatrixOOTBStuff();

        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();
        public ClickableConfiguration[] ClickableConfigurations
        {
            get
            {
                return new ClickableConfiguration[]
                {
                    new ClickableConfiguration(ClickableItemType.User, "@", " "),
                    new ClickableConfiguration(ClickableItemType.ServerChannel, "#", " ")
                };
            }
        }

        private string _activeRoomId;
        private string[] credData;
        private Dictionary<string, string> _displayNameCache = new Dictionary<string, string>();
        public readonly Dictionary<string, string> _recentRoomMap = new();

        public async Task<string> GetQRCode()
        {
            return String.Empty;
        }
        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Username and password are required."));
                return LoginResult.Failure;
            }

            try
            {
                if (username.Contains(":"))
                {
                    string[] parts = username.Split(':');
                    if (parts.Length == 2)
                    {
                        _homeserver = $"https://{parts[1]}";
                    }
                }

                var loginData = new
                {
                    type = "m.login.password",
                    identifier = new
                    {
                        type = "m.id.user",
                        user = username.TrimStart('@').Split(':')[0]
                    },
                    password = password
                };

                string loginJson = JsonSerializer.Serialize(loginData);
                var content = new StringContent(loginJson, Encoding.UTF8, "application/json");

                var response = await _httpClient.PostAsync($"{_homeserver}/_matrix/client/r0/login", content);
                string responseBody = await response.Content.ReadAsStringAsync();

                if (!response.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Login failed: {responseBody}"));
                    return LoginResult.Failure;
                }

                var loginResponse = JsonSerializer.Deserialize<JsonElement>(responseBody);
                _accessToken = loginResponse.GetProperty("access_token").GetString();
                _userId = loginResponse.GetProperty("user_id").GetString();

                credData = new string[] { _homeserver, _accessToken, _userId };

                return await StartClient();
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Login error: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string identifier, string text)
        {
            if (string.IsNullOrEmpty(identifier) || string.IsNullOrEmpty(text))
                return false;

            try
            {
                string roomId = identifier;

                var messageData = new
                {
                    msgtype = "m.text",
                    body = text
                };

                string messageJson = JsonSerializer.Serialize(messageData);
                var content = new StringContent(messageJson, Encoding.UTF8, "application/json");

                string txnId = Guid.NewGuid().ToString();
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/send/m.room.message/{txnId}?access_token={_accessToken}",
                    content);

                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SendImageMessage(string identifier, byte[] imageData, string filename = "image.jpg")
        {
            if (string.IsNullOrEmpty(identifier) || imageData == null || imageData.Length == 0)
                return false;

            try
            {
                string roomId = identifier;

                var imageContent = new ByteArrayContent(imageData);
                imageContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("image/jpeg");

                var uploadResponse = await _httpClient.PostAsync(
                    $"{_homeserver}/_matrix/media/r0/upload?filename={filename}&access_token={_accessToken}",
                    imageContent);

                if (!uploadResponse.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to upload image."));
                    return false;
                }

                string uploadResponseBody = await uploadResponse.Content.ReadAsStringAsync();
                var uploadData = JsonSerializer.Deserialize<JsonElement>(uploadResponseBody);
                string contentUri = uploadData.GetProperty("content_uri").GetString();

                var messageData = new
                {
                    msgtype = "m.image",
                    body = filename,
                    url = contentUri,
                    info = new
                    {
                        mimetype = "image/jpeg",
                        size = imageData.Length
                    }
                };

                string messageJson = JsonSerializer.Serialize(messageData);
                var content = new StringContent(messageJson, Encoding.UTF8, "application/json");

                string txnId = Guid.NewGuid().ToString();
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/send/m.room.message/{txnId}?access_token={_accessToken}",
                    content);

                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send image: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SendReplyMessage(string identifier, string text, string replyToEventId)
        {
            if (string.IsNullOrEmpty(identifier) || string.IsNullOrEmpty(text) || string.IsNullOrEmpty(replyToEventId))
                return false;

            try
            {
                string roomId = identifier;

                var replyData = new Dictionary<string, object>
                {
                    ["msgtype"] = "m.text",
                    ["body"] = text,
                    ["m.relates_to"] = new Dictionary<string, object>
                    {
                        ["m.in_reply_to"] = new Dictionary<string, object>
                        {
                            ["event_id"] = replyToEventId
                        }
                    }
                };

                string messageJson = JsonSerializer.Serialize(replyData);
                var content = new StringContent(messageJson, Encoding.UTF8, "application/json");

                string txnId = Guid.NewGuid().ToString();
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/send/m.room.message/{txnId}?access_token={_accessToken}",
                    content);

                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send reply: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SendTypingIndicator(string identifier, bool isTyping)
        {
            if (string.IsNullOrEmpty(identifier))
                return false;

            try
            {
                string roomId = identifier;

                var typingData = new
                {
                    typing = isTyping,
                    timeout = 30000
                };

                string typingJson = JsonSerializer.Serialize(typingData);
                var content = new StringContent(typingJson, Encoding.UTF8, "application/json");

                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/typing/{_userId}?access_token={_accessToken}",
                    content);

                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Failed to send typing indicator: {ex.Message}");
                return false;
            }
        }

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(string identifier)
        {
            TypingUsersList.Clear();
            ActiveConversation.Clear();
            if (string.IsNullOrEmpty(identifier))
            {
                _activeRoomId = null;
                return false;
            }

            string roomId = identifier;
            _activeRoomId = roomId;

            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/messages?access_token={_accessToken}&dir=b&limit=100");

                if (!response.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {await response.Content.ReadAsStringAsync()}"));
                    return false;
                }

                string responseBody = await response.Content.ReadAsStringAsync();
                var messagesData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                var chunk = messagesData.GetProperty("chunk");
                var messagesList = new List<JsonElement>();

                foreach (var item in chunk.EnumerateArray())
                {
                    messagesList.Add(item);
                }

                messagesList.Reverse();

                _displayNameCache = await GetRoomMemberDisplayNames(roomId);

                // first pass: build a lookup of eventId -> MessageItem so reply parents can be resolved
                var eventItemCache = new Dictionary<string, Message>();

                foreach (var message in messagesList)
                {
                    string eventType = message.GetProperty("type").GetString();

                    if (eventType != "m.room.message")
                        continue;

                    string eventId = message.GetProperty("event_id").GetString();
                    string sender = message.GetProperty("sender").GetString();

                    var content = message.GetProperty("content");
                    string msgtype = content.TryGetProperty("msgtype", out var msgtypeProp)
                        ? msgtypeProp.GetString()
                        : "m.text";

                    string body = content.TryGetProperty("body", out var bodyProp)
                        ? bodyProp.GetString()
                        : "";

                    long originServerTs = message.GetProperty("origin_server_ts").GetInt64();
                    DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;

                    string displayName = _displayNameCache.TryGetValue(sender, out var name) ? name : sender;
                    var senderData = new User(displayName, sender, sender);

                    Attachment[] attachments = null;
                    if (msgtype == "m.image" && content.TryGetProperty("url", out var urlProp))
                    {
                        string mxcUrl = urlProp.GetString();
                        byte[] imageBytes = await _ootb.DownloadMatrixContent(mxcUrl, _homeserver);
                        if (imageBytes != null)
                        {
                            body = null;
                            attachments = new[]
                            {
                                new Attachment(imageBytes, body ?? "image.jpg", AttachmentType.Image)
                            };
                        }
                    }

                    Message parentMessage = null;
                    if (content.TryGetProperty("m.relates_to", out var relatesTo))
                    {
                        if (relatesTo.TryGetProperty("m.in_reply_to", out var inReplyTo))
                        {
                            string replyToId = inReplyTo.GetProperty("event_id").GetString();

                            // use cached item if already processed, otherwise fetch from server
                            if (!eventItemCache.TryGetValue(replyToId, out parentMessage))
                            {
                                var replyInfo = await GetMessageById(roomId, replyToId);
                                if (replyInfo != null)
                                {
                                    parentMessage = replyInfo;
                                }
                            }
                        }
                    }

                    var messageItem = new Message(eventId, senderData, timestamp, body, attachments, parentMessage);
                    eventItemCache[eventId] = messageItem;
                    ActiveConversation.Add(messageItem);
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                _activeRoomId = null;
                return false;
            }
        }

        public void Dispose()
        {
            _syncCancellationTokenSource?.Cancel();
            _syncCancellationTokenSource?.Dispose();
            _syncCancellationTokenSource = null;

            ActiveConversation?.Clear();
            ContactsList?.Clear();
            RecentsList?.Clear();
            TypingUsersList?.Clear();

            _displayNameCache?.Clear();
            _recentRoomMap?.Clear();

            _accessToken = null;
            _userId = null;
            _homeserver = "https://matrix.org";
            _nextBatch = null;
            _activeRoomId = null;
            credData = null;
        }

        public User MyInformation { get; private set; }

        public ObservableCollection<Participant> ContactsList { get; private set; } = new ObservableCollection<Participant>();

        public ObservableCollection<Participant> RecentsList { get; private set; } = new ObservableCollection<Participant>();

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;

            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/profile/{_userId}?access_token={_accessToken}");

                if (!response.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to fetch user profile."));
                    return false;
                }

                string responseBody = await response.Content.ReadAsStringAsync();
                var profileData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                string displayName = profileData.TryGetProperty("displayname", out var dnProp)
                    ? dnProp.GetString()
                    : _userId;

                MyInformation = new User(
                    displayName,
                    _userId,
                    _userId,
                    null,
                    UserConnectionStatus.Online,
                    null
                );

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to populate sidebar: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateContactsList()
        {
            return await PopulateListsBackend(ListType.Contacts);
        }

        public async Task<bool> PopulateRecentsList()
        {
            return await PopulateListsBackend(ListType.Recents);
        }

        private enum ListType
        {
            Contacts,
            Recents
        }

        private async Task<bool> PopulateListsBackend(ListType lType)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/joined_rooms?access_token={_accessToken}");

                if (!response.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to fetch rooms."));
                    return false;
                }

                string responseBody = await response.Content.ReadAsStringAsync();
                var roomsData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                var joinedRooms = roomsData.GetProperty("joined_rooms");

                foreach (var roomId in joinedRooms.EnumerateArray())
                {
                    string roomIdStr = roomId.GetString();

                    var roomName = await GetRoomName(roomIdStr);
                    var roomAvatar = await GetRoomAvatar(roomIdStr);
                    var isDirect = await IsDirectMessage(roomIdStr);
                    var memberCount = await GetRoomMemberCount(roomIdStr);
                    User[] members = await GetRoomMembers(roomIdStr);

                    if (lType == ListType.Recents)
                    {
                        _recentRoomMap[roomIdStr] = roomIdStr;
                    }

                    Participant profileData;
                    if (isDirect)
                    {
                        profileData = new User(
                           roomName,
                           roomIdStr,
                           roomIdStr,
                           String.Empty,
                           UserConnectionStatus.Online,
                           roomAvatar
                       );
                    }
                    else
                    {
                        profileData = new Group(
                            roomName,
                            roomIdStr,
                            memberCount,
                            members,
                            roomAvatar
                            );
                    }

                    if (lType == ListType.Recents)
                        RecentsList.Add(profileData);
                    else if (isDirect)
                        ContactsList.Add(profileData);
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to populate lists: {ex.Message}"));
                return false;
            }
        }

        public async Task<string[]> SaveAutoLoginCredential()
        {
            return credData;
        }

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            try
            {
                _homeserver = autoLoginCredentials[0];
                _accessToken = autoLoginCredentials[1];
                _userId = autoLoginCredentials[2];

                if (string.IsNullOrWhiteSpace(_accessToken))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Saved credentials are invalid. Please log in again."));
                    return LoginResult.Failure;
                }

                return await StartClient();
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Auto-login failed: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        private async Task<LoginResult> StartClient()
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/account/whoami?access_token={_accessToken}");

                if (!response.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Authentication failed. Please log in again."));
                    return LoginResult.Failure;
                }

                StartSyncLoop();

                return LoginResult.Success;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to start client: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        private void StartSyncLoop()
        {
            _syncCancellationTokenSource?.Cancel();
            _syncCancellationTokenSource = new CancellationTokenSource();

            Task.Run(async () => await SyncLoop(_syncCancellationTokenSource.Token));
        }

        private async Task SyncLoop(CancellationToken cancellationToken)
        {
            while (!cancellationToken.IsCancellationRequested)
            {
                try
                {
                    string syncUrl = $"{_homeserver}/_matrix/client/r0/sync?access_token={_accessToken}&timeout=30000";

                    if (!string.IsNullOrEmpty(_nextBatch))
                    {
                        syncUrl += $"&since={_nextBatch}";
                    }

                    var response = await _httpClient.GetAsync(syncUrl, cancellationToken);

                    if (!response.IsSuccessStatusCode)
                    {
                        await Task.Delay(5000, cancellationToken);
                        continue;
                    }

                    string responseBody = await response.Content.ReadAsStringAsync();
                    var syncData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    _nextBatch = syncData.GetProperty("next_batch").GetString();

                    if (syncData.TryGetProperty("rooms", out var rooms))
                    {
                        if (rooms.TryGetProperty("join", out var joinedRooms))
                        {
                            foreach (var room in joinedRooms.EnumerateObject())
                            {
                                string roomId = room.Name;

                                if (room.Value.TryGetProperty("timeline", out var timeline))
                                {
                                    if (timeline.TryGetProperty("events", out var events))
                                    {
                                        foreach (var evt in events.EnumerateArray())
                                        {
                                            await ProcessTimelineEvent(roomId, evt);
                                        }
                                    }
                                }

                                if (room.Value.TryGetProperty("ephemeral", out var ephemeral))
                                {
                                    if (ephemeral.TryGetProperty("events", out var ephemeralEvents))
                                    {
                                        foreach (var ephEvent in ephemeralEvents.EnumerateArray())
                                        {
                                            await ProcessEphemeralEvent(roomId, ephEvent);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Sync error: {ex.Message}");
                    await Task.Delay(5000, cancellationToken);
                }
            }
        }

        private async Task ProcessTimelineEvent(string roomId, JsonElement evt)
        {
            try
            {
                string eventType = evt.GetProperty("type").GetString();

                if (eventType != "m.room.message")
                    return;

                string eventId = evt.GetProperty("event_id").GetString();
                string sender = evt.GetProperty("sender").GetString();

                var content = evt.GetProperty("content");
                string msgtype = content.TryGetProperty("msgtype", out var msgtypeProp)
                    ? msgtypeProp.GetString()
                    : "m.text";

                string body = content.TryGetProperty("body", out var bodyProp)
                    ? bodyProp.GetString()
                    : "";

                long originServerTs = evt.GetProperty("origin_server_ts").GetInt64();
                DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;

                if (_recentRoomMap.ContainsKey(roomId))
                {
                }

                if (roomId == _activeRoomId)
                {
                    string displayName = _displayNameCache.TryGetValue(sender, out var name)
                        ? name
                        : await GetDisplayNameForUser(sender, roomId);

                    var senderData = new User(displayName, sender, sender);

                    Attachment[] attachments = null;
                    if (msgtype == "m.image" && content.TryGetProperty("url", out var urlProp))
                    {
                        string mxcUrl = urlProp.GetString();
                        byte[] imageBytes = await _ootb.DownloadMatrixContent(mxcUrl, _homeserver);
                        if (imageBytes != null)
                        {
                            body = null;
                            attachments = new[]
                            {
                                new Attachment(imageBytes, "image.jpg", AttachmentType.Image)
                            };
                        }
                    }

                    var messageItem = new Message(eventId, senderData, timestamp, body, attachments, null);

                    _uiContext?.Post(_ => ActiveConversation.Add(messageItem), null);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing timeline event: {ex.Message}");
            }
        }

        private async Task ProcessEphemeralEvent(string roomId, JsonElement evt)
        {
            try
            {
                string eventType = evt.GetProperty("type").GetString();

                if (eventType == "m.typing")
                {
                    if (roomId != _activeRoomId)
                        return;

                    var content = evt.GetProperty("content");

                    if (content.TryGetProperty("user_ids", out var userIds))
                    {
                        var typingUsers = new List<User>();

                        foreach (var userId in userIds.EnumerateArray())
                        {
                            string userIdStr = userId.GetString();

                            if (userIdStr == _userId)
                                continue;

                            string displayName = _displayNameCache.TryGetValue(userIdStr, out var name)
                                ? name
                                : await GetDisplayNameForUser(userIdStr, roomId);

                            typingUsers.Add(new User(displayName, userIdStr, userIdStr));
                        }

                        _uiContext?.Post(_ =>
                        {
                            TypingUsersList.Clear();
                            foreach (var user in typingUsers)
                            {
                                TypingUsersList.Add(user);
                            }
                        }, null);
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing ephemeral event: {ex.Message}");
            }
        }

        // fetches a single event and wraps it in a MessageItem for use as a reply parent
        private async Task<Message> GetMessageById(string roomId, string eventId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/event/{eventId}?access_token={_accessToken}");

                if (!response.IsSuccessStatusCode)
                    return null;

                string responseBody = await response.Content.ReadAsStringAsync();
                var eventData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                string sender = eventData.GetProperty("sender").GetString();
                var content = eventData.GetProperty("content");
                string body = content.TryGetProperty("body", out var bodyProp)
                    ? bodyProp.GetString()
                    : "";

                long originServerTs = eventData.GetProperty("origin_server_ts").GetInt64();
                DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;

                string displayName = _displayNameCache.TryGetValue(sender, out var name)
                    ? name
                    : sender;

                var senderData = new User(displayName, sender, sender);

                return new Message(eventId, senderData, timestamp, body, null, null);
            }
            catch
            {
                return null;
            }
        }

        private async Task<Dictionary<string, string>> GetRoomMemberDisplayNames(string roomId)
        {
            var displayNames = new Dictionary<string, string>();

            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/joined_members?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var membersData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (membersData.TryGetProperty("joined", out var joined))
                    {
                        foreach (var member in joined.EnumerateObject())
                        {
                            string userId = member.Name;
                            string displayName = userId;

                            if (member.Value.TryGetProperty("display_name", out var dnProp))
                            {
                                var dn = dnProp.GetString();
                                if (!string.IsNullOrEmpty(dn))
                                    displayName = dn;
                            }

                            displayNames[userId] = displayName;
                        }
                    }
                }
            }
            catch
            {
            }

            return displayNames;
        }

        private async Task<string> GetRoomName(string roomId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/state/m.room.name?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var nameData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (nameData.TryGetProperty("name", out var nameProp))
                    {
                        return nameProp.GetString();
                    }
                }

                return roomId;
            }
            catch
            {
                return roomId;
            }
        }

        private async Task<byte[]> GetRoomAvatar(string roomId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/state/m.room.avatar?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var avatarData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (avatarData.TryGetProperty("url", out var urlProp))
                    {
                        string mxcUrl = urlProp.GetString();
                        return await _ootb.DownloadMatrixContent(mxcUrl, _homeserver);
                    }
                }

                return null;
            }
            catch
            {
                return null;
            }
        }

        private async Task<bool> IsDirectMessage(string roomId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/joined_members?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var membersData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (membersData.TryGetProperty("joined", out var joined))
                    {
                        int count = 0;
                        foreach (var _ in joined.EnumerateObject())
                        {
                            count++;
                        }
                        return count == 2;
                    }
                }

                return false;
            }
            catch
            {
                return false;
            }
        }

        private async Task<int> GetRoomMemberCount(string roomId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/joined_members?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var membersData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (membersData.TryGetProperty("joined", out var joined))
                    {
                        int count = 0;
                        foreach (var _ in joined.EnumerateObject())
                        {
                            count++;
                        }
                        return count;
                    }
                }

                return 0;
            }
            catch
            {
                return 0;
            }
        }

        private async Task<User[]> GetRoomMembers(string roomId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/joined_members?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var membersData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (membersData.TryGetProperty("joined", out var joined))
                    {
                        var membersList = new List<User>();

                        foreach (var member in joined.EnumerateObject())
                        {
                            string identifier = member.Name;
                            string displayName = "Unknown";

                            if (member.Value.TryGetProperty("display_name", out var nameElement))
                            {
                                displayName = nameElement.GetString() ?? identifier;
                            }

                            membersList.Add(new User(displayName, identifier, identifier));
                        }

                        return membersList.ToArray();
                    }
                }

                return new User[0];
            }
            catch
            {
                return new User[0];
            }
        }

        private async Task<string> GetDisplayNameForUser(string userId, string roomId)
        {
            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/state/m.room.member/{userId}?access_token={_accessToken}");

                if (response.IsSuccessStatusCode)
                {
                    string responseBody = await response.Content.ReadAsStringAsync();
                    var memberData = JsonSerializer.Deserialize<JsonElement>(responseBody);

                    if (memberData.TryGetProperty("content", out var content))
                    {
                        if (content.TryGetProperty("displayname", out var displayname))
                        {
                            return displayname.GetString();
                        }
                    }
                }

                return userId;
            }
            catch
            {
                return userId;
            }
        }

        public class MatrixOOTBStuff
        {
            private static readonly HttpClient _httpClient = new HttpClient();

            public async Task<byte[]> DownloadMatrixContent(string mxcUrl, string homeserver)
            {
                try
                {
                    if (!mxcUrl.StartsWith("mxc://"))
                        return null;

                    string[] parts = mxcUrl.Substring(6).Split('/');
                    if (parts.Length < 2)
                        return null;

                    string serverName = parts[0];
                    string mediaId = parts[1];

                    string httpUrl = $"{homeserver}/_matrix/media/r0/download/{serverName}/{mediaId}";

                    return await _httpClient.GetByteArrayAsync(httpUrl);
                }
                catch
                {
                    return null;
                }
            }
        }
    }
}