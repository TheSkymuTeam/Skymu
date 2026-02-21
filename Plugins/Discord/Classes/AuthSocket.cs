using Discord.Classes;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.Json;
using System.Net.WebSockets;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Linq;
using System.Text.Json.Nodes;

namespace Discord
{
    internal class AuthSocket
    {
        private ClientWebSocket WSClient = null;

        internal event EventHandler<string> QRCodeGenerated;
        internal event EventHandler PendingMobileVerification;
        internal event EventHandler<string> TokenRecieved;
        private string gatewayUrl = "wss://remote-auth-gateway.discord.gg/?v=2";
        private string authUrl = "https://discord.com/ra/";
        private string identifyPayload;

        private static RSA _cryptoKey;

        public static string GenerateEncodedKey()
        {
            _cryptoKey = RSA.Create(2048);

            byte[] pubKeyBytes = _cryptoKey.ExportSubjectPublicKeyInfo();

            return Convert.ToBase64String(pubKeyBytes);
        }

        public static string DecryptNonce(string encNonce)
        {
            byte[] encBytes = Convert.FromBase64String(encNonce);

            byte[] plainBytes = _cryptoKey.Decrypt(encBytes, RSAEncryptionPadding.OaepSHA256);

            string base64 = Convert.ToBase64String(plainBytes)
                .TrimEnd('=')
                .Replace('+', '-')
                .Replace('/', '_');

            return base64;
        }

        public static string DecryptRSA(string base64Input)
        {
            byte[] encBytes = Convert.FromBase64String(base64Input);

            byte[] plainBytes = _cryptoKey.Decrypt(encBytes, RSAEncryptionPadding.OaepSHA256);

            return Encoding.UTF8.GetString(plainBytes);
        }

        public async Task<bool> StartSocket()
        {
            if (WSClient is not null) return true;
            try
            {
                WSClient = new ClientWebSocket();
                WSClient.Options.SetRequestHeader("User-Agent",
                            "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0");
                WSClient.Options.SetRequestHeader("Origin", "https://discord.com");

                await WSClient.ConnectAsync(new Uri(gatewayUrl), CancellationToken.None);
                ReceiveMessages();
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error initializing WebSocket: {ex.GetType()} - {ex.Message}");
                Debug.WriteLine(ex.StackTrace);
                return false;
            }
        }

        private readonly byte[] _receiveBuffer = new byte[8192];
        private async Task ReceiveMessages()
        {
            var buffer = new byte[4096];
            while (WSClient.State == WebSocketState.Open)
            {
                var result = await WSClient.ReceiveAsync(new ArraySegment<byte>(buffer), CancellationToken.None);
                if (result.MessageType == WebSocketMessageType.Close)
                {
                    await WSClient.CloseAsync(WebSocketCloseStatus.NormalClosure, string.Empty, CancellationToken.None);
                }
                else
                {
                    string message = Encoding.UTF8.GetString(buffer, 0, result.Count);
                    HandleMessage(message);
                }
            }
        }

        public async Task SendAuthPayload()
        {
            var payload = new
            {
                op = "init",
                encoded_public_key = GenerateEncodedKey()
            };

            string json = JsonSerializer.Serialize(payload);
            byte[] bytes = Encoding.UTF8.GetBytes(json);

            await WSClient.SendAsync(
                new ArraySegment<byte>(bytes),
                WebSocketMessageType.Text,
                true, 
                CancellationToken.None
            );
        }

        private async void HandleNonceProof(string data)
        {
            var json = JsonObject.Parse(data);
            // Find the encrypted_nonce Discord sends to us
            string encryptedNonce = json["encrypted_nonce"]?.GetValue<string>();
            // Decrypt the nonce using the private_key we generated earlier
            string nonce = DecryptNonce(encryptedNonce);
            // Send proof of the nonce that we decrypted to Discord
            var payload = new
            {
                op = "nonce_proof",
                nonce = nonce
            };
            string jpayload = JsonSerializer.Serialize(payload);
            byte[] bytes = Encoding.UTF8.GetBytes(jpayload);

            await WSClient.SendAsync(
                new ArraySegment<byte>(bytes),
                WebSocketMessageType.Text,
                true,
                CancellationToken.None
            );
        }

        internal static async Task<bool> Init()
        {
            return await new AuthSocket().StartSocket();    
        }

        private async void HandleQRCode(string data)
        {
            var json = JsonObject.Parse(data);
            string fingerprintQR = json["fingerprint"]?.GetValue<string>();
            string fullRA = authUrl + fingerprintQR;

            QRCodeGenerated?.Invoke(this, fullRA);

        }


        private async void HandleQRUpdate()
        {
            PendingMobileVerification?.Invoke(this, null);
        }

        private async void HandleQRLogin(string data)
        {
            var json = JsonObject.Parse(data);
            string discordTkt = json["ticket"]?.GetValue<string>();
            var ticketPayload = new { ticket = discordTkt };

            string encToken = await HelperMethods.api.SendAPI("users/@me/remote-auth/login", HttpMethod.Post, null, ticketPayload, null, null);

            var encJson = JsonObject.Parse(encToken);
            string discordEncTkn = encJson["encrypted_token"]?.GetValue<string>();
            string discordToken = DecryptRSA(discordEncTkn);

            TokenRecieved?.Invoke(this, discordToken);
        }

        private void HandleMessage(string data)
        {
            try
            {
                var json = JsonObject.Parse(data);
                string op = json["op"]?.GetValue<string>() ?? "";

                switch (op)
                {
                    case "hello": _ = SendAuthPayload(); break;
                    case "nonce_proof": HandleNonceProof(data); break;
                    case "pending_remote_init": HandleQRCode(data); break;
                    case "pending_ticket": HandleQRUpdate(); break;
                    case "pending_login": HandleQRLogin(data); break;
                    default: break;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing message: {ex.Message}");
            }
        } }
    
}
