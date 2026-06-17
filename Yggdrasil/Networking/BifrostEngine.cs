/*==========================================================*/
// Yggdrasil is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/
// BifrostEngine is an HttpMessageHandler backed by
// BifrostTLS, bypassing Schannel entirely. It is a drop-in
// replacement for HttpClientHandler that uses Bouncy Castle
// for TLS instead of SslStream, making it safe on Vista/Win7
// with modern TLS cipher suites and TLS 1.3 support.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.IO.Compression;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Yggdrasil.Networking
{
    public sealed class BifrostEngine : HttpMessageHandler // i still am surprised HttpClient has an overload to accept a custom HttpMH, given that at this time there were literally none
    {
        private const int MaxRedirects = 10;
        private readonly Dictionary<string, Queue<Stream>> _pool
            = new Dictionary<string, Queue<Stream>>(StringComparer.OrdinalIgnoreCase);
        private readonly object _poolLock = new object();
        private readonly int _maxPoolSize;
        private bool _disposed;

        /// <summary>
        /// Stub kept for compatibility. Decompression always runs regardless. (What was even the point of this?)
        /// </summary>
        public DecompressionMethods AutomaticDecompression { get; set; } = DecompressionMethods.None;

        public BifrostEngine(int maxPoolSize = 10)
        {
            _maxPoolSize = maxPoolSize;
        }

        private static string SanitizeHeader(string value)
        {
            if (value == null) return string.Empty;
            if (value.IndexOf('\r') >= 0 || value.IndexOf('\n') >= 0)
                throw new ArgumentException($"Header contains illegal CR or LF characters.");
            return value;
        }

        protected override Task<HttpResponseMessage> SendAsync(
            HttpRequestMessage request, CancellationToken cancellationToken)
        {
            return SendInternalAsync(request, cancellationToken, 0);
        }

        private async Task<HttpResponseMessage> SendInternalAsync(
            HttpRequestMessage request, CancellationToken ct, int redirectDepth)
        {
            if (request == null) throw new ArgumentNullException(nameof(request));

            if (redirectDepth > MaxRedirects)
                throw new HttpRequestException($"Too many redirects (>{MaxRedirects})");

            var uri = request.RequestUri
                ?? throw new InvalidOperationException("Request URI must not be null.");

            bool isHttps = uri.Scheme.Equals("https", StringComparison.OrdinalIgnoreCase);
            int port = uri.Port > 0 ? uri.Port : (isHttps ? 443 : 80);
            string host = uri.Host;
            string poolKey = $"{host}:{port}";

            Stream stream = TryRentFromPool(poolKey)
                ?? await BifrostTLS.OpenAsync(host, port, isHttps, ct).ConfigureAwait(false);

            try
            {
                return await ExecuteAsync(stream, request, uri, host, poolKey, ct, redirectDepth)
                    .ConfigureAwait(false);
            }
            catch
            {
                stream.Dispose();
                throw;
            }
        }

        private async Task<HttpResponseMessage> ExecuteAsync(
            Stream stream, HttpRequestMessage request, Uri uri,
            string host, string poolKey, CancellationToken ct, int redirectDepth)
        {
            byte[] bodyBytes = request.Content != null
                ? await request.Content.ReadAsByteArrayAsync().ConfigureAwait(false)
                : null;

            var sb = new StringBuilder();
            sb.Append($"{request.Method.Method} {uri.PathAndQuery} HTTP/1.1\r\n"); // idgaf im not implementing http/2
            sb.Append($"Host: {host}\r\n");
            sb.Append("Connection: keep-alive\r\n");

            foreach (var kvp in request.Headers)
                foreach (var val in kvp.Value)
                    sb.Append($"{SanitizeHeader(kvp.Key)}: {SanitizeHeader(val)}\r\n");

            if (request.Content != null)
            {
                foreach (var kvp in request.Content.Headers)
                    foreach (var val in kvp.Value)
                        sb.Append($"{SanitizeHeader(kvp.Key)}: {SanitizeHeader(val)}\r\n");

                if (bodyBytes != null && bodyBytes.Length > 0
                    && !request.Content.Headers.Contains("Content-Length"))
                    sb.Append($"Content-Length: {bodyBytes.Length}\r\n");
            }

            sb.Append("\r\n");
            Debug.WriteLine($"[BIFROST-HTTP] --> {request.Method.Method} {uri}");

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
            while (!string.IsNullOrEmpty(
                headerLine = await reader.ReadLineAsync(ct).ConfigureAwait(false)))
            {
                int colon = headerLine.IndexOf(':');
                if (colon > 0)
                    responseHeaders.Add(new KeyValuePair<string, string>(
                        headerLine.Substring(0, colon).Trim(),
                        headerLine.Substring(colon + 1).Trim()));
            }

            int contentLength = -1;
            bool chunked = false;
            bool connectionClose = false;

            foreach (var h in responseHeaders)
            {
                if (h.Key.Equals("Content-Length", StringComparison.OrdinalIgnoreCase))
                    int.TryParse(h.Value, out contentLength);
                else if (h.Key.Equals("Transfer-Encoding", StringComparison.OrdinalIgnoreCase)
                    && h.Value.IndexOf("chunked", StringComparison.OrdinalIgnoreCase) >= 0)
                    chunked = true;
                else if (h.Key.Equals("Connection", StringComparison.OrdinalIgnoreCase)
                    && h.Value.Equals("close", StringComparison.OrdinalIgnoreCase))
                    connectionClose = true;
            }

            LogResponse(statusCode, uri, responseHeaders);

            if (statusCode >= 300 && statusCode < 400)
            {
                string location = null;
                foreach (var h in responseHeaders)
                {
                    if (h.Key.Equals("Location", StringComparison.OrdinalIgnoreCase))
                    {
                        location = h.Value;
                        break;
                    }
                }

                if (!string.IsNullOrEmpty(location))
                {
                    stream.Dispose();

                    var redirectUri = location.StartsWith("http", StringComparison.OrdinalIgnoreCase)
                        ? new Uri(location)
                        : new Uri(uri, location);

                    var redirectRequest = new HttpRequestMessage(
                        statusCode == 307 || statusCode == 308 ? request.Method : HttpMethod.Get,
                        redirectUri
                    );

                    foreach (var h in request.Headers)
                        redirectRequest.Headers.TryAddWithoutValidation(h.Key, h.Value);

                    if (statusCode == 307 || statusCode == 308)
                        redirectRequest.Content = request.Content;

                    return await SendInternalAsync(redirectRequest, ct, redirectDepth + 1).ConfigureAwait(false);
                }
            }

            bool hasNoBody = statusCode == 204
                          || statusCode == 304
                          || (statusCode >= 100 && statusCode < 200);

            Stream responseBody;

            if (hasNoBody || contentLength == 0)
            {
                Debug.WriteLine($"[BIFROST-HTTP] Status {statusCode} has no body.");
                if (connectionClose)
                    stream.Dispose();
                else
                    ReturnToPool(poolKey, stream);
                responseBody = Stream.Null;
            }
            else if (contentLength > 0)
            {
                Debug.WriteLine($"[BIFROST-HTTP] Streaming {contentLength} byte body via PooledStream.");
                responseBody = new PooledStream(reader, stream, poolKey, this, contentLength, connectionClose);
            }
            else
            {
                Debug.WriteLine("[BIFROST-HTTP] Buffering body (chunked or connection-close).");
                byte[] bytes = chunked
                    ? await reader.ReadChunkedAsync(ct).ConfigureAwait(false)
                    : await reader.ReadToEndAsync(ct).ConfigureAwait(false);
                bytes = await DecompressAsync(bytes, responseHeaders, ct).ConfigureAwait(false);

                if (connectionClose)
                    stream.Dispose();
                else
                    ReturnToPool(poolKey, stream);

                responseBody = new MemoryStream(bytes);
            }

            var content = new StreamContent(responseBody);
            var response = new HttpResponseMessage((HttpStatusCode)statusCode)
            {
                Content = content,
                RequestMessage = request
            };

            foreach (var h in responseHeaders)
            {
                if (h.Key.Equals("Content-Encoding", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("Content-Length", StringComparison.OrdinalIgnoreCase))
                    continue;

                if (!response.Headers.TryAddWithoutValidation(h.Key, h.Value))
                    response.Content.Headers.TryAddWithoutValidation(h.Key, h.Value);
            }

            if (contentLength > 0)
                content.Headers.ContentLength = contentLength;

            return response;
        }

        private static void LogResponse(
            int statusCode, Uri uri, List<KeyValuePair<string, string>> headers)
        {
            string description;
            switch (statusCode)
            {
                case 200: description = "OK"; break;
                case 201: description = "Created"; break;
                case 204: description = "No Content"; break;
                case 301: description = "Moved Permanently"; break;
                case 302: description = "Found (Redirect)"; break;
                case 304: description = "Not Modified"; break;
                case 400: description = "Bad Request"; break;
                case 401: description = "Unauthorized"; break;
                case 403: description = "Forbidden"; break;
                case 404: description = "Not Found"; break;
                case 405: description = "Method Not Allowed"; break;
                case 429: description = "Rate Limited"; break;
                case 500: description = "Internal Server Error"; break;
                case 502: description = "Bad Gateway"; break;
                case 503: description = "Service Unavailable"; break;
                default: description = "Unknown"; break;
            }

            Debug.WriteLine($"[BIFROST-HTTP] <-- {statusCode} {description} ({uri})");

            foreach (var h in headers)
            {
                if (h.Key.Equals("Content-Type", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("Content-Encoding", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("Content-Length", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("Transfer-Encoding", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("X-RateLimit-Remaining", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("X-RateLimit-Reset", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("Retry-After", StringComparison.OrdinalIgnoreCase)
                 || h.Key.Equals("Connection", StringComparison.OrdinalIgnoreCase))
                    Debug.WriteLine($"[BIFROST-HTTP]   {h.Key}: {h.Value}");
            }
        }

        private static async Task<byte[]> DecompressAsync(
            byte[] data, List<KeyValuePair<string, string>> headers, CancellationToken ct)
        {
            string encoding = null;
            foreach (var h in headers)
            {
                if (h.Key.Equals("Content-Encoding", StringComparison.OrdinalIgnoreCase))
                {
                    encoding = h.Value.Trim().ToLowerInvariant();
                    break;
                }
            }

            if (string.IsNullOrEmpty(encoding) || data.Length == 0)
                return data;

            Debug.WriteLine($"[BIFROST-HTTP] Decompressing: {encoding}");

            if (encoding == "gzip")
            {
                using (var compressed = new MemoryStream(data))
                using (var gz = new GZipStream(compressed, CompressionMode.Decompress))
                using (var ms = new MemoryStream())
                {
                    await gz.CopyToAsync(ms, 81920, ct).ConfigureAwait(false);
                    return ms.ToArray();
                }
            }

            if (encoding == "deflate")
            {
                using (var compressed = new MemoryStream(data))
                {
                    bool isZlib = data.Length > 2
                        && data[0] == 0x78
                        && (data[1] == 0x9C || data[1] == 0x01
                         || data[1] == 0xDA || data[1] == 0x5E);

                    if (isZlib) compressed.Seek(2, SeekOrigin.Begin);

                    using (var df = new DeflateStream(compressed, CompressionMode.Decompress))
                    using (var ms = new MemoryStream())
                    {
                        await df.CopyToAsync(ms, 81920, ct).ConfigureAwait(false);
                        return ms.ToArray();
                    }
                }
            }

            Debug.WriteLine($"[BIFROST-HTTP] Warning: unsupported Content-Encoding '{encoding}', returning raw.");
            return data;
        }

        private Stream TryRentFromPool(string key)
        {
            lock (_poolLock)
            {
                if (_pool.TryGetValue(key, out var queue) && queue.Count > 0)
                {
                    Debug.WriteLine($"[BIFROST-HTTP] Reusing pooled connection for {key}.");
                    return queue.Dequeue();
                }
            }
            return null;
        }

        internal void ReturnToPool(string key, Stream stream)
        {
            lock (_poolLock)
            {
                if (!_pool.TryGetValue(key, out var queue))
                    _pool[key] = queue = new Queue<Stream>();

                if (queue.Count < _maxPoolSize)
                {
                    queue.Enqueue(stream);
                    Debug.WriteLine($"[BIFROST-HTTP] Connection returned to pool for {key}.");
                }
                else
                {
                    stream.Dispose();
                }
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

        private sealed class PooledStream : Stream
        {
            private readonly HttpReader _reader;
            private readonly Stream _rawStream;
            private readonly string _poolKey;
            private readonly BifrostEngine _engine;
            private readonly long _length;
            private readonly bool _connectionClose;
            private long _remaining;
            private bool _disposed;
            private bool _returnedToPool;

            public PooledStream(HttpReader reader, Stream rawStream, string poolKey,
                BifrostEngine engine, long length, bool connectionClose)
            {
                _reader = reader;
                _rawStream = rawStream;
                _poolKey = poolKey;
                _engine = engine;
                _length = length;
                _connectionClose = connectionClose;
                _remaining = length;
            }

            public override bool CanRead => true;
            public override bool CanSeek => false;
            public override bool CanWrite => false;
            public override long Length => _length;
            public override long Position
            {
                get => _length - _remaining;
                set => throw new NotSupportedException();
            }

            public override async Task<int> ReadAsync(byte[] buffer, int offset, int count, CancellationToken ct)
            {
                if (_remaining <= 0) return 0;

                int toRead = (int)Math.Min(count, _remaining);
                byte[] chunk = await _reader.ReadExactAsync(toRead, ct).ConfigureAwait(false);
                Buffer.BlockCopy(chunk, 0, buffer, offset, chunk.Length);
                _remaining -= chunk.Length;

                if (_remaining <= 0 && !_returnedToPool)
                {
                    _returnedToPool = true;
                    if (_connectionClose)
                        _rawStream.Dispose();
                    else
                        _engine.ReturnToPool(_poolKey, _rawStream);
                }

                return chunk.Length;
            }

            public override int Read(byte[] buffer, int offset, int count)
                => ReadAsync(buffer, offset, count, CancellationToken.None).GetAwaiter().GetResult();

            protected override void Dispose(bool disposing)
            {
                if (!_disposed && disposing)
                {
                    _disposed = true;
                    if (!_returnedToPool)
                    {
                        _returnedToPool = true;
                        Debug.WriteLine($"[BIFROST-HTTP] PooledStream disposed with {_remaining} bytes remaining, dropping connection.");
                        _rawStream.Dispose();
                    }
                }
                base.Dispose(disposing);
            }

            public override void Flush() { }
            public override long Seek(long offset, SeekOrigin origin) => throw new NotSupportedException();
            public override void SetLength(long value) => throw new NotSupportedException();
            public override void Write(byte[] buffer, int offset, int count) => throw new NotSupportedException();
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
                return Encoding.ASCII.GetString(line.ToArray());
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
                        if (!int.TryParse(sizeLine.Trim(),
                                NumberStyles.HexNumber, null, out int chunkSize))
                            break;
                        if (chunkSize == 0) break;
                        byte[] chunk = await ReadExactAsync(chunkSize, ct).ConfigureAwait(false);
                        ms.Write(chunk, 0, chunk.Length);
                        await ReadExactAsync(2, ct).ConfigureAwait(false);
                    }
                    return ms.ToArray();
                }
            }
        }
    }
}