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

using Matrix.Classes;
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
using System.Threading;
using System.Threading.Tasks;
using static System.Formats.Asn1.AsnWriter;

namespace Matrix
{
    public class Core : ICore
    {
        // Plugin details
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public string Name { get { return "Matrix"; } }
        public string InternalName { get { return "skymu-matrix-plugin"; } }
        public string TextUsername { get { return "Username"; } }
        public string CustomLoginButtonText { get { return "Sign in"; } }
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Standard; } }

        // Matrix-specific data
        private string _accessToken;
        private string _userId;
        private string _homeserver = "https://matrix.org"; // Default homeserver
        private string _nextBatch;
        private static readonly HttpClient _httpClient = new HttpClient();
        private CancellationTokenSource _syncCancellationTokenSource;
        private SynchronizationContext _uiContext;
        private readonly MatrixOOTBStuff _ootb = new MatrixOOTBStuff();

        // Track the active room ID for real-time updates
        private string _activeRoomId;

        // Cache display names to avoid repeated API calls
        private Dictionary<string, string> _displayNameCache = new Dictionary<string, string>();

        // Track recent rooms for message handling
        public readonly Dictionary<string, string> _recentRoomMap = new();

        // File for storing credentials
        private const string credFile = "matrix.smcred";

        public async Task<LoginResult> LoginMainStep(string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Username and password are required."));
                return LoginResult.Failure;
            }

            try
            {
                // Detect homeserver from username if it contains a colon (e.g., @user:matrix.org)
                if (username.Contains(":"))
                {
                    string[] parts = username.Split(':');
                    if (parts.Length == 2)
                    {
                        _homeserver = $"https://{parts[1]}";
                    }
                }

                // Perform Matrix login
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

                // Save credentials
                var credData = new { homeserver = _homeserver, access_token = _accessToken, user_id = _userId };
                File.WriteAllText(credFile, JsonSerializer.Serialize(credData));

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
            // Matrix doesn't use 2FA in the same way, so we return success
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

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(string identifier)
        {
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
                // Fetch room messages
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

                // Reverse to show oldest first
                messagesList.Reverse();

                // Batch-fetch all display names at once and cache them
                _displayNameCache = await GetRoomMemberDisplayNames(roomId);

                foreach (var message in messagesList)
                {
                    if (message.GetProperty("type").GetString() != "m.room.message")
                        continue;

                    string eventId = message.GetProperty("event_id").GetString();
                    string sender = message.GetProperty("sender").GetString();

                    var content = message.GetProperty("content");
                    string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";

                    long originServerTs = message.GetProperty("origin_server_ts").GetInt64();
                    DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;

                    // Use cached display name instead of individual HTTP request
                    string displayName = _displayNameCache.TryGetValue(sender, out var name) ? name : sender;

                    // Handle replies
                    string replyToId = null;
                    string replyToName = null;
                    string replyToBody = null;

                    if (content.TryGetProperty("m.relates_to", out var relatesTo))
                    {
                        if (relatesTo.TryGetProperty("m.in_reply_to", out var inReplyTo))
                        {
                            replyToId = inReplyTo.GetProperty("event_id").GetString();
                            // We would need to fetch the original event to get the body, skipping for now
                            replyToName = "[user]";
                            replyToBody = "[reply]";
                        }
                    }

                    ActiveConversation.Add(new MessageItem(
                        messageID: eventId,
                        sentByIdentifier: sender,
                        sentByDisplayName: displayName,
                        body: body,
                        time: timestamp,
                        replyToIdentifier: replyToId,
                        replyToDisplayName: replyToName,
                        replyToBody: replyToBody
                    ));
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

        public SidebarData SidebarInformation { get; private set; }

        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();

        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;

            try
            {
                // Get user profile
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

                SidebarInformation = new SidebarData(
                    displayName,
                    _userId,
                    "Matrix Protocol",
                    UserConnectionStatus.Online
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
            // Matrix doesn't have a traditional contacts list, so we'll leave this empty
            // or populate it with joined rooms that are direct messages
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
                // Get joined rooms
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

                    // Get room details
                    var roomName = await GetRoomName(roomIdStr);
                    var roomAvatar = await GetRoomAvatar(roomIdStr);
                    var isDirect = await IsDirectMessage(roomIdStr);
                    var memberCount = await GetRoomMemberCount(roomIdStr);

                    if (lType == ListType.Recents)
                    {
                        _recentRoomMap[roomIdStr] = roomIdStr;
                    }

                    int presenceStatus = isDirect ? UserConnectionStatus.Online : UserConnectionStatus.Group;
                    string statusText = isDirect ? null : $"{memberCount} members";

                    var profileData = new ProfileData(
                        roomName,
                        roomIdStr,
                        statusText,
                        presenceStatus,
                        roomAvatar
                    );

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

        public async Task<LoginResult> TryAutoLogin()
        {
            if (!File.Exists(credFile))
                return LoginResult.OptStepRequired;

            try
            {
                string credJson = File.ReadAllText(credFile);
                var credData = JsonSerializer.Deserialize<JsonElement>(credJson);

                _homeserver = credData.GetProperty("homeserver").GetString();
                _accessToken = credData.GetProperty("access_token").GetString();
                _userId = credData.GetProperty("user_id").GetString();

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
                // Verify token by making a simple API call
                var response = await _httpClient.GetAsync(
                    $"{_homeserver}/_matrix/client/r0/account/whoami?access_token={_accessToken}");

                if (!response.IsSuccessStatusCode)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Authentication failed. Please log in again."));
                    return LoginResult.Failure;
                }

                // Start the sync loop
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

                    // Process timeline events
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
                string body = content.TryGetProperty("body", out var bodyProp) ? bodyProp.GetString() : "";

                long originServerTs = evt.GetProperty("origin_server_ts").GetInt64();
                DateTime timestamp = DateTimeOffset.FromUnixTimeMilliseconds(originServerTs).DateTime;

                // Touch recents
                if (_recentRoomMap.ContainsKey(roomId))
                {
                    // Could implement TouchRecent here
                }

                // Add to active conversation if this is the active room
                if (roomId == _activeRoomId)
                {
                    // Use cached display name, fallback to fetching if not in cache
                    string displayName = _displayNameCache.TryGetValue(sender, out var name)
                        ? name
                        : await GetDisplayNameForUser(sender, roomId);

                    var messageItem = new MessageItem(
                        eventId,
                        sender,
                        displayName,
                        body,
                        timestamp,
                        null,
                        null,
                        null
                    );

                    _uiContext?.Post(_ => ActiveConversation.Add(messageItem), null);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing timeline event: {ex.Message}");
            }
        }

        // Helper methods
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
                            string displayName = userId; // fallback

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
                // Return empty dictionary on error
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

                // Fallback: use room ID
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

                // Fallback to user ID
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
                    // Convert mxc://server/mediaId to HTTP URL
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