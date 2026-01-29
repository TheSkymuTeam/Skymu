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
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

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
        public const int Invisible = 19;
        public const int DoNotDisturb = 5;
        public const int Online = 2;
        public const int Away = 3;
        public const int Offline = 19;
        public const int Unknown = 0;
    }

    public class SidebarData
    {   
        public string Username { get; set; }
        public string SkypeCreditText { get; set; }
        public int ConnectionStatus { get; set; }
        public SidebarData(string username, string skypeCreditText, int connectionStatus)
        {
            Username = username;
            SkypeCreditText = skypeCreditText;
            ConnectionStatus = connectionStatus;
        }
    }

    public class ProfileData
    {
        public string DisplayName { get; set; } // publicly displayed name.
        public string Identifier { get; set;} // this is what will be used to make requests such as SendMessage. 
        public string Status { get; set; } // textual status, e.g. "I'm good!"
        public int PresenceStatus { get; set; } // away, online, offline, etc
        public byte[] ProfilePicture { get; set; }
        public ProfileData(string displayName, string identifier, string status, int presenceStatus, byte[] profilePicture)
        {
            DisplayName = displayName;
            Identifier = identifier;
            Status = status;
            PresenceStatus = presenceStatus;
            ProfilePicture = profilePicture;
        }
    }

    public abstract class ConversationItem
    {
        public DateTime Time { get; set; } // Time when the item was sent. If your server API returns send_started and send_completed (for example) prefer send_completed.
    }

    public class MessageItem : ConversationItem
    {
        public string SentByDN { get; set; }
        public string SentByID { get; set; }
        public string Body { get; set; } // Message body      
        public MessageItem(string sentByIdentifier, string sentByDisplayName, string body, DateTime time)
        {
            SentByID = sentByIdentifier;
            SentByDN = sentByDisplayName;
            Body = body;
            Time = time;
        }
    }

    public class CallStartedItem : ConversationItem
    {
        public string StartedBy { get; set; } // Return the user's display name (NOT identifier)
        public bool IsVideoCall { get; set; }
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
        public bool IsVideoCall { get; set; }
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
        string InternalName {  get; } // Internal name of the plugin (e.g. skymu-discord-plugin)
        string TextUsername { get; } // The text to display above the Username field (e.g. "Username", "Email", "Phone number")
        string CustomLoginButtonText { get; } // Return null unless you absolutely need to change the login button text
        AuthenticationMethod AuthenticationType { get; } // OAuth, Passwordless, or Standard (Standard is most commonly used)
        Task<LoginResult> LoginMainStep(string username, string password,
            bool tryLoginWithSavedCredentials); // Step 1 of the login system, basically when you click 'Sign in' on the Login window.
        Task<LoginResult> LoginOptStep(string code); // Step 2 of the login system, this is used for Multi-Factor Authentication.
        Task<bool> SendMessage(string user, string text); // Sends a message. Returns true on success.
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