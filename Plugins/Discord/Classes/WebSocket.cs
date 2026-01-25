// This is a very early implementation of the Websockets.
// This was made with the help of the documentation from discord.sex
// Without them, I never would've gotten the right implementation of it.

// Copied from an older Naticord commit that was more finished than before.
// This is done by, and with permission from, the original creator (patricktbp).

using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.Net;
using System.Security.Authentication;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Discord.Classes
{
    class WebSocket
    {
        private const SslProtocols Tls12 = SslProtocols.Tls12;

        // Discord's WebSocket / Gateway URL
        private string gatewayUrl;

        // Discord token, quite obvious
        private string token;

        // Used in functions outside of WebSocket.cs to see if we can parse the data right now or not.
        public bool CanCheckData = false;

        // Used in functions outside and inside WebSocket.cs to parse data
        public string recipientsData;

        // Used for sending the first payload required
        private string identifyPayloadJson;

        // Used for the heartbeat payloads
        private readonly string heartbeatPayloadJson = JsonConvert.SerializeObject(new { op = 1, d = (object)null });
        private Timer heartbeatTimer;
        // The interval Discord sends back to us from WebSocket
        private int heartbeatInterval;

        public WebSocketSharp.WebSocket WSClient { get; private set; }

        public WebSocket()
        {
            token = Discord.Settings.Default.dscToken;
            gatewayUrl = "wss://gateway.discord.gg/?v=9&encoding=json";
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            identifyPayloadJson = JsonConvert.SerializeObject(new
            {
                op = 2,
                d = new
                {
                    token = token,
                    properties = new
                    {
                        os = "Windows",
                        browser = "Firefox",
                        device = string.Empty
                    }
                }
            });

            InitWS();
        }

        public class StatusData
        {
            public string Status { get; set; }
            public string CustomStatus { get; set; }
        }

        public static class UserStatusStore
        {
            private static readonly ConcurrentDictionary<string, StatusData> _statuses = new();
            public static void UpdateStatus(string userId, string status, string customStatus = null)
            {
                _statuses[userId] = new StatusData { Status = status, CustomStatus = customStatus };
            }
            public static string GetStatus(string userId) =>
                _statuses.TryGetValue(userId, out var data) ? data.Status : "Offline";
            public static string GetCustomStatus(string userId) =>
                _statuses.TryGetValue(userId, out var data) ? data.CustomStatus : null;
            public static bool ContainsUser(string userId) => _statuses.ContainsKey(userId);
            public static void Clear() => _statuses.Clear();
        }


        public void InitWS()
        {
            WSClient = new WebSocketSharp.WebSocket(gatewayUrl);
            WSClient.SslConfiguration.EnabledSslProtocols = Tls12;
            WSClient.OnMessage += (sender, e) => HandleMessage(e.Data);
            WSClient.OnClose += (sender, e) =>
            {
                StopHeartbeat();
                if (e.Code != 1000 && e.Code != 4004) ReconnectWithDelay();
            };
            WSClient.OnError += (sender, e) => Debug.WriteLine($"Error! {e.Message}");
            WSClient.Connect();
            SendPayload();
        }

        private void HandleMessage(string data)
        {
            try
            {
                var json = JObject.Parse(data);
                int opCode = json["op"]?.Value<int>() ?? -1;

                switch (opCode)
                {
                    case 0:
                        string eventType = json["t"]?.Value<string>() ?? "";

                        switch (eventType)
                        {
                            case "READY":
                                HandleUserStatus(json["d"]);

                                var readyData = json["d"];
                                recipientsData = readyData["relationships"]?.ToString() ?? "";

                                CanCheckData = true;
                                break;

                            case "MESSAGE_CREATE":
                                // TODO: Implement
                                break;
                            default:
                                // Debug.WriteLine($"Unhandled event type: {eventType}");
                                break;
                        }
                        break;

                    case 10: // Hello from the gateway (Op 10)
                        heartbeatInterval = json["d"]?["heartbeat_interval"]?.Value<int>() ?? 0;
                        StartHeartbeat();
                        break;
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing message: {ex.Message}");
            }
        }

        private void HandleUserStatus(JToken messageData)
        {
            if (messageData["user_settings"] is JObject userSettings)
            {
                foreach (var setting in userSettings)
                {
                    string rawMainStatus = userSettings["status"]?.Value<string>() ?? "Unknown";
                    string rawCustomStatus = string.Empty;

                    if (userSettings["custom_status"] is JObject customStatusObj)
                    {
                        rawCustomStatus = customStatusObj["text"]?.Value<string>() ?? string.Empty;
                    }
                    UserStatusStore.UpdateStatus("0", rawMainStatus, rawCustomStatus);
                }
            }

            foreach (var presence in messageData["presences"] ?? new JArray())
            {
                string userId = presence["user"]?["id"]?.Value<string>();
                if (userId == null) continue;

                string status = presence["status"]?.Value<string>() ?? "offline";
                string customStatus = string.Empty;

                var activities = presence["activities"] as JArray;
                if (activities != null)
                {
                    foreach (var activity in activities)
                    {
                        int type = activity["type"]?.Value<int>() ?? -1;
                        if (type == 0) { customStatus = $"Playing {activity["name"]}"; break; }
                        if (type == 1) { customStatus = $"Streaming {activity["details"]}"; break; }
                        if (type == 2) { customStatus = $"Listening to {activity["name"]}"; break; }
                        if (type == 4) { customStatus = activity["state"]?.Value<string>() ?? string.Empty; break; }
                    }
                }

                UserStatusStore.UpdateStatus(userId, status, customStatus);
            }
        }

        private void SendPayload()
        {
            if (WSClient.ReadyState == WebSocketSharp.WebSocketState.Open)
            {
                try
                {
                    WSClient.Send(identifyPayloadJson);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error sending identify payload: {ex.Message}");
                }
            }
            else
            {
                Debug.WriteLine("WebSocket connection is not open. Unable to send identify payload.");
            }
        }

        private async void ReconnectWithDelay(int delayMs = 500)
        {
            await Task.Delay(delayMs);
            InitWS();
        }

        private void StartHeartbeat()
        {
            // Making sure the old timer has been disposed.
            StopHeartbeat();
            if (heartbeatTimer == null)
                heartbeatTimer = new Timer(_ => WSClient.Send(heartbeatPayloadJson), null, heartbeatInterval, heartbeatInterval);
        }

        private void StopHeartbeat() => heartbeatTimer?.Dispose();
    }
}