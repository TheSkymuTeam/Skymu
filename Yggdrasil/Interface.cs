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
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Yggdrasil
{
    public interface IMidgard // For methods/variables that ALL plugins have to contain, e.g. plugin details, authentication
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
        Task<bool> SetConnectionStatus(PresenceStatus status); // sets presence status (online, offline, etc)
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
}
