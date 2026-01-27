// This is a very early implementation of the Websockets.
// This was made with the help of the documentation from discord.sex
// Without them, I never would've gotten the right implementation of it.

// Copied from an older Naticord commit that was more finished than before.
// This is done by, and with permission from, the original creator (patricktbp).

/*================================================================*/
// IMPORTANT INFORMATION FOR DEVELOPERS, PROJECT MAINTAINERS
// AND CONTRIBUTORS TO SKYMU, CONCERNING THIS PARTICULAR FILE
/*================================================================*/
// Portions of this code were modified to use System.Net.WebSockets
// with the help of a large language model. If you find any issues
// as a result of the conversion process, please fix them.
/*================================================================*/

#pragma warning disable 4014

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.WebSockets;
using System.Security.Authentication;
using System.Text;
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

        public ClientWebSocket WSClient { get; private set; }

        public WebSocket()
        {
            token = File.ReadAllText("discord.smcred");
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

            ConnectAsync();
        }

        public async Task ConnectAsync()
        {
            await InitWS();
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


        private async Task InitWS()
        {
            WSClient = new ClientWebSocket();
            WSClient.Options.KeepAliveInterval = TimeSpan.FromSeconds(20);

            var uri = new Uri(gatewayUrl);
            await WSClient.ConnectAsync(uri, CancellationToken.None);

            await SendPayload();

            _ = Task.Run(ReceiveLoop);
        }

        private void StartHeartbeat()
        {
            StopHeartbeat();
            heartbeatTimer = new Timer(async _ =>
            {
                if (WSClient.State == WebSocketState.Open)
                    await SendPayload(heartbeatPayloadJson);
            }, null, heartbeatInterval, heartbeatInterval);
        }

        private async Task SendPayload(string payload = null)
        {
            if (payload == null) payload = identifyPayloadJson;

            var bytes = Encoding.UTF8.GetBytes(payload);
            var buffer = new ArraySegment<byte>(bytes);

            if (WSClient.State == WebSocketState.Open)
            {
                await WSClient.SendAsync(buffer, WebSocketMessageType.Text, true, CancellationToken.None);
            }
        }

        private async Task ReceiveLoop()
        {
            var buffer = new byte[8192];
            var messageBuilder = new StringBuilder();

            try
            {
                while (WSClient.State == WebSocketState.Open)
                {
                    WebSocketReceiveResult result;
                    do
                    {
                        result = await WSClient.ReceiveAsync(new ArraySegment<byte>(buffer), CancellationToken.None);
                        var chunk = Encoding.UTF8.GetString(buffer, 0, result.Count);
                        messageBuilder.Append(chunk);
                    }
                    while (!result.EndOfMessage);

                    var completeMessage = messageBuilder.ToString();
                    messageBuilder.Clear();

                    HandleMessage(completeMessage);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"WebSocket error: {ex.Message}");
                await ReconnectWithDelay();
            }
        }

        private void HandleMessage(string data)
        {
            try
            {
                //Debug.Write(data);
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

        private async Task ReconnectWithDelay(int delayMs = 500)
        {
            StopHeartbeat();
            WSClient?.Dispose();
            await Task.Delay(delayMs);
            await InitWS();
        }

        private void StopHeartbeat() => heartbeatTimer?.Dispose();
    }
}