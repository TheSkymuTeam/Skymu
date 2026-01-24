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
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Collections.ObjectModel;
using System.Text;

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

    public enum UserConnectionStatus
    {
        Online,
        DoNotDisturb,
        Away,
        Invisible,
        Offline
    }

    public class SidebarData
    {   
        public string Username { get; set; }
        public string SkypeGlobalUserCountText { get; set; }
        public string SkypeCreditText { get; set; }
        public ObservableCollection<ContactData> ContactList { get; set; }
        public SidebarData(string username, string skypeGlobalUserCountText, string skypeCreditText, ObservableCollection<ContactData> contactList)
        {
            Username = username;
            SkypeGlobalUserCountText = skypeGlobalUserCountText;
            SkypeCreditText = skypeCreditText;
            ContactList = contactList;
        }
    }

    public class ContactData
    {
        public string Username { get; set; }
        public string Status { get; set; }
        public UserConnectionStatus ConnectionStatus { get; set; }
        public BitmapImage ProfilePicture { get; set; }
        public ContactData(string username, string status, UserConnectionStatus connectionStatus, BitmapImage profilePicture)
        {
            Username = username;
            Status = status;
            ConnectionStatus = connectionStatus;
            ProfilePicture = profilePicture;
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
        string Name { get; } // Name of the protocol.
        string InternalName {  get; }
        string TextUsername { get; } // the text to display above the Username field (e.g. "Username", "Email", "Phone number")
        AuthenticationMethod AuthenticationType { get; } // OAuth, Passwordless, or Standard
        Task<LoginResult> LoginMainStep(string username, string password,
            bool tryLoginWithSavedCredentials); // login step 1
        Task<LoginResult> LoginOptStep(string code); // optional login step 2
        Task<bool> SendMessage(string user, string text); // returns true if success
        Task<SidebarData> FetchSidebarData(); // fetches sidebar data (contacts list, username, text placeholders, etc.)
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }
}
