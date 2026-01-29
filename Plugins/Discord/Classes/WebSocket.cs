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

using System.Text.Json;
using System.Text.Json.Nodes;
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

        // Used in functions outside and inside WebSocket.cs to parse data - now stores JToken instead of string to avoid ToString() allocation
        public JsonNode recipientsData;

        // Used for sending the first payload required
        private string identifyPayloadJson;

        // Used for the heartbeat payloads
        private readonly string heartbeatPayloadJson = JsonSerializer.Serialize(new { op = 1, d = (object)null });
        private Task heartbeatTask;
        private CancellationTokenSource heartbeatCts;

        // The interval Discord sends back to us from WebSocket
        private int heartbeatInterval;

        public ClientWebSocket WSClient { get; private set; }

        // Reusable buffers for memory efficiency
        private readonly byte[] _receiveBuffer = new byte[8192];
        private readonly char[] _charBuffer = new char[8192];
        private readonly Decoder _utf8Decoder = Encoding.UTF8.GetDecoder();
        private readonly ArraySegment<byte> _heartbeatBuffer;
        private readonly ArraySegment<byte> _identifyBuffer;

        public WebSocket()
        {
            token = File.ReadAllText("discord.smcred");
            gatewayUrl = "wss://gateway.discord.gg/?v=9&encoding=json";
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            identifyPayloadJson = JsonSerializer.Serialize(new
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

            _heartbeatBuffer = new ArraySegment<byte>(Encoding.UTF8.GetBytes(heartbeatPayloadJson));
            _identifyBuffer = new ArraySegment<byte>(Encoding.UTF8.GetBytes(identifyPayloadJson));

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
            heartbeatCts = new CancellationTokenSource();
            heartbeatTask = Task.Run(async () =>
            {
                var token = heartbeatCts.Token;
                while (!token.IsCancellationRequested && WSClient.State == WebSocketState.Open)
                {
                    await Task.Delay(heartbeatInterval, token);
                    if (WSClient.State == WebSocketState.Open)
                        await WSClient.SendAsync(_heartbeatBuffer, WebSocketMessageType.Text, true, CancellationToken.None);
                }
            });
        }

        private async Task SendPayload(string payload = null)
        {
            if (WSClient.State != WebSocketState.Open) return;

            if (payload == null)
                await WSClient.SendAsync(_identifyBuffer, WebSocketMessageType.Text, true, CancellationToken.None);
            else
            {
                var bytes = Encoding.UTF8.GetBytes(payload);
                await WSClient.SendAsync(new ArraySegment<byte>(bytes), WebSocketMessageType.Text, true, CancellationToken.None);
            }
        }

        private async Task ReceiveLoop()
        {
            var messageBuilder = new StringBuilder(8192);  // Pre-allocate with reasonable capacity

            try
            {
                while (WSClient.State == WebSocketState.Open)
                {
                    WebSocketReceiveResult result;
                    do
                    {
                        result = await WSClient.ReceiveAsync(new ArraySegment<byte>(_receiveBuffer), CancellationToken.None);
                        if (result.Count > 0)
                        {
                            int charsDecoded = _utf8Decoder.GetChars(_receiveBuffer, 0, result.Count, _charBuffer, 0, false);
                            messageBuilder.Append(_charBuffer, 0, charsDecoded);
                        }
                    }
                    while (!result.EndOfMessage);

                    if (messageBuilder.Length > 0)
                    {
                        var completeMessage = messageBuilder.ToString();
                        messageBuilder.Clear();
                        HandleMessage(completeMessage);
                    }
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
                var json = JsonNode.Parse(data);
                int opCode = json["op"]?.GetValue<int>() ?? -1;

                switch (opCode)
                {
                    case 0:
                        string eventType = json["t"]?.GetValue<string>() ?? "";

                        switch (eventType)
                        {
                            case "READY":
                                Debug.WriteLine(json["d"]?.ToJsonString());
                                HandleUserStatus(json["d"]);

                                var readyData = json["d"];
                                recipientsData = readyData["relationships"] ?? new JsonArray();

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
                        heartbeatInterval = json["d"]?["heartbeat_interval"]?.GetValue<int>() ?? 0;
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

        private void HandleUserStatus(JsonNode messageData)
        {
            if (messageData["user_settings"] is JsonObject userSettings)
            {
                foreach (var setting in userSettings)
                {
                    string rawMainStatus = userSettings["status"]?.GetValue<string>() ?? "Unknown";
                    string rawCustomStatus = string.Empty;

                    if (userSettings["custom_status"] is JsonObject customStatusObj)
                    {
                        rawCustomStatus = customStatusObj["text"]?.GetValue<string>() ?? string.Empty;
                    }
                    UserStatusStore.UpdateStatus("0", rawMainStatus, rawCustomStatus);
                }
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

        private async Task ReconnectWithDelay(int delayMs = 500)
        {
            StopHeartbeat();
            WSClient?.Dispose();
            await Task.Delay(delayMs);
            await InitWS();
        }

        private void StopHeartbeat()
        {
            heartbeatCts?.Cancel();
        }
    }
}