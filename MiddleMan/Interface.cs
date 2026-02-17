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

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace MiddleMan
{
    public enum AuthenticationMethod
    {
        Password,
        QRCode,
        Passwordless,
        External,
        Token
    }

    public enum LoginResult
    {
        Success,
        OptStepRequired,
        Failure,
        UnsupportedAuthType
    }

    public enum UserConnectionStatus
    {
        Online,
        DoNotDisturb,
        Away,
        Invisible,
        Offline
    }

    public abstract class Participant : INotifyPropertyChanged
    {
        private string _display_name;
        private byte[] _profile_picture;

        public string DisplayName
        {
            get => _display_name;
            set => Set(ref _display_name, value, nameof(DisplayName));
        }

        public string Identifier { get; set; } // Unique identifier. Internal use only.
        public byte[] ProfilePicture
        {
            get => _profile_picture;
            set => Set(ref _profile_picture, value, nameof(ProfilePicture));
        }

        protected Participant(string display_name, string identifier)
        {
            _display_name = display_name;
            Identifier = identifier;
        }

        protected Participant(string display_name, string identifier, byte[] profile_picture)
        {
            _display_name = display_name;
            Identifier = identifier;
            _profile_picture = profile_picture;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void Set<T>(ref T field, T value, string name)
        {
            if (Equals(field, value)) return;
            field = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }

    public class User : Participant
    {
        private string _status;
        private string _username;
        private UserConnectionStatus _presence_status;

        public string Status // Textual status (e.g. "I'm doing good today.")
        {
            get => _status;
            set => Set(ref _status, value, nameof(Status));
        }

        public string Username // Username or handle (not identifier, not display name (unless that doesnt exist))
        {
            get => _username;
            set => Set(ref _username, value, nameof(Username));
        }

        public UserConnectionStatus PresenceStatus // Icon status (e.g. "Online")
        {
            get => _presence_status;
            set => Set(ref _presence_status, value, nameof(PresenceStatus));
        }

        public User(string display_name, string username, string identifier) : base(display_name, identifier)
        {
            _username = username;
        }

        public User(string display_name, string username, string identifier, string status = null,
                        UserConnectionStatus presence_status = UserConnectionStatus.Offline, byte[] profile_picture = null)
            : base(display_name, identifier, profile_picture)
        {
            _username = username;
            _status = status;
            _presence_status = presence_status;
        }
    }

    public class Group : Participant
    {
        private int _member_count;
        private User[] _members;

        public int MemberCount
        {
            get => _member_count;
            set => Set(ref _member_count, value, nameof(MemberCount));
        }

        public User[] Members 
        {
            get => _members;
            set => Set(ref _members, value, nameof(Members));
        }

        public Group(string name, string identifier, int member_count,
                         User[] members, byte[] profile_picture = null)
            : base(name, identifier, profile_picture)
        {
            _member_count = member_count;
            _members = members ?? new User[0];
        }
    }

    public enum AttachmentType
    {
        Image,
        Video,
        Audio,
        File
    }

    public class Attachment
    {
        public string Name { get; set; }
        public AttachmentType Type { get; set; }
        public byte[] File { get; set; }
        public string Url { get; set; }
        public Attachment(byte[] file, string name, AttachmentType type)
        {
            File = file;
            Name = name;   
            Type = type;
        }
        public Attachment(string location_url, string name)
        {
            Url = location_url;
            Name = name;
        }
    }

    public abstract class ConversationItem
    {
        public DateTime Time { get; set; } // Time when the item was sent. If your server API returns send_started and send_completed (for example) use send_completed.
    }

    public class Message : ConversationItem
    { 
        public string PreviousMessageIdentifier { get; set; } // TO REMOVE!!
        public string Identifier { get; set; } // Unique identifier for the message
        public User Sender { get; set; } // Who sent the message 
        public string Text { get; set; } // Message body
        public Attachment[] Attachments { get; set; } // Media or files attached to the message
        public Message ParentMessage { get; set; } // Parent message, if applicable (e.g. this message is a reply to another message) , 
        public Message(string identifier, User sender, DateTime time, string text = null, Attachment[] attachments = null, Message parent_message = null)
        {
            Identifier = identifier;
            Sender = sender;
            Text = text;
            Time = time;
            Attachments = attachments;
            ParentMessage = parent_message;
        }
    }

    public class CallStartedNotice : ConversationItem
    {
        public string StartedBy { get; set; } // Return the user's display name (NOT identifier)
        public bool IsVideoCall { get; set; } // Set to true if the call is video
        public CallStartedNotice(string started_by_display_name, bool is_video_call, DateTime time)
        {
            StartedBy = started_by_display_name;
            Time = time;
            IsVideoCall = is_video_call;
        }
    }

    public class CallEndedNotice : ConversationItem
    {
        public TimeSpan Duration { get; set; } // Length of call
        public bool IsVideoCall { get; set; } // Set to true if the call was video
        public CallEndedNotice(TimeSpan duration, bool is_video_call, DateTime time) // time here is when the "Call ended" notification was sent, not when call started
        {
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
        GroupChat
    }


    public class ClickableConfiguration
    {
        public string DelimiterLeft { get; set; } // left delimiter for clickable item, e.g. '<@', '@'. 
        public string DelimiterRight { get; set; } // right delimiter for clickable item, e.g. '>'. Space -> left-only delimitation in practice.
        public ClickableItemType Type { get; set; } // items that are clickable within the clickability delimiter range
        public ClickableConfiguration(ClickableItemType type, string delimiter_left, string delimiter_right)
        {
            DelimiterLeft = delimiter_left;
            DelimiterRight = delimiter_right;
            Type = type;
        }

    }

    public enum DialogType
    {
        Error,
        Warning
    }

    public class PluginMessageEventArgs : EventArgs
    {
        public string Message { get; }
        public PluginMessageEventArgs(string message)
        {
            Message = message;
        }
    }

    public class NotificationEventArgs : EventArgs
    {
        public ConversationItem Item { get; }
        public UserConnectionStatus Status { get; }
        public string SentInChannelID { get; } 
        public NotificationEventArgs(ConversationItem item, UserConnectionStatus user_status)
        {
            Item = item;
            Status = user_status;           
        }
        public NotificationEventArgs(Message message, UserConnectionStatus user_status, string sent_in_channel_id)
        {
            Item = message;
            Status = user_status;
            SentInChannelID = sent_in_channel_id;
        }
    }

    public interface ICore // For methods/variables that ALL plugins have to contain, e.g. plugin details, authentication
    {
        event EventHandler<PluginMessageEventArgs> OnError;
        event EventHandler<PluginMessageEventArgs> OnWarning;
        event EventHandler<NotificationEventArgs> Notification;
        string Name { get; } // Name of the protocol. (e.g. Discord)
        string InternalName { get; } // Internal name of the plugin (e.g. skymu-discord-plugin)
        string TextUsername { get; } // The text to display above the Username field (e.g. "Username", "Email", "Phone number")
        AuthenticationMethod[] AuthenticationType { get; } // OAuth, Passwordless, and Standard (Standard is most commonly used). Return an array of supported types.
        Task<string[]> SaveAutoLoginCredential();
        Task<string> GetQRCode(); // Returns a string that can be used to generate a QR code for QR code authentication. This is only called if AuthenticationType includes QRCode.
        Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password,
            bool tryLoginWithSavedCredentials); // Step 1 of the login system, basically when you click 'Sign in' on the Login window.
        Task<LoginResult> LoginOptStep(string code); // Step 2 of the login system, this is used for Multi-Factor Authentication.
        Task<bool> SendMessage(string identifier, string text); // Sends a message. Returns true on success.
        User MyInformation { get; } // field for current user's data, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateSidebarInformation(); // Fetches and assigns the sidebar information to the SidebarInformation variable. Returns true on success.
        Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials); // Tries to log in with saved tokens/credentials
        ObservableCollection<ConversationItem> ActiveConversation { get; } // field for conversation items in the active conversation, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<Participant> ContactsList { get; } // field for contact list, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<Participant> RecentsList { get; } // field for recents list, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateContactsList(); // Fetches and assigns the contact list to the ContactList variable. Returns true on success.
        Task<bool> PopulateRecentsList(); // Fetches and assigns the recents list to the RecentsList variable. Returns true on success.
        Task<bool> SetActiveConversation(string identifier); // sets the active conversation to the specified identifier and fetches its messages. Returns true on success.
        void Dispose(); // disposes or cleans up static objects, fields, etc. This is called when signing out.
        ClickableConfiguration[] ClickableConfigurations { get; } // configurations for various types of clickable items
        ObservableCollection<User> TypingUsersList { get; } // display names, ID's of users currently typing in the active conversation. 
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }
}