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
// OmegaWebSocket is a WebSocket client backed by OmegaTLS,
// bypassing Schannel entirely. It connects via raw TCP +
// Bouncy Castle TLS, performs the HTTP/1.1 Upgrade handshake,
// then speaks the RFC 6455 WebSocket framing protocol.
/*==========================================================*/
// DO NOT USE THIS NOW! It is expiremental and not ready. I
// believe there is some sort of issue with skipped payloads
// which compounds if zlib-stream is used. Race condition
// perhaps. Whatever it is, this is not suitable for 
// production use. You have been warned.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net.WebSockets;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Yggdrasil.Networking
{
    public sealed class OmegaWebSocketOptions
    {
        private readonly OmegaWebSocket _owner;

        internal OmegaWebSocketOptions(OmegaWebSocket owner) => _owner = owner;

        public void SetRequestHeader(string headerName, string headerValue)
            => _owner.RequestHeaders[headerName] = headerValue;

        public void AddSubProtocol(string subProtocol)
            => _owner.RequestedSubProtocol = subProtocol;

        public TimeSpan KeepAliveInterval { get; set; } = TimeSpan.Zero;
    }

    public sealed class OmegaWebSocket : IDisposable
    {
        private Stream _stream;
        private WebSocketState _state = WebSocketState.None;
        private readonly object _stateLock = new object();
        private bool _disposed;
        private byte _currentMessageOpcode = 0;
        private readonly SemaphoreSlim _writeLock = new SemaphoreSlim(1, 1);
        private readonly SemaphoreSlim _readLock = new SemaphoreSlim(1, 1);

        public WebSocketState State
        {
            get { lock (_stateLock) return _state; }
        }

        public string CloseStatusDescription { get; private set; }
        public WebSocketCloseStatus? CloseStatus { get; private set; }

        public OmegaWebSocketOptions Options { get; }

        public Dictionary<string, string> RequestHeaders { get; }
            = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);


        public string RequestedSubProtocol { get; set; }

        public string SubProtocol { get; private set; }

        public OmegaWebSocket()
        {
            Options = new OmegaWebSocketOptions(this);
        }
        public async Task ConnectAsync(Uri uri, CancellationToken ct)
        {
            if (uri == null) throw new ArgumentNullException(nameof(uri));

            lock (_stateLock)
            {
                if (_state != WebSocketState.None)
                    throw new InvalidOperationException(
                        $"Cannot connect in state {_state}.");
                _state = WebSocketState.Connecting;
            }

            bool isWss = uri.Scheme.Equals("wss", StringComparison.OrdinalIgnoreCase);
            if (!isWss && !uri.Scheme.Equals("ws", StringComparison.OrdinalIgnoreCase))
                throw new ArgumentException($"Unsupported scheme: {uri.Scheme}. Use ws:// or wss://.");

            int port = uri.Port > 0 ? uri.Port : (isWss ? 443 : 80);
            string host = uri.Host;
            string path = string.IsNullOrEmpty(uri.PathAndQuery) ? "/" : uri.PathAndQuery;

            Debug.WriteLine($"[OMEGA-WS] Connecting to {uri}");

            _stream = await OmegaTLS.OpenAsync(host, port, isWss, ct).ConfigureAwait(false);

            await PerformUpgradeAsync(host, path, ct).ConfigureAwait(false);

            lock (_stateLock) _state = WebSocketState.Open;
            Debug.WriteLine($"[OMEGA-WS] Connection open: {uri}");
        }

        public async Task SendAsync(
            ArraySegment<byte> buffer,
            WebSocketMessageType messageType,
            bool endOfMessage,
            CancellationToken ct)
        {
            EnsureOpen();

            byte opcode;
            switch (messageType)
            {
                case WebSocketMessageType.Text: opcode = 0x01; break;
                case WebSocketMessageType.Binary: opcode = 0x02; break;
                default:
                    throw new ArgumentException(
                        "Use CloseAsync to send a close frame, not SendAsync.");
            }

            byte[] frame = BuildFrame(opcode, endOfMessage, buffer.Array, buffer.Offset, buffer.Count);

            await _writeLock.WaitAsync(ct).ConfigureAwait(false);
            try
            {
                await _stream.WriteAsync(frame, 0, frame.Length, ct).ConfigureAwait(false);
                await _stream.FlushAsync(ct).ConfigureAwait(false);
            }
            finally
            {
                _writeLock.Release();
            }

            Debug.WriteLine($"[OMEGA-WS] Sent {buffer.Count} byte {messageType} frame.");
        }

        public async Task<WebSocketReceiveResult> ReceiveAsync(
            ArraySegment<byte> buffer, CancellationToken ct)
        {
            EnsureOpen(allowClosing: true);

            while (true)
            {
                (byte opcode, bool fin, byte[] payload) = await ReadFrameAsync(ct).ConfigureAwait(false);

                switch (opcode)
                {
                    case 0x01:
                    case 0x02:
                        _currentMessageOpcode = opcode;
                        goto case 0x00;

                    case 0x00: 
                        {
                            var msgType = _currentMessageOpcode == 0x01
                                ? WebSocketMessageType.Text
                                : WebSocketMessageType.Binary;

                            if (fin)
                                _currentMessageOpcode = 0; 

                            int copy = Math.Min(payload.Length, buffer.Count);
                            Buffer.BlockCopy(payload, 0, buffer.Array, buffer.Offset, copy);
                            return new WebSocketReceiveResult(copy, msgType, fin);
                        }

                    case 0x09: // ping; auto-pong; keep waiting
                        Debug.WriteLine("[OMEGA-WS] Received ping, sending pong.");
                        await SendPongAsync(payload, ct).ConfigureAwait(false);
                        continue;

                    case 0x0A: // pong; ignore; keep waiting
                        Debug.WriteLine("[OMEGA-WS] Received pong.");
                        continue;

                    case 0x08: // close
                        {
                            var closeStatus = WebSocketCloseStatus.NormalClosure;
                            string closeDesc = string.Empty;
                            if (payload.Length >= 2)
                            {
                                closeStatus = (WebSocketCloseStatus)((payload[0] << 8) | payload[1]);
                                if (payload.Length > 2)
                                    closeDesc = Encoding.UTF8.GetString(payload, 2, payload.Length - 2);
                            }
                            CloseStatus = closeStatus;
                            CloseStatusDescription = closeDesc;
                            lock (_stateLock) _state = WebSocketState.CloseReceived;
                            Debug.WriteLine($"[OMEGA-WS] Close received: {closeStatus} '{closeDesc}'");
                            return new WebSocketReceiveResult(0, WebSocketMessageType.Close, true,
                                closeStatus, closeDesc);
                        }

                    default:
                        throw new WebSocketException($"Unknown WebSocket opcode 0x{opcode:X2}.");
                }
            }
        }

        public async Task CloseAsync(
            WebSocketCloseStatus closeStatus,
            string statusDescription,
            CancellationToken ct)
        {
            lock (_stateLock)
            {
                if (_state == WebSocketState.Closed || _state == WebSocketState.None)
                    return;
                _state = WebSocketState.CloseSent;
            }

            byte[] reason = statusDescription != null
                ? Encoding.UTF8.GetBytes(statusDescription)
                : Array.Empty<byte>();

            var payload = new byte[2 + reason.Length];
            payload[0] = (byte)((int)closeStatus >> 8);
            payload[1] = (byte)((int)closeStatus & 0xFF);
            Buffer.BlockCopy(reason, 0, payload, 2, reason.Length);

            byte[] frame = BuildFrame(0x08, true, payload, 0, payload.Length);

            await _writeLock.WaitAsync(ct).ConfigureAwait(false);
            try
            {
                await _stream.WriteAsync(frame, 0, frame.Length, ct).ConfigureAwait(false);
                await _stream.FlushAsync(ct).ConfigureAwait(false);
            }
            finally
            {
                _writeLock.Release();
            }

            lock (_stateLock) _state = WebSocketState.Closed;
            Debug.WriteLine($"[OMEGA-WS] Close sent: {closeStatus} '{statusDescription}'");
        }

        private async Task PerformUpgradeAsync(string host, string path, CancellationToken ct)
        {
            var keyBytes = new byte[16];
            using (var rng = RandomNumberGenerator.Create())
                rng.GetBytes(keyBytes);
            string wsKey = Convert.ToBase64String(keyBytes);

            var sb = new StringBuilder();
            sb.Append($"GET {path} HTTP/1.1\r\n");
            sb.Append($"Host: {host}\r\n");
            sb.Append("Upgrade: websocket\r\n");
            sb.Append("Connection: Upgrade\r\n");
            sb.Append($"Sec-WebSocket-Key: {wsKey}\r\n");
            sb.Append("Sec-WebSocket-Version: 13\r\n");

            if (!string.IsNullOrEmpty(RequestedSubProtocol))
                sb.Append($"Sec-WebSocket-Protocol: {RequestedSubProtocol}\r\n");

            foreach (var kvp in RequestHeaders)
                sb.Append($"{kvp.Key}: {kvp.Value}\r\n");

            sb.Append("\r\n");

            byte[] upgradeBytes = Encoding.ASCII.GetBytes(sb.ToString());
            await _stream.WriteAsync(upgradeBytes, 0, upgradeBytes.Length, ct).ConfigureAwait(false);
            await _stream.FlushAsync(ct).ConfigureAwait(false);

            Debug.WriteLine($"[OMEGA-WS] Upgrade request sent to {host}{path}");


            // IMPORTANT!!!: LineReader buffers up to 4096 bytes at a time. Any WebSocket
            // frame data that arrives together with the HTTP 101 response would be lost
            // if we discarded the reader. We recover leftover bytes into a PrependStream
            // so the first frame is not silently dropped.
            var reader = new LineReader(_stream);

            string statusLine = await reader.ReadLineAsync(ct).ConfigureAwait(false);
            Debug.WriteLine($"[OMEGA-WS] Upgrade response: {statusLine}");

            if (statusLine == null || !statusLine.Contains("101"))
                throw new WebSocketException(
                    $"WebSocket upgrade failed. Server responded: {statusLine}");

            string expectedAccept = ComputeAcceptKey(wsKey);
            bool acceptValid = false;

            string line;
            while (!string.IsNullOrEmpty(line = await reader.ReadLineAsync(ct).ConfigureAwait(false)))
            {
                int colon = line.IndexOf(':');
                if (colon <= 0) continue;

                string name = line.Substring(0, colon).Trim();
                string value = line.Substring(colon + 1).Trim();

                if (name.Equals("Sec-WebSocket-Accept", StringComparison.OrdinalIgnoreCase))
                    acceptValid = value == expectedAccept;

                if (name.Equals("Sec-WebSocket-Protocol", StringComparison.OrdinalIgnoreCase))
                    SubProtocol = value;
            }

            if (!acceptValid)
                throw new WebSocketException(
                    "Sec-WebSocket-Accept header missing or invalid. Server is not a valid WebSocket endpoint.");

            // recover any bytes the LineReader pulled in beyond the HTTP headers.
            // These belong to the first WebSocket frame and must not be discarded.
            var leftover = reader.Unconsumed;
            if (leftover.Count > 0)
            {
                Debug.WriteLine($"[OMEGA-WS] Recovering {leftover.Count} byte(s) buffered during upgrade.");
                _stream = new PrependStream(leftover.Array, leftover.Offset, leftover.Count, _stream);
            }

            Debug.WriteLine("[OMEGA-WS] Upgrade successful.");
        }

        private static string ComputeAcceptKey(string key)
        {
            const string Magic = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
            using (var sha1 = SHA1.Create())
            {
                byte[] combined = Encoding.ASCII.GetBytes(key + Magic);
                return Convert.ToBase64String(sha1.ComputeHash(combined));
            }
        }

        private static byte[] BuildFrame(
            byte opcode, bool fin, byte[] data, int offset, int count)
        {
            var maskKey = new byte[4];
            using (var rng = RandomNumberGenerator.Create())
                rng.GetBytes(maskKey);

            int headerSize = count < 126 ? 2 : (count < 65536 ? 4 : 10);
            var frame = new byte[headerSize + 4 + count];

            frame[0] = (byte)((fin ? 0x80 : 0x00) | (opcode & 0x0F));

            if (count < 126)
            {
                frame[1] = (byte)(0x80 | count);
            }
            else if (count < 65536)
            {
                frame[1] = 0x80 | 126;
                frame[2] = (byte)(count >> 8);
                frame[3] = (byte)(count & 0xFF);
            }
            else
            {
                frame[1] = 0x80 | 127;
                for (int i = 0; i < 8; i++)
                    frame[2 + i] = (byte)((long)count >> ((7 - i) * 8));
            }

            Buffer.BlockCopy(maskKey, 0, frame, headerSize, 4);

            for (int i = 0; i < count; i++)
                frame[headerSize + 4 + i] = (byte)(data[offset + i] ^ maskKey[i % 4]);

            return frame;
        }

        private async Task<(byte opcode, bool fin, byte[] payload)> ReadFrameAsync(
            CancellationToken ct)
        {
            await _readLock.WaitAsync(ct).ConfigureAwait(false);
            try
            {
                byte[] header = await ReadExactLockedAsync(2, ct).ConfigureAwait(false);

                bool fin = (header[0] & 0x80) != 0;
                byte opcode = (byte)(header[0] & 0x0F);
                bool masked = (header[1] & 0x80) != 0;
                long length = header[1] & 0x7F;

                if (length == 126)
                {
                    byte[] ext = await ReadExactLockedAsync(2, ct).ConfigureAwait(false);
                    length = (ext[0] << 8) | ext[1];
                }
                else if (length == 127)
                {
                    byte[] ext = await ReadExactLockedAsync(8, ct).ConfigureAwait(false);
                    length = 0;
                    for (int i = 0; i < 8; i++)
                        length = (length << 8) | ext[i];
                }

                byte[] maskKey = masked
                    ? await ReadExactLockedAsync(4, ct).ConfigureAwait(false)
                    : null;

                byte[] payload = await ReadExactLockedAsync((int)length, ct).ConfigureAwait(false);

                if (masked && maskKey != null)
                    for (int i = 0; i < payload.Length; i++)
                        payload[i] ^= maskKey[i % 4];

                return (opcode, fin, payload);
            }
            finally
            {
                _readLock.Release();
            }
        }

        private async Task SendPongAsync(byte[] pingPayload, CancellationToken ct)
        {
            byte[] frame = BuildFrame(0x0A, true, pingPayload, 0, pingPayload.Length);
            await _writeLock.WaitAsync(ct).ConfigureAwait(false);
            try
            {
                await _stream.WriteAsync(frame, 0, frame.Length, ct).ConfigureAwait(false);
                await _stream.FlushAsync(ct).ConfigureAwait(false);
            }
            finally
            {
                _writeLock.Release();
            }
        }

        private async Task<byte[]> ReadExactLockedAsync(int count, CancellationToken ct)
        {
            var buf = new byte[count];
            int read = 0;
            while (read < count)
            {
                int n = await _stream.ReadAsync(buf, read, count - read, ct).ConfigureAwait(false);
                if (n == 0)
                    throw new WebSocketException(
                        "Connection closed unexpectedly while reading WebSocket frame.");
                read += n;
            }
            return buf;
        }


        private void EnsureOpen(bool allowClosing = false)
        {
            var s = State;
            if (s == WebSocketState.Open) return;
            if (allowClosing && s == WebSocketState.CloseReceived) return;
            throw new WebSocketException(
                $"WebSocket is not open (current state: {s}).");
        }

        public void Abort()
        {
            lock (_stateLock)
            {
                if (_state == WebSocketState.Closed || _state == WebSocketState.None)
                    return;
                _state = WebSocketState.Aborted;
            }

            try { _stream?.Dispose(); }
            catch { /* best effort */ }

            Debug.WriteLine("[OMEGA-WS] Connection aborted.");
        }

        public void Dispose()
        {
            if (!_disposed)
            {
                _disposed = true;
                lock (_stateLock) _state = WebSocketState.Closed;
                _stream?.Dispose();
                _writeLock.Dispose();
                _readLock.Dispose();
            }
        }

        private sealed class LineReader
        {
            private readonly Stream _stream;
            private readonly byte[] _buf = new byte[4096];
            private int _pos, _len;

            public LineReader(Stream stream) => _stream = stream;

            public ArraySegment<byte> Unconsumed =>
                new ArraySegment<byte>(_buf, _pos, _len - _pos);

            private async Task<bool> FillAsync(CancellationToken ct)
            {
                if (_pos < _len) return true;
                _pos = 0;
                _len = await _stream.ReadAsync(_buf, 0, _buf.Length, ct).ConfigureAwait(false);
                return _len > 0;
            }

            private async Task<byte?> ReadByteAsync(CancellationToken ct)
            {
                if (!await FillAsync(ct).ConfigureAwait(false)) return null;
                return _buf[_pos++];
            }

            public async Task<string> ReadLineAsync(CancellationToken ct)
            {
                var line = new List<byte>(128);
                while (true)
                {
                    byte? b = await ReadByteAsync(ct).ConfigureAwait(false);
                    if (b == null) break;
                    if (b == '\r')
                    {
                        byte? next = await ReadByteAsync(ct).ConfigureAwait(false);
                        if (next == '\n') break;
                        if (next != null) line.Add(next.Value);
                        break;
                    }
                    if (b == '\n') break;
                    line.Add(b.Value);
                }
                return Encoding.ASCII.GetString(line.ToArray());
            }
        }

        private sealed class PrependStream : Stream
        {
            private readonly byte[] _prefix;
            private int _prefixOffset;
            private readonly int _prefixEnd;
            private readonly Stream _inner;

            public PrependStream(byte[] prefix, int offset, int count, Stream inner)
            {
                _prefix = prefix;
                _prefixOffset = offset;
                _prefixEnd = offset + count;
                _inner = inner;
            }

            public override bool CanRead => true;
            public override bool CanWrite => true;
            public override bool CanSeek => false;
            public override long Length => throw new NotSupportedException();
            public override long Position
            {
                get => throw new NotSupportedException();
                set => throw new NotSupportedException();
            }

            public override int Read(byte[] buffer, int offset, int count)
            {
                if (_prefixOffset < _prefixEnd)
                {
                    int take = Math.Min(count, _prefixEnd - _prefixOffset);
                    Buffer.BlockCopy(_prefix, _prefixOffset, buffer, offset, take);
                    _prefixOffset += take;
                    return take;
                }
                return _inner.Read(buffer, offset, count);
            }

            public override async Task<int> ReadAsync(
                byte[] buffer, int offset, int count, CancellationToken ct)
            {
                if (_prefixOffset < _prefixEnd)
                {
                    int take = Math.Min(count, _prefixEnd - _prefixOffset);
                    Buffer.BlockCopy(_prefix, _prefixOffset, buffer, offset, take);
                    _prefixOffset += take;
                    return take;
                }
                return await _inner.ReadAsync(buffer, offset, count, ct).ConfigureAwait(false);
            }

            public override void Write(byte[] buffer, int offset, int count)
                => _inner.Write(buffer, offset, count);

            public override Task WriteAsync(byte[] buffer, int offset, int count, CancellationToken ct)
                => _inner.WriteAsync(buffer, offset, count, ct);

            public override Task FlushAsync(CancellationToken ct) => _inner.FlushAsync(ct);
            public override void Flush() => _inner.Flush();

            public override void SetLength(long value) => throw new NotSupportedException();
            public override long Seek(long offset, SeekOrigin origin) => throw new NotSupportedException();

            protected override void Dispose(bool disposing)
            {
                if (disposing) _inner.Dispose();
                base.Dispose(disposing);
            }
        }
    }
}
