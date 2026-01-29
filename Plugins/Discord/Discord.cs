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
using System.Text.Json;
using System.Text.Json.Nodes;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;

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
        public bool CanSetStatusOnSkymuAPI;
        internal static readonly API api = new API();

        public string TextUsername { get { return "Email address"; } }
        public string CustomLoginButtonText { get { return null; } }
        // Skymu authentication method
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Standard; } }

        public async Task<LoginResult> LoginMainStep(string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            var loginBody = new
            {
                login = username,
                password = password
            };
            var loginResponse = JsonNode.Parse(await api.SendAPI("auth/login", HttpMethod.Post, null, loginBody)).AsObject();
            Console.WriteLine($"The response from the API is: {loginResponse}");

            if (loginResponse.ContainsKey("token")) // Successful sign in, can continue to main client after saving token
            {
                DscToken = loginResponse["token"].GetValue<string>();
                File.WriteAllText("discord.smcred", loginResponse["token"]?.GetValue<string>());
                _webSocket ??= new WebSocket();

                return LoginResult.Success;
            }
            else if (loginResponse.ContainsKey("ticket")) // Discord account has multi-authentication enabled, go to Dialog
            {
                MFATicket = loginResponse["ticket"]?.GetValue<string>();
                InstanceID = loginResponse["login_instance_id"]?.GetValue<string>();

                var fingerprintResponse = JsonNode.Parse(await api.SendAPI("experiments?with_guild_experiments=true", HttpMethod.Get, null, null)).AsObject();
                if (fingerprintResponse.ContainsKey("fingerprint"))
                {
                    DscFingerprint = fingerprintResponse["fingerprint"]?.GetValue<string>();
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
                OnError?.Invoke(this, new PluginMessageEventArgs("Failed to log in. Please contact us on the Discord server and upload the file debug_log_in.skdbg to your message, as well as sharing a screenshot of this dialog. Error is as follows:\n\n" + loginResponse.ToJsonString()));
                File.WriteAllText("debug_log_in.skdbg", "RESPONSE:\n\n" + loginResponse.ToJsonString() + "\n\nREQUEST\n\n" + JsonSerializer.Serialize(loginBody));
                return LoginResult.Failure;
            }
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            string jsonData = JsonSerializer.Serialize(new { ticket = MFATicket, login_instance_id = InstanceID, code });
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

                var jsonResponse = JsonNode.Parse(output);
                if (jsonResponse != null && jsonResponse["token"] != null)
                {
                    DscToken = jsonResponse["token"].GetValue<string>();
                    File.WriteAllText("discord.smcred", jsonResponse["token"].GetValue<string>());

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

        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();

        public async Task<bool> SetActiveConversation(string identifier)
        {
            ActiveConversation.Clear();
            if (string.IsNullOrEmpty(identifier))
                return false;
            string[] parts = identifier.Split(';');
            if (parts.Length < 2)
                return false;
            string channelId = parts[1];
            try
            {
                string conversation = await api.SendAPI($"/channels/{channelId}/messages?limit=50", HttpMethod.Get, DscToken, null, null, null);
                var parsedJson = JsonNode.Parse(conversation);

                // Check if it's actually an array
                if (parsedJson is not JsonArray messages)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Unexpected response format: {conversation}"));
                    return false;
                }

                // Discord returns messages in reverse chronological order (newest first), so we need to reverse
                var sortedMessages = messages.Reverse();
                foreach (var message in sortedMessages)
                {
                    string authorName = message["author"]["global_name"]?.GetValue<string>()
                        ?? message["author"]["username"]?.GetValue<string>()
                        ?? "Unknown";
                    string authorId = message["author"]["id"]?.GetValue<string>() ?? "0";
                    string content = message["content"]?.GetValue<string>() ?? "";
                    string timestampStr = message["timestamp"]?.GetValue<string>();
                    DateTime timestamp = DateTime.UtcNow;
                    if (!string.IsNullOrEmpty(timestampStr))
                    {
                        DateTime.TryParse(timestampStr, out timestamp);
                    }
                    ActiveConversation.Add(new MessageItem(authorId, authorName, content, timestamp));
                }
                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                return false;
            }
        }

        public SidebarData SidebarInformation { get; private set; }

        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();

        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();

        public async Task<bool> PopulateSidebarInformation()
        {
            // User details
            string globalName;
            string username;
            JsonObject parsedJson = new JsonObject();
            int mainUsrStatusSkymu = 0;

            // Personal user details like the username and also Skymu online server count
            try
            {
                string userDetails = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);
                parsedJson = JsonNode.Parse(userDetails).AsObject();
                globalName = parsedJson["global_name"]?.GetValue<string>() ?? String.Empty;
                username = parsedJson["username"]?.GetValue<string>() ?? String.Empty;

                while (!WebSocket.CanCheckData)
                    await Task.Delay(100);


                string mainUsrStatus = WebSocket.UserStatusStore.GetStatus("0");
                mainUsrStatusSkymu = new pluginOOTBStuff().MapStatus(mainUsrStatus);
            }
            catch (Exception ex)
            {

                OnError?.Invoke(this, new PluginMessageEventArgs($"Parse error: {ex.Message}\nResponse from server:\n" + parsedJson.ToJsonString()));
                return false;
            }

            SidebarInformation = new SidebarData(string.IsNullOrEmpty(globalName) ? username : globalName, "$0.00 - No subscription", mainUsrStatusSkymu);
            return true;
        }

        public async Task<bool> PopulateContactsList()
        {
            pluginOOTBStuff ootb = new pluginOOTBStuff();
            JsonArray parsedWSJson = new JsonArray();
            JsonArray parsedAPICJson = new JsonArray();
            try
            {
                // We need to make a separate call to the Discord API to get all of the channel IDs
                // The ID for a friend is separated like this <user_id>;<channel_id> for each user.
                string channels = await api.SendAPI("/users/@me/channels", HttpMethod.Get, DscToken, null, null, null);
                parsedAPICJson = JsonNode.Parse(channels).AsArray();
                // Use the JToken directly instead of converting to string and re-parsing
                parsedWSJson = WebSocket.recipientsData as JsonArray ?? new JsonArray();

                foreach (var friend in parsedWSJson)
                {
                    byte[] avatarImage = null;
                    string friendId = friend["id"]?.GetValue<string>() ?? "N/A";
                    string channelId = parsedAPICJson
                        .OfType<JsonObject>()
                        .Where(c => c["type"]?.GetValue<int>() == 1)
                        .Where(c =>
                            c["recipients"] is JsonArray recipients &&
                            recipients.Any(r => r["id"]?.GetValue<string>() == friendId)
                        )
                        .Select(c => c["id"]?.GetValue<string>())
                        .FirstOrDefault();
                    string skymuId = channelId != null
                        ? $"{friendId};{channelId}"
                        : friendId;
                    string friendGlobalName = friend["user"]["global_name"]?.GetValue<string>() ?? "N/A";
                    string friendUsername = friend["user"]["username"]?.GetValue<string>() ?? "N/A";
                    string friendAvatarHash = friend["user"]["avatar"]?.GetValue<string>();

                    string statusStr = WebSocket.UserStatusStore.GetStatus(friendId);
                    int friendStatus = ootb.MapStatus(statusStr);

                    string custStatusStr = WebSocket.UserStatusStore.GetCustomStatus(friendId);


                    if (!string.IsNullOrEmpty(friendAvatarHash))
                    {
                        avatarImage = await ootb.GetCachedAvatarAsync(friendId, friendAvatarHash);
                    }

                    ContactsList.Add(new ProfileData(
                        string.IsNullOrEmpty(friendGlobalName) ? friendUsername : friendGlobalName,
                        skymuId,
                        custStatusStr,
                        friendStatus,
                        avatarImage
                    ));
                }
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Parse error: {ex.Message}\nResponse from server:\n" + parsedWSJson.ToJsonString()));
                return false;
            }
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            RecentsList.Add(new ProfileData("Sensei Wu", "sensei@s.whatsapp.net", "NO", UserConnectionStatus.DoNotDisturb, null));
            RecentsList.Add(new ProfileData("thegamingkart", "mario@s.whatsapp.net", "SAY SOMETHING", UserConnectionStatus.Offline, null));
            return true;
        }

        public async Task<LoginResult> TryAutoLogin()
        {
            if (File.Exists("discord.smcred"))
            {
                DscToken = File.ReadAllText("discord.smcred");
            }

            if (!string.IsNullOrWhiteSpace(DscToken))
            {
                string userCheckTkn = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);
                if (userCheckTkn.Contains("401: Unauthorized"))
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to automatically login to Discord (Your token might be expired!). Please login manually. Error:\n" + userCheckTkn));
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
                OnError?.Invoke(this, new PluginMessageEventArgs("Your saved Discord token appears to be invalid. Please log in manually."));
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
        public async Task<byte[]> GetCachedAvatarAsync(string userId, string hash)
        {
            string pattern = $"*-{userId}.png";
            string cachedFile = Path.Combine(cacheDir, $"{hash}-{userId}.png");

            if (File.Exists(cachedFile))
                return File.ReadAllBytes(cachedFile);

            foreach (var file in Directory.GetFiles(cacheDir, pattern))
                File.Delete(file);

            string url = $"https://cdn.discordapp.com/avatars/{userId}/{hash}.png?size=64";
            using (var wc = new WebClient())
            {
                await wc.DownloadFileTaskAsync(url, cachedFile);
            }

            return File.ReadAllBytes(cachedFile);
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
                return $"https://cdn.discordapp.com/avatars/{Id}/{Hash}.png?size=256";
            }
        }
    }
}