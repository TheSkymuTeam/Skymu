/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Further use of this code confirms your implicit agreement
// to be bound by the terms of our License. If you do not wish
// to abide by those terms, you may not use, modify, or 
// distribute any code that originated from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using System;
using Newtonsoft.Json.Linq;
using MiddleMan;
using Discord.Classes;
using System.Net.Http;
using System.Threading.Tasks;

namespace Discord
{
    public class Core : ICore
    {
        // Plugin details
        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public string Name { get { return "Discord"; } }
        public string InternalName { get { return "skymu-discord-plugin"; } }

        // Initialize API classes and strings
        public string MFATicket;
        API api;

        // Discord API strings
        public string TextUsername { get { return "Username"; } }
        // Skymu authentication method
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Standard; } }

        public async Task<LoginResult> LoginMainStep(string username, string password)
        {
            api =  new API();
            Console.WriteLine($"The e-mail provided to the plugin is: {username}");
            Console.WriteLine($"The password provided to the plugin is: {password}");
            var loginBody = new
            {
                login = username,
                password = password
            };
            var loginResponse = JObject.Parse(await api.SendAPI("auth/login", HttpMethod.Post, null, loginBody));

            if (loginResponse.ContainsKey("token")) // Successful sign in, can continue to main client after saving token
            {
                // TODO: Implement logic
                return LoginResult.Success;
            }
            else if (loginResponse.ContainsKey("ticket")) // Discord account has multi-authentication enabled, go to Dialog
            {               
                MFATicket = loginResponse["ticket"]?.ToString();
                return LoginResult.OptStepRequired;
            } 
            else if (loginResponse.ContainsKey("captcha_key")) // Something has stopped us from logging in and Discord has pulled up a Captcha window
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Discord has requested that a CAPTCHA be solved to continue login. This is not currently supported, and could mean that you entered invalid login details."));
                return LoginResult.Failure;
            }
            else if (loginResponse.ContainsKey("message")) // Generic error message
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Could not log in. The server responded with: " + loginResponse["message"]));
                return LoginResult.Failure;
            }
            else
            {
                OnError?.Invoke(this, new PluginMessageEventArgs(loginResponse.ToString()));
                return LoginResult.Failure;
            }
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Failure;
        }

        public async Task<bool> SendMessage(string user, string text)
        {
            return true;
        }
    }

    // This is used for any custom stuff needed by the Discord plugin.
    public class pluginOOTBStuff {

    }
}