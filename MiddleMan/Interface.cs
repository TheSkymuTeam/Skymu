using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
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

    public class PluginErrorEventArgs : EventArgs
    {
        public string Message { get; }
        public string Title { get; }
        public PluginErrorEventArgs(string message, string title = "Error in plugin")
        {
            Message = message;
            Title = title;
        }
    }

    public interface ICore // For methods/variables that ALL plugins have to contain, e.g. plugin details, authentication
    {
        event EventHandler<PluginErrorEventArgs> OnError;
        string Name { get; } // Name of the protocol.
        string InternalName {  get; }
        string TextUsername { get; } // the text to display above the Username field (e.g. "Username", "Email", "Phone number")
        AuthenticationMethod AuthenticationType { get; } // OAuth, Passwordless, or Standard
        Task<LoginResult> LoginMainStep(string username, string password = null); // login step 1
        Task<LoginResult> LoginOptStep(string code); // optional login step 2
        Task<bool> SendMessage(string user, string text); // returns true if success
    }

    public interface IMessenger // For methods/variables specific to messaging services, like Discord, WhatsApp, etc.
    {

    }

    public interface IBoard // For methods/variables specific to messageboard services, like Bluesky, Reddit, etc. Yes, Instagram is technically a messageboard.
    {

    }
}
