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

    /*public static class UserConnectionStatus
    {
        public const int Group = 21;
        public const int Invisible = 19;
        public const int DoNotDisturb = 5;
        public const int Online = 2;
        public const int Away = 3;
        public const int Offline = 19;
        public const int Unknown = 0;
    }*/

    public enum UserConnectionStatus
    {
        Online,
        DoNotDisturb,
        Away,
        Invisible,
        Offline,
        Unknown
    }

    public class SidebarData
    {
        public string DisplayName { get; set; } // The current user's display name.
        public string Identifier { get; set; } // The current user's unique identifier.
        public string SkypeCreditText { get; set; } // The text you want to put in place of Skype Credit.
        public UserConnectionStatus ConnectionStatus { get; set; } // Icon status (e.g. "Online")
        public SidebarData(string username, string identifier, string skypeCreditText, UserConnectionStatus connectionStatus)
        {
            DisplayName = username;
            Identifier = identifier;
            SkypeCreditText = skypeCreditText;
            ConnectionStatus = connectionStatus;
        }
    }

    public abstract class ProfileData : INotifyPropertyChanged
    {
        private string _displayName;
        private byte[] _profilePicture;

        public string DisplayName
        {
            get => _displayName;
            set => Set(ref _displayName, value, nameof(DisplayName));
        }

        public string Identifier { get; set; } // Unique identifier. Internal use only.
        public byte[] ProfilePicture
        {
            get => _profilePicture;
            set => Set(ref _profilePicture, value, nameof(ProfilePicture));
        }

        protected ProfileData(string displayName, string identifier, byte[] profilePicture = null)
        {
            _displayName = displayName;
            Identifier = identifier;
            _profilePicture = profilePicture;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void Set<T>(ref T field, T value, string name)
        {
            if (Equals(field, value)) return;
            field = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }

    public class UserData : ProfileData
    {
        private string _status;
        private UserConnectionStatus _presenceStatus;

        public string Status // Textual status (e.g. "I'm doing good today.")
        {
            get => _status;
            set => Set(ref _status, value, nameof(Status));
        }

        public UserConnectionStatus PresenceStatus // Icon status (e.g. "Online")
        {
            get => _presenceStatus;
            set => Set(ref _presenceStatus, value, nameof(PresenceStatus));
        }

        public UserData(string displayName, string identifier, string status = null,
                        UserConnectionStatus presenceStatus = UserConnectionStatus.Unknown, byte[] profilePicture = null)
            : base(displayName, identifier, profilePicture)
        {
            _status = status;
            _presenceStatus = presenceStatus;
        }
    }

    public class GroupData : ProfileData
    {
        private int _memberCount;
        private UserData[] _members;

        public int MemberCount
        {
            get => _memberCount;
            set => Set(ref _memberCount, value, nameof(MemberCount));
        }

        public UserData[] Members 
        {
            get => _members;
            set => Set(ref _members, value, nameof(Members));
        }

        public GroupData(string displayName, string identifier, int memberCount = 0,
                         UserData[] members = null, byte[] profilePicture = null)
            : base(displayName, identifier, profilePicture)
        {
            _memberCount = memberCount;
            _members = members ?? new UserData[0];
        }
    }


    public abstract class ConversationItem
    {
        public DateTime Time { get; set; } // Time when the item was sent. If your server API returns send_started and send_completed (for example) prefer send_completed.
    }

    public class MessageItem : ConversationItem
    { // The reason this class asks for both Display Name and Identifier for SentBy and ReplyTo is because identifier => display name mapping in the UI
      // becomes very complex in servers with large amounts of people, as well as other possible complications. To simplify everything, just provide both.
        public string MessageID { get; set; } // Unique identifier for the message
        public string SentByDN { get; set; } // Who sent the message (Display Name)
        public string SentByID { get; set; } // Who sent the message (Identifier)
        public string ReplyToDN { get; set; } // Who the message is replying to (Display Name)
        public string ReplyToID { get; set; } // Who the message is replying to (Identifier)
        public string ReplyBody { get; set; } // Body of the message being replied to
        public string ChannelID { get; set; } // Unique identifier for the conversation/channel this message belongs to. This is not set by you, but it is required for the MessageItem to be properly processed by Skymu, so that it can be used in notifications and other places where the conversation/channel identifier is needed.
        public string Body { get; set; } // Message body
        public byte[] Media { get; set; } // Raw image data for the message's image, if it has one.
        public string PreviousMessageIdentifier { get; set; } // This is not set by you
        public MessageItem(string messageID, string sentByIdentifier, string sentByDisplayName, DateTime time, string body = null, byte[] image = null, string replyToIdentifier = null, string replyToDisplayName = null, string replyToBody = null, string channelID = null)
        {
            MessageID = messageID;
            SentByID = sentByIdentifier;
            SentByDN = sentByDisplayName;
            Body = body;
            Time = time;
            ReplyToID = replyToIdentifier;
            ReplyToDN = replyToDisplayName;
            ReplyBody = replyToBody;
            Media = image;
            ChannelID = channelID;
        }
    }

    public class CallStartedItem : ConversationItem
    {
        public string StartedBy { get; set; } // Return the user's display name (NOT identifier)
        public bool IsVideoCall { get; set; } // Set to true if the call is video
        public CallStartedItem(string startedByDisplayName, bool isVideoCall, DateTime time)
        {
            StartedBy = startedByDisplayName;
            Time = time;
            IsVideoCall = isVideoCall;
        }
    }

    public class CallEndedItem : ConversationItem
    {
        public TimeSpan Duration { get; set; } // Length of call
        public bool IsVideoCall { get; set; } // Set to true if the call was video
        public CallEndedItem(TimeSpan duration, bool isVideoCall, DateTime time) // time here is when the "Call ended" notification was sent, not when call started
        {
            Duration = duration;
            Time = time;
            IsVideoCall = isVideoCall;
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
        public ClickableConfiguration(ClickableItemType type, string delimiterLeft, string delimiterRight)
        {
            DelimiterLeft = delimiterLeft;
            DelimiterRight = delimiterRight;
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
        public NotificationEventArgs(ConversationItem item, UserConnectionStatus status)
        {
            Item = item;
            Status = status;
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
        SidebarData SidebarInformation { get; } // field for sidebar data, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateSidebarInformation(); // Fetches and assigns the sidebar information to the SidebarInformation variable. Returns true on success.
        Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials); // Tries to log in with saved tokens/credentials
        ObservableCollection<ConversationItem> ActiveConversation { get; } // field for conversation items in the active conversation, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<ProfileData> ContactsList { get; } // field for contact list, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<ProfileData> RecentsList { get; } // field for recents list, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateContactsList(); // Fetches and assigns the contact list to the ContactList variable. Returns true on success.
        Task<bool> PopulateRecentsList(); // Fetches and assigns the recents list to the RecentsList variable. Returns true on success.
        Task<bool> SetActiveConversation(string identifier); // sets the active conversation to the specified identifier and fetches its messages. Returns true on success.
        void Dispose(); // disposes or cleans up static objects, fields, etc. This is called when signing out.
        ClickableConfiguration[] ClickableConfigurations { get; } // configurations for various types of clickable items
        ObservableCollection<UserData> TypingUsersList { get; } // display names, ID's of users currently typing in the active conversation. 
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }
}