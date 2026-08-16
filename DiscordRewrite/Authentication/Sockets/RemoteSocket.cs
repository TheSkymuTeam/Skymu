using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.WebSockets;
using DiscordRewrite.Networking;
using OmegaAOL.Bifrost.WebSockets;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using Org.BouncyCastle.Crypto;
using Org.BouncyCastle.Crypto.Encodings;
using Org.BouncyCastle.Crypto.Engines;
using Org.BouncyCastle.Crypto.Generators;
using Org.BouncyCastle.Security;
using Org.BouncyCastle.X509;

namespace DiscordRewrite.Authentication.Sockets
{
    internal class AuthSocket : IDisposable
    {
        #region Variables used by AuthSocket
        // The required URL variables for this to actually work
        private const string gatewayUrl = "wss://remote-auth-gateway.discord.gg/?v=2";
        private const string loginEndpoint = "users/@me/remote-auth/login";

        private static readonly JsonSerializerOptions jsonOptions = new JsonSerializerOptions { Encoder = System.Text.Encodings.Web.JavaScriptEncoder.UnsafeRelaxedJsonEscaping };

        // The client required for the WebSockets to function
        private BifrostWebSocket _webSocket;
        private readonly SemaphoreSlim _sendLock = new SemaphoreSlim(1, 1);

        // Cancellation token for the socket
        private CancellationTokenSource _cancellationToken;

        private readonly SynchronizationContext _syncContext;
        private bool _disposedSocket;
        private int _heartbeatInterval;

        private readonly AsymmetricCipherKeyPair _keyPair;
        private readonly byte[] _spkiBytes;

        // All actions for the socket
        public event Action<string> qrCodeReady;
        public event Action<string> tokenReceived;
        #endregion

        public AuthSocket()
        {
            _syncContext = SynchronizationContext.Current;
            var keyGenerator = new RsaKeyPairGenerator();

            // Generate a keypair for later...
            keyGenerator.Init(new KeyGenerationParameters(new SecureRandom(), 2048));
            _keyPair = keyGenerator.GenerateKeyPair();

            _spkiBytes = SubjectPublicKeyInfoFactory.CreateSubjectPublicKeyInfo(_keyPair.Public).GetDerEncoded();
        }

        #region Start and stop socket functions
        public async Task StartSocket()
        {
            _cancellationToken = new CancellationTokenSource();
            _webSocket = new BifrostWebSocket();

            // Required so Discord doesn't kick us out for being an unknown source
            _webSocket.Options.SetRequestHeader("Origin", "https://discord.com");

            // Connect to the gateway!
            await _webSocket.ConnectAsync(new Uri(gatewayUrl), CancellationToken.None);
            _ = Task.Run(ReceiveLoop);
        }

        public void StopSocket() => _cancellationToken?.Cancel();
        #endregion

        #region WebSocket loops
        private async Task ReceiveLoop()
        {
            var byteBuffer = new byte[16384];
            var stringBuilder = new StringBuilder();

            while (_webSocket.State == WebSocketState.Open && !_cancellationToken.IsCancellationRequested)
            {
                stringBuilder.Clear();
                WebSocketReceiveResult receiveResult;

                do
                {
                    receiveResult = await _webSocket.ReceiveAsync(new ArraySegment<byte>(byteBuffer), _cancellationToken.Token);
                    if (receiveResult.MessageType == WebSocketMessageType.Close) { return; }

                    stringBuilder.Append(Encoding.UTF8.GetString(byteBuffer, 0, receiveResult.Count));
                }
                while (!receiveResult.EndOfMessage);
                await HandleMessage(stringBuilder.ToString());
            }
        }

        private async Task HeartbeatLoop()
        {
            await Task.Delay(_heartbeatInterval);
            while (!_cancellationToken.IsCancellationRequested && _webSocket.State == WebSocketState.Open)
            {
                await SendMessage(JsonSerializer.Serialize(new Dictionary<string, object> { { "op", "heartbeat" } }, jsonOptions));
                await Task.Delay(_heartbeatInterval, _cancellationToken.Token);
            }
        }
        #endregion

        #region WS message functions (Sending stuff to Discord)
        private async Task SendInit()
        {
            await SendMessage(JsonSerializer.Serialize(new Dictionary<string, object>
            {
                { "op", "init" },
                { "encoded_public_key", Convert.ToBase64String(_spkiBytes) }
            }, jsonOptions));
        }

        private async Task SendNonceProof(JsonElement rootElement)
        {
            string encNonce = DecryptToUrlSafeBase64(rootElement.GetProperty("encrypted_nonce").GetString());
            await SendMessage(JsonSerializer.Serialize(new Dictionary<string, object>
            {
                { "op", "nonce_proof" },
                { "nonce", encNonce }
            }, jsonOptions));
        }

        private void HandlePendingRemoteInit(JsonElement rootElement)
        {
            string remoteFingerprint = rootElement.GetProperty("fingerprint").GetString();
            using (var shaHash = SHA256.Create())
            {
                string expectedBase = Convert.ToBase64String(shaHash.ComputeHash(_spkiBytes)).TrimEnd('=').Replace('+', '-').Replace('/', '_');
                if (remoteFingerprint != expectedBase)
                {
                    StopSocket();
                    return;
                }
            }

            Fire(qrCodeReady, "https://discord.com/ra/" + remoteFingerprint);
        }

        private void HandlePendingTicket(JsonElement rootElement)
        {
            string userPayload = DecryptToUtf8(rootElement.GetProperty("encrypted_user_payload").GetString());

            string[] payloadParts = userPayload.Split(':');
            string payloadUsername = payloadParts.Length >= 4 ? payloadParts[3] : "Unknown name";
        }

        private async Task HandlePendingLogin(JsonElement rootElement)
        {
            string loginTicket = rootElement.GetProperty("ticket").GetString();
            string loginResponse = await API.Instance.SendAPI(loginEndpoint, HttpMethod.Post, reqData: new { loginTicket });

            using (var jsonDoc = JsonDocument.Parse(loginResponse))
            {
                var rootEl = jsonDoc.RootElement;
                if (rootEl.TryGetProperty("captcha_key", out _) || rootEl.TryGetProperty("captcha_sitekey", out _))
                {
                    return;
                }
                if (!rootEl.TryGetProperty("encrypted_token", out var tokenEl) || tokenEl.ValueKind != JsonValueKind.String) { return; }

                Fire(tokenReceived, DecryptToUtf8(tokenEl.GetString()));
            }
        }
        #endregion

        #region WS message functions (The actual backend of them)
        private async Task HandleMessage(string messageData)
        {
            using (var jsonDoc = JsonDocument.Parse(messageData))
            {
                var rootElement = jsonDoc.RootElement;
                string opCode = rootElement.GetProperty("op").GetString() ?? "";

                switch (opCode)
                {
                    case "hello":
                        // Start the heartbeat loop then send the initial payload
                        _heartbeatInterval = rootElement.GetProperty("heartbeat_interval").GetInt32();
                        Task.Run(() => HeartbeatLoop());

                        await SendInit();
                        break;
                    case "nonce_proof": await SendNonceProof(rootElement); break;
                    case "pending_remote_init": HandlePendingRemoteInit(rootElement); break;
                    case "pending_ticket": HandlePendingTicket(rootElement); break;
                    case "pending_login": await HandlePendingLogin(rootElement); break;
                }
            }
        }

        private async Task SendMessage(string messageData)
        {
            byte[] messageBytes = Encoding.UTF8.GetBytes(messageData);
            await _sendLock.WaitAsync(CancellationToken.None);

            try { await _webSocket.SendAsync(new ArraySegment<byte>(messageBytes), WebSocketMessageType.Text, true, CancellationToken.None); }
            finally { _sendLock.Release(); }
        }
        #endregion

        #region Decrypt functions
        private string DecryptToUrlSafeBase64(string encBase) { return Convert.ToBase64String(OaepDecrypt(encBase)).TrimEnd('=').Replace('+', '-').Replace('/', '_'); }
        private string DecryptToUtf8(string encBase) { return Encoding.UTF8.GetString(OaepDecrypt(encBase)); }

        private byte[] OaepDecrypt(string encBase)
        {
            var oapeEngine = new OaepEncoding(new RsaEngine(), new Org.BouncyCastle.Crypto.Digests.Sha256Digest());
            oapeEngine.Init(false, _keyPair.Private);

            byte[] encText = Convert.FromBase64String(encBase);
            return oapeEngine.ProcessBlock(encText, 0, encText.Length);
        }
        #endregion

        private void Fire<T>(Action<T> actionHandler, T arg)
        {
            if (actionHandler == null) return;

            if (_syncContext != null)
                _syncContext.Post(_ => actionHandler(arg), null);
            else
                actionHandler(arg);
        }

        public void Dispose()
        {
            if (_disposedSocket) return;
            _disposedSocket = true;

            _cancellationToken?.Cancel();

            _webSocket?.Dispose();
            _sendLock?.Dispose();
            _cancellationToken?.Dispose();
        }
    }
}