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

using Discord;
using System;
using System.Buffers;
using System.Collections.Concurrent;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.WebSockets;
using System.Runtime.CompilerServices;
using System.Security.Authentication;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Discord.Classes
{
    class WebSocket
    {
        public WebSocketState State => WSClient?.State ?? WebSocketState.None;
        private const SslProtocols Tls12 = SslProtocols.Tls12;

        // Discord's WebSocket / Gateway URL
        private string gatewayUrl;

        // Discord token, quite obvious
        private string token;

        // Used in functions outside of WebSocket.cs to see if we can parse the data right now or not.
        public bool CanCheckData = false;

        // Used in functions outside and inside WebSocket.cs to parse data - now stores JToken instead of string to avoid ToString() allocation
        public JsonNode recipientsData;

        // Used to store all private channels (DMs and GCs)
        public JsonNode privateChannelsData;

        // Used for sending the first payload required
        private string identifyPayloadJson;

        // Used for the heartbeat payloads
        private readonly string heartbeatPayloadJson = JsonSerializer.Serialize(new { op = 1, d = (object)null });
        private Task heartbeatTask;
        private CancellationTokenSource heartbeatCts;

        // The interval Discord sends back to us from WebSocket
        private int heartbeatInterval;

        // This is the file Skymu uses to find the Discord token
        private const string credFile = "discord.smcred";

        public ClientWebSocket WSClient { get; private set; }

        // Reusable buffers for memory efficiency
        private readonly byte[] _receiveBuffer = new byte[8192];
        private readonly ArraySegment<byte> _heartbeatBuffer;
        private readonly ArraySegment<byte> _identifyBuffer;

        private CancellationTokenSource _receiveCts;

        // Event for new messages
        public event EventHandler<MessageReceivedEventArgs> MessageReceived;
        // Provides a method for asynchronous background processing of messages, makes the app smoother.
        private readonly Channel<MessageReceivedEventArgs> _messageQueue = Channel.CreateUnbounded<MessageReceivedEventArgs>();

        public WebSocket()
        {
            token = File.ReadAllText(credFile);
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
            StartMessageProcessor();
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
            await WSClient.ConnectAsync(uri, CancellationToken.None).ConfigureAwait(false);

            await SendPayload();

            _receiveCts = new CancellationTokenSource();
            _ = Task.Run(() => ReceiveLoop(_receiveCts.Token));
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
            if (WSClient?.State != WebSocketState.Open) return;

            if (payload is null)
            {
                await WSClient.SendAsync(_identifyBuffer, WebSocketMessageType.Text, true, CancellationToken.None);
                return;
            }

            var byteCount = Encoding.UTF8.GetByteCount(payload);
            byte[] buffer = ArrayPool<byte>.Shared.Rent(byteCount);

            try
            {
                int bytesWritten = Encoding.UTF8.GetBytes(payload, 0, payload.Length, buffer, 0);
                await WSClient.SendAsync(new ArraySegment<byte>(buffer, 0, bytesWritten), WebSocketMessageType.Text, true, CancellationToken.None);
            }
            finally
            {
                ArrayPool<byte>.Shared.Return(buffer);
            }
        }

        private async Task ReceiveLoop(CancellationToken cancellationToken)
        {
            using var ms = new MemoryStream();
            try
            {
                while (WSClient.State == WebSocketState.Open)
                {
                    var result = await WSClient.ReceiveAsync(new ArraySegment<byte>(_receiveBuffer), cancellationToken);
                    if (result.MessageType == WebSocketMessageType.Close)
                    {
                        Debug.WriteLine($"Server closed connection: {result.CloseStatus}");
                        await ReconnectWithDelay(1);
                        return;
                    }

                    if (result.Count > 0)
                    {
                        ms.Write(_receiveBuffer, 0, result.Count);
                    }

                    if (result.EndOfMessage)
                    {
                        string message = Encoding.UTF8.GetString(ms.ToArray());
                        ms.SetLength(0);
                        HandleMessage(message);
                    }
                }
            }
            catch (OperationCanceledException)
            {
                // Expected during shutdown
            }
            catch (WebSocketException ex)
            {
                Debug.WriteLine($"WebSocket error: {ex.Message}");
                await ReconnectWithDelay();
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
                                // Only uncomment this if you need to debug the READY event from Discord.
                                // Debug.WriteLine(json["d"]?.ToJsonString());
                                HandleUserStatus(json["d"]);

                                var readyData = json["d"];
                                recipientsData = readyData["relationships"] ?? new JsonArray();
                                privateChannelsData = readyData["private_channels"] ?? new JsonArray();

                                CanCheckData = true;
                                break;

                            case "MESSAGE_CREATE":
                                HandleMessageCreate(json["d"]);
                                break;
                            default:
                                // Debug.WriteLine($"Unhandled event type: {eventType}");
                                break;
                        }
                        break;

                    case 10: // Hello from the gateway (Op 10)
                        heartbeatInterval = json["d"]?["heartbeat_interval"]?.GetValue<int>() ?? 41250;
                        StartHeartbeat();
                        break;
                    case 11:
                        Debug.WriteLine("Heartbeat acknowledged");
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

        private async Task HandleMessageCreate(JsonNode messageData)
        {
            try
            {
                string channelId = GetString(messageData, "channel_id");
                string messageId = GetString(messageData, "id");
                string authorId = GetString(messageData["author"], "id", "0");
                string authorName = GetString(messageData["author"], "global_name", GetString(messageData["author"], "username", "Unknown"));
                string content = GetString(messageData, "content");

                DateTime timestamp = DateTime.UtcNow;
                string timestampStr = GetString(messageData, "timestamp");
                if (!string.IsNullOrEmpty(timestampStr))
                    DateTime.TryParse(timestampStr, out timestamp);

                // Handle reply/reference information
                string replyToId = null;
                string replyToName = null;
                string replyMsgContent = null;

                var referencedMessage = messageData["referenced_message"];
                if (referencedMessage is not null)
                {
                    replyToId = GetString(referencedMessage["author"], "id");
                    replyToName = GetString(referencedMessage["author"], "global_name",
                                  GetString(referencedMessage["author"], "username", "Unknown"));
                    replyMsgContent = referencedMessage["content"]?.GetValue<string>() ?? string.Empty;
                }

                var args = new MessageReceivedEventArgs
                {
                    ChannelId = channelId,
                    MessageId = messageId,
                    AuthorId = authorId,
                    AuthorName = authorName,
                    Content = content,
                    Timestamp = timestamp,
                    ReplyToId = replyToId,
                    ReplyToName = replyToName,
                    ReplyMsgContent = replyMsgContent
                };

                _ = _messageQueue.Writer.WriteAsync(args);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error handling MESSAGE_CREATE: {ex.Message}");
            }
        }

        private void StartMessageProcessor()
        {
            _ = Task.Run(async () =>
            {
                await foreach (var msg in _messageQueue.Reader.ReadAllAsync())
                {
                    try { MessageReceived?.Invoke(this, msg); }
                    catch (Exception ex) { Debug.WriteLine(ex.Message); }
                }
            });
        }

        private void HandleUserStatus(JsonNode messageData)
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
                if (userId is null) continue;

                string status = presence["status"]?.GetValue<string>() ?? "offline";
                string customStatus = string.Empty;

                var activities = presence["activities"] as JsonArray;
                if (activities is not null && activities.Count > 0)
                {
                    foreach (var activity in activities)
                    {
                        int type = activity["type"]?.GetValue<int>() ?? -1;
                        if (type == 0)
                        {
                            string activityName = activity["name"]?.GetValue<string>();
                            if (activityName is not null)
                            {
                                customStatus = $"Playing {activityName}";
                                break;
                            }
                        }
                        else if (type == 1)
                        {
                            string details = activity["details"]?.GetValue<string>();
                            if (details is not null)
                            {
                                customStatus = $"Streaming {details}";
                                break;
                            }
                        }
                        else if (type == 2)
                        {
                            string activityName = activity["name"]?.GetValue<string>();
                            if (activityName is not null)
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

        private async Task ReconnectWithDelay(int attempt = 1)
        {
            WSDispose();

            int delayMs = Math.Min(1000 * (int)Math.Pow(2, attempt), 30000);
            await Task.Delay(delayMs);

            try
            {
                await InitWS();
            }
            catch
            {
                _ = ReconnectWithDelay(attempt + 1);
            }
        }

        public void WSDispose()
        {
            StopHeartbeat();
            _receiveCts?.Cancel();
            _receiveCts?.Dispose();
            try
            {
                WSClient?.Abort();
            }
            catch { /* This ignores any abort errors */ }
            WSClient?.Dispose();
        }

        private void StopHeartbeat()
        {
            heartbeatCts?.Cancel();
            heartbeatCts?.Dispose();
            heartbeatCts = null;
        }
        private static string GetString(JsonNode node, string key, string defaultValue = "")
        {
            return node?[key]?.GetValue<string>() ?? defaultValue;
        }
    }

    public class MessageReceivedEventArgs : EventArgs
    {
        public string ChannelId { get; set; }
        public string MessageId { get; set; }
        public string AuthorId { get; set; }
        public string AuthorName { get; set; }
        public string Content { get; set; }
        public DateTime Timestamp { get; set; }
        public string ReplyToId { get; set; }
        public string ReplyToName { get; set; }
        public string ReplyMsgContent { get; set; }
    }
}