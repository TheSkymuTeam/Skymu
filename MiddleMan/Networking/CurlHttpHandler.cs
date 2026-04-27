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
// CurlClientHandler is a libcurl-backed HttpMessageHandler,
// and drop-in replacement for HttpClientHandler that bypasses
// schannel entirely. Use with the standard HttpClient.
// Please use ManagedHttpHandler INSTEAD of this unless you
// are testing something or you need to ditch the .NET SSL
// stack for some reason.
/*==========================================================*/

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace MiddleMan.Networking
{
    internal static class Curl
    {
        private const string Lib = "libcurl";

        public delegate UIntPtr WriteFunction(IntPtr data, UIntPtr size, UIntPtr nmemb, IntPtr userdata);

        [DllImport(Lib, EntryPoint = "curl_global_init")]
        public static extern int GlobalInit(long flags);

        [DllImport(Lib, EntryPoint = "curl_global_cleanup")]
        public static extern void GlobalCleanup();

        [DllImport(Lib, EntryPoint = "curl_easy_init")]
        public static extern IntPtr EasyInit();

        [DllImport(Lib, EntryPoint = "curl_easy_cleanup")]
        public static extern void EasyCleanup(IntPtr handle);

        [DllImport(Lib, EntryPoint = "curl_easy_reset")]
        public static extern void EasyReset(IntPtr handle);

        [DllImport(Lib, EntryPoint = "curl_easy_perform")]
        public static extern CURLcode EasyPerform(IntPtr handle);

        [DllImport(Lib, EntryPoint = "curl_easy_strerror")]
        private static extern IntPtr EasyStrErrorRaw(CURLcode code);
        public static string EasyStrError(CURLcode code)
            => Marshal.PtrToStringAnsi(EasyStrErrorRaw(code));

        [DllImport(Lib, EntryPoint = "curl_easy_setopt")]
        public static extern CURLcode EasySetOpt(IntPtr handle, CURLoption option, int value);

        [DllImport(Lib, EntryPoint = "curl_easy_setopt")]
        public static extern CURLcode EasySetOpt(IntPtr handle, CURLoption option, long value);

        [DllImport(Lib, EntryPoint = "curl_easy_setopt")]
        public static extern CURLcode EasySetOpt(IntPtr handle, CURLoption option, string value);

        [DllImport(Lib, EntryPoint = "curl_easy_setopt")]
        public static extern CURLcode EasySetOpt(IntPtr handle, CURLoption option, IntPtr value);

        [DllImport(Lib, EntryPoint = "curl_easy_setopt")]
        public static extern CURLcode EasySetOpt(IntPtr handle, CURLoption option, WriteFunction value);

        [DllImport(Lib, EntryPoint = "curl_easy_getinfo")]
        public static extern CURLcode EasyGetInfo(IntPtr handle, CURLINFO info, out long value);

        [DllImport(Lib, EntryPoint = "curl_slist_append")]
        public static extern IntPtr SlistAppend(IntPtr slist, string value);

        [DllImport(Lib, EntryPoint = "curl_slist_free_all")]
        public static extern void SlistFreeAll(IntPtr slist);

        public enum CURLcode
        {
            OK = 0,
            UNSUPPORTED_PROTOCOL = 1,
            FAILED_INIT = 2,
            URL_MALFORMAT = 3,
            COULDNT_RESOLVE_HOST = 6,
            COULDNT_CONNECT = 7,
            OPERATION_TIMEDOUT = 28,
            SSL_CONNECT_ERROR = 35,
            PEER_FAILED_VERIFICATION = 60,
        }

        public enum CURLoption
        {
            WRITEFUNCTION = 20011,
            URL = 10002,
            HTTPHEADER = 10023,
            CAINFO = 10065,
            ACCEPT_ENCODING = 10102,
            COPYPOSTFIELDS = 10165,
            CUSTOMREQUEST = 10036,
            POSTFIELDSIZE = 60,
            HTTPGET = 80,
            POST = 47,
            FORBID_REUSE = 75,
            FRESH_CONNECT = 74,
        }

        public enum CURLINFO
        {
            RESPONSE_CODE = 0x200002,
        }

        public const long CURL_GLOBAL_DEFAULT = 3;
    }

    public sealed class CurlClientHandler : HttpMessageHandler
    {
        private static int _curlInitDone;

        private static void EnsureGlobalInit()
        {
            if (Interlocked.CompareExchange(ref _curlInitDone, 1, 0) == 0)
                Curl.GlobalInit(Curl.CURL_GLOBAL_DEFAULT);
        }

        private readonly ConcurrentDictionary<string, HostConnectionPool> _pools
            = new ConcurrentDictionary<string, HostConnectionPool>(StringComparer.OrdinalIgnoreCase);

        private readonly int _maxConnectionsPerHost;
        private readonly Timer _pruneTimer;
        private bool _disposed;

        public DecompressionMethods AutomaticDecompression { get; set; }
            = DecompressionMethods.GZip | DecompressionMethods.Deflate;

        public string CACertBundlePath { get; set; } = "cacert.pem";

        public CurlClientHandler(int maxConnectionsPerHost = 10)
        {
            EnsureGlobalInit();
            _maxConnectionsPerHost = maxConnectionsPerHost;
            _pruneTimer = new Timer(_ => PruneAll(), null,
                TimeSpan.FromSeconds(30), TimeSpan.FromSeconds(30));
        }

        protected override async Task<HttpResponseMessage> SendAsync(
            HttpRequestMessage request, CancellationToken cancellationToken)
        {
            if (request == null) throw new ArgumentNullException(nameof(request));
            cancellationToken.ThrowIfCancellationRequested();

            var uri = request.RequestUri
                ?? throw new InvalidOperationException("Request URI must not be null.");

            var pool = GetPool(uri);
            var conn = await pool.RentAsync(cancellationToken).ConfigureAwait(false);

            try
            {
                return await Task.Run(
                    () => Execute(conn, request, uri, pool, cancellationToken),
                    cancellationToken).ConfigureAwait(false);
            }
            catch
            {
                pool.Discard(conn);
                throw;
            }
        }

        private HttpResponseMessage Execute(
            PooledConnection conn, HttpRequestMessage request,
            Uri uri, HostConnectionPool pool, CancellationToken ct)
        {
            var handle = conn.Handle;
            var success = false;

            Curl.EasyReset(handle);

            try
            {
                var responseStream = new MemoryStream();

                Curl.WriteFunction writeHandler = (data, size, nmemb, _) =>
                {
                    if (ct.IsCancellationRequested) return UIntPtr.Zero;
                    var len = (int)size * (int)nmemb;
                    var buf = new byte[len];
                    Marshal.Copy(data, buf, 0, len);
                    responseStream.Write(buf, 0, len);
                    return (UIntPtr)len;
                };

                Curl.EasySetOpt(handle, Curl.CURLoption.WRITEFUNCTION, writeHandler);

                IntPtr headerList = IntPtr.Zero;

                void AppendHeader(string name, string value)
                    => headerList = Curl.SlistAppend(headerList, $"{name}: {value}");

                foreach (var kvp in request.Headers)
                    foreach (var val in kvp.Value)
                        AppendHeader(kvp.Key, val);

                byte[] bodyBytes = null;
                string contentType = null;

                if (request.Content != null)
                {
                    bodyBytes = request.Content.ReadAsByteArrayAsync().GetAwaiter().GetResult();
                    contentType = request.Content.Headers.ContentType?.ToString();

                    foreach (var kvp in request.Content.Headers)
                        foreach (var val in kvp.Value)
                            AppendHeader(kvp.Key, val);
                }

                var method = request.Method.Method;
                switch (method)
                {
                    case "GET":
                        Curl.EasySetOpt(handle, Curl.CURLoption.HTTPGET, 1);
                        break;

                    case "POST":
                        Curl.EasySetOpt(handle, Curl.CURLoption.POSTFIELDSIZE,
                            bodyBytes?.Length ?? 0);
                        Curl.EasySetOpt(handle, Curl.CURLoption.COPYPOSTFIELDS,
                            bodyBytes != null ? Encoding.UTF8.GetString(bodyBytes) : string.Empty);
                        break;

                    default: // PUT, PATCH, DELETE, HEAD, OPTIONS, custom verbs
                        Curl.EasySetOpt(handle, Curl.CURLoption.CUSTOMREQUEST, method);
                        if (bodyBytes != null && bodyBytes.Length > 0)
                        {
                            Curl.EasySetOpt(handle, Curl.CURLoption.POSTFIELDSIZE, bodyBytes.Length);
                            Curl.EasySetOpt(handle, Curl.CURLoption.COPYPOSTFIELDS,
                                Encoding.UTF8.GetString(bodyBytes));
                        }
                        break;
                }

                if (headerList != IntPtr.Zero)
                    Curl.EasySetOpt(handle, Curl.CURLoption.HTTPHEADER, headerList);

                Curl.EasySetOpt(handle, Curl.CURLoption.URL, uri.ToString());
                Curl.EasySetOpt(handle, Curl.CURLoption.CAINFO, CACertBundlePath);

                if (AutomaticDecompression != DecompressionMethods.None)
                    Curl.EasySetOpt(handle, Curl.CURLoption.ACCEPT_ENCODING,
                        BuildEncodingString(AutomaticDecompression));

                Curl.EasySetOpt(handle, Curl.CURLoption.FORBID_REUSE, 0);
                Curl.EasySetOpt(handle, Curl.CURLoption.FRESH_CONNECT, 0);

                var curlResult = Curl.EasyPerform(handle);

                if (headerList != IntPtr.Zero)
                    Curl.SlistFreeAll(headerList);

                GC.KeepAlive(writeHandler);

                ct.ThrowIfCancellationRequested();

                if (curlResult != Curl.CURLcode.OK)
                    throw new HttpRequestException(
                        $"cURL error {curlResult}: {Curl.EasyStrError(curlResult)}");

                Curl.EasyGetInfo(handle, Curl.CURLINFO.RESPONSE_CODE, out long statusCode);

                var content = new ByteArrayContent(responseStream.ToArray());
                if (contentType != null)
                    content.Headers.TryAddWithoutValidation("Content-Type", contentType);

                var response = new HttpResponseMessage((HttpStatusCode)statusCode)
                {
                    Content = content,
                    RequestMessage = request
                };

                success = true;
                return response;
            }
            finally
            {
                if (success) pool.Return(conn);
            }
        }

        private static string BuildEncodingString(DecompressionMethods methods)
        {
            if (methods == (DecompressionMethods.GZip | DecompressionMethods.Deflate)
                || (int)methods >= 7)
                return "";

            var parts = new List<string>();
            if ((methods & DecompressionMethods.GZip) != 0) parts.Add("gzip");
            if ((methods & DecompressionMethods.Deflate) != 0) parts.Add("deflate");
            return string.Join(", ", parts);
        }

        private HostConnectionPool GetPool(Uri uri)
        {
            var key = $"{uri.Scheme}://{uri.Host}:{uri.Port}";
            return _pools.GetOrAdd(key, _ => new HostConnectionPool(_maxConnectionsPerHost));
        }

        private void PruneAll()
        {
            foreach (var p in _pools.Values) p.Prune();
        }

        protected override void Dispose(bool disposing)
        {
            if (!_disposed && disposing)
            {
                _disposed = true;
                _pruneTimer.Dispose();
                foreach (var p in _pools.Values) p.Dispose();
                _pools.Clear();
            }
            base.Dispose(disposing);
        }
    }

    internal sealed class PooledConnection : IDisposable
    {
        public IntPtr Handle { get; }
        public DateTime LastUsed { get; set; } = DateTime.UtcNow;
        public DateTime CreatedAt { get; } = DateTime.UtcNow;

        public PooledConnection(IntPtr handle) => Handle = handle;

        public void Dispose()
        {
            if (Handle != IntPtr.Zero)
                Curl.EasyCleanup(Handle);
        }
    }

    internal sealed class HostConnectionPool : IDisposable
    {
        public static readonly TimeSpan IdleTimeout = TimeSpan.FromMinutes(2);
        public static readonly TimeSpan MaxLifetime = TimeSpan.FromMinutes(10);

        private readonly ConcurrentQueue<PooledConnection> _idle
            = new ConcurrentQueue<PooledConnection>();
        private readonly SemaphoreSlim _gate;

        public HostConnectionPool(int maxConnections)
            => _gate = new SemaphoreSlim(maxConnections, maxConnections);

        public async Task<PooledConnection> RentAsync(CancellationToken ct)
        {
            await _gate.WaitAsync(ct).ConfigureAwait(false);

            while (_idle.TryDequeue(out var conn))
            {
                var now = DateTime.UtcNow;
                if ((now - conn.LastUsed) > IdleTimeout ||
                    (now - conn.CreatedAt) > MaxLifetime)
                {
                    conn.Dispose();
                    continue;
                }
                return conn;
            }

            return new PooledConnection(Curl.EasyInit());
        }

        public void Return(PooledConnection conn)
        {
            conn.LastUsed = DateTime.UtcNow;
            _idle.Enqueue(conn);
            _gate.Release();
        }

        public void Discard(PooledConnection conn)
        {
            conn.Dispose();
            _gate.Release();
        }

        public void Prune()
        {
            var now = DateTime.UtcNow;
            var survivors = new List<PooledConnection>();

            while (_idle.TryDequeue(out var conn))
            {
                if ((now - conn.LastUsed) > IdleTimeout ||
                    (now - conn.CreatedAt) > MaxLifetime)
                    conn.Dispose();
                else
                    survivors.Add(conn);
            }

            foreach (var s in survivors) _idle.Enqueue(s);
        }

        public void Dispose()
        {
            while (_idle.TryDequeue(out var conn)) conn.Dispose();
        }
    }
}
