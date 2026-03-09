/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Discord.Classes
{
    internal static class HelperMethods
    {
        internal static readonly API api = new API();

        // Global avatar size used for fetching the profile pictures
        private const int AVATAR_SIZE = 128;

        private static string GetPath(string dir)
        {
            return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, dir);
        }

        public enum DiscordChannelType
        {
            DirectMessage,
            Group,
            Server
        }

        // So we don't have to fetch the data everytime
        public static async Task<byte[]> GetCachedAvatarAsync(string userId, string hash, DiscordChannelType channel_type)
        {
            string cacheDirName = channel_type == DiscordChannelType.Group ? "discord-group-avatar-cache"
                    : channel_type == DiscordChannelType.Server ? "discord-server-avatar-cache"
                    : "discord-user-avatar-cache";

            string avatar_cache_dir = GetPath(cacheDirName);
            if (!Directory.Exists(avatar_cache_dir)) Directory.CreateDirectory(avatar_cache_dir);
            if (String.IsNullOrEmpty(hash)) return null;
            string cachedFile = Path.Combine(avatar_cache_dir, $"{hash}-{userId}.png");
            if (File.Exists(cachedFile))
                return File.ReadAllBytes(cachedFile);
            string pattern = $"*-{userId}.png";
            foreach (var file in Directory.GetFiles(avatar_cache_dir, pattern))
            {
                if (file != cachedFile)
                    File.Delete(file);
            }
            string url = GetAvatarUrl(userId, hash, channel_type);
            byte[] data = null;
            try
            {
                using var stream = await API.client.GetStreamAsync(url).ConfigureAwait(false);
                using var ms = new MemoryStream();
                await stream.CopyToAsync(ms);
                data = ms.ToArray();
                File.WriteAllBytes(cachedFile, data);
            }
            catch { Debug.WriteLine("Unable to fetch avatar from URL - GetCachedAvatarAsync(). The URL in question is: " + url); }
            return data;
        }

        public static string ReplaceIDWithName(JsonArray idArray, string content)
        {
            if (idArray == null || string.IsNullOrEmpty(content))
                return content;

            foreach (var array in idArray)
            {
                string id = array["id"]?.GetValue<string>();
                if (id == null) continue;

                string displayName = array["member"]?["nick"]?.GetValue<string>()
                                     ?? array["global_name"]?.GetValue<string>()
                                     ?? array["username"]?.GetValue<string>()
                                     ?? "Unknown";

                content = Regex.Replace(
                    content,
                    $@"<@!?{Regex.Escape(id)}>",
                    $"<@{displayName}>"
                );
            }
            return content;
        }

        public async static Task<string> ReplaceIDWithNameForTyping(string id, string token)
        {
            string apiUri = $"/users/{id}/profile";
            Debug.WriteLine($"The API endpoint used is {apiUri}");

            string userData = await api.SendAPI(apiUri, HttpMethod.Get, token, null, null, null, null);
            Debug.WriteLine($"The response sent back from the API is: {userData}");

            try
            {
                using JsonDocument doc = JsonDocument.Parse(userData);
                string displayName = doc.RootElement
                                       .GetProperty("user")
                                       .GetProperty("global_name")
                                       .GetString();
                return displayName ?? string.Empty;
            }
            finally { }
        }

        public static UserConnectionStatus MapStatus(string statusStr)
        {
            return statusStr.ToLower() switch
            {
                "online" => UserConnectionStatus.Online,
                "idle" => UserConnectionStatus.Away,
                "dnd" => UserConnectionStatus.DoNotDisturb,
                "offline" => UserConnectionStatus.Offline,
                _ => UserConnectionStatus.Offline
            };
        }

        public static bool TryToGetChannelId(string identifier, out string channelId)
        {
            channelId = null;
            string dictChannelId = Discord.Core.UserIdToChannelId.TryGetValue(identifier, out string mappedChannelId) ? mappedChannelId : null;
            if (dictChannelId != null) channelId = dictChannelId;
            else channelId = identifier;
            return true;
        }

        public static IEnumerable<JsonObject> GetUserChannels(bool orderByRecent)
        {
            var privateChannels = WebSocketMgr.GetPrivateChannels() ?? new JsonArray();
            var channels = privateChannels
                .OfType<JsonObject>()
                .Where(c =>
                    c["type"]?.GetValue<int>() == 1 ||
                    c["type"]?.GetValue<int>() == 3);

            if (orderByRecent)
            {
                channels = channels
                    .OrderByDescending(c =>
                        c["last_message_id"]?.GetValue<string>() ?? "0");
            }

            return channels;
        }

        public static string GetDisplayName(string globalName, string username)
            => string.IsNullOrEmpty(globalName) ? username : globalName;

        private static string GetAvatarUrl(string Id, string Hash, DiscordChannelType channel_type)
        {
            if (channel_type == DiscordChannelType.Server)
                return $"https://cdn.discordapp.com/icons/{Id}/{Hash}.png?size={AVATAR_SIZE}";

            else if (channel_type == DiscordChannelType.Group)
                return $"https://cdn.discordapp.com/channel-icons/{Id}/{Hash}.png?size={AVATAR_SIZE}";

            else return $"https://cdn.discordapp.com/avatars/{Id}/{Hash}.png?size={AVATAR_SIZE}";
        }
    }
}
