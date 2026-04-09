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
using Discord.Helpers;

namespace Discord.Users
{
    internal class StatusManager
    {
        public static void HandleUserStatus(JsonNode messageData)
        {
            // READY
            if (messageData["user_settings"] is JsonObject userSettings)
            {
                string rawMainStatus = userSettings["status"]?.GetValue<string>() ?? "offline";
                string rawCustomStatus = string.Empty;
                if (userSettings["custom_status"] is JsonObject customStatusObj)
                    rawCustomStatus = customStatusObj["text"]?.GetValue<string>() ?? string.Empty;
                UserStore.UpdatePresence("0", rawMainStatus, rawCustomStatus);
            }

            // READY bulk
            foreach (var presence in (messageData["presences"] as JsonArray) ?? new JsonArray())
                ApplyPresence(presence);

            // PRESENCE_UPDATE 
            if (messageData["user"] is JsonObject)
                ApplyPresence(messageData);
        }

        private static void ApplyPresence(JsonNode presence)
        {
            string userId = presence["user"]?["id"]?.GetValue<string>();
            if (userId == null) return;

            string status = presence["status"]?.GetValue<string>() ?? "offline";
            string customStatus = string.Empty;

            var activities = presence["activities"] as JsonArray;
            if (activities != null)
            {
                foreach (var activity in activities)
                {
                    int type = activity["type"]?.GetValue<int>() ?? -1;
                    if (type == 0) { customStatus = $"Playing {activity["name"]?.GetValue<string>()}"; break; }
                    else if (type == 1) { customStatus = $"Streaming {activity["details"]?.GetValue<string>()}"; break; }
                    else if (type == 2) { customStatus = $"Listening to {activity["name"]?.GetValue<string>()}"; break; }
                    else if (type == 4) { customStatus = activity["state"]?.GetValue<string>() ?? string.Empty; break; }
                }
            }

            UserStore.UpdatePresence(userId, status, customStatus);
            Debug.WriteLine($"[Presence status updated] {UserStore.Get(userId)?.DisplayName ?? userId} → {status} | {customStatus}");
        }

        public class StatusData
        {
            public string Status { get; set; }
            public string CustomStatus { get; set; }
        }
    }
}