/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

// This is a very early implementation of the Websockets.
// This was made with the help of the documentation from discord.sex
// Without them, I never would've gotten the right implementation of it.

// Copied from an older Naticord commit that was more finished than before.
// This is done by, and with permission from, the original creator (patricktbp).

#pragma warning disable 4014

using MiddleMan;
using System;
using System.Buffers;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.WebSockets;
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

        // The Discord token used by the user
        private string DscToken;

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

        public ClientWebSocket WSClient { get; private set; }
        private readonly Core _core;

        // Reusable buffers for memory efficiency
        private readonly byte[] _receiveBuffer = new byte[8192];
        private readonly ArraySegment<byte> _heartbeatBuffer;
        private readonly ArraySegment<byte> _identifyBuffer;

        private CancellationTokenSource _receiveCts;

        // Event for new messages
        public event EventHandler<HelperClasses.MessageReceivedEventArgs> MessageReceived;
        // Provides a method for asynchronous background processing of messages, makes the app smoother.
        private readonly Channel<HelperClasses.MessageReceivedEventArgs> _messageQueue = Channel.CreateUnbounded<HelperClasses.MessageReceivedEventArgs>();

        public WebSocket(string token, Core core)
        {
            _core = core;
            DscToken = token;
            var config = new ConfigMgr();

            // Discord adds "&compress=zlib-stream" at the end of this URL
            // However, I could not figure out how to decompress the stream it sends
            // I'll look into this a bit more, however no success so far :(
            gatewayUrl = "wss://gateway.discord.gg/?encoding=json&v=9";
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            identifyPayloadJson = JsonSerializer.Serialize(new
            {
                op = 2,
                d = new
                {
                    token = token,
                    properties = new
                    {
                        os = config.OperatingSystem,
                        browser = config.BrowserName,
                        device = string.Empty,
                        system_locale = config.SystemLocale,
                        has_client_mods = config.HasClientMods,
                        browser_user_agent = config.BrowserUA,
                        browser_version = config.BrowserVer,
                        os_version = config.OSVersion,
                        referrer = config.DCReferrer,
                        referring_domain = config.DCReferringDomain,
                        referrer_current = config.DCReferringCurrent,
                        referring_domain_current = config.DCReferringCurrentDomain,
                        release_channel = config.DCClientState,
                        client_event_source = config.DCClientEvtSrc,
                        client_launch_id = config.ClientLaunchId,
                        is_fast_connect = true
                    }
                },
                client_state = new { guild_versions = new { } }
            });

            Debug.WriteLine($"The generated payload is: {identifyPayloadJson}");

            _heartbeatBuffer = new ArraySegment<byte>(Encoding.UTF8.GetBytes(heartbeatPayloadJson));
            _identifyBuffer = new ArraySegment<byte>(Encoding.UTF8.GetBytes(identifyPayloadJson));

            ConnectAsync();
            StartMessageProcessor();
        }

        public async Task ConnectAsync()
        {
            await InitWS();
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
                                UserStatusMgr.HandleUserStatus(json["d"]);

                                var readyData = json["d"];
                                recipientsData = readyData["relationships"] ?? new JsonArray();
                                privateChannelsData = readyData["private_channels"] ?? new JsonArray();

                                CanCheckData = true;
                                break;
                            case "MESSAGE_CREATE":
                                HandleMessageCreate(json["d"]);
                                break;
                            case "TYPING_START":
                                HandleTypingEvent(json["d"]);
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
            if (messageData is null) return;

            var messageItem = await MessageParser.ParseMessage(messageData);
            if (messageItem is null) return;

            string channelId = messageData["channel_id"]?.GetValue<string>() ?? "0";

            var args = new HelperClasses.MessageReceivedEventArgs
            {
                ChannelId = channelId,
                MessageId = messageItem.MessageID,
                AuthorId = messageItem.SentByID,
                AuthorName = messageItem.SentByDN,
                Content = messageItem.Body,
                Media = messageItem.Media,
                Timestamp = messageItem.Time,
                ReplyToId = messageItem.ReplyToID,
                ReplyToName = messageItem.ReplyToDN,
                ReplyMsgContent = messageItem.ReplyBody
            };

            _ = _messageQueue.Writer.WriteAsync(args);
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

        private void HandleTypingEvent(JsonNode typingData)
        {
            string userId = typingData["user_id"]?.GetValue<string>();
            string channelId = typingData["channel_id"]?.GetValue<string>();

            if (string.IsNullOrEmpty(userId) || string.IsNullOrEmpty(channelId)) return;

            _ = Task.Run(async () =>
            {
                string globalName = await HelperMethods.ReplaceIDWithNameForTyping(userId, DscToken);

                var typingUser = new ProfileData(
                    displayName: globalName,
                    identifier: userId,
                    status: "Typing...",
                    presenceStatus: UserConnectionStatus.Online,
                    profilePicture: null
                );

                _core?._uiContext?.Post(_ =>
                {
                    if (!_core.TypingUsersList.Any(u => u.Identifier == typingUser.Identifier))
                        _core.TypingUsersList.Add(typingUser);

                    if (!_core._typingUsersPerChannel.TryGetValue(channelId, out var users))
                    {
                        users = new HashSet<string>();
                        _core._typingUsersPerChannel[channelId] = users;
                    }
                    users.Add(userId);
                }, null);
            });
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

        private void StopHeartbeat()
        {
            heartbeatCts?.Cancel();
            heartbeatCts?.Dispose();
            heartbeatCts = null;
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
    }
}