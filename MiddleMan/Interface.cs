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

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;

namespace MiddleMan
{
    public enum AuthenticationMethod
    {
        Password,
        QRCode,
        Passwordless,
        External,
        Token,
    }

    public enum LoginResult
    {
        Success,
        TwoFARequired,
        Failure,
        UnsupportedAuthType,
    }

    public enum UserConnectionStatus
    {
        Online,
        DoNotDisturb,
        Away,
        OnlineMobile,
        DoNotDisturbMobile,
        AwayMobile,
        Invisible,
        Blocked,
        Offline,
        Unknown,
    }

    public enum ChannelType
    {
        Standard,
        ReadOnly,
        Announcement,
        Voice,
        Restricted,
        NoAccess,
        Forum,
    }

    public abstract class Metadata : INotifyPropertyChanged
    {
        private string _displayName;
        private byte[] _profilePicture;

        public string Identifier { get; set; }

        public string DisplayName
        {
            get => _displayName;
            set => Set(ref _displayName, value, nameof(DisplayName));
        }

        public byte[] ProfilePicture
        {
            get => _profilePicture;
            set => Set(ref _profilePicture, value, nameof(ProfilePicture));
        }

        protected Metadata(string displayName, string identifier, byte[] profilePicture = null)
        {
            _displayName = displayName;
            Identifier = identifier;
            _profilePicture = profilePicture;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void Set<T>(ref T field, T value, string name)
        {
            if (Equals(field, value))
                return;
            field = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }

    public abstract class Participant : Metadata
    {
        protected Participant(string displayName, string identifier, byte[] profilePicture = null)
            : base(displayName, identifier, profilePicture) { }
    }

    public class User : Participant
    {
        private string _status;
        private string _username;
        private string _publicusername;
        private UserConnectionStatus _presence_status;

        public string Status
        {
            get => _status;
            set => Set(ref _status, value, nameof(Status));
        }

        public string Username
        {
            get => _username;
            set => Set(ref _username, value, nameof(Username));
        }

        // for services where the username on the titlebar should be distinct from the username
        public string PublicUsername
        {
            get => String.IsNullOrEmpty(_publicusername) ? _username : _publicusername;
            set => Set(ref _publicusername, value, nameof(PublicUsername));
        }

        public UserConnectionStatus ConnectionStatus
        {
            get => _presence_status;
            set => Set(ref _presence_status, value, nameof(ConnectionStatus));
        }

        public User(
            string display_name,
            string username,
            string identifier,
            string status = null,
            UserConnectionStatus presence_status = UserConnectionStatus.Offline,
            byte[] profilePicture = null
        )
            : base(display_name, identifier, profilePicture)
        {
            _username = username;
            _status = status;
            _presence_status = presence_status;
        }
    }

    public abstract class Conversation : Metadata
    {
        private int _unreadCount;
        private DateTime _lastMessageTime;

        public int UnreadCount
        {
            get => _unreadCount;
            set => Set(ref _unreadCount, value, nameof(UnreadCount));
        }

        public DateTime LastMessageTime
        {
            get => _lastMessageTime;
            set => Set(ref _lastMessageTime, value, nameof(LastMessageTime));
        }

        protected Conversation(
            string display_name,
            string identifier,
            int unread_count,
            byte[] profile_picture = null,
            DateTime? last_message_time = null
        )
            : base(display_name, identifier, profile_picture)
        {
            _unreadCount = unread_count;
            _lastMessageTime = last_message_time ?? DateTime.Now;
        }
    }

    public class DirectMessage : Conversation
    {
        public User Partner { get; }

        public DirectMessage(
            User partner,
            int unread_count,
            string identifier,
            DateTime? last_message_time = null
        )
            : base(
                partner.DisplayName,
                identifier,
                unread_count,
                partner.ProfilePicture,
                last_message_time
            )
        {
            Partner = partner;
        }
    }

    public class Group : Conversation
    {
        private User[] _members;

        public User[] Members
        {
            get => _members;
            set => Set(ref _members, value, nameof(Members));
        }

        public Group(
            string name,
            string identifier,
            int unread_count,
            User[] members,
            byte[] profile_picture = null,
            DateTime? last_message_time = null
        )
            : base(name, identifier, unread_count, profile_picture, last_message_time)
        {
            _members = members;
        }
    }

    public class Server : Metadata
    {
        private User[] _members;
        private ServerChannel[] _channels;
        private ObservableCollection<object> _groupedChannels;
        private int _memberCount;

        public User[] Members
        {
            get => _members;
            set => Set(ref _members, value, nameof(Members));
        }

        public ServerChannel[] Channels
        {
            get => _channels;
            set => Set(ref _channels, value, nameof(Channels));
        }

        public ObservableCollection<object> GroupedChannels
        {
            get => _groupedChannels;
            set => Set(ref _groupedChannels, value, nameof(GroupedChannels));
        }

        public int MemberCount
        {
            get => _memberCount;
            set => Set(ref _memberCount, value, nameof(MemberCount));
        }

        public Dictionary<string, string> CategoryMap { get; set; }

        public Server(
            string name,
            string identifier,
            User[] members,
            ServerChannel[] channels,
            byte[] profile_picture = null,
            Dictionary<string, string> category_map = null,
            int member_count = 0
        )
            : base(name, identifier, profile_picture)
        {
            _members = members;
            _channels = channels;
            CategoryMap = category_map ?? new Dictionary<string, string>();
            _groupedChannels = new ObservableCollection<object>();
            _memberCount = member_count == 0 && members != null ? members.Length : member_count;
        }
    }

    public class ServerChannel : Conversation
    {
        public string ParentServerID { get; }
        public string Description { get; }
        public ChannelType ChannelType { get; }
        public string CategoryID { get; }
        public int Position { get; }

        public ServerChannel(
            string name,
            string identifier,
            string parent_server_id,
            int unread_count,
            ChannelType channel_type,
            string category_id = null,
            int position = 0,
            string description = null,
            DateTime? last_message_time = null
        )
            : base(name, identifier, unread_count, null, last_message_time)
        {
            ParentServerID = parent_server_id;
            Description = description;
            ChannelType = channel_type;
            CategoryID = category_id;
            Position = position;
        }
    }

    public enum AttachmentType
    {
        Image,
        ThumbnailImage,
        Video,
        Audio,
        File,
    }

    public class Attachment
    {
        public string Name { get; set; }
        public AttachmentType Type { get; set; }
        public byte[] File { get; set; }
        public string Url { get; set; }

        public Attachment(byte[] file, string name, string url, AttachmentType type)
        {
            File = file;
            Name = name;
            Type = type;
            Url = url;
        }

        public Attachment(string location_url, string name)
        {
            Url = location_url;
            Name = name;
        }
    }

    public class AuthTypeInfo
    {
        public AuthenticationMethod AuthType { get; set; }
        public string CustomTextUsername { get; set; }
        public string CustomTextAuthType { get; set; }
        public string Url { get; set; }

        public AuthTypeInfo(
            AuthenticationMethod type,
            string custom_text_username_field = null,
            string custom_text_auth_type = null
        )
        {
            AuthType = type;
            CustomTextAuthType = custom_text_auth_type;
            CustomTextUsername = custom_text_username_field;
        }
    }

    public class PluginInfo
    {
        public AuthenticationMethod AuthType { get; set; }
        public string CustomTextUsername { get; set; }
        public string CustomTextAuthType { get; set; }
        public string Url { get; set; }

        public PluginInfo(
            AuthenticationMethod type,
            string custom_text_username_field = null,
            string custom_text_auth_type = null
        )
        {
            AuthType = type;
            CustomTextAuthType = custom_text_auth_type;
            CustomTextUsername = custom_text_username_field;
        }
    }


    public class SavedCredential
    {
        public User User { get; }
        public string PasswordOrToken { get; }
        public string Plugin { get; }
        public AuthenticationMethod AuthenticationType { get; }

        public SavedCredential(
            User user,
            string password_or_token,
            AuthenticationMethod authentication_type,
            string plugin
        )
        {
            User = user;
            PasswordOrToken = password_or_token;
            AuthenticationType = authentication_type;
            Plugin = plugin;
        }
    }

    public abstract class ConversationItem
    {
        public DateTime Time { get; set; } // Time when the item was sent. If your server API returns send_started and send_completed (for example) use send_completed.
        public string Identifier { get; set; } // Unique identifier for the item
    }

    public class Message : ConversationItem
    {
        public string PreviousMessageIdentifier { get; set; } // TO REMOVE!!
        public User Sender { get; set; } // Who sent the message
        public string Text { get; set; } // Message body
        public Attachment[] Attachments { get; set; } // Media or files attached to the message
        public Message ParentMessage { get; set; } // Parent message, if applicable (e.g. this message is a reply to another message)
        public bool IsForwarded { get; set; }

        public Message(
            string identifier,
            User sender,
            DateTime time,
            string text = null,
            Attachment[] attachments = null,
            Message parent_message = null,
            bool is_forwarded = false
        )
        {
            Identifier = identifier;
            Sender = sender;
            Text = text;
            Time = time;
            Attachments = attachments;
            ParentMessage = parent_message;
            IsForwarded = is_forwarded;
        }
    }

    public class CallStartedNotice : ConversationItem
    {
        public User StartedBy { get; set; }
        public bool IsVideoCall { get; set; } // Set to true if the call is video

        public CallStartedNotice(User started_by, bool is_video_call, DateTime time)
        {
            StartedBy = started_by;
            Time = time;
            IsVideoCall = is_video_call;
        }
    }

    public class CallEndedNotice : ConversationItem
    {
        public User StartedBy { get; set; }
        public TimeSpan Duration { get; set; } // Length of call
        public bool IsVideoCall { get; set; } // Set to true if the call was video

        public CallEndedNotice(
            User started_by,
            TimeSpan duration,
            bool is_video_call,
            DateTime time
        ) // time here is when the "Call ended" notification was sent, not when call started
        {
            StartedBy = started_by;
            Duration = duration;
            Time = time;
            IsVideoCall = is_video_call;
        }
    }

    public enum ClickableItemType
    {
        User,
        Server,
        ServerRole,
        ServerChannel,
        GroupChat,
    }

    public enum ConversationType
    {
        DirectMessage,
        Group,
        Server,
    }

    public class ClickableConfiguration
    {
        public string DelimiterLeft { get; set; } // left delimiter for clickable item, e.g. '<@', '@'.
        public string DelimiterRight { get; set; } // right delimiter for clickable item, e.g. '>'. Space -> left-only delimitation in practice.
        public ClickableItemType Type { get; set; } // items that are clickable within the clickability delimiter range

        public ClickableConfiguration(
            ClickableItemType type,
            string delimiter_left,
            string delimiter_right
        )
        {
            DelimiterLeft = delimiter_left;
            DelimiterRight = delimiter_right;
            Type = type;
        }
    }

    public enum DialogType
    {
        Error,
        Warning,
    }

    public class PluginMessageEventArgs : EventArgs
    {
        public string Message { get; }

        public PluginMessageEventArgs(string message)
        {
            Message = message;
        }
    }

    public abstract class MessageEventArgs : EventArgs
    {
        public string ConversationId { get; }

        public MessageEventArgs(string conversation_id)
        {
            ConversationId = conversation_id;
        }
    }

    public class MessageRecievedEventArgs : MessageEventArgs
    {
        public ConversationItem Item { get; }
        public bool SentInServerChannel { get; }

        public MessageRecievedEventArgs(
            string conversation_id,
            ConversationItem item,
            bool sent_in_server_channel
        )
            : base(conversation_id)
        {
            Item = item;
            SentInServerChannel = sent_in_server_channel;
        }
    }

    public class MessageEditedEventArgs : MessageEventArgs
    {
        public string OldItemId { get; }
        public ConversationItem NewItem { get; }

        public MessageEditedEventArgs(
            string conversation_id,
            string old_item_id,
            ConversationItem new_item
        )
            : base(conversation_id)
        {
            OldItemId = old_item_id;
            NewItem = new_item;
        }
    }

    public class MessageDeletedEventArgs : MessageEventArgs
    {
        public string DeletedItemId { get; }

        public MessageDeletedEventArgs(string conversation_id, string deleted_item_id)
            : base(conversation_id)
        {
            DeletedItemId = deleted_item_id;
        }
    }

    public enum Fetch
    {
        Newest,
        Oldest,
        BeforeIdentifier,
        AfterIdentifier,
        NewestAfterIdentifier,
    }

    public enum CallState
    {
        Ringing,
        Active,
        Ended,
        Failed,
    }

    public class CallEventArgs : EventArgs
    {
        public string ConversationId { get; }
        public CallState State { get; }
        public string FailReason { get; }
        public User Caller { get; }

        public CallEventArgs(string convo_id, CallState state)
        {
            ConversationId = convo_id;
            State = state;
        }

        public CallEventArgs(string convo_id, CallState state, string fail_reason)
        {
            ConversationId = convo_id;
            State = state;
            FailReason = fail_reason;
        }

        public CallEventArgs(string convo_id, CallState state, User caller)
        {
            ConversationId = convo_id;
            State = state;
            Caller = caller;
        }
    }

    public class ActiveCall
    {
        public string CallId { get; }
        public string ConversationId { get; }
        public bool IsVideo { get; }
        public CallState State { get; set; }
        public DateTime StartedAt { get; }
        public User[] Participants { get; set; }

        public ActiveCall(
            string call_id,
            string conversation_id,
            bool is_video,
            User[] participants
        )
        {
            CallId = call_id;
            ConversationId = conversation_id;
            IsVideo = is_video;
            StartedAt = DateTime.UtcNow;
            Participants = participants;
            State = CallState.Ringing;
        }
    }

    public interface ICore // For methods/variables that ALL plugins have to contain, e.g. plugin details, authentication
    {
        event EventHandler<PluginMessageEventArgs> OnError;
        event EventHandler<PluginMessageEventArgs> OnWarning;
        event EventHandler<MessageEventArgs> MessageEvent;
        string Name { get; } // Name of the protocol. (e.g. Discord)
        string InternalName { get; } // Internal name of the plugin (e.g. skymu-discord-plugin)
        AuthTypeInfo[] AuthenticationTypes { get; } // OAuth, Passwordless, and Standard (Standard is most commonly used). Return an array of supported types.
        bool SupportsServers { get; } // Does the plugin support servers or not? (Most don't)
        int TypingTimeout { get; } // timeout for typing status
        Task<SavedCredential> StoreCredential(); // stores credential for future auto-login. This is called after a successful login, and the returned SavedCredential object is stored in the database.
        Task<string> GetQRCode(); // Returns a string that can be used to generate a QR code for QR code authentication. This is only called if AuthenticationType includes QRCode.
        Task<LoginResult> Authenticate(
            AuthenticationMethod auth_type,
            string username,
            string password
        ); // Step 1 of the login system, basically when you click 'Sign in' on the Login window.
        Task<LoginResult> Authenticate(SavedCredential credential); // Tries to log in with saved tokens/credentials
        Task<LoginResult> AuthenticateTwoFA(string code); // Step 2 of the login system, this is used for Multi-Factor Authentication. (TOTP)
        Task<bool> SendMessage(
            string identifier,
            string text = null,
            Attachment attachment = null,
            string parent_message_identifier = null
        ); // Sends a message. Returns true on success.
        User MyInformation { get; } // field for current user's data, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateUserInformation(); // Fetches and assigns the sidebar information to the SidebarInformation variable. Returns true on success.
        ObservableCollection<DirectMessage> ContactsList { get; } // field for contact list, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<Conversation> RecentsList { get; } // field for recents list, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<Server> ServerList { get; } // field for server list, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateContactsList(); // Fetches and assigns the contact list to the ContactList variable. Returns true on success.
        Task<bool> PopulateRecentsList(); // Fetches and assigns the recents list to the RecentsList variable. Returns true on success.
        Task<bool> PopulateServerList(); // Fetches and assigns the server list to the ServerList variable. Returns true on success.
        Task<ConversationItem[]> FetchMessages(
            Conversation conversation,
            Fetch fetch_type = Fetch.Newest,
            int message_count = 50,
            string identifier = null
        ); // sets the active conversation to the specified identifier and fetches its messages. Returns true on success.
        void Dispose(); // disposes or cleans up static objects, fields, etc. This is called when signing out.
        ClickableConfiguration[] ClickableConfigurations { get; } // configurations for various types of clickable items
        ObservableCollection<User> TypingUsersList { get; } // display names, ID's of users currently typing in the active conversation.
        Task<bool> SetConnectionStatus(UserConnectionStatus status); // sets presence status (online, offline, etc)
        Task<bool> SetTextStatus(string status); // sets text status
        Task<bool> SetTyping(string idenfitier, bool typing); // sets typing status
    }

    public interface ICall
    {
        bool SupportsVideoCalls { get; }

        event EventHandler<CallEventArgs> OnIncomingCall;
        event EventHandler<CallEventArgs> OnCallStateChanged;

        Task<ActiveCall> StartCall(string convo_id, bool is_video_call, bool start_muted);
        Task<ActiveCall> AnswerCall(string convo_id);
        Task<bool> DeclineCall(string convo_id);
        Task<bool> EndCall(ActiveCall call);
        Task<bool> SetMuted(ActiveCall call, bool muted);
        Task<bool> SetVideoEnabled(ActiveCall call, bool enabled);
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    { }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    { }
}
