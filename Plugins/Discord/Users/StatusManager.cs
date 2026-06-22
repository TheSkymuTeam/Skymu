/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using System.Text.Json.Nodes;

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
        }

        public class StatusData
        {
            public string Status { get; set; }
            public string CustomStatus { get; set; }
        }
    }
}