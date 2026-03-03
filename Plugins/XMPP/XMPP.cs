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
        // plugin details
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;
        public string Name { get { return "XMPP (expiremental, use at own risk)"; } }
        public string InternalName { get { return "skymu-xmpp-plugin"; } }
        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[] { new AuthTypeInfo(AuthenticationMethod.Password, "JID (e.g., user@server.com)") };
            }
        }

        // initialize XMPP client and helper classes
        private XMPPClient _xmppClient;
        private readonly HelperMethods _helperMethods = new HelperMethods();
        private string _activeConversationJid;
        public SynchronizationContext _uiContext;

        // track recent conversations
        private readonly Dictionary<string, string> _recentJidMap = new Dictionary<string, string>();

        // current user's JID
        private string _currentUserJid;
        private string _currentUsername;
        private string _currentPassword;

        // constants
        private const int MAX_MESSAGES_LIMIT = 50;
        private const int CONNECTION_TIMEOUT_MS = 10000;

        public ObservableCollection<User> TypingUsersList { get; private set; } = new ObservableCollection<User>();
        private readonly Dictionary<string, HashSet<string>> _typingUsersPerChannel = new Dictionary<string, HashSet<string>>();

        public ClickableConfiguration[] ClickableConfigurations
        {
            get
            {
                return new ClickableConfiguration[]
                {
                    // xmpp doesn't use special mention syntax, but @ mentions are supported here
                    new ClickableConfiguration(ClickableItemType.User, "@", " ")
                };
            }
        }

        public User MyInformation { get; private set; }
        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();
        public ObservableCollection<Conversation> ContactsList { get; private set; } = new ObservableCollection<Conversation>();
        public ObservableCollection<Conversation> RecentsList { get; private set; } = new ObservableCollection<Conversation>();

        public ObservableCollection<Server> ServerList { get; private set; }
        public async Task<bool> PopulateServerList()
        {
            return false;
        }

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

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password = null)
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

        public Task<LoginResult> AuthenticateTwoFA(string code)
            => Task.FromResult(LoginResult.Success);

        public async Task<LoginResult> Authenticate(SavedCredential autoLoginCredentials)
        {
            if (autoLoginCredentials == null || String.IsNullOrEmpty(autoLoginCredentials.Username))
            {
                return LoginResult.Failure;
            }

            string username = autoLoginCredentials.Username;
            string password = autoLoginCredentials.PasswordOrToken;

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                return LoginResult.Failure;
            }

            _currentUsername = username;
            _currentPassword = password;

            return await StartClient(username, password);
        }

        public Task<SavedCredential> StoreCredential()
            => Task.FromResult(new SavedCredential(_currentUsername, _currentPassword, AuthenticationMethod.Password));

        private async Task<LoginResult> StartClient(string jid, string password)
        {
            try
            {
                _xmppClient = new XMPPClient(jid, password);

                // set up event handlers
                _xmppClient.OnConnectionStateChanged += OnConnectionStateChanged;
                _xmppClient.OnMessageReceived += OnMessageReceived;
                _xmppClient.OnPresenceReceived += OnPresenceReceived;
                _xmppClient.OnRosterReceived += OnRosterReceived;
                _xmppClient.OnComposingStateChanged += OnComposingStateChanged;
                _xmppClient.OnError += OnClientError;

                // attempt to connect
                bool connected = await _xmppClient.ConnectAsync(CONNECTION_TIMEOUT_MS);

                if (!connected)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Failed to connect to XMPP server. Please check your credentials and server settings."));
                    return LoginResult.Failure;
                }

                // authenticate
                bool authenticated = await _xmppClient.AuthenticateAsync();

                if (!authenticated)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Authentication failed. Please check your username and password."));
                    return LoginResult.Failure;
                }

                // store current user JID
                _currentUserJid = _xmppClient.CurrentJID;

                // send initial presence
                await _xmppClient.SendPresenceAsync(UserConnectionStatus.Online);

                // request roster
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

                MyInformation = new User(
                    displayName,
                    _helperMethods.ExtractUsernameFromJid(_currentUserJid),
                    _currentUserJid,
                    null,
                    status,
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
                        string username = _helperMethods.ExtractUsernameFromJid(contact.Jid);
                        string statusText = contact.StatusMessage ?? string.Empty;
                        UserConnectionStatus presence = contact.Presence;
                        byte[] avatarImage = await _helperMethods.GetDefaultAvatarAsync(contact.Jid);

                        var userData = new User(
                            displayName,
                            username,
                            contact.Jid,
                            statusText,
                            presence,
                            avatarImage
                        );

                        ContactsList.Add(new DirectMessage(userData, contact.Jid));
                    }
                }
                else if (listType == ListType.Recents)
                {
                    RecentsList.Clear();

                    // get recent conversations from message archive
                    var recentConversations = _xmppClient.GetRecentConversations();

                    foreach (var jid in recentConversations)
                    {
                        _recentJidMap[jid] = jid;

                        var contact = roster.FirstOrDefault(c => c.Jid == jid);

                        string displayName = contact?.Name ?? _helperMethods.ExtractUsernameFromJid(jid);
                        string username = _helperMethods.ExtractUsernameFromJid(jid);
                        string statusText = contact?.StatusMessage ?? string.Empty;
                        UserConnectionStatus presence = contact?.Presence ?? UserConnectionStatus.Offline;
                        byte[] avatarImage = await _helperMethods.GetDefaultAvatarAsync(jid);

                        var userData = new User(
                            displayName,
                            username,
                            jid,
                            statusText,
                            presence,
                            avatarImage
                        );

                        RecentsList.Add(new DirectMessage(userData, contact.Jid));
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

        public async Task<bool> SetActiveConversation(Conversation conversation)
        {
            TypingUsersList.Clear();
            ActiveConversation.Clear();

            if (string.IsNullOrWhiteSpace(conversation.Identifier))
            {
                return false;
            }

            _activeConversationJid = conversation.Identifier;

            try
            {
                // retrieve message history for this JID
                var messages = await _xmppClient.GetMessageHistoryAsync(conversation.Identifier, MAX_MESSAGES_LIMIT);

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

        public async Task<bool> SendMessage(string identifier, string text, Attachment attachment, string parent_message_identifier)
        {
            if (text == null) { OnError?.Invoke(this, new PluginMessageEventArgs("Attachment sending is not yet supported by the XMPP plugin. As your message does not have text, it will not be sent.")); return false; }
            if (attachment != null)
            {
                if (attachment.Type != AttachmentType.Image && attachment.Type != AttachmentType.File && attachment.Type != AttachmentType.Audio)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Unsupported attachment type: {attachment.Type}."));
                    return false;
                }
                // XMPP doesn't have a standardized inline file transfer in this implementation.
                // Attachments are silently dropped with a warning.
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Attachment sending is not yet supported by the XMPP plugin. The text message will be sent without the attachment."));
            }

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

        public async Task<bool> SetPresenceStatus(UserConnectionStatus status)
        {
            try
            {
                if (_xmppClient == null || !_xmppClient.IsConnected)
                    return false;

                await _xmppClient.SendPresenceAsync(status);
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to set presence: {ex.Message}"));
                return false;
            }
        }

        // event handlers

        private void OnConnectionStateChanged(object sender, bool isConnected)
        {
            if (!isConnected)
            {
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Connection to XMPP server lost. Attempting to reconnect..."));
            }
        }

        public async Task<bool> SetTextStatus(string status)
        {
            try
            {
                if (_xmppClient == null || !_xmppClient.IsConnected)
                    return false;

                await _xmppClient.SendPresenceAsync(_xmppClient.CurrentPresence, status);
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to set text status: {ex.Message}"));
                return false;
            }
        }

        private void OnMessageReceived(object sender, XMPPMessageEventArgs e)
        {
            _uiContext?.Post(_ =>
            {
                try
                {
                    // remove typing indicator for this user when a message arrives
                    var typingUser = TypingUsersList.FirstOrDefault(u => u.Identifier == e.FromJid);
                    if (typingUser != null)
                    {
                        TypingUsersList.Remove(typingUser);
                    }

                    if (_typingUsersPerChannel.TryGetValue(e.FromJid, out var users))
                    {
                        users.Remove(e.FromJid);
                    }

                    var senderData = new User(
                        e.FromDisplayName,
                        _helperMethods.ExtractUsernameFromJid(e.FromJid),
                        e.FromJid
                    );

                    Attachment[] attachments = null;
                    if (e.Media != null && e.Media.Length > 0)
                    {
                        attachments = new[]
                        {
                            new Attachment(e.Media, "attachment", AttachmentType.File)
                        };
                    }

                    var messageItem = new Message(
                        e.MessageId,
                        senderData,
                        e.Timestamp,
                        e.Body,
                        attachments,
                        null // xmpp doesn't have built-in reply threading
                    );

                    // fire notification for all incoming messages
                    var contact = _xmppClient.GetRoster().FirstOrDefault(c => c.Jid == e.FromJid);
                    UserConnectionStatus status = contact?.Presence ?? UserConnectionStatus.Offline;
                    Notification?.Invoke(this, new NotificationEventArgs(messageItem, status));

                    // add to active conversation if this JID matches
                    if (e.FromJid == _activeConversationJid)
                    {
                        ActiveConversation.Add(messageItem);
                    }

                    // update recents list
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
                    // update presence in contacts list
                    var contact = ContactsList.OfType<User>().FirstOrDefault(c => c.Identifier == e.FromJid);
                    if (contact != null)
                    {
                        contact.PresenceStatus = e.Status;
                        contact.Status = e.StatusMessage ?? string.Empty;
                    }

                    // update presence in recents list
                    var recent = RecentsList.OfType<User>().FirstOrDefault(c => c.Identifier == e.FromJid);
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
            // roster has been updated; refresh the contacts list
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
                            var userData = new User(
                                e.DisplayName,
                                _helperMethods.ExtractUsernameFromJid(e.FromJid),
                                e.FromJid
                            );
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

                // refresh recents list to include this new entry
                Task.Run(async () => await PopulateRecentsList());
            }
        }
    }
}