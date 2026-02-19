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
        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[] { new AuthTypeInfo(AuthenticationMethod.Password, "Identifier (@username:homeserver.com)"),
            new AuthTypeInfo(AuthenticationMethod.Passwordless, "Email", "Beeper") };
            }
        }

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
        private SavedCredential credData;
        private Dictionary<string, string> _displayNameCache = new Dictionary<string, string>();
        public readonly Dictionary<string, string> _recentRoomMap = new();
        private string _beeperRequestToken;

        public async Task<string> GetQRCode()
        {
            return String.Empty;
        }

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
        {
            if (authType == AuthenticationMethod.Password)
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
                        string[] parts = username.Split(':', 2);
                        if (parts.Length == 2)
                            _homeserver = $"https://{parts[1]}";
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

                    credData = new SavedCredential(_userId, _accessToken, AuthenticationMethod.Token);
                    return await StartClient();
                }
                catch (Exception ex)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Login error: {ex.Message}"));
                    return LoginResult.Failure;
                }
            }
            else if (authType == AuthenticationMethod.Passwordless)
            {
                if (string.IsNullOrEmpty(username))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Email address is required."));
                    return LoginResult.Failure;
                }
                try
                {
                    // Request 1 — get request token
                    Debug.WriteLine("[Beeper] Sending request 1: POST https://api.beeper.com/user/login");
                    var req1 = new HttpRequestMessage(HttpMethod.Post, "https://api.beeper.com/user/login");
                    req1.Headers.Add("Authorization", "Bearer BEEPER-PRIVATE-API-PLEASE-DONT-USE");
                    req1.Content = new StringContent("", Encoding.UTF8, "application/json");
                    var res1 = await _httpClient.SendAsync(req1);
                    string res1Body = await res1.Content.ReadAsStringAsync();
                    Debug.WriteLine($"[Beeper] Request 1 response: {(int)res1.StatusCode} {res1.StatusCode}");
                    Debug.WriteLine($"[Beeper] Request 1 body: {res1Body}");
                    if (!res1.IsSuccessStatusCode)
                    {
                        Debug.WriteLine("[Beeper] Request 1 failed, aborting login.");
                        OnError?.Invoke(this, new PluginMessageEventArgs($"Beeper login failed: {res1Body}"));
                        return LoginResult.Failure;
                    }
                    var res1Data = JsonSerializer.Deserialize<JsonElement>(res1Body);
                    _beeperRequestToken = res1Data.GetProperty("request").GetString();
                    Debug.WriteLine($"[Beeper] Got request token: {_beeperRequestToken}");

                    // Request 2 — submit email
                    Debug.WriteLine($"[Beeper] Sending request 2: POST https://api.beeper.com/user/login/email (email: {username})");
                    var req2Payload = JsonSerializer.Serialize(new { request = _beeperRequestToken, email = username });
                    var req2 = new HttpRequestMessage(HttpMethod.Post, "https://api.beeper.com/user/login/email");
                    req2.Headers.Add("Authorization", "Bearer BEEPER-PRIVATE-API-PLEASE-DONT-USE");
                    req2.Content = new StringContent(req2Payload, Encoding.UTF8, "application/json");
                    var res2 = await _httpClient.SendAsync(req2);
                    string res2Body = await res2.Content.ReadAsStringAsync();
                    Debug.WriteLine($"[Beeper] Request 2 response: {(int)res2.StatusCode} {res2.StatusCode}");
                    Debug.WriteLine($"[Beeper] Request 2 body: {res2Body}");
                    if (!res2.IsSuccessStatusCode)
                    {
                        Debug.WriteLine("[Beeper] Request 2 failed, aborting login.");
                        OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send login email: {res2Body}"));
                        return LoginResult.Failure;
                    }
                    Debug.WriteLine("[Beeper] Email sent successfully, awaiting OTP.");
                    return LoginResult.TwoFARequired;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"[Beeper] Exception during Passwordless login: {ex.Message}");
                    Debug.WriteLine($"[Beeper] Stack trace: {ex.StackTrace}");
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Beeper login error: {ex.Message}"));
                    return LoginResult.Failure;
                }
            }
            return LoginResult.UnsupportedAuthType;
        }

        public async Task<LoginResult> AuthenticateTwoFA(string code)
        {
            try
            {
                // Request 3 — submit OTP code
                Debug.WriteLine($"[Beeper] Sending request 3: POST https://api.beeper.com/user/login/response (code: {code})");
                var req3Payload = JsonSerializer.Serialize(new { request = _beeperRequestToken, response = code });
                var req3 = new HttpRequestMessage(HttpMethod.Post, "https://api.beeper.com/user/login/response");
                req3.Headers.Add("Authorization", "Bearer BEEPER-PRIVATE-API-PLEASE-DONT-USE");
                req3.Content = new StringContent(req3Payload, Encoding.UTF8, "application/json");
                var res3 = await _httpClient.SendAsync(req3);
                string res3Body = await res3.Content.ReadAsStringAsync();
                Debug.WriteLine($"[Beeper] Request 3 response: {(int)res3.StatusCode} {res3.StatusCode}");
                Debug.WriteLine($"[Beeper] Request 3 body: {res3Body}");
                if (!res3.IsSuccessStatusCode)
                {
                    Debug.WriteLine("[Beeper] Request 3 failed, invalid OTP.");
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Invalid code: {res3Body}"));
                    return LoginResult.Failure;
                }
                var res3Data = JsonSerializer.Deserialize<JsonElement>(res3Body);
                string jwt = res3Data.GetProperty("token").GetString();
                Debug.WriteLine($"[Beeper] Got JWT (first 20 chars): {jwt.Substring(0, Math.Min(20, jwt.Length))}...");

                // Request 4 — exchange JWT for Matrix session
                if (res3Data.TryGetProperty("whoami", out var whoami) &&
                    whoami.TryGetProperty("userInfo", out var userInfo) &&
                    userInfo.TryGetProperty("hungryUrl", out var hungryUrl))
                {
                    _homeserver = hungryUrl.GetString();
                    Debug.WriteLine($"[Beeper] Homeserver from whoami: {_homeserver}");
                }
                else
                {
                    _homeserver = "https://matrix.beeper.com";
                    Debug.WriteLine($"[Beeper] Homeserver not found in whoami, using fallback: {_homeserver}");
                }

                Debug.WriteLine($"[Beeper] Sending request 4: POST {_homeserver}/_matrix/client/v3/login");
                var req4Payload = JsonSerializer.Serialize(new
                {
                    type = "org.matrix.login.jwt",
                    token = jwt,
                    initial_device_display_name = "Skymu"
                });
                var res4 = await _httpClient.PostAsync(
                    $"{_homeserver}/_matrix/client/v3/login",
                    new StringContent(req4Payload, Encoding.UTF8, "application/json"));
                string res4Body = await res4.Content.ReadAsStringAsync();
                Debug.WriteLine($"[Beeper] Request 4 response: {(int)res4.StatusCode} {res4.StatusCode}");
                Debug.WriteLine($"[Beeper] Request 4 body: {res4Body}");
                if (!res4.IsSuccessStatusCode)
                {
                    Debug.WriteLine("[Beeper] Request 4 failed, Matrix login rejected.");
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Matrix login failed: {res4Body}"));
                    return LoginResult.Failure;
                }
                var res4Data = JsonSerializer.Deserialize<JsonElement>(res4Body);
                _accessToken = res4Data.GetProperty("access_token").GetString();
                _userId = res4Data.GetProperty("user_id").GetString();
                Debug.WriteLine($"[Beeper] Logged in as {_userId} on {_homeserver}");
                credData = new SavedCredential(_userId, _accessToken, AuthenticationMethod.Token);
                Debug.WriteLine("[Beeper] Credentials stored, starting client.");
                return await StartClient();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[Beeper] Exception during LoginOptStep: {ex.Message}");
                Debug.WriteLine($"[Beeper] Stack trace: {ex.StackTrace}");
                OnError?.Invoke(this, new PluginMessageEventArgs($"Beeper login error: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment = null, string parent_message_identifier = null)
        {
            if (string.IsNullOrEmpty(identifier)) return false;

            try
            {
                bool success = true;

                if (attachment != null)
                {
                    if (attachment.Type != AttachmentType.Image)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs($"Unsupported attachment type: {attachment.Type}. Matrix currently supports Image attachments only."));
                        return false;
                    }
                    success = await SendImageMessage(identifier, attachment.File, attachment.Name ?? "image.jpg");
                }

                if (!string.IsNullOrEmpty(text))
                {
                    if (parent_message_identifier != null)
                        success = await SendReplyMessage(identifier, text, parent_message_identifier);
                    else
                    {
                        var messageData = new { msgtype = "m.text", body = text };
                        string messageJson = JsonSerializer.Serialize(messageData);
                        var content = new StringContent(messageJson, Encoding.UTF8, "application/json");
                        string txnId = Guid.NewGuid().ToString();
                        var response = await _httpClient.PutAsync(
                            $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/send/m.room.message/{txnId}?access_token={_accessToken}",
                            content);
                        success = response.IsSuccessStatusCode;
                    }
                }

                return success;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SetPresenceStatus(UserConnectionStatus status)
        {
            try
            {
                string presenceStr = status switch
                {
                    UserConnectionStatus.Online => "online",
                    UserConnectionStatus.Offline or UserConnectionStatus.Invisible => "offline",
                    UserConnectionStatus.Away or UserConnectionStatus.DoNotDisturb => "unavailable",
                    _ => "online"
                };

                var body = new { presence = presenceStr };
                string bodyJson = JsonSerializer.Serialize(body);
                var content = new StringContent(bodyJson, Encoding.UTF8, "application/json");
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/presence/{Uri.EscapeDataString(_userId)}/status?access_token={_accessToken}",
                    content);
                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to set presence: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SetTextStatus(string status)
        {
            try
            {
                var body = new { presence = "online", status_msg = status ?? "" };
                string bodyJson = JsonSerializer.Serialize(body);
                var content = new StringContent(bodyJson, Encoding.UTF8, "application/json");
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/presence/{Uri.EscapeDataString(_userId)}/status?access_token={_accessToken}",
                    content);
                return response.IsSuccessStatusCode;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to set text status: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SendImageMessage(string identifier, byte[] imageData, string filename = "image.jpg")
        {
            if (string.IsNullOrEmpty(identifier) || imageData == null || imageData.Length == 0)
                return false;

            try
            {
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
                    info = new { mimetype = "image/jpeg", size = imageData.Length }
                };

                string messageJson = JsonSerializer.Serialize(messageData);
                var content = new StringContent(messageJson, Encoding.UTF8, "application/json");
                string txnId = Guid.NewGuid().ToString();
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/send/m.room.message/{txnId}?access_token={_accessToken}",
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
                var replyData = new Dictionary<string, object>
                {
                    ["msgtype"] = "m.text",
                    ["body"] = text,
                    ["m.relates_to"] = new Dictionary<string, object>
                    {
                        ["m.in_reply_to"] = new Dictionary<string, object> { ["event_id"] = replyToEventId }
                    }
                };

                string messageJson = JsonSerializer.Serialize(replyData);
                var content = new StringContent(messageJson, Encoding.UTF8, "application/json");
                string txnId = Guid.NewGuid().ToString();
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/send/m.room.message/{txnId}?access_token={_accessToken}",
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
                var typingData = new { typing = isTyping, timeout = 30000 };
                string typingJson = JsonSerializer.Serialize(typingData);
                var content = new StringContent(typingJson, Encoding.UTF8, "application/json");
                var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/typing/{_userId}?access_token={_accessToken}",
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

            _activeRoomId = identifier;

            try
            {
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/messages?access_token={_accessToken}&dir=b&limit=100");

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
                    messagesList.Add(item);
                messagesList.Reverse();

                _displayNameCache = await GetRoomMemberDisplayNames(identifier);

                var eventItemCache = new Dictionary<string, Message>();

                foreach (var message in messagesList)
                {
                    string eventType = message.GetProperty("type").GetString();
                    string eventId = message.GetProperty("event_id").GetString();
                    string sender = message.GetProperty("sender").GetString();
                    long originServerTs = message.GetProperty("origin_server_ts").GetInt64();
                    DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;
                    string displayName = _displayNameCache.TryGetValue(sender, out var cachedName) ? cachedName : sender;
                    var senderData = new User(displayName, sender, sender);

                    // Handle encrypted messages — show stub, no decryption yet
                    if (eventType == "m.room.encrypted")
                    {
                        var encryptedItem = new Message(eventId, senderData, timestamp, "🔒 Encrypted message", null, null);
                        eventItemCache[eventId] = encryptedItem;
                        ActiveConversation.Add(encryptedItem);
                        continue;
                    }

                    // Skip non-message events (membership changes, topic changes, etc.)
                    if (eventType != "m.room.message")
                        continue;

                    var content = message.GetProperty("content");

                    // Skip redacted messages (content will be empty object)
                    if (!content.TryGetProperty("msgtype", out var msgtypeProp))
                        continue;

                    string msgtype = msgtypeProp.GetString();
                    string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";

                    Attachment[] attachments = null;

                    if (msgtype == "m.image" && content.TryGetProperty("url", out var urlProp))
                    {
                        string mxcUrl = urlProp.GetString();
                        byte[] imageBytes = await _ootb.DownloadMatrixContent(mxcUrl, _homeserver);
                        if (imageBytes != null)
                        {
                            attachments = new[] { new Attachment(imageBytes, body ?? "image.jpg", AttachmentType.Image) };
                            body = null;
                        }
                    }
                    else if (msgtype == "m.video" || msgtype == "m.audio" || msgtype == "m.file")
                    {
                        // Show as a stub — file types we don't render but shouldn't silently drop
                        body = $"📎 {body}";
                    }
                    else if (msgtype == "m.notice")
                    {
                        // Bot/system notices — show as-is with a subtle indicator
                        body = $"ℹ️ {body}";
                    }
                    else if (msgtype == "m.emote")
                    {
                        // /me actions
                        body = $"* {displayName} {body}";
                    }

                    Message parentMessage = null;
                    if (content.TryGetProperty("m.relates_to", out var relatesTo) &&
                        relatesTo.TryGetProperty("m.in_reply_to", out var inReplyTo))
                    {
                        string replyToId = inReplyTo.GetProperty("event_id").GetString();
                        if (!eventItemCache.TryGetValue(replyToId, out parentMessage))
                        {
                            var replyInfo = await GetMessageById(identifier, replyToId);
                            if (replyInfo != null)
                                parentMessage = replyInfo;
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

                MyInformation = new User(displayName, _userId, _userId, null, UserConnectionStatus.Online, null);
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to populate sidebar: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateContactsList() => await PopulateListsBackend(ListType.Contacts);
        public async Task<bool> PopulateRecentsList() => await PopulateListsBackend(ListType.Recents);

        private enum ListType { Contacts, Recents }

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
                Debug.WriteLine($"[Matrix] Total joined rooms: {joinedRooms.GetArrayLength()}");
                foreach (var roomId in joinedRooms.EnumerateArray())
                {
                    Debug.WriteLine($"[Matrix] Room: {roomId.GetString()}");
                    string roomIdStr = roomId.GetString();

                    var roomName = await GetRoomName(roomIdStr);
                    var roomAvatar = await GetRoomAvatar(roomIdStr);
                    var isDirect = await IsDirectMessage(roomIdStr);
                    var memberCount = await GetRoomMemberCount(roomIdStr);
                    User[] members = await GetRoomMembers(roomIdStr);

                    if (lType == ListType.Recents)
                        _recentRoomMap[roomIdStr] = roomIdStr;

                    Participant profileData;
                    if (isDirect)
                    {
                        profileData = new User(roomName, roomIdStr, roomIdStr, String.Empty, UserConnectionStatus.Online, roomAvatar);
                    }
                    else
                    {
                        profileData = new Group(roomName, roomIdStr, memberCount, members, roomAvatar);
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

        public async Task<SavedCredential> StoreCredential() => credData;

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            try
            {
                _accessToken = credential.PasswordOrToken;
                _userId = credential.Username;

                if (_userId.Contains(":beeper.com"))
                    _homeserver = "https://matrix.beeper.com";
                else if (_userId.Contains(":"))
                {
                    string[] parts = _userId.Split(':', 2);
                    if (parts.Length == 2)
                        _homeserver = $"https://{parts[1]}";
                }

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
                        syncUrl += $"&since={_nextBatch}";

                    var response = await _httpClient.GetAsync(syncUrl, cancellationToken);
                    if (!response.IsSuccessStatusCode)
                    {
                        await Task.Delay(5000, cancellationToken);
                        continue;
                    }

                    string responseBody = await response.Content.ReadAsStringAsync();
                    var syncData = JsonSerializer.Deserialize<JsonElement>(responseBody);
                    _nextBatch = syncData.GetProperty("next_batch").GetString();

                    if (syncData.TryGetProperty("rooms", out var rooms) &&
                        rooms.TryGetProperty("join", out var joinedRooms))
                    {
                        foreach (var room in joinedRooms.EnumerateObject())
                        {
                            string roomId = room.Name;

                            if (room.Value.TryGetProperty("timeline", out var timeline) &&
                                timeline.TryGetProperty("events", out var events))
                            {
                                foreach (var evt in events.EnumerateArray())
                                    await ProcessTimelineEvent(roomId, evt);
                            }

                            if (room.Value.TryGetProperty("ephemeral", out var ephemeral) &&
                                ephemeral.TryGetProperty("events", out var ephemeralEvents))
                            {
                                foreach (var ephEvent in ephemeralEvents.EnumerateArray())
                                    await ProcessEphemeralEvent(roomId, ephEvent);
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

                // Encrypted message — show stub, no decryption yet
                if (eventType == "m.room.encrypted")
                {
                    string eventId = evt.GetProperty("event_id").GetString();
                    string sender = evt.GetProperty("sender").GetString();
                    long originServerTs = evt.GetProperty("origin_server_ts").GetInt64();
                    DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;

                    string displayName = _displayNameCache.TryGetValue(sender, out var cachedName)
                        ? cachedName
                        : await GetDisplayNameForUser(sender, roomId);

                    var senderData = new User(displayName, sender, sender);
                    var encryptedItem = new Message(eventId, senderData, timestamp, "[encrypted message]", null, null);

                    if (roomId == _activeRoomId)
                    {
                        _uiContext?.Post(_ => ActiveConversation.Add(encryptedItem), null);
                    }
                    else if (_recentRoomMap.ContainsKey(roomId))
                    {
                        _uiContext?.Post(_ =>
                            Notification?.Invoke(this, new NotificationEventArgs(encryptedItem, UserConnectionStatus.Online, roomId)),
                            null);
                    }
                    return;
                }

                // Only process plain messages from here
                if (eventType != "m.room.message")
                    return;

                var content = evt.GetProperty("content");

                // Skip redacted events (content has no msgtype)
                if (!content.TryGetProperty("msgtype", out var msgtypeProp))
                    return;

                string msgtype = msgtypeProp.GetString();
                string eventIdMsg = evt.GetProperty("event_id").GetString();
                string senderMsg = evt.GetProperty("sender").GetString();
                long ts = evt.GetProperty("origin_server_ts").GetInt64();
                DateTime timestampMsg = DateTimeOffset.FromUnixTimeMilliseconds(ts).DateTime;
                string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";

                if (roomId == _activeRoomId)
                {
                    string displayName = _displayNameCache.TryGetValue(senderMsg, out var name)
                        ? name
                        : await GetDisplayNameForUser(senderMsg, roomId);

                    var senderData = new User(displayName, senderMsg, senderMsg);
                    Attachment[] attachments = null;

                    if (msgtype == "m.image" && content.TryGetProperty("url", out var urlProp))
                    {
                        string mxcUrl = urlProp.GetString();
                        byte[] imageBytes = await _ootb.DownloadMatrixContent(mxcUrl, _homeserver);
                        if (imageBytes != null)
                        {
                            attachments = new[] { new Attachment(imageBytes, "image.jpg", AttachmentType.Image) };
                            body = null;
                        }
                    }
                    else if (msgtype == "m.video" || msgtype == "m.audio" || msgtype == "m.file")
                    {
                        body = $"📎 {body}";
                    }
                    else if (msgtype == "m.notice")
                    {
                        body = $"ℹ️ {body}";
                    }
                    else if (msgtype == "m.emote")
                    {
                        body = $"* {displayName} {body}";
                    }

                    var messageItem = new Message(eventIdMsg, senderData, timestampMsg, body, attachments, null);
                    _uiContext?.Post(_ => ActiveConversation.Add(messageItem), null);
                }
                // Fire notification for messages in non-active rooms
                if (roomId != _activeRoomId && _recentRoomMap.ContainsKey(roomId))
                {
                    string displayName = _displayNameCache.TryGetValue(senderMsg, out var notifName)
                        ? notifName
                        : await GetDisplayNameForUser(senderMsg, roomId);

                    var senderData = new User(displayName, senderMsg, senderMsg);
                    var notifMessage = new Message(eventIdMsg, senderData, timestampMsg, body, null, null);

                    _uiContext?.Post(_ =>
                        Notification?.Invoke(this, new NotificationEventArgs(notifMessage, UserConnectionStatus.Online, roomId)),
                        null);
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

                if (eventType == "m.typing" && roomId == _activeRoomId)
                {
                    var content = evt.GetProperty("content");
                    if (content.TryGetProperty("user_ids", out var userIds))
                    {
                        var typingUsers = new List<User>();
                        foreach (var userId in userIds.EnumerateArray())
                        {
                            string userIdStr = userId.GetString();
                            if (userIdStr == _userId) continue;

                            string displayName = _displayNameCache.TryGetValue(userIdStr, out var name)
                                ? name
                                : await GetDisplayNameForUser(userIdStr, roomId);

                            typingUsers.Add(new User(displayName, userIdStr, userIdStr));
                        }

                        _uiContext?.Post(_ =>
                        {
                            TypingUsersList.Clear();
                            foreach (var user in typingUsers)
                                TypingUsersList.Add(user);
                        }, null);
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing ephemeral event: {ex.Message}");
            }
        }

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

                string eventType = eventData.GetProperty("type").GetString();
                string sender = eventData.GetProperty("sender").GetString();
                long originServerTs = eventData.GetProperty("origin_server_ts").GetInt64();
                DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;
                string displayName = _displayNameCache.TryGetValue(sender, out var name) ? name : sender;
                var senderData = new User(displayName, sender, sender);

                // Return a stub for encrypted reply parents
                if (eventType == "m.room.encrypted")
                    return new Message(eventId, senderData, timestamp, "🔒 Encrypted message", null, null);

                var content = eventData.GetProperty("content");
                string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";

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
            catch { }
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
                        return nameProp.GetString();
                }
                return roomId;
            }
            catch { return roomId; }
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
                        return await _ootb.DownloadMatrixContent(urlProp.GetString(), _homeserver);
                }
                return null;
            }
            catch { return null; }
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
                        foreach (var _ in joined.EnumerateObject()) count++;
                        return count <= 2;
                    }
                }
                return false;
            }
            catch { return false; }
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
                        foreach (var _ in joined.EnumerateObject()) count++;
                        return count;
                    }
                }
                return 0;
            }
            catch { return 0; }
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
                            string displayName = identifier;
                            if (member.Value.TryGetProperty("display_name", out var nameElement))
                                displayName = nameElement.GetString() ?? identifier;
                            membersList.Add(new User(displayName, identifier, identifier));
                        }
                        return membersList.ToArray();
                    }
                }
                return new User[0];
            }
            catch { return new User[0]; }
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
                    if (memberData.TryGetProperty("content", out var content) &&
                        content.TryGetProperty("displayname", out var displayname))
                        return displayname.GetString();
                }
                return userId;
            }
            catch { return userId; }
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
                catch { return null; }
            }
        }
    }
}