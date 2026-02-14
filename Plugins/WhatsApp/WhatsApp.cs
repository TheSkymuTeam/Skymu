/*==========================================================*/
// WhatsApp Plugin for MiddleMan (Skymu)
// Uses whatsapp-web.js through Node.js service
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using MiddleMan;
using Timer = System.Timers.Timer;

namespace WhatsAppPlugin
{
    public class WhatsAppCore : ICore, IMessenger, IDisposable
    {
        // Process management
        private Process _nodeProcess;
        private readonly HttpClient _httpClient;
        private readonly string _serviceUrl;
        private readonly string _nodePath;
        private readonly string _scriptPath;
        private bool _disposed;
        private Timer _pollingTimer;
        private Timer _typingTimer;

        // State
        private bool _isReady;
        private string _currentChatId;
        private HashSet<string> _processedMessageIds = new HashSet<string>();
        private SynchronizationContext _uiContext;

        // Events
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;

        // Properties
        public string Name => "WhatsApp";
        public string InternalName => "skymu-whatsapp-plugin";
        public string TextUsername => "Phone Number (with country code)";
        public AuthenticationMethod[] AuthenticationType => new[] { AuthenticationMethod.QRCode };

        public SidebarData SidebarInformation { get; private set; }
        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; }
        public ObservableCollection<ProfileData> ContactsList { get; private set; }
        public ObservableCollection<ProfileData> RecentsList { get; private set; }
        public ObservableCollection<UserData> TypingUsersList { get; private set; }
        public ClickableConfiguration[] ClickableConfigurations => Array.Empty<ClickableConfiguration>();

        public WhatsAppCore()
        {
            _nodePath = "node"; // Assumes node is in PATH

            // Get the directory where THIS DLL is located (not the EXE)
            string dllLocation = System.Reflection.Assembly.GetExecutingAssembly().Location;
            string pluginDir = Path.GetDirectoryName(dllLocation);
            _scriptPath = Path.Combine(pluginDir, "whatsapp-service", "whatsapp-service.js");

            // Debug output
            Debug.WriteLine($"[WhatsApp Plugin] DLL Location: {dllLocation}");
            Debug.WriteLine($"[WhatsApp Plugin] Plugin Directory: {pluginDir}");
            Debug.WriteLine($"[WhatsApp Plugin] Script Path: {_scriptPath}");
            Debug.WriteLine($"[WhatsApp Plugin] Script Exists: {File.Exists(_scriptPath)}");

            _serviceUrl = "http://localhost:3000";
            _httpClient = new HttpClient { Timeout = TimeSpan.FromSeconds(30) };

            ActiveConversation = new ObservableCollection<ConversationItem>();
            ContactsList = new ObservableCollection<ProfileData>();
            RecentsList = new ObservableCollection<ProfileData>();
            TypingUsersList = new ObservableCollection<UserData>();
        }

        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password, bool tryLoginWithSavedCredentials)
        {
            try
            {
                if (authType != AuthenticationMethod.QRCode)
                {
                    return LoginResult.UnsupportedAuthType;
                }

                // Start Node.js service
                await StartNodeServiceAsync();

                // Wait for service to be ready (up to 10 seconds)
                StatusResponse status = null;
                for (int i = 0; i < 10; i++)
                {
                    try
                    {
                        status = await GetStatusAsync();

                        // If already authenticated and ready, we're done (auto-login)
                        if (status.ready && status.authenticated)
                        {
                            _isReady = true;
                            StartPolling();
                            return LoginResult.Success;
                        }

                        // Service is responding, break out
                        if (status != null)
                            break;
                    }
                    catch
                    {
                        await Task.Delay(1000);
                    }
                }

                // If already authenticated but not ready, wait for it
                if (status?.authenticated == true)
                {
                    for (int i = 0; i < 30; i++)
                    {
                        status = await GetStatusAsync();
                        if (status.ready)
                        {
                            _isReady = true;
                            StartPolling();
                            return LoginResult.Success;
                        }
                        await Task.Delay(1000);
                    }
                }

                // Not authenticated - need QR code scan
                // Return OptStepRequired to signal MiddleMan to show QR
                return LoginResult.OptStepRequired;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Login failed: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            // For WhatsApp, 'code' parameter is not used (it's a QR scan, not typed code)
            // This method just waits for the QR to be scanned

            try
            {
                // Wait for user to scan QR code (up to 2 minutes)
                for (int i = 0; i < 120; i++)
                {
                    var status = await GetStatusAsync();

                    if (status.ready && status.authenticated)
                    {
                        _isReady = true;
                        StartPolling();
                        return LoginResult.Success;
                    }

                    await Task.Delay(1000);
                }

                OnError?.Invoke(this, new PluginMessageEventArgs("QR code was not scanned within 2 minutes"));
                return LoginResult.Failure;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Authentication failed: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        // Helper method for MiddleMan to get the QR code
        public async Task<string> GetQRCode()
        {
            try
            {
                var response = await _httpClient.GetAsync($"{_serviceUrl}/qr");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    var qrData = JsonSerializer.Deserialize<QRResponse>(json, new JsonSerializerOptions
                    {
                        PropertyNameCaseInsensitive = true
                    });

                    return qrData?.qr;
                }
                return null;
            }
            catch
            {
                return null;
            }
        }

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            try
            {
                // Start Node.js service
                await StartNodeServiceAsync();

                // Check if already authenticated
                for (int i = 0; i < 30; i++)
                {
                    try
                    {
                        var status = await GetStatusAsync();

                        if (status.ready)
                        {
                            _isReady = true;
                            StartPolling();
                            return LoginResult.Success;
                        }

                        if (status.authenticated && !status.ready)
                        {
                            await Task.Delay(2000);
                            continue;
                        }

                        // Not authenticated, need QR code
                        if (i > 10)
                        {
                            return LoginResult.OptStepRequired;
                        }
                    }
                    catch { }

                    await Task.Delay(1000);
                }

                return LoginResult.OptStepRequired;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Auto-login failed: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public Task<string[]> SaveAutoLoginCredential()
        {
            // Session is saved by whatsapp-web.js automatically
            return Task.FromResult(new string[0]);
        }

        public async Task<bool> SendMessage(string identifier, string text)
        {
            try
            {
                var payload = new
                {
                    to = identifier,
                    message = text
                };

                var content = new StringContent(
                    JsonSerializer.Serialize(payload),
                    Encoding.UTF8,
                    "application/json"
                );

                var response = await _httpClient.PostAsync($"{_serviceUrl}/send", content);
                response.EnsureSuccessStatusCode();

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateSidebarInformation()
        {
            // Capture UI context for thread-safe UI updates
            _uiContext = SynchronizationContext.Current;

            try
            {
                var status = await GetStatusAsync();

                if (status.info != null)
                {
                    SidebarInformation = new SidebarData(
                        username: status.info.pushname ?? "WhatsApp User",
                        identifier: status.info.wid ?? "",
                        skypeCreditText: "WhatsApp",
                        connectionStatus: status.ready ? UserConnectionStatus.Online : UserConnectionStatus.Offline
                    );
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to get sidebar info: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateContactsList()
        {
            try
            {
                var response = await _httpClient.GetAsync($"{_serviceUrl}/contacts");
                response.EnsureSuccessStatusCode();

                var json = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<ContactsResponse>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                ContactsList.Clear();

                foreach (var contact in result.contacts.OrderBy(c => c.name))
                {
                    byte[] profilePic = null;

                    // Download profile picture if available
                    if (!string.IsNullOrEmpty(contact.profilePicUrl))
                    {
                        try
                        {
                            profilePic = await _httpClient.GetByteArrayAsync(contact.profilePicUrl);
                        }
                        catch { }
                    }

                    ContactsList.Add(new UserData(
                        displayName: contact.name,
                        identifier: contact.id,
                        profilePicture: profilePic
                    ));
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to get contacts: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateRecentsList()
        {
            try
            {
                var response = await _httpClient.GetAsync($"{_serviceUrl}/chats");
                response.EnsureSuccessStatusCode();

                var json = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<ChatsResponse>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                RecentsList.Clear();

                foreach (var chat in result.chats.OrderByDescending(c => c.timestamp))
                {
                    byte[] profilePic = null;

                    if (!string.IsNullOrEmpty(chat.profilePicUrl))
                    {
                        try
                        {
                            profilePic = await _httpClient.GetByteArrayAsync(chat.profilePicUrl);
                        }
                        catch { }
                    }

                    if (chat.isGroup)
                    {
                        RecentsList.Add(new GroupData(
                            displayName: chat.name,
                            identifier: chat.id,
                            profilePicture: profilePic
                        ));
                    }
                    else
                    {
                        RecentsList.Add(new UserData(
                            displayName: chat.name,
                            identifier: chat.id,
                            profilePicture: profilePic
                        ));
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to get recents: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SetActiveConversation(string identifier)
        {
            try
            {
                _currentChatId = identifier;
                ActiveConversation.Clear();

                var response = await _httpClient.GetAsync($"{_serviceUrl}/messages/{identifier}?limit=50");
                response.EnsureSuccessStatusCode();

                var json = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<MessagesResponse>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                foreach (var msg in result.messages)
                {
                    byte[] mediaBytes = null;

                    // Download media if present
                    if (msg.hasMedia && msg.type == "image")
                    {
                        try
                        {
                            var mediaResponse = await _httpClient.GetAsync($"{_serviceUrl}/media/{msg.id}");
                            if (mediaResponse.IsSuccessStatusCode)
                            {
                                var mediaJson = await mediaResponse.Content.ReadAsStringAsync();
                                var mediaData = JsonSerializer.Deserialize<MediaResponse>(mediaJson, new JsonSerializerOptions
                                {
                                    PropertyNameCaseInsensitive = true
                                });

                                if (!string.IsNullOrEmpty(mediaData.data))
                                {
                                    mediaBytes = Convert.FromBase64String(mediaData.data);
                                }
                            }
                        }
                        catch { }
                    }

                    string replyToId = null;
                    string replyToName = null;
                    string replyBody = null;

                    if (msg.quotedMsg != null)
                    {
                        replyToId = msg.quotedMsg.from;
                        replyToName = msg.quotedMsg.fromName;
                        replyBody = msg.quotedMsg.body;
                    }

                    var messageItem = new MessageItem(
                        messageID: msg.id,
                        sentByIdentifier: msg.from,
                        sentByDisplayName: msg.fromName,
                        time: DateTimeOffset.FromUnixTimeMilliseconds(msg.timestamp).DateTime,
                        body: msg.body,
                        image: mediaBytes,
                        replyToIdentifier: replyToId,
                        replyToDisplayName: replyToName,
                        replyToBody: replyBody,
                        channelID: identifier
                    );

                    ActiveConversation.Add(messageItem);
                    _processedMessageIds.Add(msg.id);
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                return false;
            }
        }

        public void Dispose()
        {
            if (!_disposed)
            {
                _pollingTimer?.Stop();
                _pollingTimer?.Dispose();
                _typingTimer?.Stop();
                _typingTimer?.Dispose();

                if (_nodeProcess != null && !_nodeProcess.HasExited)
                {
                    try
                    {
                        _nodeProcess.Kill();
                        _nodeProcess.WaitForExit(5000);
                    }
                    catch { }
                    _nodeProcess.Dispose();
                }

                _httpClient?.Dispose();
                _disposed = true;
            }
        }

        // Helper methods

        private async Task StartNodeServiceAsync()
        {
            // Kill any existing node.exe processes first
            Debug.WriteLine("[WhatsApp Plugin] Checking for existing node processes...");
            var existingNodes = Process.GetProcessesByName("node");
            foreach (var proc in existingNodes)
            {
                try
                {
                    Debug.WriteLine($"[WhatsApp Plugin] Killing existing node process {proc.Id}");
                    proc.Kill();
                    proc.WaitForExit(2000);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"[WhatsApp Plugin] Failed to kill process: {ex.Message}");
                }
            }

            // Wait for port to be released
            if (existingNodes.Length > 0)
            {
                Debug.WriteLine("[WhatsApp Plugin] Waiting for port 3000 to be released...");
                await Task.Delay(2000);
            }

            if (_nodeProcess != null && !_nodeProcess.HasExited)
            {
                return; // Already running
            }

            // Check if npm packages are installed
            var serviceDir = Path.GetDirectoryName(_scriptPath);
            var nodeModulesPath = Path.Combine(serviceDir, "node_modules");

            if (!Directory.Exists(nodeModulesPath))
            {
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Installing WhatsApp dependencies..."));
                await InstallDependenciesAsync(serviceDir);
            }

            var startInfo = new ProcessStartInfo
            {
                FileName = _nodePath,
                Arguments = $"\"{_scriptPath}\"",
                UseShellExecute = false,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                CreateNoWindow = true,
                WorkingDirectory = serviceDir
            };

            _nodeProcess = new Process { StartInfo = startInfo };

            _nodeProcess.OutputDataReceived += (s, e) =>
            {
                if (!string.IsNullOrEmpty(e.Data))
                {
                    Debug.WriteLine($"[WhatsApp Service] {e.Data}");
                }
            };

            _nodeProcess.ErrorDataReceived += (s, e) =>
            {
                if (!string.IsNullOrEmpty(e.Data))
                {
                    Debug.WriteLine($"[WhatsApp Service ERROR] {e.Data}");
                }
            };

            _nodeProcess.Start();
            _nodeProcess.BeginOutputReadLine();
            _nodeProcess.BeginErrorReadLine();

            // Wait for service to be accessible
            for (int i = 0; i < 30; i++)
            {
                try
                {
                    var response = await _httpClient.GetAsync($"{_serviceUrl}/health");
                    if (response.IsSuccessStatusCode)
                    {
                        return;
                    }
                }
                catch { }

                await Task.Delay(1000);
            }
        }

        private async Task InstallDependenciesAsync(string directory)
        {
            var npmProcess = new Process
            {
                StartInfo = new ProcessStartInfo
                {
                    FileName = "npm",
                    Arguments = "install",
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                    CreateNoWindow = true,
                    WorkingDirectory = directory
                }
            };

            npmProcess.Start();
            await npmProcess.StandardOutput.ReadToEndAsync();
            npmProcess.WaitForExit();

            if (npmProcess.ExitCode != 0)
            {
                throw new Exception("Failed to install npm dependencies");
            }
        }

        private async Task<StatusResponse> GetStatusAsync()
        {
            var response = await _httpClient.GetAsync($"{_serviceUrl}/status");
            response.EnsureSuccessStatusCode();

            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<StatusResponse>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            });
        }

        private void StartPolling()
        {
            // Poll for new messages every 2 seconds
            _pollingTimer = new Timer(2000);
            _pollingTimer.Elapsed += async (s, e) => await PollForNewMessages();
            _pollingTimer.Start();
        }

        private async Task PollForNewMessages()
        {
            try
            {
                var response = await _httpClient.GetAsync($"{_serviceUrl}/messages?limit=20");
                if (!response.IsSuccessStatusCode) return;

                var json = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<MessagesResponse>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                foreach (var msg in result.messages)
                {
                    if (_processedMessageIds.Contains(msg.id))
                        continue;

                    _processedMessageIds.Add(msg.id);

                    // If this message is in the active conversation, add it
                    if (msg.chatId == _currentChatId || msg.from == _currentChatId)
                    {
                        byte[] mediaBytes = null;
                        if (msg.hasMedia && msg.type == "image")
                        {
                            try
                            {
                                var mediaResponse = await _httpClient.GetAsync($"{_serviceUrl}/media/{msg.id}");
                                if (mediaResponse.IsSuccessStatusCode)
                                {
                                    var mediaJson = await mediaResponse.Content.ReadAsStringAsync();
                                    var mediaData = JsonSerializer.Deserialize<MediaResponse>(mediaJson, new JsonSerializerOptions
                                    {
                                        PropertyNameCaseInsensitive = true
                                    });

                                    if (!string.IsNullOrEmpty(mediaData.data))
                                    {
                                        mediaBytes = Convert.FromBase64String(mediaData.data);
                                    }
                                }
                            }
                            catch { }
                        }

                        string replyToId = null;
                        string replyToName = null;
                        string replyBody = null;

                        if (msg.quotedMsg != null)
                        {
                            replyToId = msg.quotedMsg.from;
                            replyToName = msg.quotedMsg.fromName;
                            replyBody = msg.quotedMsg.body;
                        }

                        var messageItem = new MessageItem(
                            messageID: msg.id,
                            sentByIdentifier: msg.from,
                            sentByDisplayName: msg.fromName,
                            time: DateTimeOffset.FromUnixTimeMilliseconds(msg.timestamp).DateTime,
                            body: msg.body,
                            image: mediaBytes,
                            replyToIdentifier: replyToId,
                            replyToDisplayName: replyToName,
                            replyToBody: replyBody,
                            channelID: _currentChatId
                        );

                        // Use SynchronizationContext to post to UI thread
                        _uiContext?.Post(_ =>
                        {
                            ActiveConversation.Add(messageItem);
                        }, null);

                        // Fire notification
                        Notification?.Invoke(this, new NotificationEventArgs(
                            messageItem,
                            UserConnectionStatus.Unknown
                        ));
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Polling error: {ex.Message}");
            }
        }

        // Response models
        private class StatusResponse
        {
            public bool ready { get; set; }
            public bool authenticated { get; set; }
            public ClientInfo info { get; set; }
        }

        private class ClientInfo
        {
            public string pushname { get; set; }
            public string wid { get; set; }
            public string platform { get; set; }
        }

        private class ContactsResponse
        {
            public Contact[] contacts { get; set; }
        }

        private class Contact
        {
            public string id { get; set; }
            public string name { get; set; }
            public string number { get; set; }
            public string pushname { get; set; }
            public bool isMyContact { get; set; }
            public string profilePicUrl { get; set; }
        }

        private class ChatsResponse
        {
            public Chat[] chats { get; set; }
        }

        private class Chat
        {
            public string id { get; set; }
            public string name { get; set; }
            public bool isGroup { get; set; }
            public int unreadCount { get; set; }
            public long timestamp { get; set; }
            public string profilePicUrl { get; set; }
        }

        private class MessagesResponse
        {
            public Message[] messages { get; set; }
        }

        private class Message
        {
            public string id { get; set; }
            public string from { get; set; }
            public string fromName { get; set; }
            public string to { get; set; }
            public string body { get; set; }
            public long timestamp { get; set; }
            public bool hasMedia { get; set; }
            public bool isGroup { get; set; }
            public string chatId { get; set; }
            public bool fromMe { get; set; }
            public string type { get; set; }
            public QuotedMessage quotedMsg { get; set; }
        }

        private class QuotedMessage
        {
            public string id { get; set; }
            public string body { get; set; }
            public string from { get; set; }
            public string fromName { get; set; }
        }

        private class MediaResponse
        {
            public string mimetype { get; set; }
            public string data { get; set; }
            public string filename { get; set; }
        }

        private class QRResponse
        {
            public string qr { get; set; }
            public string status { get; set; }
        }
    }
}