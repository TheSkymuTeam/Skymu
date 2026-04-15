/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, contact skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Net.WebSockets;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Tasks;

namespace Discord.Networking
{
    internal class AuthSocket : IDisposable
    {
        private System.Net.WebSockets.Managed.ClientWebSocket WSClient = null;
        internal event EventHandler<string> QRCodeGenerated;
        internal event EventHandler PendingMobileVerification;
        internal event EventHandler<string> TokenRecieved;
        private string gatewayUrl = "wss://remote-auth-gateway.discord.gg/?v=2";
        private string authUrl = "https://discord.com/ra/";

        private RSAParameters _cryptoKeyParams;

        public string GenerateEncodedKey()
        {
            using (var rsa = new RSACryptoServiceProvider(2048))
            {
                _cryptoKeyParams = rsa.ExportParameters(true);
            }
            var publicParams = _cryptoKeyParams;
            publicParams.D = null;
            publicParams.P = null;
            publicParams.Q = null;
            publicParams.DP = null;
            publicParams.DQ = null;
            publicParams.InverseQ = null;

            byte[] spki = EncodeSubjectPublicKeyInfo(publicParams);
            return Convert.ToBase64String(spki);
        }

        private byte[] DecryptOaepSha256(byte[] data)
        {
            var p = _cryptoKeyParams;
            int keySize = p.Modulus.Length;

            byte[] cBytes = (byte[])data.Clone();
            Array.Reverse(cBytes);
            // ensure positive
            if (cBytes[cBytes.Length - 1] >= 0x80)
                Array.Resize(ref cBytes, cBytes.Length + 1);

            byte[] dBytes = (byte[])p.D.Clone();
            Array.Reverse(dBytes);
            if (dBytes[dBytes.Length - 1] >= 0x80)
                Array.Resize(ref dBytes, dBytes.Length + 1);

            byte[] mBytes = (byte[])p.Modulus.Clone();
            Array.Resize(ref mBytes, mBytes.Length);
            Array.Reverse(mBytes);
            if (mBytes[mBytes.Length - 1] >= 0x80)
                Array.Resize(ref mBytes, mBytes.Length + 1);

            var c = new System.Numerics.BigInteger(cBytes);
            var d = new System.Numerics.BigInteger(dBytes);
            var modulus = new System.Numerics.BigInteger(mBytes);

            var result = System.Numerics.BigInteger.ModPow(c, d, modulus);

            // convert back to big-endian fixed keySize
            byte[] em = result.ToByteArray();
            Array.Reverse(em);
            if (em[0] == 0x00)
                em = em.Skip(1).ToArray();

            // pad to keySize if result was smaller
            if (em.Length < keySize)
            {
                byte[] padded = new byte[keySize];
                Array.Copy(em, 0, padded, keySize - em.Length, em.Length);
                em = padded;
            }

            return OaepSha256Decode(em);
        }

        private byte[] OaepSha256Decode(byte[] em)
        {
            using (var sha256 = SHA256.Create())
            {
                int hLen = 32; // SHA256 output length
                byte[] maskedSeed = em.Skip(1).Take(hLen).ToArray();
                byte[] maskedDB = em.Skip(1 + hLen).ToArray();

                byte[] seedMask = MGF1SHA256(maskedDB, hLen);
                byte[] seed = XorBytes(maskedSeed, seedMask);

                byte[] dbMask = MGF1SHA256(seed, maskedDB.Length);
                byte[] db = XorBytes(maskedDB, dbMask);

                // skip lHash  then find 0x01
                int msgStart = hLen;
                while (msgStart < db.Length && db[msgStart] == 0x00)
                    msgStart++;
                if (db[msgStart] != 0x01)
                    throw new CryptographicException("OAEP decode failed");
                msgStart++;

                return db.Skip(msgStart).ToArray();
            }
        }

        private byte[] MGF1SHA256(byte[] seed, int length)
        {
            using (var sha256 = SHA256.Create())
            {
                var result = new System.Collections.Generic.List<byte>();
                int counter = 0;
                while (result.Count < length)
                {
                    byte[] c = new byte[4];
                    c[0] = (byte)(counter >> 24);
                    c[1] = (byte)(counter >> 16);
                    c[2] = (byte)(counter >> 8);
                    c[3] = (byte)(counter);
                    result.AddRange(sha256.ComputeHash(Concat(seed, c)));
                    counter++;
                }
                return result.Take(length).ToArray();
            }
        }

        private byte[] XorBytes(byte[] a, byte[] b)
        {
            byte[] result = new byte[a.Length];
            for (int i = 0; i < a.Length; i++)
                result[i] = (byte)(a[i] ^ b[i]);
            return result;
        }

        private byte[] Reverse(byte[] data)
        {
            byte[] copy = (byte[])data.Clone();
            Array.Reverse(copy);
            return copy;
        }

        private byte[] EncodeSubjectPublicKeyInfo(RSAParameters p)
        {
            byte[] modulus = EncodeIntegerBigEndian(p.Modulus);
            byte[] exponent = EncodeIntegerBigEndian(p.Exponent);

            byte[] rsaKey = DerSequence(Concat(modulus, exponent));

            byte[] bitString = DerBitString(rsaKey);

            byte[] oid = new byte[]
            {
                0x30,
                0x0D,
                0x06,
                0x09,
                0x2A,
                0x86,
                0x48,
                0x86,
                0xF7,
                0x0D,
                0x01,
                0x01,
                0x01,
                0x05,
                0x00,
            };

            return DerSequence(Concat(oid, bitString));
        }

        private byte[] EncodeIntegerBigEndian(byte[] value)
        {
            // prepend 0x00 if high bit set to keep it positive
            bool needsPad = (value[0] & 0x80) != 0;
            byte[] content = needsPad ? new byte[value.Length + 1] : value;
            if (needsPad)
                Buffer.BlockCopy(value, 0, content, 1, value.Length);

            return Concat(new byte[] { 0x02 }, DerLength(content.Length), content);
        }

        public void Dispose()
        {
            WSClient?.Dispose();
            WSClient = null;
        }

        private byte[] DerSequence(byte[] content) =>
            Concat(new byte[] { 0x30 }, DerLength(content.Length), content);

        private byte[] DerBitString(byte[] content) =>
            Concat(
                new byte[] { 0x03 },
                DerLength(content.Length + 1),
                new byte[] { 0x00 },
                content
            );

        private byte[] DerLength(int length)
        {
            if (length < 0x80)
                return new byte[] { (byte)length };
            if (length < 0x100)
                return new byte[] { 0x81, (byte)length };
            return new byte[] { 0x82, (byte)(length >> 8), (byte)(length & 0xFF) };
        }

        private byte[] Concat(params byte[][] arrays)
        {
            int total = 0;
            foreach (var a in arrays)
                total += a.Length;
            byte[] result = new byte[total];
            int offset = 0;
            foreach (var a in arrays)
            {
                Buffer.BlockCopy(a, 0, result, offset, a.Length);
                offset += a.Length;
            }
            return result;
        }

        public string DecryptNonce(string encNonce)
        {
            byte[] encBytes = Convert.FromBase64String(encNonce);
            byte[] plainBytes = DecryptOaepSha256(encBytes);

            return Convert
                .ToBase64String(plainBytes)
                .TrimEnd('=')
                .Replace('+', '-')
                .Replace('/', '_');
        }

        public string DecryptRSA(string base64Input)
        {
            byte[] encBytes = Convert.FromBase64String(base64Input);
            byte[] plainBytes = DecryptOaepSha256(encBytes);
            return Encoding.UTF8.GetString(plainBytes);
        }

        public async Task<bool> StartSocket()
        {
            if (WSClient is not null)
                return true;

            WSClient = new System.Net.WebSockets.Managed.ClientWebSocket();
            WSClient.Options.SetRequestHeader("Origin", "https://discord.com");

            await WSClient.ConnectAsync(new Uri(gatewayUrl), CancellationToken.None);
            _ = ReceiveMessages();
            return true;
        }

        private async Task ReceiveMessages()
        {
            var buffer = new byte[4096];
            while (WSClient.State == WebSocketState.Open)
            {
                var result = await WSClient.ReceiveAsync(
                    new ArraySegment<byte>(buffer),
                    CancellationToken.None
                );
                if (result.MessageType == WebSocketMessageType.Close)
                {
                    await WSClient.CloseAsync(
                        WebSocketCloseStatus.NormalClosure,
                        string.Empty,
                        CancellationToken.None
                    );
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
            string encodedKey = GenerateEncodedKey();
            Debug.WriteLine($"Sending public key: {encodedKey}");

            var payload = new { op = "init", encoded_public_key = encodedKey };
            string json = JsonSerializer.Serialize(payload);
            Debug.WriteLine($"Full init payload: {json}");

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
            var payload = new { op = "nonce_proof", nonce = nonce };
            string jpayload = JsonSerializer.Serialize(payload);
            byte[] bytes = Encoding.UTF8.GetBytes(jpayload);

            await WSClient.SendAsync(
                new ArraySegment<byte>(bytes),
                WebSocketMessageType.Text,
                true,
                CancellationToken.None
            );
        }

        private void HandleQRCode(string data)
        {
            var json = JsonObject.Parse(data);
            string fingerprintQR = json["fingerprint"]?.GetValue<string>();
            string fullRA = authUrl + fingerprintQR;

            QRCodeGenerated?.Invoke(this, fullRA);
        }

        private void HandleQRUpdate()
        {
            PendingMobileVerification?.Invoke(this, null);
        }

        private async void HandleQRLogin(string data)
        {
            var json = JsonObject.Parse(data);
            string discordTkt = json["ticket"]?.GetValue<string>();
            var ticketPayload = new { ticket = discordTkt };

            string encToken = await Core.Client.Send(
                "users/@me/remote-auth/login",
                HttpMethod.Post,
                null,
                ticketPayload,
                null,
                null
            );

            var encJson = JsonObject.Parse(encToken);
            string discordEncTkn = encJson["encrypted_token"]?.GetValue<string>();
            string discordToken = DecryptRSA(discordEncTkn);

            TokenRecieved?.Invoke(this, discordToken);
        }

        private void HandleMessage(string data)
        {
            var json = JsonObject.Parse(data);
            string op = json["op"]?.GetValue<string>() ?? "";

            switch (op)
            {
                case "hello":
                    _ = SendAuthPayload();
                    break;
                case "nonce_proof":
                    HandleNonceProof(data);
                    break;
                case "pending_remote_init":
                    HandleQRCode(data);
                    break;
                case "pending_ticket":
                    HandleQRUpdate();
                    break;
                case "pending_login":
                    HandleQRLogin(data);
                    break;
                default:
                    break;
            }
        }
    }
}
