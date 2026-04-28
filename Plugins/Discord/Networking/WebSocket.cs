/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

// This is a very early implementation of the Websockets.
// This was made with the help of the documentation from discord.sex
// Without them, I never would've gotten the right implementation of it.

// Copied from an older Naticord commit that was more finished than before.
// This is done by, and with permission from, the original creator (patricktbp).

#pragma warning disable 4014

using Discord.Helpers;
using Discord.Networking.Managers;
using Discord.Users;
using ICSharpCode.SharpZipLib.Zip.Compression;
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
using Yggdrasil.Networking;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace Discord.Networking
{
    class WebSocket
    {
        public WebSocketState State => WSClient?.State ?? WebSocketState.None;
        private const SslProtocols Tls12 = SslProtocols.Tls12;

        // Discord's WebSocket / Gateway URL
        private string gatewayUrl;

        // The Discord token used by the user
        private string DscToken;

        // Used in functions outside of WebSocket.cs to see if we can parse the data right now or not. (Changed to event OmegaAOL)
        internal event EventHandler Ready;

        internal string _privateChannelsJson;
        internal string _guildsJson;

        // Used for sending the first payload required
        private string identifyPayloadJson;

        // Used for the heartbeat payloads
        private readonly string heartbeatPayloadJson = JsonSerializer.Serialize(new { op = 1, d = (object)null });
        private Task heartbeatTask;
        private CancellationTokenSource heartbeatCts;

        // The interval Discord sends back to us from WebSocket
        private int heartbeatInterval;

        public System.Net.WebSockets.Managed.ClientWebSocket WSClient { get; private set; }
        private readonly Core _core;

        // Reusable buffers for memory efficiency
        private readonly byte[] _receiveBuffer = new byte[8192];
        private readonly ArraySegment<byte> _heartbeatBuffer;
        private readonly ArraySegment<byte> _identifyBuffer;

        private CancellationTokenSource _receiveCts;

        // Some portions originally ported from DiscordDAVECalling - omega
        public class VoiceServerUpdateEventArgs : EventArgs
        {
            public string UserId;
            public string SessionId;
            public string VoiceToken;
            public string VoiceEndpoint;

            public VoiceServerUpdateEventArgs(string userId, string sessionId, string token, string endpoint)
            {
                UserId = userId;
                SessionId = sessionId;
                VoiceToken = token;
                VoiceEndpoint = endpoint;
            }
        }
        public event EventHandler<JsonNode> IncomingCall;
        private VoiceServerUpdateEventArgs voice_details;

        public event EventHandler<VoiceServerUpdateEventArgs> VoiceServerUpdateCompleted;

        // Event for new messages
        public event EventHandler<HelperClasses.DiscordMessageReceivedEventArgs> MessageReceived;
        // Event for new guilds
        public event EventHandler<JsonNode> GuildCreated;
        // Provides a method for asynchronous background processing of messages, makes the app smoother.
        private readonly Channel<HelperClasses.DiscordMessageReceivedEventArgs> _messageQueue =
    Channel.CreateUnbounded<HelperClasses.DiscordMessageReceivedEventArgs>(
        new UnboundedChannelOptions { SingleReader = true }
    ); // fixed for net core - omega

        public WebSocket(string token, Core core)
        {
            _core = core;
            DscToken = token;
            var config = new ConfigManager();

            gatewayUrl = "wss://gateway.discord.gg/?encoding=json&v=9&compress=zlib-stream"; // omega add compression
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

            // Debug.WriteLine($"The generated payload is: {identifyPayloadJson}");

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
            WSClient = new System.Net.WebSockets.Managed.ClientWebSocket();
            WSClient.Options.KeepAliveInterval = TimeSpan.FromSeconds(20);
            _inflater = new Inflater();
            var uri = new Uri(gatewayUrl);
            await WSClient.ConnectAsync(uri, CancellationToken.None).ConfigureAwait(false);

            await SendPayload();

            _receiveCts = new CancellationTokenSource();
            _ = Task.Run(() => ReceiveLoop(_receiveCts.Token));
        }

        internal async Task SendPayload(string payload = null)
        {
            if (WSClient?.State != WebSocketState.Open) return;

            if (payload == null)
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
            using (var ms = new MemoryStream())
            {
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
                            string message = DecodeZStream(ms.ToArray());
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
        }

        private Inflater _inflater;

        public string DecodeZStream(byte[] data)
        {

            if (!EndsWithFlushSuffix(data)) return null;

            _inflater.SetInput(data);
            using (var output = new MemoryStream())
            {
                int read;
                while ((read = _inflater.Inflate(_receiveBuffer)) > 0)
                    output.Write(_receiveBuffer, 0, read);
                return Encoding.UTF8.GetString(output.ToArray());
            }
        }

        private bool EndsWithFlushSuffix(byte[] data)
        {
            if (data.Length < 4) return false;
            return data[data.Length - 4] == 0x00 && data[data.Length - 3] == 0x00 &&
                   data[data.Length - 2] == 0xFF && data[data.Length - 1] == 0xFF;
        }

        private void HandleVoiceStateUpdate(JsonNode data)
        {
            if (data is null) return;
            voice_details = new VoiceServerUpdateEventArgs(String.Empty, String.Empty, String.Empty, String.Empty);
            voice_details.UserId = data["user_id"]?.GetValue<string>();
            voice_details.SessionId = data["session_id"]?.GetValue<string>();
        }

        private void HandleVoiceServerUpdate(JsonNode data)
        {
            if (data is null) return;
            voice_details.VoiceToken = data["token"]?.GetValue<string>();
            voice_details.VoiceEndpoint = data["endpoint"]?.GetValue<string>();
            VoiceServerUpdateCompleted?.Invoke(this, voice_details);
        }

        private void HandleCallUpdate(JsonNode data)
        {
            if (data == null) return;
            IncomingCall?.Invoke(this, data);
        }


        private void HandleMessage(string data)
        {
            try
            {
                //Debug.WriteLine("[WS-RESPONSE] " + data);
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
                                StatusManager.HandleUserStatus(json["d"]);

                                var readyData = json["d"];

                                _privateChannelsJson = readyData["private_channels"]?.ToJsonString() ?? "[]"; // Store as strings to save memory
                                _guildsJson = readyData["guilds"]?.ToJsonString() ?? "[]";
                                //_recipientsJson = readyData["relationships"]?.ToJsonString() ?? "[]"; // unused in code as of yet. TODO: add friends list
                                readyData = null;
                                json = null;
                                Ready?.Invoke(this, EventArgs.Empty);
                                break;
                            case "READY_SUPPLEMENTAL":
                                Debug.WriteLine($"[WebSocket] READY_SUPPLEMENTAL received: {json["d"]?.ToJsonString()}");
                                break;
                            case "MESSAGE_CREATE":
                                HandleMessageCreate(json["d"]);
                                break;
                            case "MESSAGE_UPDATE":
                                HandleMessageUpdate(json["d"]);
                                break;
                            case "MESSAGE_DELETE":
                                HandleMessageDelete(json["d"]);
                                break;
                            case "MESSAGE_DELETE_BULK":
                                HandleMessageDeleteBulk(json["d"]);
                                break;
                            case "TYPING_START":
                                HandleTypingEvent(json["d"]);
                                break;
                            case "USER_SETTINGS_UPDATE":
                                Debug.WriteLine($"[WebSocket] USER_SETTINGS_UPDATE received: {json["d"]?.ToJsonString()}");
                                break;
                            case "PRESENCE_UPDATE":
                                StatusManager.HandleUserStatus(json["d"]);
                                break;
                            case "VOICE_STATE_UPDATE":
                                HandleVoiceStateUpdate(json["d"]);
                                break;
                            case "VOICE_SERVER_UPDATE":
                                HandleVoiceServerUpdate(json["d"]);
                                break;
                            case "CALL_UPDATE":
                                HandleCallUpdate(json["d"]);
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
            if (messageData == null) return;

            var messageItem = await MessageParser.ParseMessage(messageData);
            if (messageItem == null) return;

            string channelId = messageData["channel_id"]?.GetValue<string>() ?? "0";

            var args = new HelperClasses.DiscordMessageReceivedEventArgs
            {
                EventType = MessageEventType.Create,
                ChannelId = channelId,
                Identifier = messageItem.Identifier,
                Sender = messageItem.Sender,
                Timestamp = messageItem.Time,
                Text = messageItem.Text,
                Attachments = messageItem.Attachments,
                ParentMessage = messageItem.ParentMessage
            };

            _ = _messageQueue.Writer.WriteAsync(args);
        }

        private async Task HandleMessageUpdate(JsonNode messageData) // omega
        {
            if (messageData == null) return;
            var messageItem = await MessageParser.ParseMessage(messageData);
            if (messageItem == null) return;
            string channelId = messageData["channel_id"]?.GetValue<string>() ?? "0";
            var args = new HelperClasses.DiscordMessageReceivedEventArgs
            {
                EventType = MessageEventType.Update,
                ChannelId = channelId,
                Identifier = messageItem.Identifier,
                Sender = messageItem.Sender,
                Timestamp = messageItem.Time,
                Text = messageItem.Text,
                Attachments = messageItem.Attachments,
                ParentMessage = messageItem.ParentMessage
            };
            _ = _messageQueue.Writer.WriteAsync(args);
        }

        private Task HandleMessageDelete(JsonNode data) // omega
        {
            var messageId = data?["id"]?.GetValue<string>();
            var channelId = data?["channel_id"]?.GetValue<string>();

            if (messageId == null || channelId == null)
                return Task.CompletedTask;

            var args = new HelperClasses.DiscordMessageReceivedEventArgs
            {
                EventType = MessageEventType.Delete,
                ChannelId = channelId,
                Identifier = messageId
            };

            _ = _messageQueue.Writer.WriteAsync(args);

            return Task.CompletedTask;
        }

        private Task HandleMessageDeleteBulk(JsonNode data) // omega
        {
            var ids = data?["ids"]?.AsArray();
            var channelId = data?["channel_id"]?.GetValue<string>();

            if (ids == null || channelId == null)
                return Task.CompletedTask;

            var args = new HelperClasses.DiscordMessageReceivedEventArgs
            {
                EventType = MessageEventType.BulkDelete,
                ChannelId = channelId,
                BulkIdentifiers = ids
                    .Select(x => x?.GetValue<string>())
                    .Where(x => x != null)
                    .ToList()
            };

            _ = _messageQueue.Writer.WriteAsync(args);

            return Task.CompletedTask;
        }



        private void StartMessageProcessor()
        {
            _ = Task.Run(async () =>
            {
                while (await _messageQueue.Reader.WaitToReadAsync())
                {
                    while (_messageQueue.Reader.TryRead(out var msg))
                    {
                        try { MessageReceived?.Invoke(this, msg); }
                        catch (Exception ex) { Debug.WriteLine(ex.Message); }
                    }
                }
            });
        }

        private void HandleTypingEvent(JsonNode typingData)
        {
            string userId = typingData["user_id"]?.GetValue<string>();
            string channelId = typingData["channel_id"]?.GetValue<string>();

            if (string.IsNullOrEmpty(userId) || string.IsNullOrEmpty(channelId)) return;

            if (channelId != _core.GetActiveChannelID())
                return;

            _ = Task.Run(async () =>
            {
                string globalName = await HelperMethods.ReplaceIDWithNameForTyping(userId, DscToken);

                var typingUser = UserStore.GetOrCreate(userId, globalName, globalName);

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