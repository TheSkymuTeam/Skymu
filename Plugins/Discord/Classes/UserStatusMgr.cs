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
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Net.NetworkInformation;
using System.Text.Json.Nodes;
using static DiscordProtos.DiscordUsers.V1.PreloadedUserSettings.Types;

namespace Discord.Classes
{
    internal class UserStatusMgr
    {
        public static class UserStatusStore
        {
            private static readonly ConcurrentDictionary<string, StatusData> _statuses = new();
            public static void UpdateStatus(string userId, string status, string customStatus = null)
            {
                _statuses[userId] = new StatusData { Status = status, CustomStatus = customStatus };
            }
            public static string GetStatus(string userId) =>
                _statuses.TryGetValue(userId, out var data) ? data.Status : "offline"; // TODO idk what this should be bruh
            public static string GetCustomStatus(string userId) =>
                _statuses.TryGetValue(userId, out var data) ? data.CustomStatus : null;
            public static bool ContainsUser(string userId) => _statuses.ContainsKey(userId);
            public static void Clear() => _statuses.Clear();
        }

        public static void HandleUserStatus(JsonNode messageData)
        {
            if (messageData["user_settings"] is JsonObject userSettings)
            {
                string rawMainStatus = userSettings["status"]?.GetValue<string>() ?? "Unknown";
                string rawCustomStatus = string.Empty;

                if (userSettings["custom_status"] is JsonObject customStatusObj)
                {
                    rawCustomStatus = customStatusObj["text"]?.GetValue<string>() ?? string.Empty;
                }
                UserStatusStore.UpdateStatus("0", rawMainStatus, rawCustomStatus);
            }

            foreach (var presence in (messageData["presences"] as JsonArray) ?? new JsonArray())
            {
                string userId = presence["user"]?["id"]?.GetValue<string>();
                if (userId == null) continue;

                string status = presence["status"]?.GetValue<string>() ?? "offline";
                string customStatus = string.Empty;

                var activities = presence["activities"] as JsonArray;
                if (activities != null && activities.Count > 0)
                {
                    foreach (var activity in activities)
                    {
                        int type = activity["type"]?.GetValue<int>() ?? -1;
                        if (type == 0)
                        {
                            string activityName = activity["name"]?.GetValue<string>();
                            if (activityName != null)
                            {
                                customStatus = $"Playing {activityName}";
                                break;
                            }
                        }
                        else if (type == 1)
                        {
                            string details = activity["details"]?.GetValue<string>();
                            if (details != null)
                            {
                                customStatus = $"Streaming {details}";
                                break;
                            }
                        }
                        else if (type == 2)
                        {
                            string activityName = activity["name"]?.GetValue<string>();
                            if (activityName != null)
                            {
                                customStatus = $"Listening to {activityName}";
                                break;
                            }
                        }
                        else if (type == 4)
                        {
                            customStatus = activity["state"]?.GetValue<string>() ?? string.Empty;
                            break;
                        }
                    }
                }
                UserStatusStore.UpdateStatus(userId, status, customStatus);
            }
        }

        public class StatusData
        {
            public string Status { get; set; }
            public string CustomStatus { get; set; }
        }
    }
}