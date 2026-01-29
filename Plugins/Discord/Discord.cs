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
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Channels;
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
            if (username.ToUpper() == "$TOKEN" && !string.IsNullOrWhiteSpace(password))
            {
                DscToken = password;

                string userCheckTkn = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);

                if (userCheckTkn.Contains("username"))
                {
                    File.WriteAllText("discord.smcred", DscToken);
                    _webSocket ??= new WebSocket();
                    return LoginResult.Success;
                }
                else
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs("The provided token is invalid."));
                    return LoginResult.Failure;
                }
            }

            var loginBody = new
            {
                login = username,
                password = password
            };
            var loginResponse = JsonNode.Parse(await api.SendAPI("auth/login", HttpMethod.Post, null, loginBody)).AsObject();
            //Console.WriteLine($"The response from the API is: {loginResponse}");

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
                OnError?.Invoke(this, new PluginMessageEventArgs("Failed to log in. Error is as follows:\n\nRESPONSE:" + loginResponse.ToJsonString() + "\n\nREQUEST:" + loginBody));
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

        public async Task<bool> SendMessage(string identifier, string text)
        {
            if (string.IsNullOrEmpty(identifier) || string.IsNullOrEmpty(text))
                return false;

            string[] parts = identifier.Split(';');
            if (parts.Length < 2)
                return false;

            string channelId = parts[1];

            try
            {
                var messageBody = new { content = text };
                string response = await api.SendAPI($"/channels/{channelId}/messages", HttpMethod.Post, DscToken, messageBody);

                return !string.IsNullOrEmpty(response) && !response.Contains("error");
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to send message: {ex.Message}"));
                return false;
            }
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
                string conversation = await api.SendAPI($"/channels/{channelId}/messages?limit=100", HttpMethod.Get, DscToken, null, null, null);
                var parsedJson = JsonNode.Parse(conversation);

                if (parsedJson is not JsonArray messages)
                {
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Unexpected response format: {conversation}"));
                    return false;
                }

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
            string id;
            JsonObject parsedJson = new JsonObject();
            int mainUsrStatusSkymu = 0;

            // Personal user details like the username and also Skymu online server count
            try
            {
                string userDetails = await api.SendAPI("users/@me", HttpMethod.Get, DscToken, null, null, null);
                parsedJson = JsonNode.Parse(userDetails).AsObject();
                id = parsedJson["id"]?.GetValue<string>() ?? String.Empty;
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

            SidebarInformation = new SidebarData(string.IsNullOrEmpty(globalName) ? username : globalName, id, "$0.00 - No subscription", mainUsrStatusSkymu);
            return true;
        }

        private enum ListType
        {
            Contacts,
            Recents
        }

        public async Task<bool> PopulateContactsList()
        {
            await PopulateListsBackend(ListType.Contacts);
            return true;
        }

        public async Task<bool> PopulateRecentsList()
        {
            await PopulateListsBackend(ListType.Recents);
            return true;
        }

        private async Task<bool> PopulateListsBackend(ListType lType)
        {
            pluginOOTBStuff ootb = new pluginOOTBStuff();
            try
            {
                var privateChannels = WebSocket.privateChannelsData as JsonArray ?? new JsonArray();
                var allChannels = privateChannels
                    .OfType<JsonObject>()
                    .Where(c => c["type"]?.GetValue<int>() == 1 || c["type"]?.GetValue<int>() == 3);

                if (lType == ListType.Recents)
                {
                    allChannels = allChannels
                        .OrderByDescending(c => c["last_message_id"]?.GetValue<string>() ?? "0");
                }

                foreach (var channel in allChannels)
                {
                    int type = channel["type"]?.GetValue<int>() ?? 0;

                    if (type == 1)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        if (recipients == null || recipients.Count == 0) continue;

                        var recipient = recipients[0] as JsonObject;
                        if (recipient == null) continue;

                        string userId = recipient["id"]?.GetValue<string>() ?? "N/A";
                        string channelId = channel["id"]?.GetValue<string>() ?? "N/A";
                        string skymuId = $"{userId};{channelId}";
                        string globalName = recipient["global_name"]?.GetValue<string>() ?? "N/A";
                        string username = recipient["username"]?.GetValue<string>() ?? "N/A";
                        string avatarHash = recipient["avatar"]?.GetValue<string>();

                        var profileData = await CreateProfileDataAsync(ootb, userId, skymuId, globalName, username, avatarHash);

                        if (lType == ListType.Recents)
                            RecentsList.Add(profileData);
                        else
                            ContactsList.Add(profileData);
                    }
                    else if (type == 3)
                    {
                        var recipients = channel["recipients"] as JsonArray;
                        int recipientCount = recipients?.Count ?? 0;
                        int memberCount = recipientCount + 1;

                        string channelId = channel["id"]?.GetValue<string>();
                        string name = channel["name"]?.GetValue<string>();
                        string avatarHash = channel["icon"]?.GetValue<string>();

                        if (string.IsNullOrWhiteSpace(name))
                        {
                            var recipientNames = recipients?
                                .OfType<JsonObject>()
                                .Select(r =>
                                    r["global_name"]?.GetValue<string>() ??
                                    r["username"]?.GetValue<string>())
                                .Where(n => !string.IsNullOrWhiteSpace(n));

                            name = recipientNames != null
                                ? string.Join(", ", recipientNames)
                                : "N/A";
                        }

                        string skymuId = $"group;{channelId}";

                        var profileData = await CreateProfileDataAsync(
                            ootb, channelId, skymuId, name, name, avatarHash, true, $"{memberCount} members"
                        );

                        if (lType == ListType.Recents)
                            RecentsList.Add(profileData);
                        else
                            ContactsList.Add(profileData);
                    }
                }
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Parse error: {ex.Message}"));
                return false;
            }
            return true;
        }

        private async Task<ProfileData> CreateProfileDataAsync(pluginOOTBStuff ootb, string userId, string skymuId, string globalName, string username, string avatarHash, bool isGC = false, string manualStatus = null)
        {
            byte[] avatarImage = null;

            string statusStr = WebSocket.UserStatusStore.GetStatus(userId);
            int userStatus = ootb.MapStatus(statusStr);
            string custStatusStr = WebSocket.UserStatusStore.GetCustomStatus(userId);

            if (!string.IsNullOrEmpty(avatarHash))
            {
                avatarImage = await ootb.GetCachedAvatarAsync(userId, avatarHash, isGC);
            }

            return new ProfileData(
                string.IsNullOrEmpty(globalName) ? username : globalName,
                skymuId,
                custStatusStr ?? manualStatus,
                userStatus,
                avatarImage
            );
        }

        public async Task<LoginResult> TryAutoLogin()
        {
            if (File.Exists("discord.smcred"))
            {
                DscToken = File.ReadAllText("discord.smcred");


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
            else
            {
                return LoginResult.Failure;
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
            public async Task<byte[]> GetCachedAvatarAsync(string userId, string hash, bool isGC)
            {
                pluginOOTBStuff ootb = new pluginOOTBStuff();

                string pattern = $"*-{userId}.png";
                string cachedFile = Path.Combine(cacheDir, $"{hash}-{userId}.png");

                if (File.Exists(cachedFile))
                    return File.ReadAllBytes(cachedFile);

                foreach (var file in Directory.GetFiles(cacheDir, pattern))
                    File.Delete(file);

                string url = ootb.GetAvatarUrl(userId, hash, false, isGC);
                using (var hc = new HttpClient())
                {
                    byte[] data = await hc.GetByteArrayAsync(url);
                    await File.WriteAllBytesAsync(cachedFile, data);
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
}