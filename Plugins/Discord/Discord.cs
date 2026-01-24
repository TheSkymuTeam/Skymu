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
        public event EventHandler<PluginErrorEventArgs> OnError;
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
            string loginResponse = await api.SendAPI("auth/login", HttpMethod.Post, null, loginBody);

            if (loginResponse.Contains("\"token\"")) // Successful sign in, can continue to main client after saving token
            {
                // TODO: Implement logic
                return LoginResult.Success;
            }
            else if (loginResponse.Contains("\"ticket\"")) // Discord account has multi-authentication enabled, go to Dialog
            {
                var json = JObject.Parse(loginResponse);
                MFATicket = json["ticket"]?.ToString();

                return LoginResult.OptStepRequired;
            } 
            else if (loginResponse.Contains("captcha_key")) // Something has stopped us from logging in and Discord has pulled up a Captcha window
            {
                OnError?.Invoke(this, new PluginErrorEventArgs("It seems like Discord is pulling up a Captcha window, please try again later!"));
            }
            else
            {
                return LoginResult.Failure;
            }

            return LoginResult.Success;
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