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
// ManagedHttpHandler is a pure managed HttpMessageHandler that
// bypasses schannel entirely by using Socket + SslStream,
// the same TLS path used by System.Net.WebSockets.Managed.
// Use this INSTEAD of the standard HttpMessageHandler for all
// plugins to prevent TLS issues on Vista and Windows 7.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Net;
using System.Net.Http;
using System.Diagnostics;
using System.Net.Security;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace MiddleMan.Networking
{
    public sealed class ManagedHttpHandler : HttpMessageHandler
    {
        private readonly Dictionary<string, Queue<Stream>> _pool
            = new Dictionary<string, Queue<Stream>>(StringComparer.OrdinalIgnoreCase);
        private readonly object _poolLock = new object();
        private readonly int _maxPoolSize;
        private bool _disposed;

        /// <summary>
        /// Just a stub to keep existing code working. Does nothing. Decompression happens no matter what this flag is set to.
        /// </summary>
        public DecompressionMethods AutomaticDecompression { get; set; } = DecompressionMethods.None;

        public ManagedHttpHandler(int maxPoolSize = 10)
        {
            _maxPoolSize = maxPoolSize;
        }

        protected override async Task<HttpResponseMessage> SendAsync(
            HttpRequestMessage request, CancellationToken cancellationToken)
        {
            if (request == null) throw new ArgumentNullException(nameof(request));

            var uri = request.RequestUri
                ?? throw new InvalidOperationException("Request URI must not be null.");

            bool isHttps = uri.Scheme.Equals("https", StringComparison.OrdinalIgnoreCase);
            int port = uri.Port > 0 ? uri.Port : (isHttps ? 443 : 80);
            string host = uri.Host;
            string poolKey = $"{host}:{port}";

            Stream stream = TryRentFromPool(poolKey)
                ?? await OpenConnectionAsync(host, port, isHttps, cancellationToken).ConfigureAwait(false);

            try
            {
                return await ExecuteAsync(stream, request, uri, host, poolKey, cancellationToken)
                    .ConfigureAwait(false);
            }
            catch
            {
                stream.Dispose();
                throw;
            }
        }

        private async Task<Stream> OpenConnectionAsync(
            string host, int port, bool isHttps, CancellationToken ct)
        {
            var socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            socket.NoDelay = true;

            var connectTcs = new TaskCompletionSource<bool>();
            using (ct.Register(() => connectTcs.TrySetCanceled()))
            {
                var ar = socket.BeginConnect(host, port, null, null);
                var connectTask = Task.Factory.FromAsync(ar, socket.EndConnect);

                if (await Task.WhenAny(connectTask, connectTcs.Task).ConfigureAwait(false)
                    == connectTcs.Task)
                {
                    socket.Dispose();
                    ct.ThrowIfCancellationRequested();
                }

                await connectTask.ConfigureAwait(false);
            }

            Stream stream = new NetworkStream(socket, ownsSocket: true);

            if (isHttps)
            {
                var ssl = new SslStream(stream, leaveInnerStreamOpen: false);
                await ssl.AuthenticateAsClientAsync(host).ConfigureAwait(false);
                stream = ssl;
            }

            return stream;
        }

        private async Task<HttpResponseMessage> ExecuteAsync(
            Stream stream, HttpRequestMessage request, Uri uri,
            string host, string poolKey, CancellationToken ct)
        {
            byte[] bodyBytes = request.Content != null
                ? await request.Content.ReadAsByteArrayAsync().ConfigureAwait(false)
                : null;

            var sb = new StringBuilder();
            sb.Append($"{request.Method.Method} {uri.PathAndQuery} HTTP/1.1\r\n");
            sb.Append($"Host: {host}\r\n");
            sb.Append("Connection: keep-alive\r\n");

            foreach (var kvp in request.Headers)
                foreach (var val in kvp.Value)
                    sb.Append($"{kvp.Key}: {val}\r\n");

            if (request.Content != null)
            {
                foreach (var kvp in request.Content.Headers)
                    foreach (var val in kvp.Value)
                        sb.Append($"{kvp.Key}: {val}\r\n");

                if (bodyBytes != null && bodyBytes.Length > 0
                    && !request.Content.Headers.Contains("Content-Length"))
                    sb.Append($"Content-Length: {bodyBytes.Length}\r\n");
            }

            sb.Append("\r\n");
            Debug.WriteLine($"[MIDDLEMAN-HTTP] Sending request to {uri} with headers: {sb}");
            ct.ThrowIfCancellationRequested();
            byte[] requestBytes = Encoding.ASCII.GetBytes(sb.ToString());
            await stream.WriteAsync(requestBytes, 0, requestBytes.Length, ct).ConfigureAwait(false);
            if (bodyBytes != null && bodyBytes.Length > 0)
                await stream.WriteAsync(bodyBytes, 0, bodyBytes.Length, ct).ConfigureAwait(false);
            await stream.FlushAsync(ct).ConfigureAwait(false);
            var reader = new HttpReader(stream);

            string statusLine = await reader.ReadLineAsync(ct).ConfigureAwait(false);
            if (string.IsNullOrEmpty(statusLine))
                throw new HttpRequestException("Server returned an empty response.");

            var parts = statusLine.Split(new[] { ' ' }, 3);
            if (parts.Length < 2 || !int.TryParse(parts[1], out int statusCode))
                throw new HttpRequestException($"Invalid HTTP status line: {statusLine}");

            var responseHeaders = new List<KeyValuePair<string, string>>();
            string headerLine;
            while (!string.IsNullOrEmpty(headerLine = await reader.ReadLineAsync(ct).ConfigureAwait(false)))
            {
                int colon = headerLine.IndexOf(':');
                if (colon > 0)
                    responseHeaders.Add(new KeyValuePair<string, string>(
                        headerLine.Substring(0, colon).Trim(),
                        headerLine.Substring(colon + 1).Trim()));
            }

            int contentLength = -1;
            bool chunked = false;
            foreach (var h in responseHeaders)
            {
                if (h.Key.Equals("Content-Length", StringComparison.OrdinalIgnoreCase))
                    int.TryParse(h.Value, out contentLength);
                else if (h.Key.Equals("Transfer-Encoding", StringComparison.OrdinalIgnoreCase)
                    && h.Value.IndexOf("chunked", StringComparison.OrdinalIgnoreCase) >= 0)
                    chunked = true;
            }

            byte[] responseBody;
            if (chunked)
                responseBody = await reader.ReadChunkedAsync(ct).ConfigureAwait(false);
            else if (contentLength == 0)
                responseBody = Array.Empty<byte>();
            else if (contentLength > 0)
                responseBody = await reader.ReadExactAsync(contentLength, ct).ConfigureAwait(false);
            else
                responseBody = await reader.ReadToEndAsync(ct).ConfigureAwait(false);

            responseBody = await DecompressAsync(responseBody, responseHeaders, ct).ConfigureAwait(false);

            var content = new ByteArrayContent(responseBody);
            var response = new HttpResponseMessage((HttpStatusCode)statusCode)
            {
                Content = content,
                RequestMessage = request
            };

            foreach (var h in responseHeaders)
            {
                if ((h.Key.Equals("Content-Encoding", StringComparison.OrdinalIgnoreCase)
                        || h.Key.Equals("Content-Length", StringComparison.OrdinalIgnoreCase)))
                    continue;

                if (!response.Headers.TryAddWithoutValidation(h.Key, h.Value))
                    response.Content.Headers.TryAddWithoutValidation(h.Key, h.Value);
            }

            ReturnToPool(poolKey, stream);
            return response;
        }

        private async Task<byte[]> DecompressAsync(
            byte[] data,
            List<KeyValuePair<string, string>> headers,
            CancellationToken ct)
        {
            string contentEncoding = null;
            foreach (var h in headers)
            {
                if (h.Key.Equals("Content-Encoding", StringComparison.OrdinalIgnoreCase))
                {
                    contentEncoding = h.Value.Trim().ToLowerInvariant();
                    break;
                }
            }

            if (!String.IsNullOrEmpty(contentEncoding) || data.Length == 0)
            {
                Debug.WriteLine("[MIDDLEMAN-HTTP] Server responded in plaintext, or response is empty.");
                return data;
            }

            Debug.WriteLine("[MIDDLEMAN-HTTP] Server encoded response in " + contentEncoding);

            if (contentEncoding == "gzip")
            {
                using (var compressed = new MemoryStream(data))
                using (var gz = new GZipStream(compressed, CompressionMode.Decompress))
                using (var decompressed = new MemoryStream())
                {
                    await gz.CopyToAsync(decompressed, 81920, ct).ConfigureAwait(false);
                    return decompressed.ToArray();
                }
            }

            else if (contentEncoding == "deflate")
            {
                using (var compressed = new MemoryStream(data))
                {
                    bool isZlibWrapped = data.Length > 2
                        && data[0] == 0x78
                        && (data[1] == 0x9C || data[1] == 0x01
                            || data[1] == 0xDA || data[1] == 0x5E);

                    if (isZlibWrapped)
                        compressed.Seek(2, SeekOrigin.Begin);

                    using (var df = new DeflateStream(compressed, CompressionMode.Decompress))
                    using (var decompressed = new MemoryStream())
                    {
                        await df.CopyToAsync(decompressed, 81920, ct).ConfigureAwait(false);
                        return decompressed.ToArray();
                    }
                }
            }

            return data;
        }

        private Stream TryRentFromPool(string key)
        {
            lock (_poolLock)
            {
                if (_pool.TryGetValue(key, out var queue) && queue.Count > 0)
                    return queue.Dequeue();
            }
            return null;
        }

        private void ReturnToPool(string key, Stream stream)
        {
            lock (_poolLock)
            {
                if (!_pool.TryGetValue(key, out var queue))
                    _pool[key] = queue = new Queue<Stream>();

                if (queue.Count < _maxPoolSize)
                    queue.Enqueue(stream);
                else
                    stream.Dispose();
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (!_disposed && disposing)
            {
                _disposed = true;
                lock (_poolLock)
                {
                    foreach (var queue in _pool.Values)
                        while (queue.Count > 0)
                            queue.Dequeue().Dispose();
                    _pool.Clear();
                }
            }
            base.Dispose(disposing);
        }

        private sealed class HttpReader
        {
            private readonly Stream _stream;
            private readonly byte[] _buf = new byte[8192];
            private int _pos;  
            private int _len;   

            public HttpReader(Stream stream) => _stream = stream;

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
                return Encoding.UTF8.GetString(line.ToArray());
            }
            public async Task<byte[]> ReadExactAsync(int count, CancellationToken ct)
            {
                var result = new byte[count];
                int written = 0;

                int fromBuf = Math.Min(_len - _pos, count);
                if (fromBuf > 0)
                {
                    Buffer.BlockCopy(_buf, _pos, result, 0, fromBuf);
                    _pos += fromBuf;
                    written += fromBuf;
                }

                while (written < count)
                {
                    int n = await _stream.ReadAsync(result, written, count - written, ct)
                        .ConfigureAwait(false);
                    if (n == 0) break;
                    written += n;
                }

                return result;
            }
            public async Task<byte[]> ReadToEndAsync(CancellationToken ct)
            {
                using (var ms = new MemoryStream())
                {
                    if (_pos < _len)
                    {
                        ms.Write(_buf, _pos, _len - _pos);
                        _pos = _len;
                    }

                    var tmp = new byte[4096];
                    int n;
                    while ((n = await _stream.ReadAsync(tmp, 0, tmp.Length, ct).ConfigureAwait(false)) > 0)
                        ms.Write(tmp, 0, n);

                    return ms.ToArray();
                }
            }

            public async Task<byte[]> ReadChunkedAsync(CancellationToken ct)
            {
                using (var ms = new MemoryStream())
                {
                    while (true)
                    {
                        string sizeLine = await ReadLineAsync(ct).ConfigureAwait(false);
                        if (sizeLine == null) break;

                        int semi = sizeLine.IndexOf(';');
                        if (semi >= 0) sizeLine = sizeLine.Substring(0, semi);

                        int chunkSize = Convert.ToInt32(sizeLine.Trim(), 16);
                        if (chunkSize == 0) break;

                        byte[] chunk = await ReadExactAsync(chunkSize, ct).ConfigureAwait(false);
                        ms.Write(chunk, 0, chunk.Length);

                        await ReadLineAsync(ct).ConfigureAwait(false);
                    }
                    return ms.ToArray();
                }
            }
        }
    }
}