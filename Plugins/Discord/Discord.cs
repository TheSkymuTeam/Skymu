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
using System.Windows.Media.Imaging;
using System.Net.Http;
using Newtonsoft.Json;
using System.Net;
using System.Threading.Tasks;
using System.Diagnostics;

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
        public string UserCountSkymu;
        public string DscToken = Discord.Settings.Default.dscToken;
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
            var loginResponse = JObject.Parse(await api.SendAPI("auth/login", HttpMethod.Post, null, loginBody));
            Console.WriteLine($"The response from the API is: {loginResponse}");

            if (loginResponse.ContainsKey("token")) // Successful sign in, can continue to main client after saving token
            {
                Discord.Settings.Default.dscToken = loginResponse["token"]?.ToString();
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
            Console.WriteLine($"MFA code provided to the plugin is: {code}");
            Console.WriteLine($"Stored MFATicket found in variable: {MFATicket}");

            string jsonData = JsonConvert.SerializeObject(new { ticket = MFATicket, login_instance_id = InstanceID, code });
            string headers = string.Join(" ",
                "-H \"Content-Type: application/json\"",
                $"-H \"User-Agent: {API.UserAgent}\"",
                $"-H \"X-Super-Properties: {API.XSuperProperties}\"",
                $"-H \"X-Super-Properties: {DscFingerprint}\""
            );

            string arguments = string.Format(
                "{0} -X POST {1} --data-raw \"{2}\"",
                "https://discord.com/api/v9/auth/mfa/totp",
                headers,
                jsonData.Replace("\"", "\\\"")
            );

            ProcessStartInfo psi = new ProcessStartInfo
            {
                FileName = "curl",
                Arguments = arguments,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                UseShellExecute = false,
                CreateNoWindow = true
            };

            using (Process process = new Process { StartInfo = psi })
            {
                process.Start();
                string output = process.StandardOutput.ReadToEnd();
                string error = process.StandardError.ReadToEnd();
                process.WaitForExit();

                dynamic jsonResponse = JsonConvert.DeserializeObject(output);
                if (jsonResponse != null && jsonResponse.token != null)
                {
                    Discord.Settings.Default.dscToken = jsonResponse.token;
                    return LoginResult.Success;
                }
                else
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("Your MFA code is invalid, please double check that it is correct before retrying."));
                    return LoginResult.Failure;
                }
            }
        }

        public async Task<bool> SendMessage(string user, string text)
        {
            return true;
        }

        public async Task<SidebarData> FetchSidebarData()
        {
            string globalName = "N/A";
            string username = "N/A";

            try
            {
                string userDetails = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);
                JObject parsedJson = JObject.Parse(userDetails);

                globalName = parsedJson["global_name"]?.ToString() ?? "N/A";
                username = parsedJson["username"]?.ToString() ?? "N/A";

                using (HttpClient client = new HttpClient())
                {
                    string skymuServerUri = "http://127.0.0.1:5000";
                    HttpResponseMessage generateResponse = await client.GetAsync($"{skymuServerUri}/usr_count");
                    string genResBody = await generateResponse.Content.ReadAsStringAsync();
                    JObject parsedGenJson = JObject.Parse(genResBody);
                    UserCountSkymu = parsedGenJson["online_users"]?.ToString() ?? "N/A";
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Parse error: {ex.Message}");
            }

            ObservableCollection<ContactData> contacts = new ObservableCollection<ContactData>();
            contacts.Add(new ContactData("Alice", "Hey there! I am using WhatsApp.", UserConnectionStatus.Online, null));
            contacts.Add(new ContactData("Bob", "HELLO", UserConnectionStatus.Away, null));
            return new SidebarData(globalName, $"{UserCountSkymu} online users", "$0,00 - No subscription", contacts);
        }

        public async Task<LoginResult> TryAutoLogin()
        {
            return LoginResult.Failure;
        }
    }

    // This is used for any custom stuff needed by the Discord plugin.
    public class pluginOOTBStuff {
    
    }
}