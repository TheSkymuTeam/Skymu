/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using MiddleMan;
using MiddleMan.Enumerations;
using MiddleMan.Classes;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Net.Http;
using MiddleMan.Networking;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

namespace Matrix
{
    public class Core : ICore
    {
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;

        public string Name => "Matrix";
        public string InternalName => "matrix";
        public bool SupportsServers => false;

        public AuthTypeInfo[] AuthenticationTypes => new[]
        {
            new AuthTypeInfo(
                AuthenticationMethod.Password,
                "Identifier (@username:homeserver.com)"
            ),
            new AuthTypeInfo(AuthenticationMethod.Passwordless, "Email", "Beeper"),
        };

        private string _accessToken;
        private User _user;
        private string _homeserver = "https://matrix.org";
        private string _nextBatch;
        private static readonly HttpClient _httpClient = new HttpClient(new ManagedHttpHandler());
        private CancellationTokenSource _syncCancellationTokenSource;
        private SynchronizationContext _uiContext;

        public ObservableCollection<User> TypingUsersList { get; private set; } =
            new ObservableCollection<User>();

        public ClickableConfiguration[] ClickableConfigurations => new ClickableConfiguration[]
        {
            new ClickableConfiguration(ClickableItemType.User, "@", " "),
            new ClickableConfiguration(ClickableItemType.ServerChannel, "#", " "),
        };

        private string _activeRoomId;
        private SavedCredential _credData;
        private Dictionary<string, string> _displayNameCache = new Dictionary<string, string>();
        public readonly Dictionary<string, string> _recentRoomMap = new Dictionary<string, string>();
        private string _beeperRequestToken;
        private User _pendingBeeperUser;

        private bool _initialSyncDone = false;

        public Task<string> GetQRCode() => Task.FromResult(string.Empty);

        public async Task<LoginResult> Authenticate(
            AuthenticationMethod authType,
            string username,
            string password = null)
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
                        string[] parts = username.Split(new char[] { ':' }, 2, StringSplitOptions.None);
                        if (parts.Length == 2)
                            _homeserver = $"https://{parts[1]}";
                    }

                    var loginData = new
                    {
                        type = "m.login.password",
                        identifier = new
                        {
                            type = "m.id.user",
                            user = username.TrimStart('@').Split(':')[0],
                        },
                        password,
                    };

                    string loginJson = JsonSerializer.Serialize(loginData);
                    var loginContent = new StringContent(loginJson, Encoding.UTF8, "application/json");

                    string loginBody;
                    using (var loginResponse = await _httpClient.PostAsync(
                        $"{_homeserver}/_matrix/client/r0/login", loginContent))
                    {
                        loginBody = await loginResponse.Content.ReadAsStringAsync();
                        if (!loginResponse.IsSuccessStatusCode)
                        {
                            OnError?.Invoke(this, new PluginMessageEventArgs($"Login failed: {loginBody}"));
                            return LoginResult.Failure;
                        }
                    }

                    var loginResult = JsonSerializer.Deserialize<JsonElement>(loginBody);
                    _accessToken = loginResult.GetProperty("access_token").GetString();
                    string userId = loginResult.GetProperty("user_id").GetString();

                    string displayName = userId;
                    using (var profileResponse = await _httpClient.GetAsync(
                        $"{_homeserver}/_matrix/client/r0/profile/{Uri.EscapeDataString(userId)}?access_token={_accessToken}"))
                    {
                        if (profileResponse.IsSuccessStatusCode)
                        {
                            string profileBody = await profileResponse.Content.ReadAsStringAsync();
                            var profileData = JsonSerializer.Deserialize<JsonElement>(profileBody);
                            if (profileData.TryGetProperty("displayname", out var dnProp) &&
                                !string.IsNullOrEmpty(dnProp.GetString()))
                                displayName = dnProp.GetString();
                        }
                        else
                        {
                            OnWarning?.Invoke(this, new PluginMessageEventArgs("Could not fetch profile; using user ID as display name."));
                        }
                    }

                    _user = new User(displayName, userId, userId);
                    _credData = new SavedCredential(_user, _accessToken, AuthenticationMethod.Token, InternalName);
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
                    Debug.WriteLine("[Beeper] Request 1: POST https://api.beeper.com/user/login");
                    string res1Body;
                    using (var req1 = new HttpRequestMessage(HttpMethod.Post, "https://api.beeper.com/user/login"))
                    {
                        req1.Headers.Add("Authorization", "Bearer BEEPER-PRIVATE-API-PLEASE-DONT-USE");
                        req1.Content = new StringContent("", Encoding.UTF8, "application/json");
                        using (var res1 = await _httpClient.SendAsync(req1))
                        {
                            res1Body = await res1.Content.ReadAsStringAsync();
                            Debug.WriteLine($"[Beeper] Request 1 -> {(int)res1.StatusCode}: {res1Body}");
                            if (!res1.IsSuccessStatusCode)
                            {
                                OnError?.Invoke(this, new PluginMessageEventArgs($"Beeper login failed: {res1Body}"));
                                return LoginResult.Failure;
                            }
                        }
                    }

                    var res1Data = JsonSerializer.Deserialize<JsonElement>(res1Body);
                    _beeperRequestToken = res1Data.GetProperty("request").GetString();

                    Debug.WriteLine($"[Beeper] Request 2: POST https://api.beeper.com/user/login/email (email: {username})");
                    string req2Payload = JsonSerializer.Serialize(new { request = _beeperRequestToken, email = username });
                    using (var req2 = new HttpRequestMessage(HttpMethod.Post, "https://api.beeper.com/user/login/email"))
                    {
                        req2.Headers.Add("Authorization", "Bearer BEEPER-PRIVATE-API-PLEASE-DONT-USE");
                        req2.Content = new StringContent(req2Payload, Encoding.UTF8, "application/json");
                        using (var res2 = await _httpClient.SendAsync(req2))
                        {
                            string res2Body = await res2.Content.ReadAsStringAsync();
                            Debug.WriteLine($"[Beeper] Request 2 -> {(int)res2.StatusCode}: {res2Body}");
                            if (!res2.IsSuccessStatusCode)
                            {
                                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send login email: {res2Body}"));
                                return LoginResult.Failure;
                            }
                        }
                    }

                    _pendingBeeperUser = new User(username, username, username);
                    Debug.WriteLine("[Beeper] OTP email sent successfully.");
                    return LoginResult.TwoFARequired;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"[Beeper] Exception: {ex.Message}\n{ex.StackTrace}");
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
                Debug.WriteLine($"[Beeper] Request 3: POST https://api.beeper.com/user/login/response (code: {code})");
                string req3Payload = JsonSerializer.Serialize(new { request = _beeperRequestToken, response = code });

                string res3Body;
                using (var req3 = new HttpRequestMessage(HttpMethod.Post, "https://api.beeper.com/user/login/response"))
                {
                    req3.Headers.Add("Authorization", "Bearer BEEPER-PRIVATE-API-PLEASE-DONT-USE");
                    req3.Content = new StringContent(req3Payload, Encoding.UTF8, "application/json");
                    using (var res3 = await _httpClient.SendAsync(req3))
                    {
                        res3Body = await res3.Content.ReadAsStringAsync();
                        Debug.WriteLine($"[Beeper] Request 3 -> {(int)res3.StatusCode}: {res3Body}");
                        if (!res3.IsSuccessStatusCode)
                        {
                            OnError?.Invoke(this, new PluginMessageEventArgs($"Invalid code: {res3Body}"));
                            return LoginResult.Failure;
                        }
                    }
                }

                var res3Data = JsonSerializer.Deserialize<JsonElement>(res3Body);
                string jwt = res3Data.GetProperty("token").GetString();

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

                Debug.WriteLine($"[Beeper] Request 4: POST {_homeserver}/_matrix/client/v3/login");
                string req4Payload = JsonSerializer.Serialize(new
                {
                    type = "org.matrix.login.jwt",
                    token = jwt,
                    initial_device_display_name = "Skymu",
                });

                string res4Body;
                using (var res4 = await _httpClient.PostAsync(
                    $"{_homeserver}/_matrix/client/v3/login",
                    new StringContent(req4Payload, Encoding.UTF8, "application/json")))
                {
                    res4Body = await res4.Content.ReadAsStringAsync();
                    Debug.WriteLine($"[Beeper] Request 4 -> {(int)res4.StatusCode}: {res4Body}");
                    if (!res4.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs($"Matrix login failed: {res4Body}"));
                        return LoginResult.Failure;
                    }
                }

                var res4Data = JsonSerializer.Deserialize<JsonElement>(res4Body);
                _accessToken = res4Data.GetProperty("access_token").GetString();
                string userId = res4Data.GetProperty("user_id").GetString();

                string displayName = userId;
                using (var profileResponse = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/profile/{Uri.EscapeDataString(userId)}?access_token={_accessToken}"))
                {
                    if (profileResponse.IsSuccessStatusCode)
                    {
                        string profileBody = await profileResponse.Content.ReadAsStringAsync();
                        var profileData = JsonSerializer.Deserialize<JsonElement>(profileBody);
                        if (profileData.TryGetProperty("displayname", out var dnProp) &&
                            !string.IsNullOrEmpty(dnProp.GetString()))
                            displayName = dnProp.GetString();
                    }
                }

                _user = new User(displayName, userId, userId);
                Debug.WriteLine($"[Beeper] Logged in as {userId} ({displayName}) on {_homeserver}");
                _credData = new SavedCredential(_user, _accessToken, AuthenticationMethod.Token, InternalName);
                _pendingBeeperUser = null;
                return await StartClient();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[Beeper] Exception: {ex.Message}\n{ex.StackTrace}");
                OnError?.Invoke(this, new PluginMessageEventArgs($"Beeper login error: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            try
            {
                _accessToken = credential.PasswordOrToken;
                _user = credential.User;

                string identifier = _user.Identifier.TrimStart('@');
                if (identifier.Contains(":"))
                {
                    string[] parts = identifier.Split(new char[] { ':' }, 2, StringSplitOptions.None);
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
                using (var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/account/whoami?access_token={_accessToken}"))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs("Authentication failed. Please log in again."));
                        return LoginResult.Failure;
                    }
                }

                return LoginResult.Success;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to start client: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public User MyInformation { get; private set; }
        public ObservableCollection<DirectMessage> ContactsList { get; private set; } =
            new ObservableCollection<DirectMessage>();
        public ObservableCollection<Conversation> RecentsList { get; private set; } =
            new ObservableCollection<Conversation>();
        public ObservableCollection<Server> ServerList { get; private set; }

        public Task<bool> PopulateUserInformation()
        {
            _uiContext = SynchronizationContext.Current;
            MyInformation = _user;
            return Task.FromResult(true);
        }
        public async Task<bool> PopulateContactsList() => await PopulateFromInitialSync();

        public Task<bool> PopulateRecentsList() => Task.FromResult(true);

        public Task<bool> PopulateServerList() => Task.FromResult(false);

        private async Task<bool> PopulateFromInitialSync()
        {
            if (_initialSyncDone)
                return true;

            try
            {
                string filterJson = Uri.EscapeDataString(JsonSerializer.Serialize(new
                {
                    room = new
                    {
                        state = new
                        {
                            types = new[] { "m.room.name", "m.room.avatar", "m.room.member" }
                        },
                        timeline = new { limit = 1 },
                        ephemeral = new { types = new string[0] },
                        account_data = new { types = new string[0] }
                    },
                    presence = new { types = new string[0] }
                }));

                Debug.WriteLine("[Matrix] Starting initial sync...");

                string responseBody;
                using (var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/sync?access_token={_accessToken}&filter={filterJson}&timeout=0"))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs(
                            $"Initial sync failed: {await response.Content.ReadAsStringAsync()}"));
                        return false;
                    }
                    responseBody = await response.Content.ReadAsStringAsync();
                }

                var syncData = JsonSerializer.Deserialize<JsonElement>(responseBody);
                _nextBatch = syncData.GetProperty("next_batch").GetString();
                Debug.WriteLine($"[Matrix] Initial sync complete. next_batch={_nextBatch}");

                if (!syncData.TryGetProperty("rooms", out var rooms) ||
                    !rooms.TryGetProperty("join", out var joinedRooms))
                {
                    StartSyncLoop();
                    _initialSyncDone = true;
                    return true;
                }

                foreach (var room in joinedRooms.EnumerateObject())
                {
                    string roomId = room.Name;
                    string roomName = roomId;
                    byte[] roomAvatar = null;
                    string pendingAvatarUrl = null;
                    var memberUsers = new List<User>();

                    if (room.Value.TryGetProperty("state", out var state) &&
                        state.TryGetProperty("events", out var stateEvents))
                    {
                        foreach (var evt in stateEvents.EnumerateArray())
                        {
                            if (!evt.TryGetProperty("type", out var typeProp)) continue;
                            string type = typeProp.GetString();

                            if (type == "m.room.name" &&
                                evt.TryGetProperty("content", out var nameContent) &&
                                nameContent.TryGetProperty("name", out var nameProp) &&
                                !string.IsNullOrEmpty(nameProp.GetString()))
                            {
                                roomName = nameProp.GetString();
                            }
                            else if (type == "m.room.avatar" &&
                                     evt.TryGetProperty("content", out var avatarContent) &&
                                     avatarContent.TryGetProperty("url", out var avatarUrlProp) &&
                                     !string.IsNullOrEmpty(avatarUrlProp.GetString()))
                            {
                                pendingAvatarUrl = avatarUrlProp.GetString();
                            }
                            else if (type == "m.room.member" &&
                                     evt.TryGetProperty("content", out var memberContent) &&
                                     memberContent.TryGetProperty("membership", out var membership) &&
                                     membership.GetString() == "join" &&
                                     evt.TryGetProperty("state_key", out var stateKey))
                            {
                                string userId = stateKey.GetString();
                                if (string.IsNullOrEmpty(userId)) continue;

                                string dn = userId;
                                if (memberContent.TryGetProperty("displayname", out var dnProp) &&
                                    !string.IsNullOrEmpty(dnProp.GetString()))
                                    dn = dnProp.GetString();

                                _displayNameCache[userId] = dn;
                                memberUsers.Add(new User(dn, userId, userId));
                            }
                        }
                    }

                    bool isDirect = memberUsers.Count <= 2;
                    _recentRoomMap[roomId] = roomId;

                    Conversation conversation;
                    if (isDirect)
                        conversation = new DirectMessage(
                            new User(roomName, roomId, roomId, string.Empty, PresenceStatus.Online, null),
                            0, roomId, DateTime.Now);
                    else
                        conversation = new Group(
                            roomName, roomId, 0, memberUsers.ToArray(), null, DateTime.Now);

                    _uiContext?.Post(_ =>
                    {
                        RecentsList.Add(conversation);
                        if (isDirect && conversation is DirectMessage dm)
                            ContactsList.Add(dm);
                    }, null);

                    // download avatar in background; doesn't block list population
                    if (pendingAvatarUrl != null)
                    {
                        string capturedUrl = pendingAvatarUrl;
                        Conversation capturedConv = conversation;
                        _ = Task.Run(async () =>
                        {
                            byte[] bytes = await MatrixOOTBStuff.DownloadMatrixContent(
                                capturedUrl, _homeserver, _httpClient);
                            if (bytes == null) return;
                            // TODO add setter
                        });
                    }
                }

                Debug.WriteLine($"[Matrix] Populated {RecentsList.Count} recents, {ContactsList.Count} contacts.");

                _initialSyncDone = true;
                StartSyncLoop();
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Initial sync failed: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SendMessage(
            string identifier,
            string text,
            Attachment attachment = null,
            string parent_message_identifier = null)
        {
            if (string.IsNullOrEmpty(identifier))
                return false;

            try
            {
                bool success = true;

                if (attachment != null)
                {
                    if (attachment.Type == AttachmentType.Image)
                    {
                        success = await SendImageMessage(identifier, attachment.File, attachment.Name ?? "image.jpg");
                    }
                    else
                    {
                        OnWarning?.Invoke(this, new PluginMessageEventArgs(
                            $"Attachment type '{attachment.Type}' is not yet fully supported; sending filename only."));
                        text = string.IsNullOrEmpty(text)
                            ? $"==Generic file:== {attachment.Name}"
                            : $"==Generic file:== {attachment.Name}\n{text}";
                    }
                }

                if (!string.IsNullOrEmpty(text))
                {
                    success = parent_message_identifier != null
                        ? await SendReplyMessage(identifier, text, parent_message_identifier)
                        : await SendTextMessage(identifier, text);
                }

                return success;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        private async Task<bool> SendTextMessage(string roomId, string text)
        {
            string messageJson = JsonSerializer.Serialize(new { msgtype = "m.text", body = text });
            string txnId = Guid.NewGuid().ToString();
            using (var response = await _httpClient.PutAsync(
                $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/send/m.room.message/{txnId}?access_token={_accessToken}",
                new StringContent(messageJson, Encoding.UTF8, "application/json")))
            {
                return response.IsSuccessStatusCode;
            }
        }

        public async Task<bool> SendImageMessage(string identifier, byte[] imageData, string filename = "image.jpg")
        {
            if (string.IsNullOrEmpty(identifier) || imageData == null || imageData.Length == 0)
                return false;

            try
            {
                var imageContent = new ByteArrayContent(imageData);
                imageContent.Headers.ContentType =
                    new System.Net.Http.Headers.MediaTypeHeaderValue("image/jpeg");

                string contentUri;
                using (var uploadResponse = await _httpClient.PostAsync(
                    $"{_homeserver}/_matrix/media/r0/upload?filename={filename}&access_token={_accessToken}",
                    imageContent))
                {
                    if (!uploadResponse.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs("Failed to upload image."));
                        return false;
                    }
                    string uploadBody = await uploadResponse.Content.ReadAsStringAsync();
                    var uploadData = JsonSerializer.Deserialize<JsonElement>(uploadBody);
                    contentUri = uploadData.GetProperty("content_uri").GetString();
                }

                string messageJson = JsonSerializer.Serialize(new
                {
                    msgtype = "m.image",
                    body = filename,
                    url = contentUri,
                    info = new { mimetype = "image/jpeg", size = imageData.Length },
                });

                string txnId = Guid.NewGuid().ToString();
                using (var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/send/m.room.message/{txnId}?access_token={_accessToken}",
                    new StringContent(messageJson, Encoding.UTF8, "application/json")))
                {
                    return response.IsSuccessStatusCode;
                }
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
                        ["m.in_reply_to"] = new Dictionary<string, object>
                        {
                            ["event_id"] = replyToEventId,
                        },
                    },
                };

                string txnId = Guid.NewGuid().ToString();
                using (var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/send/m.room.message/{txnId}?access_token={_accessToken}",
                    new StringContent(JsonSerializer.Serialize(replyData), Encoding.UTF8, "application/json")))
                {
                    return response.IsSuccessStatusCode;
                }
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
                string typingJson = JsonSerializer.Serialize(new { typing = isTyping, timeout = 30000 });
                using (var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{identifier}/typing/{Uri.EscapeDataString(_user.Identifier)}?access_token={_accessToken}",
                    new StringContent(typingJson, Encoding.UTF8, "application/json")))
                {
                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Failed to send typing indicator: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> SetConnectionStatus(PresenceStatus status)
        {
            try
            {
                string presenceStr;
                switch (status)
                {
                    case PresenceStatus.Online:
                    case PresenceStatus.OnlineMobile:
                        presenceStr = "online";
                        break;
                    case PresenceStatus.Offline:
                    case PresenceStatus.Invisible:
                        presenceStr = "offline";
                        break;
                    case PresenceStatus.Away:
                    case PresenceStatus.AwayMobile:
                    case PresenceStatus.DoNotDisturb:
                    case PresenceStatus.DoNotDisturbMobile:
                        presenceStr = "unavailable";
                        break;
                    default:
                        presenceStr = "online";
                        break;
                }

                string bodyJson = JsonSerializer.Serialize(new { presence = presenceStr });
                using (var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/presence/{Uri.EscapeDataString(_user.Identifier)}/status?access_token={_accessToken}",
                    new StringContent(bodyJson, Encoding.UTF8, "application/json")))
                {
                    return response.IsSuccessStatusCode;
                }
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
                string bodyJson = JsonSerializer.Serialize(new { presence = "online", status_msg = status ?? "" });
                using (var response = await _httpClient.PutAsync(
                    $"{_homeserver}/_matrix/client/r0/presence/{Uri.EscapeDataString(_user.Identifier)}/status?access_token={_accessToken}",
                    new StringContent(bodyJson, Encoding.UTF8, "application/json")))
                {
                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to set text status: {ex.Message}"));
                return false;
            }
        }

        public async Task<ConversationItem[]> FetchMessages(
            Conversation conversation,
            Fetch fetch_type,
            int message_count,
            string identifier)
        {
            TypingUsersList.Clear();
            var messageList = new List<ConversationItem>();

            if (string.IsNullOrEmpty(conversation.Identifier))
            {
                _activeRoomId = null;
                return new ConversationItem[0];
            }

            _activeRoomId = conversation.Identifier;

            try
            {
                int limit = Math.Max(1, Math.Min(message_count, 100));
                string dir = fetch_type == Fetch.Oldest ? "f" : "b";
                string fromToken = "";
                if ((fetch_type == Fetch.BeforeIdentifier || fetch_type == Fetch.AfterIdentifier ||
                     fetch_type == Fetch.NewestAfterIdentifier) && !string.IsNullOrEmpty(identifier))
                    fromToken = $"&from={Uri.EscapeDataString(identifier)}";

                string responseBody;
                using (var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{conversation.Identifier}/messages?access_token={_accessToken}&dir={dir}&limit={limit}{fromToken}"))
                {
                    if (!response.IsSuccessStatusCode)
                    {
                        OnError?.Invoke(this, new PluginMessageEventArgs(
                            $"Failed to load conversation: {await response.Content.ReadAsStringAsync()}"));
                        return new ConversationItem[0];
                    }
                    responseBody = await response.Content.ReadAsStringAsync();
                }

                var messagesData = JsonSerializer.Deserialize<JsonElement>(responseBody);
                var chunk = messagesData.GetProperty("chunk");
                var messages = new List<JsonElement>();
                foreach (var item in chunk.EnumerateArray())
                    messages.Add(item);

                if (dir == "b")
                    messages.Reverse();

                _displayNameCache = await GetRoomMemberDisplayNames(conversation.Identifier);

                var eventItemCache = new Dictionary<string, Message>();

                foreach (var message in messages)
                {
                    string eventType = message.GetProperty("type").GetString();
                    string eventId = message.GetProperty("event_id").GetString();
                    string sender = message.GetProperty("sender").GetString();
                    long ts = message.GetProperty("origin_server_ts").GetInt64();
                    DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(ts).DateTime;

                    string displayName = _displayNameCache.TryGetValue(sender, out var cached)
                        ? cached : sender;
                    var senderData = new User(displayName, sender, sender);

                    if (eventType == "m.room.encrypted")
                    {
                        var encItem = new Message(
                            eventId, senderData, timestamp,
                            "==This is an **encrypted message**, which is not currently supported.==",
                            null, null);
                        eventItemCache[eventId] = encItem;
                        messageList.Add(encItem);
                        continue;
                    }

                    if (eventType != "m.room.message")
                        continue;

                    var content = message.GetProperty("content");
                    if (!content.TryGetProperty("msgtype", out var msgtypeProp))
                        continue;

                    string msgtype = msgtypeProp.GetString();
                    string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";
                    Attachment[] attachments = null;

                    if (msgtype == "m.image" && content.TryGetProperty("url", out var urlProp))
                    {
                        byte[] imageBytes = await MatrixOOTBStuff.DownloadMatrixContent(
                            urlProp.GetString(), _homeserver, _httpClient);
                        if (imageBytes != null)
                        {
                            attachments = new[] { new Attachment(imageBytes, body ?? "image.jpg", null, AttachmentType.Image) };
                            body = null;
                        }
                    }
                    else if (msgtype == "m.video") body = $"==Video file:== {body}";
                    else if (msgtype == "m.audio") body = $"==Audio file:== {body}";
                    else if (msgtype == "m.file") body = $"==Generic file:== {body}";
                    else if (msgtype == "m.notice") body = $"==Information:== {body}";
                    else if (msgtype == "m.emote") body = $"* {displayName} {body}";

                    Message parentMessage = null;
                    if (content.TryGetProperty("m.relates_to", out var relatesTo) &&
                        relatesTo.TryGetProperty("m.in_reply_to", out var inReplyTo))
                    {
                        string replyToId = inReplyTo.GetProperty("event_id").GetString();
                        if (!eventItemCache.TryGetValue(replyToId, out parentMessage))
                            parentMessage = await GetMessageById(conversation.Identifier, replyToId);
                    }

                    var messageItem = new Message(eventId, senderData, timestamp, body, attachments, parentMessage);
                    eventItemCache[eventId] = messageItem;
                    messageList.Add(messageItem);
                }

                return messageList.ToArray();
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                _activeRoomId = null;
                return new ConversationItem[0];
            }
        }

        public Task<SavedCredential> StoreCredential() => Task.FromResult(_credData);

        public void Dispose()
        {
            _syncCancellationTokenSource?.Cancel();
            _syncCancellationTokenSource?.Dispose();
            _syncCancellationTokenSource = null;

            ContactsList?.Clear();
            RecentsList?.Clear();
            TypingUsersList?.Clear();
            _displayNameCache?.Clear();
            _recentRoomMap?.Clear();

            _accessToken = null;
            _user = null;
            _pendingBeeperUser = null;
            _homeserver = "https://matrix.org";
            _nextBatch = null;
            _activeRoomId = null;
            _credData = null;
            _initialSyncDone = false;
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

                    string responseBody;
                    using (var response = await _httpClient.GetAsync(syncUrl, cancellationToken))
                    {
                        if (!response.IsSuccessStatusCode)
                        {
                            await Task.Delay(5000, cancellationToken);
                            continue;
                        }
                        responseBody = await response.Content.ReadAsStringAsync();
                    }

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
                                ephemeral.TryGetProperty("events", out var ephEvents))
                            {
                                foreach (var ephEvent in ephEvents.EnumerateArray())
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

                if (eventType == "m.room.encrypted")
                {
                    string eventId = evt.GetProperty("event_id").GetString();
                    string sender = evt.GetProperty("sender").GetString();
                    long ts = evt.GetProperty("origin_server_ts").GetInt64();
                    DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(ts).DateTime;

                    string displayName = _displayNameCache.TryGetValue(sender, out var cached)
                        ? cached : await GetDisplayNameForUser(sender, roomId);

                    var encItem = new Message(
                        eventId, new User(displayName, sender, sender),
                        timestamp, "[encrypted message]", null, null);

                    _uiContext?.Post(_ =>
                        MessageEvent?.Invoke(this, new MessageRecievedEventArgs(roomId, encItem, false)), null);
                    return;
                }

                if (eventType != "m.room.message")
                    return;

                var content = evt.GetProperty("content");
                if (!content.TryGetProperty("msgtype", out var msgtypeProp))
                    return;

                string msgtype = msgtypeProp.GetString();
                string eventIdMsg = evt.GetProperty("event_id").GetString();
                string senderMsg = evt.GetProperty("sender").GetString();
                long tMs = evt.GetProperty("origin_server_ts").GetInt64();
                DateTime timestampMsg = DateTimeOffset.FromUnixTimeMilliseconds(tMs).DateTime;
                string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";

                string dName = _displayNameCache.TryGetValue(senderMsg, out var dn)
                    ? dn : await GetDisplayNameForUser(senderMsg, roomId);
                var senderData = new User(dName, senderMsg, senderMsg);
                Attachment[] attachments = null;

                if (msgtype == "m.image" && content.TryGetProperty("url", out var urlPropEvt))
                {
                    byte[] imageBytes = await MatrixOOTBStuff.DownloadMatrixContent(
                        urlPropEvt.GetString(), _homeserver, _httpClient);
                    if (imageBytes != null)
                    {
                        attachments = new[] { new Attachment(imageBytes, "IMG", null, AttachmentType.Image) };
                        body = null;
                    }
                }
                else if (msgtype == "m.video") body = $"==Video file:== {body}";
                else if (msgtype == "m.audio") body = $"==Audio file:== {body}";
                else if (msgtype == "m.file") body = $"==Generic file:== {body}";
                else if (msgtype == "m.notice") body = $"==Information:== {body}";
                else if (msgtype == "m.emote") body = $"* {dName} {body}";

                var messageItem = new Message(eventIdMsg, senderData, timestampMsg, body, attachments, null);

                _uiContext?.Post(_ =>
                    MessageEvent?.Invoke(this, new MessageRecievedEventArgs(roomId, messageItem, false)), null);
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
                    if (!content.TryGetProperty("user_ids", out var userIds))
                        return;

                    var typingUsers = new List<User>();
                    foreach (var userId in userIds.EnumerateArray())
                    {
                        string userIdStr = userId.GetString();
                        if (userIdStr == _user.Identifier)
                            continue;

                        string displayName = _displayNameCache.TryGetValue(userIdStr, out var name)
                            ? name : await GetDisplayNameForUser(userIdStr, roomId);

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
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing ephemeral event: {ex.Message}");
            }
        }

        private async Task<Message> GetMessageById(string roomId, string eventId)
        {
            try
            {
                string responseBody;
                using (var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/event/{Uri.EscapeDataString(eventId)}?access_token={_accessToken}"))
                {
                    if (!response.IsSuccessStatusCode)
                        return null;
                    responseBody = await response.Content.ReadAsStringAsync();
                }

                var eventData = JsonSerializer.Deserialize<JsonElement>(responseBody);
                string eventType = eventData.GetProperty("type").GetString();
                string sender = eventData.GetProperty("sender").GetString();
                long ts = eventData.GetProperty("origin_server_ts").GetInt64();
                DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(ts).DateTime;

                string displayName = _displayNameCache.TryGetValue(sender, out var name) ? name : sender;
                var senderData = new User(displayName, sender, sender);

                if (eventType == "m.room.encrypted")
                    return new Message(eventId, senderData, timestamp,
                        "==This is an **encrypted message**, which is not currently supported.==", null, null);

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
                string responseBody;
                using (var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/joined_members?access_token={_accessToken}"))
                {
                    if (!response.IsSuccessStatusCode)
                        return displayNames;
                    responseBody = await response.Content.ReadAsStringAsync();
                }

                var membersData = JsonSerializer.Deserialize<JsonElement>(responseBody);
                if (membersData.TryGetProperty("joined", out var joined))
                {
                    foreach (var member in joined.EnumerateObject())
                    {
                        string userId = member.Name;
                        string dn = userId;
                        if (member.Value.TryGetProperty("display_name", out var dnProp) &&
                            !string.IsNullOrEmpty(dnProp.GetString()))
                            dn = dnProp.GetString();
                        displayNames[userId] = dn;
                    }
                }
            }
            catch { }
            return displayNames;
        }

        private async Task<string> GetDisplayNameForUser(string userId, string roomId)
        {
            try
            {
                using (var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/rooms/{roomId}/state/m.room.member/{Uri.EscapeDataString(userId)}?access_token={_accessToken}"))
                {
                    if (response.IsSuccessStatusCode)
                    {
                        string responseBody = await response.Content.ReadAsStringAsync();
                        var memberData = JsonSerializer.Deserialize<JsonElement>(responseBody);
                        if (memberData.TryGetProperty("content", out var content) &&
                            content.TryGetProperty("displayname", out var displayname) &&
                            !string.IsNullOrEmpty(displayname.GetString()))
                            return displayname.GetString();
                    }
                }
            }
            catch { }
            return userId;
        }

        public static class MatrixOOTBStuff
        {
            public static async Task<byte[]> DownloadMatrixContent(
                string mxcUrl, string homeserver, HttpClient client)
            {
                try
                {
                    if (!mxcUrl.StartsWith("mxc://"))
                        return null;

                    string[] parts = mxcUrl.Substring(6).Split('/');
                    if (parts.Length < 2)
                        return null;

                    string httpUrl = $"{homeserver}/_matrix/media/r0/download/{parts[0]}/{parts[1]}";
                    return await client.GetByteArrayAsync(httpUrl);
                }
                catch
                {
                    return null;
                }
            }
        }

        public int TypingTimeout => 5000;
        public async Task<bool> SetTyping(string identifier, bool typing) => false;
    }
}