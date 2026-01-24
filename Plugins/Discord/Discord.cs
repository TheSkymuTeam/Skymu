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
using Newtonsoft.Json.Linq;
using MiddleMan;
using Discord.Classes;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net;
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
        public string InstanceID;
        public string DscFingerprint;
        public CookieCollection DiscordCookies;
        API api;

        // Discord API strings
        public string TextUsername { get { return "Username"; } }
        // Skymu authentication method
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Standard; } }

        public async Task<LoginResult> LoginMainStep(string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            api =  new API();
            Console.WriteLine($"The e-mail provided to the plugin is: {username}");
            Console.WriteLine($"The password provided to the plugin is: {password}");
            var loginBody = new
            {
                login = username,
                password = password
            };
            var loginResponse = JObject.Parse(await api.SendAPI("auth/login", HttpMethod.Post, null, null, loginBody));
            Console.WriteLine($"The response from the API is: {loginResponse}");

            if (loginResponse.ContainsKey("token")) // Successful sign in, can continue to main client after saving token
            {
                // TODO: Implement logic
                return LoginResult.Success;
            }
            else if (loginResponse.ContainsKey("ticket")) // Discord account has multi-authentication enabled, go to Dialog
            {               
                MFATicket = loginResponse["ticket"]?.ToString();
                InstanceID = loginResponse["login_instance_id"]?.ToString();

                var fingerprintResponse = JObject.Parse(await api.SendAPI("experiments?with_guild_experiments=true", HttpMethod.Get, null, null));
                if (fingerprintResponse.ContainsKey("fingerprint"))
                {
                    DscFingerprint = fingerprintResponse["fingerprint"]?.ToString();
                    Console.WriteLine($"The fingerprint Discord has provided is: {DscFingerprint}");
                }
                return LoginResult.OptStepRequired;
            } 
            else if (loginResponse.ContainsKey("captcha_key")) // Something has stopped us from logging in and Discord has pulled up a Captcha window
            {
                OnWarning?.Invoke(this, new PluginMessageEventArgs("Discord has requested that a CAPTCHA be solved to continue login. This is not currently supported, and could mean that you entered invalid login details."));
                return LoginResult.Failure;
            }
            else
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Could not log in. Please try your details again, or check the logs in the plugins directory of Skymu."));
                return LoginResult.Failure;
            }
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            var ootb = new pluginOOTBStuff();
            DiscordCookies = await ootb.GetCookiesFromPage("https://discord.com/login");

            api = new API();

            // Adds the cookies we collected from the login page
            API.AddCookies(
                new Uri("https://discord.com"),
                DiscordCookies
            );

            Console.WriteLine($"MFA code provided to the plugin is: {code}");
            Console.WriteLine($"Stored MFATicket found in variable: {MFATicket}");
            var mfaPayload = new
            {
                ticket = MFATicket,
                login_instance_id = InstanceID,
                code
            };
            // We use the fingerprint here incase we need it for the future
            var mfaResponse = JObject.Parse(await api.SendAPI("auth/mfa/totp", HttpMethod.Post, null, DscFingerprint, mfaPayload));
            Console.WriteLine($"The response sent back by the Discord API is: {mfaResponse}");
            OnError?.Invoke(this, new PluginMessageEventArgs(mfaResponse.ToString()));
            return LoginResult.Failure;
        }

        public async Task<bool> SendMessage(string user, string text)
        {
            return true;
        }
    }

    // This is used for any custom stuff needed by the Discord plugin.
    public class pluginOOTBStuff {
        public async Task<CookieCollection> GetCookiesFromPage(string uri)
        {
            var cookies = new CookieContainer();
            var handler = new HttpClientHandler
            {
                CookieContainer = cookies,
                UseCookies = true
            };

            using (var client = new HttpClient(handler))
            {
                await client.GetAsync(uri);
            }

            return cookies.GetCookies(new Uri(uri));
        }
    }
}