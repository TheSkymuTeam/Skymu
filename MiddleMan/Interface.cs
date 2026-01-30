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

using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;

namespace MiddleMan
{
    public enum AuthenticationMethod
    {
        Standard,
        Passwordless,
        OAuth
    }

    public enum LoginResult
    {
        Success,
        OptStepRequired,
        Failure
    }

    public static class UserConnectionStatus
    {
        public const int Group = 21;
        public const int Invisible = 19;
        public const int DoNotDisturb = 5;
        public const int Online = 2;
        public const int Away = 3;
        public const int Offline = 19;
        public const int Unknown = 0;
    }

    public class SidebarData
    {
        public string DisplayName { get; set; } // The current user's display name.
        public string Identifier { get; set; } // The current user's unique identifier.
        public string SkypeCreditText { get; set; } // The text you want to put in place of Skype Credit.
        public int ConnectionStatus { get; set; } // Icon status (e.g. "Online")
        public SidebarData(string username, string identifier, string skypeCreditText, int connectionStatus)
        {
            DisplayName = username;
            Identifier = identifier;
            SkypeCreditText = skypeCreditText;
            ConnectionStatus = connectionStatus;
        }
    }


    public class ProfileData : INotifyPropertyChanged
    {
        string _displayName, _status;
        int _presenceStatus;
        byte[] _profilePicture;

        public string DisplayName
        {
            get => _displayName; // Display name. Prefer nickname over username or general name where it applies.
            set => Set(ref _displayName, value, nameof(DisplayName));
        }
        public string Identifier { get; set; } // Unique identifier of the user. The end user is not going to see this. It is used internally.

        public string Status // Textual status (e.g. "I'm doing good today.")
        {
            get => _status;
            set => Set(ref _status, value, nameof(Status));
        }

        public int PresenceStatus // Icon status (e.g. "Online")
        {
            get => _presenceStatus;
            set => Set(ref _presenceStatus, value, nameof(PresenceStatus));
        }

        public byte[] ProfilePicture // Raw image data for profile picture. Reasonable resolutions (not too low/high) preferred.
        {
            get => _profilePicture;
            set => Set(ref _profilePicture, value, nameof(ProfilePicture));
        }

        public ProfileData(string displayName, string identifier, string status,
                           int presenceStatus, byte[] profilePicture)
        {
            _displayName = displayName;
            Identifier = identifier;
            _status = status;
            _presenceStatus = presenceStatus;
            _profilePicture = profilePicture;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        void Set<T>(ref T field, T value, string name)
        {
            if (Equals(field, value)) return;
            field = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
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
        public string Body { get; set; } // Message body      
        public MessageItem(string messageID, string sentByIdentifier, string sentByDisplayName, string body, DateTime time, string replyToIdentifier = null, string replyToDisplayName = null, string replyToBody = null)
        {
            MessageID = messageID;
            SentByID = sentByIdentifier;
            SentByDN = sentByDisplayName;
            Body = body;
            Time = time;
            ReplyToID = replyToIdentifier;
            ReplyToDN = replyToDisplayName;
            ReplyBody = replyToBody;
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

    public interface ICore // For methods/variables that ALL plugins have to contain, e.g. plugin details, authentication
    {
        event EventHandler<PluginMessageEventArgs> OnError;
        event EventHandler<PluginMessageEventArgs> OnWarning;
        string Name { get; } // Name of the protocol. (e.g. Discord)
        string InternalName { get; } // Internal name of the plugin (e.g. skymu-discord-plugin)
        string TextUsername { get; } // The text to display above the Username field (e.g. "Username", "Email", "Phone number")
        string CustomLoginButtonText => "Sign in";
        AuthenticationMethod AuthenticationType { get; } // OAuth, Passwordless, or Standard (Standard is most commonly used)
        Task<LoginResult> LoginMainStep(string username, string password,
            bool tryLoginWithSavedCredentials); // Step 1 of the login system, basically when you click 'Sign in' on the Login window.
        Task<LoginResult> LoginOptStep(string code); // Step 2 of the login system, this is used for Multi-Factor Authentication.
        Task<bool> SendMessage(string identifier, string text); // Sends a message. Returns true on success.
        SidebarData SidebarInformation { get; } // field for sidebar data, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateSidebarInformation(); // Fetches and assigns the sidebar information to the SidebarInformation variable. Returns true on success.
        Task<LoginResult> TryAutoLogin(); // Tries to log in with saved tokens/credentials
        ObservableCollection<ConversationItem> ActiveConversation { get; } // field for conversation items in the active conversation, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<ProfileData> ContactsList { get; } // field for contact list, ideally bound to a WebSocket or similar for real-time updates.
        ObservableCollection<ProfileData> RecentsList { get; } // field for recents list, ideally bound to a WebSocket or similar for real-time updates.
        Task<bool> PopulateContactsList(); // Fetches and assigns the contact list to the ContactList variable. Returns true on success.
        Task<bool> PopulateRecentsList(); // Fetches and assigns the recents list to the RecentsList variable. Returns true on success.
        Task<bool> SetActiveConversation(string identifier); // sets the active conversation to the specified identifier and fetches its messages. Returns true on success.
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }
}