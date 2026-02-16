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

using XMPP.Classes;
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

namespace XMPP
{
    public class Core : ICore
    {
        // Plugin details
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;
        public string Name { get { return "XMPP"; } }
        public string InternalName { get { return "skymu-xmpp-plugin"; } }
        public string TextUsername { get { return "JID (e.g., user@server.com)"; } }
        public AuthenticationMethod[] AuthenticationType { get { return new[] { AuthenticationMethod.Password}; } }

        // Initialize XMPP client and helper classes
        private XMPPClient _xmppClient;
        private readonly HelperMethods _helperMethods = new HelperMethods();
        private string _activeConversationJid;
        public SynchronizationContext _uiContext;
        
        // Track recent conversations
        private readonly Dictionary<string, string> _recentJidMap = new();
        
        // Current user's JID
        private string _currentUserJid;
        private string _currentUsername;
        private string _currentPassword;

        // Constants
        private const int MAX_MESSAGES_LIMIT = 50;
        private const int CONNECTION_TIMEOUT_MS = 10000;

        public ObservableCollection<UserData> TypingUsersList { get; private set; } = new ObservableCollection<UserData>();
        private readonly Dictionary<string, HashSet<string>> _typingUsersPerChannel = new();

        public ClickableConfiguration[] ClickableConfigurations
        {
            get
            {
                return new ClickableConfiguration[]
                {
                    // XMPP typically doesn't use special mention syntax in messages
                    // But we can support basic @ mentions
                    new ClickableConfiguration(ClickableItemType.User, "@", " ")
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

        public void Dispose()
        {
            _xmppClient?.Disconnect();
            _xmppClient?.Dispose();
            _xmppClient = null;
            _recentJidMap.Clear();
            _typingUsersPerChannel.Clear();
        }

        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            if (authType != AuthenticationMethod.Password)
            {
                return LoginResult.UnsupportedAuthType;
            }

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Username (JID) and password are required."));
                return LoginResult.Failure;
            }

            _currentUsername = username;
            _currentPassword = password;

            return await StartClient(username, password);
        }

        public async Task<string> GetQRCode()
        {
            return string.Empty;
        }

        public Task<LoginResult> LoginOptStep(string code)
            => Task.FromResult(LoginResult.Success);

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            if (autoLoginCredentials == null || autoLoginCredentials.Length < 2)
            {
                return LoginResult.Failure;
            }

            string username = autoLoginCredentials[0];
            string password = autoLoginCredentials[1];

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                return LoginResult.Failure;
            }

            _currentUsername = username;
            _currentPassword = password;

            return await StartClient(username, password);
        }

        public Task<string[]> SaveAutoLoginCredential()
            => Task.FromResult(new[] { _currentUsername, _currentPassword });

        private async Task<LoginResult> StartClient(string jid, string password)
        {
            try
            {
                _xmppClient = new XMPPClient(jid, password);
                
                // Set up event handlers
                _xmppClient.OnConnectionStateChanged += OnConnectionStateChanged;
                _xmppClient.OnMessageReceived += OnMessageReceived;
                _xmppClient.OnPresenceReceived += OnPresenceReceived;
                _xmppClient.OnRosterReceived += OnRosterReceived;
                _xmppClient.OnComposingStateChanged += OnComposingStateChanged;
                _xmppClient.OnError += OnClientError;

                // Attempt to connect
                bool connected = await _xmppClient.ConnectAsync(CONNECTION_TIMEOUT_MS);

                if (!connected)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to connect to XMPP server. Please check your credentials and server settings."));
                    return LoginResult.Failure;
                }

                // Authenticate
                bool authenticated = await _xmppClient.AuthenticateAsync();

                if (!authenticated)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Authentication failed. Please check your username and password."));
                    return LoginResult.Failure;
                }

                // Store current user JID
                _currentUserJid = _xmppClient.CurrentJID;

                // Send initial presence
                await _xmppClient.SendPresenceAsync(UserConnectionStatus.Online);

                // Request roster
                await _xmppClient.RequestRosterAsync();

                return LoginResult.Success;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Login error: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public async Task<bool> PopulateSidebarInformation()
        {
            _uiContext = SynchronizationContext.Current;

            try
            {
                if (_xmppClient == null || !_xmppClient.IsConnected)
                {
                    return false;
                }

                string displayName = _helperMethods.ExtractUsernameFromJid(_currentUserJid);
                UserConnectionStatus status = _xmppClient.CurrentPresence;

                SidebarInformation = new SidebarData(
                    displayName, 
                    _currentUserJid, 
                    "XMPP Protocol", 
                    status
                );

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to populate sidebar: {ex.Message}"));
                return false;
            }
        }

        public Task<bool> PopulateContactsList()
            => PopulateListsBackend(ListType.Contacts);

        public Task<bool> PopulateRecentsList()
            => PopulateListsBackend(ListType.Recents);

        private async Task<bool> PopulateListsBackend(ListType listType)
        {
            try
            {
                if (_xmppClient == null || !_xmppClient.IsConnected)
                {
                    return false;
                }

                var roster = _xmppClient.GetRoster();

                if (listType == ListType.Contacts)
                {
                    ContactsList.Clear();
                    
                    foreach (var contact in roster)
                    {
                        string displayName = contact.Name ?? _helperMethods.ExtractUsernameFromJid(contact.Jid);
                        string status = contact.StatusMessage ?? string.Empty;
                        UserConnectionStatus presence = contact.Presence;
                        byte[] avatarImage = await _helperMethods.GetDefaultAvatarAsync(contact.Jid);

                        var userData = new UserData(
                            displayName,
                            contact.Jid,
                            status,
                            presence,
                            avatarImage
                        );

                        ContactsList.Add(userData);
                    }
                }
                else if (listType == ListType.Recents)
                {
                    RecentsList.Clear();
                    
                    // Get recent conversations from message archive
                    var recentConversations = _xmppClient.GetRecentConversations();

                    foreach (var jid in recentConversations)
                    {
                        _recentJidMap[jid] = jid;

                        var contact = roster.FirstOrDefault(c => c.Jid == jid);
                        
                        string displayName = contact?.Name ?? _helperMethods.ExtractUsernameFromJid(jid);
                        string status = contact?.StatusMessage ?? string.Empty;
                        UserConnectionStatus presence = contact?.Presence ?? UserConnectionStatus.Offline;
                        byte[] avatarImage = await _helperMethods.GetDefaultAvatarAsync(jid);

                        var userData = new UserData(
                            displayName,
                            jid,
                            status,
                            presence,
                            avatarImage
                        );

                        RecentsList.Add(userData);
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Error populating lists: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> SetActiveConversation(string identifier)
        {
            TypingUsersList.Clear();
            ActiveConversation.Clear();

            if (string.IsNullOrWhiteSpace(identifier))
            {
                return false;
            }

            _activeConversationJid = identifier;

            try
            {
                // Retrieve message history for this JID
                var messages = await _xmppClient.GetMessageHistoryAsync(identifier, MAX_MESSAGES_LIMIT);

                foreach (var msg in messages)
                {
                    ActiveConversation.Add(msg);
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                _activeConversationJid = null;
                return false;
            }
        }

        public async Task<bool> SendMessage(string identifier, string text)
        {
            if (string.IsNullOrWhiteSpace(identifier) || string.IsNullOrWhiteSpace(text))
            {
                return false;
            }

            try
            {
                bool sent = await _xmppClient.SendMessageAsync(identifier, text);

                if (!sent)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to send message."));
                    return false;
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Error sending message: {ex.Message}"));
                return false;
            }
        }

        // Event handlers

        private void OnConnectionStateChanged(object sender, bool isConnected)
        {
            if (!isConnected)
            {
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Connection to XMPP server lost. Attempting to reconnect..."));
            }
        }

        private void OnMessageReceived(object sender, XMPPMessageEventArgs e)
        {
            _uiContext?.Post(_ =>
            {
                try
                {
                    // Remove typing indicator for this user
                    var typingUser = TypingUsersList.FirstOrDefault(u => u.Identifier == e.FromJid);
                    if (typingUser != null)
                    {
                        TypingUsersList.Remove(typingUser);
                    }

                    if (_typingUsersPerChannel.TryGetValue(e.FromJid, out var users))
                    {
                        users.Remove(e.FromJid);
                    }

                    // Create message item
                    var messageItem = new MessageItem(
                        e.MessageId,
                        e.FromJid,
                        e.FromDisplayName,
                        e.Timestamp,
                        e.Body,
                        e.Media,
                        null, // XMPP doesn't have built-in reply threading like Discord
                        null,
                        null,
                        e.FromJid
                    );

                    // Fire notification for all incoming messages
                    var contact = _xmppClient.GetRoster().FirstOrDefault(c => c.Jid == e.FromJid);
                    UserConnectionStatus status = contact?.Presence ?? UserConnectionStatus.Offline;
                    Notification?.Invoke(this, new NotificationEventArgs(messageItem, status));

                    // Add to active conversation if it matches
                    if (e.FromJid == _activeConversationJid)
                    {
                        ActiveConversation.Add(messageItem);
                    }

                    // Update recents list
                    UpdateRecentsList(e.FromJid);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error handling received message: {ex.Message}");
                }
            }, null);
        }

        private void OnPresenceReceived(object sender, XMPPPresenceEventArgs e)
        {
            _uiContext?.Post(_ =>
            {
                try
                {
                    // Update the user's presence in ContactsList
                    var contact = ContactsList.OfType<UserData>().FirstOrDefault(c => c.Identifier == e.FromJid);
                    if (contact != null)
                    {
                        contact.PresenceStatus = e.Status;
                        contact.Status = e.StatusMessage ?? string.Empty;
                    }

                    // Update in RecentsList as well
                    var recent = RecentsList.OfType<UserData>().FirstOrDefault(c => c.Identifier == e.FromJid);
                    if (recent != null)
                    {
                        recent.PresenceStatus = e.Status;
                        recent.Status = e.StatusMessage ?? string.Empty;
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error handling presence update: {ex.Message}");
                }
            }, null);
        }

        private void OnRosterReceived(object sender, EventArgs e)
        {
            // Roster has been updated, refresh the contacts list
            Task.Run(async () => await PopulateContactsList());
        }

        private void OnComposingStateChanged(object sender, XMPPComposingEventArgs e)
        {
            _uiContext?.Post(_ =>
            {
                try
                {
                    if (e.FromJid != _activeConversationJid)
                        return;

                    var existingUser = TypingUsersList.FirstOrDefault(u => u.Identifier == e.FromJid);

                    if (e.IsComposing)
                    {
                        if (existingUser == null)
                        {
                            var userData = new UserData(e.DisplayName, e.FromJid);
                            TypingUsersList.Add(userData);
                        }

                        if (!_typingUsersPerChannel.ContainsKey(e.FromJid))
                        {
                            _typingUsersPerChannel[e.FromJid] = new HashSet<string>();
                        }
                        _typingUsersPerChannel[e.FromJid].Add(e.FromJid);
                    }
                    else
                    {
                        if (existingUser != null)
                        {
                            TypingUsersList.Remove(existingUser);
                        }

                        if (_typingUsersPerChannel.TryGetValue(e.FromJid, out var users))
                        {
                            users.Remove(e.FromJid);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error handling composing state: {ex.Message}");
                }
            }, null);
        }

        private void OnClientError(object sender, string errorMessage)
        {
            OnError?.Invoke(this, new PluginMessageEventArgs($"XMPP Client Error: {errorMessage}"));
        }

        private void UpdateRecentsList(string jid)
        {
            if (!_recentJidMap.ContainsKey(jid))
            {
                _recentJidMap[jid] = jid;
                
                // Refresh recents list
                Task.Run(async () => await PopulateRecentsList());
            }
        }
    }
}