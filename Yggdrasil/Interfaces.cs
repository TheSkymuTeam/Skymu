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
// Yggdrasil was previously known as 'MiddleMan' but renamed
// because it stopped solely being a plugin API. It is 
// recommended that you make the necessary changes to your
// code to accomodate this.
/*==========================================================*/

using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;
using Yggdrasil.EventArgs;

namespace Yggdrasil
{
    /// <summary>
    ///  For methods/variables that all plugins have to contain, e.g. plugin details, authentication.
    /// </summary>
    public interface ICore 
    {
        /// <summary>
        ///  Invoked when the plugin wants to show a dialog to the user.
        /// </summary>
        event EventHandler<DialogEventArgs> OnDialog;
        /// <summary>
        ///  Invoked when an instant message is recieved, edited, or deleted.
        /// </summary>
        event EventHandler<MessageEventArgs> MessageEvent;
        /// <summary>
        ///  Display name of the protocol or service. This will be shown directly to the user, so make it something concise, readable and recognisable (e.g. Floop)
        /// </summary>
        string Name { get; } 
        /// <summary>
        ///  Internal name of the plugin, ideally without any spaces, uppercase characters or special characters (e.g. skymu-floop-plugin)
        /// </summary>
        string InternalName { get; } 
        /// <summary>
        ///  Array of authentication types supported by the plugin. OAuth, Passwordless, and Standard (Standard is most commonly used). 
        /// </summary>
        AuthTypeInfo[] AuthenticationTypes { get; } 
        /// <summary>
        ///  True if the plugin supports servers (most don't)
        /// </summary>
        bool SupportsServers { get; } 
        /// <summary>
        ///  Timeout for typing status
        /// </summary>
        int TypingTimeout { get; } 
        /// <summary>
        ///  Repeat interval for typing status
        /// </summary>
        int TypingRepeat { get; } 
        /// <summary>
        ///  Stores credential for future auto-login. This is called after a successful login, and the returned SavedCredential object is stored in the database.
        /// </summary>
        Task<SavedCredential> StoreCredential(); 
        /// <summary>
        ///  Returns a string that can be used to generate a QR code for QR code authentication.This is only called if AuthenticationType includes QRCode.
        /// </summary>
        Task<string> GetQRCode(); 
        /// <summary>
        ///  Step 1 of the login system, called when you click 'Sign in' on the Login window.
        /// </summary>
        Task<LoginResult> Authenticate(AuthenticationMethod auth_type, string username, string password); 
        /// <summary>
        ///  Authenticate with saved credentials
        /// </summary>
        Task<LoginResult> Authenticate(SavedCredential credential); 
        /// <summary>
        ///  Step 2 of the login system, this is used for Multi-Factor Authentication. (TOTP)
        /// </summary>
        Task<LoginResult> AuthenticateTwoFA(string code); 
        /// <summary>
        ///  Sends a message. Returns true on success.
        /// </summary>
        Task<bool> SendMessage(string conversation_id, string text = null, Attachment attachment = null, string parent_message_id = null, bool action = false); 
        /// <summary>
        ///  Edits a message. Returns true on success.
        /// </summary>
        Task<bool> EditMessage(string conversation_id, string message_id, string new_text); 
        /// <summary>
        ///  Deletes a message. Returns true on success.
        /// </summary>
        Task<bool> DeleteMessage(string conversation_id, string message_id); 
        /// <summary>
        ///  Returns a User object with information about the logged-in user.
        /// </summary>
        Task<User> GetUserInfo(); // Fetches and assigns the sidebar information to the SidebarInformation variable. Returns true on success.
        /// <summary>
        ///  Observable collection with a list of the user's contacts.
        /// </summary>
        ObservableCollection<DirectMessage> ContactList { get; } 
        /// <summary>
        ///  Observable collection with a list of the user's recent conversations.
        /// </summary>
        ObservableCollection<Conversation> ConversationList { get; } 
        /// <summary>
        ///  Observable collection with a list of servers the user is in.
        /// </summary>
        ObservableCollection<Server> ServerList { get; } // 
        /// <summary>
        ///  Fetches and assigns a list of contacts to the ContactList observable collection. Returns true on success.
        /// </summary>
        Task<bool> PopulateContactsList();
        /// <summary>
        ///  Fetches and assigns a list of conversations to the ConversationList observable collection. Returns true on success.
        /// </summary>
        Task<bool> PopulateConversationsList(); 
        /// <summary>
        ///  Fetches and assigns a list of servers to the ServerList observable collection. Returns true on success.
        /// </summary>
        Task<bool> PopulateServerList(); 
        /// <summary>
        ///  Fetch an amount of messages from a particular conversation. Multiple fetch types supported.
        /// </summary>
        Task<ConversationItem[]> FetchMessages(
            Conversation conversation,
            Fetch fetch_type = Fetch.Newest,
            int message_count = 50,
            string identifier = null
        ); 
        /// <summary>
        ///  Disposes or cleans up static objects, fields, etc. This is called when signing out.
        /// </summary>
        void Dispose(); 
        /// <summary>
        ///  Configurations for various types of clickable items (hyperlinks) in messages that correspond to protocol commands, like user profile, link to a certain channel, etc.
        /// </summary>
        ClickableConfiguration[] ClickableConfigurations { get; } 
        /// <summary>
        ///  Display names and ID's of users currently typing in the active conversation.
        /// </summary>
        ObservableCollection<User> TypingUsersList { get; } 
        /// <summary>
        ///  Sets your connection status. Examples: online, offline, away, do not disturb.
        /// </summary>
        Task<bool> SetConnectionStatus(PresenceStatus status); 
        /// <summary>
        ///  Sets your mood (text status), i.e. "Feeling good!" or "Please don't contact me right now..." et cetera.
        /// </summary>
        Task<bool> SetMood(string status); // sets text status
        /// <summary>
        ///  Sets your typing status to true (you are typing) or false (you are not typing)
        /// </summary>
        Task<bool> SetTyping(string idenfitier, bool typing); 
    }

    public interface ICall
    {
        /// <summary>
        ///  True if the plugin supports video calls, otherwise false.
        /// </summary>
        bool SupportsVideoCalls { get; }
        /// <summary>
        ///  Invoke when there is an incoming call.
        /// </summary>
        event EventHandler<CallEventArgs> OnIncomingCall;
        /// <summary>
        ///  Invoke when the call state changes (i.e. remote user declined, accepted, or hung up)
        /// </summary>
        event EventHandler<CallEventArgs> OnCallStateChanged;
        /// <summary>
        ///  Start a new voice call in the specified conversation.
        /// </summary>
        Task<ActiveCall> StartCall(string convo_id, bool is_video_call, bool start_muted);
        /// <summary>
        ///  Answer an incoming call from the specified conversation.
        /// </summary>
        Task<ActiveCall> AnswerCall(string convo_id);
        /// <summary>
        ///  Decline an incoming call from the specified conversation.
        /// </summary>
        Task<bool> DeclineCall(string convo_id);
        /// <summary>
        ///  End an ongoing call from the specified conversation.
        /// </summary>
        Task<bool> EndCall(ActiveCall call);
        /// <summary>
        ///  Signal to the plugin that you're muted or unmuted. Some platforms use this to display a microphone status icon next to your profile while in call.
        /// </summary>
        Task<bool> SetMuted(ActiveCall call, bool muted);
        /// <summary>
        ///  Signal to the plugin that your video has been turned on/off.
        /// </summary>
        Task<bool> SetVideoEnabled(ActiveCall call, bool enabled);
    }

    public interface IListManagement
    {
        /// <summary>
        ///  Step 1 of 2, find for contacts. return a dummy one, like "Add me!" if your protocol does not support finding
        /// </summary>
        Task<Metadata[]> FindNewContact(string query);
        /// <summary>
        ///  Step 2 of 2, actually add the contact
        /// </summary>
        Task<bool> AddContact(Metadata metadatas, string message); 
    }

    public interface IExtras
    {
        /// <summary>
        ///  Extras can be invoked through a dedicated "extras" menu of your application, or other ways if you wish.
        /// </summary>
        ObservableCollection<ExtraConfiguration> ExtraConfigurations { get; }
    }
}
