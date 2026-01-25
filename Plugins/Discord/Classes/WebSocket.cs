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
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Linq;

namespace Discord.Classes
{
    class WebSocket
    {
        private const SslProtocols Tls12 = SslProtocols.Tls12;
        private string gatewayUrl;
        private string token;
        public bool CanCheckData = false;
        private int heartbeatInterval;
        public string readyEvent;
        public WebSocketSharp.WebSocket WSClient { get; private set; }

        public WebSocket()
        {
            token = Discord.Settings.Default.dscToken;
            gatewayUrl = "wss://gateway.discord.gg/?v=9&encoding=json";
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
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
            WSClient.OnOpen += (sender, e) => Debug.WriteLine("Connected to the gateway.");
            WSClient.OnMessage += (sender, e) => HandleMessage(e.Data);
            WSClient.OnClose += (sender, e) =>
            {
                Debug.WriteLine($"Disconnected from the gateway. Reason: {e.Reason}, Code: {e.Code}");
                if (e.Code != 1000 && e.Code != 4004)
                {
                    InitWS();
                }
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
                    case 0: // Dispatch Event
                        string eventType = json["t"]?.Value<string>() ?? "";

                        switch (eventType)
                        {
                            case "READY":
                                readyEvent = json["d"].ToString();
                                HandleUserStatus(json["d"]);
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
                        SendHeartbeat();
                        break;
                    default:
                        Debug.WriteLine($"Unhandled opcode: {opCode}");
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
                    string mainId = "0";
                    string rawMainStatus = userSettings["status"]?.Value<string>() ?? "Unknown";
                    string rawCustomStatus = string.Empty;

                    if (userSettings["custom_status"] is JObject customStatusObj)
                    {
                        rawCustomStatus = customStatusObj["text"]?.Value<string>() ?? string.Empty;
                    }
                    UserStatusStore.UpdateStatus(mainId, rawMainStatus, rawCustomStatus);
                }
            }

            if (messageData["presences"] is JArray presencesArray)
            {
                foreach (var presence in presencesArray)
                {
                    string userId = presence?["user"]?["id"]?.Value<string>() ?? "Unknown";
                    string rawUsrStatus = presence?["status"]?.Value<string>() ?? "offline";
                    string rawCustomStatus = string.Empty;

                    if (presence["activities"] is JArray activitiesArray)
                    {
                        foreach (var activity in activitiesArray)
                        {
                            // Playing a game is type 0, check for that before adding it.
                            if (activity?["type"]?.Value<int>() == 0)
                            {
                                rawCustomStatus = $"Playing {activity["name"]?.Value<string>()}";
                                break;
                            }
                            // Streaming something is type 1, check for that before adding it.
                            if (activity?["type"]?.Value<int>() == 1)
                            {
                                rawCustomStatus = $"Playing {activity["details"]?.Value<string>()}";
                                break;
                            }
                            // Listening to music is type 2, check for that before adding it.
                            if (activity?["type"]?.Value<int>() == 2)
                            {
                                rawCustomStatus = $"Listening to {activity["name"]?.Value<string>()}";
                                break;
                            }
                            // Custom status is type 4, check for that before adding it.
                            if (activity?["type"]?.Value<int>() == 4)
                            {
                                rawCustomStatus = activity["state"]?.Value<string>() ?? string.Empty;
                                break;
                            }
                        }
                    }
                    UserStatusStore.UpdateStatus(userId, rawUsrStatus, rawCustomStatus);
                }
            }
            else
            {
                Debug.WriteLine("No presences found in the message data.");
            }
        }

        private void SendPayload()
        {
            if (WSClient.ReadyState == WebSocketSharp.WebSocketState.Open)
            {
                var identifyPayload = new
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
                };

                try
                {
                    string payloadJson = JsonConvert.SerializeObject(identifyPayload);
                    WSClient.Send(payloadJson);
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

        private async void SendHeartbeat()
        {
            while (WSClient.ReadyState == WebSocketSharp.WebSocketState.Open)
            {
                var heartbeatPayload = new { op = 1, d = (object)null };

                try
                {
                    string payloadJson = JsonConvert.SerializeObject(heartbeatPayload);
                    WSClient.Send(payloadJson);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Error sending heartbeat: {ex.Message}");
                }
                await Task.Delay(heartbeatInterval);
            }
        }
    }
}