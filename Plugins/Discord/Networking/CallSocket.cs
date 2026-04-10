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

using Discord.Dave;
using System;
using System.Buffers;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Net.WebSockets;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Tasks;

namespace Discord.Networking
{
    class CallSocket
    {
        private CancellationTokenSource _receiveCts;

        // Discord's WebSocket / Gateway URL
        private string gatewayUrl;

        // Used for sending the first payload required
        private string identifyPayloadJson;

        // Used for the heartbeat payloads
        private int _seqAck = -1;
        private Task heartbeatTask;
        private CancellationTokenSource heartbeatCts;

        // The interval Discord sends back to us from WebSocket
        private int heartbeatInterval;

        // omega - events to hook into discord to hook into MiddleMan
        public event Action OnCallEstablished;
        public event Action<string> OnCallFailed;
        public event Action OnHangUp;

        // omega - mute state tracker
        private bool _isMuted = false;

        // omega - for ringer post
        private string _discordToken;

        // The actual WebSocketClient
        public ClientWebSocket WSClient { get; private set; }

        // Reusable buffers for memory efficiency
        private readonly byte[] _receiveBuffer = new byte[8192];
        private readonly ArraySegment<byte> _identifyBuffer;

        // SSRC from the READY call payload
        private int _ssrc;

        // UDP client for listening to the call
        private UdpClient _udpClient;
        // UDP IP discovery results
        private IpDiscoveryResult _discovery;

        // Explained in op_code: 4
        private byte[] _secretKey;

        // Randomness for UUID generation
        private static readonly Random _rng = new Random();

        // The RTC connection ID used in op_code: 1
        private string rtcConnectionId;

        // The CallUDP class to interact with
        private CallUDP _callUDP;

        // DAVE session, one per call, created when op_code: 4 arrives
        private DaveSession _daveSession;

        // Stored so we can initialise the DAVE session on op_code: 4
        private readonly string _selfUserId;
        private readonly string _channelId;
        
        // Pending SSRC maps and properties
        private readonly Dictionary<uint, string> _pendingSsrcMap = new Dictionary<uint, string>();
        private int _pendingEpoch = -1; // patrick: you don't have to init the integer with -1 - omega
        private int _pendingEpochProtoVersion = 1;
        private byte[] _pendingExternalSender = null;

        public CallSocket(string endpoint, string token, string session, string userId, string channelId, bool start_muted, string discord_token)
        {
            _isMuted = start_muted;
            _selfUserId = userId;
            _channelId = channelId;
            _discordToken = discord_token;

            gatewayUrl = $"wss://{endpoint}/?v=9";
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            identifyPayloadJson = JsonSerializer.Serialize(new
            {
                op = 0,
                d = new
                {
                    server_id = channelId,
                    channel_id = channelId,
                    user_id = userId,
                    session_id = session,
                    token = token,
                    max_dave_protocol_version = 1,
                    video = true,
                    streams = new[]
                    {
                        new
                        {
                            type = "video",
                            rid = "100",
                            quality = 100
                        },
                        new
                        {
                            type = "video",
                            rid = "50",
                            quality = 50
                        }
                    }
                }
            });
            _identifyBuffer = new ArraySegment<byte>(Encoding.UTF8.GetBytes(identifyPayloadJson));
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

        internal async Task SetMute(bool muted)
        {
            if (_isMuted == muted) return;
            _isMuted = muted;
            _callUDP?.SetMuted(muted);
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
            finally { ArrayPool<byte>.Shared.Return(buffer); }
        }

        private async Task SendBinaryOpcode(byte opcode, byte[] payload)
        {
            if (WSClient?.State != WebSocketState.Open) return;
            byte[] packet = new byte[1 + payload.Length];
            packet[0] = opcode;
            Buffer.BlockCopy(payload, 0, packet, 1, payload.Length);
            await WSClient.SendAsync(new ArraySegment<byte>(packet), WebSocketMessageType.Binary, true, CancellationToken.None);
        }

        // op_code: 23, tell the voice gateway we're ready to execute a pending transition
        private async Task SendTransitionReady(int transitionId)
        {
            await SendPayload(JsonSerializer.Serialize(new
            {
                op = 23,
                d = new { transition_id = transitionId }
            }));
        }

        // op_code: 31, flag a commit or welcome we couldn't process so the gateway re-adds us
        private async Task SendInvalidCommitWelcome(int transitionId)
        {
            await SendPayload(JsonSerializer.Serialize(new
            {
                op = 31,
                d = new { transition_id = transitionId }
            }));
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
                        return;
                    }

                    if (result.Count > 0)
                    {
                        ms.Write(_receiveBuffer, 0, result.Count);
                    }

                    if (result.EndOfMessage)
                    {
                        byte[] data = ms.ToArray();
                        ms.SetLength(0);

                        if (result.MessageType == WebSocketMessageType.Binary)
                        {
                            HandleBinaryMessage(data);
                            continue;
                        }

                        string message = Encoding.UTF8.GetString(data);
                        HandleMessage(message);
                    }
                }
            }
            catch (OperationCanceledException)
            {
                // Expected during shutdown
            }
            catch (WebSocketException ex) { Debug.WriteLine($"WebSocket error: {ex.Message}"); }
            catch (Exception ex) { Debug.WriteLine($"WebSocket error: {ex.Message}"); }
        }

        private async Task<IpDiscoveryResult> PerformIpDiscovery(string serverIp, int serverPort, int ssrc)
        {
            _udpClient = new UdpClient();
            _udpClient.Connect(serverIp, serverPort);

            var packet = new byte[74];
            packet[0] = 0x00; packet[1] = 0x01;
            packet[2] = 0x00; packet[3] = 0x46;
            packet[4] = (byte)(ssrc >> 24);
            packet[5] = (byte)(ssrc >> 16);
            packet[6] = (byte)(ssrc >> 8);
            packet[7] = (byte)(ssrc);

            await _udpClient.SendAsync(packet, packet.Length);

            var receiveTask = _udpClient.ReceiveAsync();
            var timeoutTask = Task.Delay(5000);
            var completedTask = await Task.WhenAny(receiveTask, timeoutTask);

            if (completedTask == timeoutTask)
            {
                Debug.WriteLine("IP discovery has timed out, something went wrong.");
                return null;
            }

            var result = await receiveTask;
            byte[] data = result.Buffer;

            string ip = System.Text.Encoding.ASCII.GetString(data, 8, 64).TrimEnd('\0');
            int port = (data[72] << 8) | data[73];

            return new IpDiscoveryResult
            {
                Ip = ip,
                Port = port
            };
        }

        private async void HandleBinaryMessage(byte[] data)
        {
            try
            {
                if (data.Length < 3) return;

                ushort seq = (ushort)((data[0] << 8) | data[1]);
                _seqAck = seq;
                byte opcode = data[2];
                // Payload begins after the 2-byte sequence number and 1-byte opcode
                byte[] payload = data.Length > 3 ? Slice(data, 3) : Array.Empty<byte>();

                if (_daveSession == null)
                {
                    if (opcode == 25) { _pendingExternalSender = payload; }
                    else { Debug.WriteLine($"[DAVE] Binary op {opcode} received before session was created, ignoring."); }
                    return;
                }

                switch (opcode)
                {
                    case 25:
                        // The voice gateway's external sender credential and public key
                        // Must be stored before the MLS group can be created
                        Debug.WriteLine("[DAVE] Received external sender package (op 25).");
                        _daveSession.SetExternalSender(payload);
                        // Proactively send our key package for new joiners to an existing group
                        byte[] kp25 = _daveSession.GetKeyPackage();
                        if (kp25 != null) { await SendBinaryOpcode(26, kp25); }
                        break;
                    case 27:
                        // Add/remove proposals from the voice gateway external sender
                        // We commit them and send back the commit (+ welcome if adding members)
                        Debug.WriteLine($"[DAVE] MLS proposals, daveSession null={_daveSession == null}, externalSenderSet={_pendingExternalSender == null}");
                        byte[] commitWelcome = _daveSession.ProcessProposals(payload);
                        Debug.WriteLine($"[DAVE] ProcessProposals result: commitWelcome null={commitWelcome == null}");
                        if (commitWelcome != null) { await SendBinaryOpcode(28, commitWelcome); }
                        break;
                    case 29:
                        // The voice gateway picked a winning commit for this epoch and is broadcasting it
                        // We apply it to advance our local group state and get new decryption keys
                        if (payload.Length < 2) break;
                        ushort commitTransitionId = (ushort)((payload[0] << 8) | payload[1]);
                        bool commitOk = _daveSession.ProcessCommit(Slice(payload, 2));
                        Debug.WriteLine($"[DAVE] Op 29 commit transition, commitOk={commitOk}");
                        if (commitOk)
                            await SendTransitionReady(commitTransitionId);
                        else
                            await SendInvalidCommitWelcome(commitTransitionId);
                        break;
                    case 30:
                        // A welcome message targeting us specifically, used when we're being added to an existing group
                        if (payload.Length < 2) break;
                        ushort welcomeTransitionId = (ushort)((payload[0] << 8) | payload[1]);
                        bool welcomeOk = _daveSession.ProcessWelcome(Slice(payload, 2));
                        Debug.WriteLine($"[DAVE] Op 30 welcome, welcomeOk={welcomeOk}");
                        if (welcomeOk)
                            await SendTransitionReady(welcomeTransitionId);
                        else
                            await SendInvalidCommitWelcome(welcomeTransitionId);
                        break;
                    default:
                        Debug.WriteLine($"[WS-VOICE-BINARY] Unknown binary opcode: {opcode}");
                        break;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[WS-VOICE-BINARY] Exception in HandleBinaryMessage: {ex}");
            }
        }

        private async void HandleMessage(string data)
        {
            try
            {
                var json = JsonNode.Parse(data);
                int opCode = json["op"]?.GetValue<int>() ?? -1;

                if (json["seq"] is JsonNode seqNode)
                    _seqAck = seqNode.GetValue<int>();

                switch (opCode)
                {
                    case 0:
                        break;
                    case 2:
                        var readyData = json["d"];
                        string voiceIp = readyData["ip"].ToString();
                        int voicePort = (int)readyData["port"];
                        _ssrc = (int)readyData["ssrc"];

                        _discovery = await PerformIpDiscovery(voiceIp, voicePort, _ssrc);
                        if (_discovery == null)
                        {
                            Debug.WriteLine("IP discovery failed, you might want to check that out!");
                            return;
                        }

                        // Start listening into the call using UDP
                        _callUDP = new CallUDP(_udpClient, null, _ssrc);
                        _callUDP.Start();

                        // Not sure what this does, if anyone could let me know, please do!
                        // My best assumption is this is a capabilities payload, since after this op_code: 1 sends after.
                        var unknownPayload = JsonSerializer.Serialize(new
                        {
                            op = 16,
                            d = new { }
                        });

                        await SendPayload(unknownPayload);
                        break;
                    case 4:
                        // 1 is the default DAVE protocol version as of 3/9/26
                        int daveProtoVersion = json["d"]?["dave_protocol_version"]?.GetValue<int>() ?? 1;
                        // The Super Secret Key used to decrypt voice UDP packets
                        var keyNode = json["d"]?["secret_key"];
                        if (keyNode is JsonArray keyArrayNode)
                        {
                            _secretKey = new byte[keyArrayNode.Count];
                            for (int i = 0; i < keyArrayNode.Count; i++) { _secretKey[i] = (byte)keyArrayNode[i]!.GetValue<int>(); }
                        }
                        else { _secretKey = Array.Empty<byte>(); }

                        // Update the UDP secret key for the call
                        _callUDP?.UpdateSecretKey(_secretKey);
                        // Create the DAVE session now that we know the protocol version
                        _daveSession = new DaveSession();
                        Debug.WriteLine($"[DAVE] Init: channelId={_channelId}, selfUserId={_selfUserId}");
                        _daveSession.Init((ushort)daveProtoVersion, _channelId, _selfUserId);
                        _callUDP?.UpdateDaveSession(_daveSession);

                        foreach (var kv in _pendingSsrcMap) { _daveSession.RegisterSsrc(kv.Key, kv.Value); }
                        if (_pendingExternalSender != null)
                        {
                            _daveSession.SetExternalSender(_pendingExternalSender);
                            _pendingExternalSender = null;
                        }
                        if (_pendingEpoch == 1) { await SendKeyPackage(_pendingEpochProtoVersion); }

                        // Speaking payload, so we can send/receive data through the voice gateway
                        var speakingPayload = JsonSerializer.Serialize(new
                        {
                            op = 5,
                            d = new
                            {
                                speaking = 2,
                                delay = 0,
                                ssrc = _ssrc
                            }
                        });
                        await SendPayload(speakingPayload);
                        await Discord.Core.api.SendAPI( // for ringing. TODO see if eligiblity is important, if so, add that extra GET request, i've removed it for now because it's useless to us,
                                                        // the skype call model ensures that you're always ringing in the UI anyways
    $"channels/{_channelId}/call/ring",
    HttpMethod.Post,
    _discordToken,
    new { recipients = (string[])null }
);
                        break;
                    case 5:
                        // op_code: 5 is sent to us when a user speaks from Discord
                        string speakingUserId = json["d"]?["user_id"]?.GetValue<string>();
                        int speakingSsrc = json["d"]?["ssrc"]?.GetValue<int>() ?? 0;

                        Debug.WriteLine($"[DAVE] RegisterSsrc: ssrc={speakingSsrc}, userId={speakingUserId}");

                        if (!string.IsNullOrEmpty(speakingUserId) && speakingSsrc != 0)
                        {
                            _pendingSsrcMap[(uint)speakingSsrc] = speakingUserId;
                            _daveSession?.RegisterSsrc((uint)speakingSsrc, speakingUserId);
                        }
                        break;
                    case 6:
                        // Discord's voice gateway has acknowledged our heartbeat
                        break;
                    case 8:
                        heartbeatInterval = json["d"]?["heartbeat_interval"] != null
                            ? (int)json["d"]["heartbeat_interval"]
                            : 0;
                        Debug.WriteLine($"The interval Discord sent is: {heartbeatInterval}");
                        StartHeartbeat();
                        break;
                    case 11:
                        Debug.WriteLine($"[WS-VOICE] opcode 11, a user has joined the voice channel: {data}");
                        OnCallEstablished?.Invoke();
                        var userIds = json["d"]?["user_ids"]?.AsArray();
                        if (userIds != null)
                        {
                            foreach (var uid in userIds)
                            {
                                string joinedUserId = uid?.GetValue<string>();
                                if (!string.IsNullOrEmpty(joinedUserId))
                                {
                                    Debug.WriteLine($"[DAVE] Op11 RegisterSsrc pending for userId={joinedUserId}");
                                    _pendingSsrcMap[0] = joinedUserId; // SSRC unknown yet, will be updated on op 5
                                    _daveSession?.RegisterSsrc(0, joinedUserId);
                                }
                            }
                        }
                        break;
                    case 12:
                        string op12UserId = json["d"]?["user_id"]?.GetValue<string>();
                        int op12Ssrc = json["d"]?["ssrc"]?.GetValue<int>() ?? 0;

                        if (!string.IsNullOrEmpty(op12UserId) && op12Ssrc != 0)
                            _daveSession?.RegisterSsrc((uint)op12Ssrc, op12UserId);
                        break;
                    case 13:
                        Debug.WriteLine($"[WS-VOICE] opcode 13, a user has left the voice channel: {data}");
                        OnHangUp?.Invoke();
                        break;
                    case 14:
                        Debug.WriteLine($"[WS-VOICE] opcode 14, session update: {data}");
                        break;
                    case 15:
                        // Ignore it, it's just Discord telling us what quality the video feed we are sending should be in.
                        // Not necessary for our case, we just want audio to work.
                        break;
                    case 16:
                        // This op_code itself is not important, however we need to send an op_code: 1 payload here.
                        // op_code: 1 is the Protocol selection payload.

                        GenerateRTCConnectionID();

                        var protocolPayload = JsonSerializer.Serialize(new
                        {
                            op = 1,
                            d = new
                            {
                                protocol = "udp",
                                data = new
                                {
                                    address = _discovery.Ip,
                                    port = _discovery.Port,
                                    mode = "aead_aes256_gcm_rtpsize"
                                },
                                address = _discovery.Ip,
                                port = _discovery.Port,
                                mode = "aead_aes256_gcm_rtpsize",
                                codecs = new[]
                                {
                                    new { name = "opus", type = "audio", priority = 1000, payload_type = 120, rtx_payload_type = (int?)null, encode = false, decode = false },
                                    new { name = "AV1",  type = "video", priority = 1000, payload_type = 101, rtx_payload_type = (int?)102,  encode = true,  decode = true },
                                    new { name = "H265", type = "video", priority = 2000, payload_type = 103, rtx_payload_type = (int?)104,  encode = true,  decode = true },
                                    new { name = "H264", type = "video", priority = 3000, payload_type = 105, rtx_payload_type = (int?)106,  encode = true,  decode = true },
                                    new { name = "VP8",  type = "video", priority = 4000, payload_type = 107, rtx_payload_type = (int?)108,  encode = true,  decode = true }
                                },
                                rtc_connection_id = rtcConnectionId,
                                experiments = new[]
                                {
                                    "fixed_keyframe_interval",
                                    "keyframe_on_join",
                                    "network_aware_socket",
                                    "clear_cuda_cache"
                                }
                            }
                        });
                        await SendPayload(protocolPayload);
                        break;
                    case 21:
                        // The voice gateway is telling us to downgrade to transport-only encryption
                        // This happens when a client that doesn't support DAVE joins the call
                        // As of 1/3/26, this is no longer necessary
                        break;
                    case 24:

                        int epoch = json["d"]?["epoch"]?.GetValue<int>() ?? 0;
                        int epochProtoVersion = json["d"]?["protocol_version"]?.GetValue<int>() ?? 1;
                        Debug.WriteLine($"[DAVE] Op 24 received, epoch={epoch}, daveSession null={_daveSession == null}");
                        _pendingEpoch = epoch;
                        _pendingEpochProtoVersion = epochProtoVersion;

                        if (epoch == 1 && _daveSession != null)
                            await SendKeyPackage(epochProtoVersion);
                        break;
                    case 18:
                        Debug.WriteLine($"[WS-VOICE] opcode 18, client flags from the user: {data}");
                        break;
                    case 20:
                        Debug.WriteLine($"[WS-VOICE] opcode 20, platform user is connected on: {data}");
                        break;
                    default:
                        Debug.WriteLine($"[WS-VOICE] Unknown op code: {opCode}, data: {data}");
                        break;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing message: {ex.Message}");
            }
        }

        private string BuildHeartbeatPayload()
        {
            return JsonSerializer.Serialize(new
            {
                op = 3,
                d = new
                {
                    t = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds(),
                    seq_ack = _seqAck
                }
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
                        await SendPayload(BuildHeartbeatPayload());
                }
            });
        }

        private void StopHeartbeat()
        {
            heartbeatCts?.Cancel();
            heartbeatCts?.Dispose();
            heartbeatCts = null;
        }

        public void WSDispose()
        {
            _callUDP?.Stop();
            _daveSession?.Dispose();
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

        private async Task SendKeyPackage(int protoVersion)
        {
            byte[] keyPackage = _daveSession.ResetAndGetKeyPackage((ushort)protoVersion);
            if (keyPackage != null) { await SendBinaryOpcode(26, keyPackage); }
        }

        public static string FormatUUID(ulong partLeft, ulong partRight)
        {
            string buffer = partLeft.ToString("x16") + partRight.ToString("x16");
            return buffer.Substring(0, 8) + "-" +
                   buffer.Substring(8, 4) + "-" +
                   buffer.Substring(12, 4) + "-" +
                   buffer.Substring(16, 4) + "-" +
                   buffer.Substring(20, 12);
        }

        private static ulong RandU64()
        {
            byte[] bytes = new byte[8];
            _rng.NextBytes(bytes);
            return BitConverter.ToUInt64(bytes, 0);
        }

        public void GenerateRTCConnectionID() { rtcConnectionId = FormatUUID(RandU64(), RandU64()); }

        private static byte[] Slice(byte[] src, int start)
        {
            int len = src.Length - start;
            if (len <= 0) return Array.Empty<byte>();
            byte[] result = new byte[len];
            Buffer.BlockCopy(src, start, result, 0, len);
            return result;
        }

        public class IpDiscoveryResult
        {
            public string Ip { get; set; }
            public int Port { get; set; }
        }
    }
}