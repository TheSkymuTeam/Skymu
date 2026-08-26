using DiscordRewrite.Classes.Discord;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using OmegaAOL.Bifrost.Http;

namespace DiscordRewrite.Networking
{
    internal class API
    {
        private readonly ConfigMgr configMgr = new ConfigMgr();

        // Singleton, so we don't create multiple HttpClient clients
        private static readonly Lazy<API> _apiInstance = new Lazy<API>(() => new API());
        public static API Instance => _apiInstance.Value;

        // Reuse the HttpClient throughout the API
        internal readonly HttpClient InternalHttpClient;

        // Current Discord API version (v9, has been for a while!)
        private const int API_VERSION = 9;

        // Configuration (Firefox 115 ESR on Windows 10)
        public string XSuperProperties = null;
        public const string UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";

        private API()
        {
            var compressionHandler = new BifrostEngine
            {
                // Possibly add Brotli and zstd compression in the future?
                AutomaticDecompression =
                    DecompressionMethods.GZip |
                    DecompressionMethods.Deflate
            };

            ServicePointManager.DefaultConnectionLimit = 10;
            InternalHttpClient = new HttpClient(compressionHandler);

            // Set default headers through out the system
            InternalHttpClient.DefaultRequestHeaders.Add("Accept", "*/*");
            InternalHttpClient.DefaultRequestHeaders.Add("User-Agent", UserAgent);

            // Required for endpoints like /users/@me/remote-auth/login
            InternalHttpClient.DefaultRequestHeaders.Add("Origin", "https://discord.com");
        }

        private readonly SemaphoreSlim _initLock = new SemaphoreSlim(1, 1);
        private bool _initializedApi;

        private async Task InitializeAsync()
        {
            XSuperProperties = await configMgr.GetXSPJson();
            InternalHttpClient.DefaultRequestHeaders.Add("X-Super-Properties", XSuperProperties);
        }

        public static async Task<API> CreateAsync()
        {
            var apiClass = new API();
            await apiClass.InitializeAsync();

            return apiClass;
        }

        private async Task EnsureInitializedAsync()
        {
            if (_initializedApi) return;

            await _initLock.WaitAsync();
            try
            {
                if (_initializedApi) return;
                await InitializeAsync();

                _initializedApi = true;
            }
            finally { _initLock.Release(); }
        }

        public async Task<string> SendAPI(string apiEndpoint, HttpMethod httpMethod, string dscToken = null, object reqData = null, byte[] fileData = null, string fileName = null, Dictionary<string, string> httpHeaders = null)
        {
            await EnsureInitializedAsync();

            string apiUrl = "https://discord.com/api/v" + API_VERSION + "/" + apiEndpoint.TrimStart('/');
            using (var httpRequest = new HttpRequestMessage(httpMethod, apiUrl))
            {

                if (!string.IsNullOrEmpty(dscToken))
                {
                    try { httpRequest.Headers.TryAddWithoutValidation("Authorization", dscToken); }
                    catch (Exception ex)
                    {
                        return $"[API/ParseError] An error occurred while sending the request: {ex.Message}\n\n$\"[API] URL used when the error occurred: {{url}}";
                    }
                }

                if (httpHeaders != null) { foreach (var keyValuePair in httpHeaders) { httpRequest.Headers.TryAddWithoutValidation(keyValuePair.Key, keyValuePair.Value); } }
                if (fileData != null && !string.IsNullOrEmpty(fileName))
                {
                    var fileContent = new MultipartFormDataContent { { new ByteArrayContent(fileData) { Headers = { { "Content-Type", "application/octet-stream" } } }, "file", fileName } };
                    if (reqData != null)
                    {
                        string jsonData = JsonSerializer.Serialize(reqData);
                        fileContent.Add(new StringContent(jsonData, Encoding.UTF8, "application/json"), "payload_json");
                    }

                    httpRequest.Content = fileContent;
                }
                else if ((httpMethod != HttpMethod.Get) && reqData != null)
                {
                    string jsonData = JsonSerializer.Serialize(reqData);
                    httpRequest.Content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                }

                try
                {
                    using (HttpResponseMessage httpResponse = await InternalHttpClient.SendAsync(httpRequest)) { return await httpResponse.Content.ReadAsStringAsync(); }
                }
                catch (OperationCanceledException) { throw; }
                catch (Exception ex) { return $"[API/RequestError]{ex.Message}\nURL: {apiUrl}"; }
            }
        }
    }
}