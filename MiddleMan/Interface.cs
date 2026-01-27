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
        public ObservableCollection<ContactData> ContactList { get; set; }
        public SidebarData(string username, string skypeCreditText, int connectionStatus, ObservableCollection<ContactData> contactList)
        {
            Username = username;
            SkypeCreditText = skypeCreditText;
            ContactList = contactList;
            ConnectionStatus = connectionStatus;
        }
    }

    public class ContactData
    {
        public string DisplayName { get; set; } // publicly displayed name.
        public string Identifier { get; set;} // this is what will be used to make requests such as SendMessage. 
        public string Status { get; set; } // textual status, e.g. "I'm good!"
        public int PresenceStatus { get; set; } // away, online, offline, etc
        public byte[] ProfilePicture { get; set; }
        public ContactData(string displayName, string identifier, string status, int presenceStatus, byte[] profilePicture)
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
        AuthenticationMethod AuthenticationType { get; } // OAuth, Passwordless, or Standard (Standard is most commonly used)
        Task<LoginResult> LoginMainStep(string username, string password,
            bool tryLoginWithSavedCredentials); // Step 1 of the login system, basically when you click 'Sign in' on the Login window.
        Task<LoginResult> LoginOptStep(string code); // Step 2 of the login system, this is used for Multi-Factor Authentication.
        Task<bool> SendMessage(string user, string text); // Sends a message, returns true if it was successful.
        Task<SidebarData> FetchSidebarData(); // Fetches sidebar data (contacts list, username, text placeholders, etc.)
        Task<LoginResult> TryAutoLogin(); // Tries to log in with saved tokens/credentials
        Task<ObservableCollection<ConversationItem>> FetchConversationHistory(string identifier); // Fetches the conversation history between you and the specified identifier.
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }
}