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

using Discord.Classes;
using MiddleMan;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Media.Imaging;

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
        public string DscToken;
        public CookieCollection DiscordCookies;
        private static WebSocket _webSocket;
        internal static WebSocket WebSocket => _webSocket;
        private static System.Timers.Timer pingTimer;
        public bool CanSetStatusOnSkymuAPI;
        API api;

        public string TextUsername { get { return "E-mail address"; } }
        // Skymu authentication method
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Standard; } }

        public async Task<LoginResult> LoginMainStep(string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
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
                Discord.Settings.Default.Save();
                _webSocket ??= new WebSocket();

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
                    Discord.Settings.Default.Save();
                    _webSocket ??= new WebSocket();

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

        public async Task<ObservableCollection<ConversationItem>> FetchConversationHistory(string identifier)
        {
            ObservableCollection<ConversationItem> items = new ObservableCollection<ConversationItem>();
            items.Add(new MessageItem("80351110224678912", "Happy new year!", new DateTime(2012, 1, 1, 0, 0, 0)));
            items.Add(new MessageItem("23585235237655234", "Happy New Year to you too!", new DateTime(2012, 1, 1, 0, 2, 42)));
            items.Add(new MessageItem("80351110224678912", "Call me 🙂", new DateTime(2012, 1, 1, 0, 2, 57)));
            items.Add(new CallStartedItem("23585235237655234", false, new DateTime(2012, 1, 1, 0, 3, 12)));
            items.Add(new CallEndedItem(TimeSpan.FromMinutes(20), false, new DateTime(2012, 1, 1, 0, 23, 12)));
            return items;
        }

        public async Task<SidebarData> FetchSidebarData()
        {
            pluginOOTBStuff ootb = new pluginOOTBStuff();

            // User details
            string globalName = "N/A";
            string username = "N/A";
            int mainUsrStatusSkymu = 0;

            // Define the contacts list for later
            ObservableCollection<ContactData> contacts = new ObservableCollection<ContactData>();

            // Personal user details like the username and also Skymu online server count
            try
            {
                string userDetails = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);
                JObject parsedJson = JObject.Parse(userDetails);

                globalName = parsedJson["global_name"]?.ToString() ?? "N/A";
                username = parsedJson["username"]?.ToString() ?? "N/A";

                while (!WebSocket.CanCheckData)
                    await Task.Delay(100);

                string mainUsrStatus = WebSocket.UserStatusStore.GetStatus("0");
                mainUsrStatusSkymu = ootb.MapStatus(mainUsrStatus);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Parse error: {ex.Message}");
            }

            try
            {
                string friendList = WebSocket.recipientsData;
                JArray parsedJson = JArray.Parse(friendList);

                foreach (var friend in parsedJson)
                {
                    BitmapImage avatarImage = null;
                    string friendId = friend["id"]?.ToString() ?? "N/A";
                    string friendGlobalName = friend["user"]["global_name"]?.ToString() ?? "N/A";
                    string friendUsername = friend["user"]["username"]?.ToString() ?? "N/A";
                    string friendAvatarHash = friend["user"]["avatar"]?.ToString();

                    string statusStr = WebSocket.UserStatusStore.GetStatus(friendId);
                    int friendStatus = ootb.MapStatus(statusStr);

                    string custStatusStr = WebSocket.UserStatusStore.GetCustomStatus(friendId);

                    if (!string.IsNullOrEmpty(friendAvatarHash))
                    {
                        avatarImage = await ootb.GetCachedAvatarAsync(friendId, friendAvatarHash);
                    }

                    contacts.Add(new ContactData(string.IsNullOrEmpty(friendGlobalName) ? friendUsername : friendGlobalName, friendUsername, custStatusStr, friendStatus, avatarImage));
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error loading friend list: {ex.Message}");
            }
            return new SidebarData(globalName, "$0.00 - No subscription", mainUsrStatusSkymu, contacts);
        }

        public async Task<LoginResult> TryAutoLogin()
        {
            api = new API();
            DscToken = Discord.Settings.Default.dscToken;

            if (!string.IsNullOrWhiteSpace(DscToken))
            {
                string userCheckTkn = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);
                if (userCheckTkn.Contains("401: Unauthorized"))
                {
                    return LoginResult.Failure;
                }
                else if (userCheckTkn.Contains("username"))
                {
                    // Do nothing and let the client continue as normal.
                }

                _webSocket ??= new WebSocket();
                return LoginResult.Success;
            }
            else
            {
                return LoginResult.Failure;
            }
        }
    }

    // This is used for any custom stuff needed by the Discord plugin.
    public class pluginOOTBStuff
    {
        private readonly string cacheDir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "avatar-cache");
        public pluginOOTBStuff()
        {
            // Make sure the cache directory exists
            Directory.CreateDirectory(cacheDir);
        }

        // So we don't have to fetch the data everytime
        public async Task<BitmapImage> GetCachedAvatarAsync(string userId, string hash)
        {
            string pattern = $"*-{userId}.png";
            string cachedFile = Path.Combine(cacheDir, $"{hash}-{userId}.png");

            if (File.Exists(cachedFile))
                return PluginUtilities.LoadBitmap(cachedFile);

            foreach (var file in Directory.GetFiles(cacheDir, pattern))
                File.Delete(file);

            string url = $"https://cdn.discordapp.com/avatars/{userId}/{hash}.png?size=64";
            using (var wc = new WebClient())
            {
                await wc.DownloadFileTaskAsync(url, cachedFile);
            }

            return PluginUtilities.LoadBitmap(cachedFile);
        }

        public int MapStatus(string statusStr)
        {
            return statusStr switch
            {
                "online" => UserConnectionStatus.Online,
                "idle" => UserConnectionStatus.Away,
                "dnd" => UserConnectionStatus.DoNotDisturb,
                "offline" => UserConnectionStatus.Invisible,
                _ => UserConnectionStatus.Invisible
            };
        }

        public string GetAvatarUrl(string Id, string Hash, bool isServer, bool isGC)
        {
            if (isServer)
            {
                return $"https://cdn.discordapp.com/icons/{Id}/{Hash}.png?size=64";
            }
            else if (isGC)
            {
                return $"https://cdn.discordapp.com/channel-icons/{Id}/{Hash}.png?size=64";
            }
            else
            {
                return $"https://cdn.discordapp.com/avatars/{Id}/{Hash}.png?size=64";
            }
        }
    }
}