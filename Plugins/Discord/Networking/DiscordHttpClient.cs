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

// Copied from Naticord which is found here: https://github.com/Naticord/naticord/blob/dev/Naticord/Networking/API.cs
// This is done with permission from the original creator (patricktbp). Later modified by OmegaAOL.

using Discord.Networking.Managers;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using Yggdrasil.Networking;

namespace Discord.Networking
{
    internal class DiscordHttpClient
    {
        private readonly ConfigManager ConfigManager = new ConfigManager();

        // Reuse client (less memory usage)
        internal readonly HttpClient InternalHttpClient;

        // Configuration (Firefox 115 ESR on Windows 10)
        public string XSuperProperties = null;
        public const string UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";

        internal DiscordHttpClient()
        {
            var handler = new BifrostEngine()
            {
                AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate
            };

            ServicePointManager.DefaultConnectionLimit = 10;

            InternalHttpClient = new HttpClient(handler);

            // Set default headers once
            InternalHttpClient.DefaultRequestHeaders.Add("Accept", "*/*");
            InternalHttpClient.DefaultRequestHeaders.Add("User-Agent", UserAgent);
            InternalHttpClient.DefaultRequestHeaders.Add("Accept-Encoding", "gzip, deflate"); // TODO maybe add brotli decompression? that's supposed to be better

            XSuperProperties = ConfigManager.GetXSPJson();
            InternalHttpClient.DefaultRequestHeaders.Add("X-Super-Properties", XSuperProperties);
        }

        public async Task<string> Send(string endpoint, HttpMethod httpMethod, string token = null, object data = null, byte[] fileData = null, string fileName = null, Dictionary<string, string> headers = null, CancellationToken ctoken = default)
        {
            string url = "https://discord.com/api/v" + Core.API_VERSION + "/" + endpoint.TrimStart('/');
            // Debug.WriteLine(url);
            using (var request = new HttpRequestMessage(httpMethod, url))
            {

                if (!string.IsNullOrEmpty(token))
                {
                    try
                    {
                        request.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue(token);
                    }
                    catch (Exception ex)
                    {
                        return $"[API/ParseError] An error occurred while sending the request: {ex.Message}\n\n$\"[API] URL used when the error occurred: {{url}}";
                    }
                }

                if (headers != null)
                {
                    foreach (var kvp in headers)
                    {
                        request.Headers.TryAddWithoutValidation(kvp.Key, kvp.Value);
                    }
                }

                if (fileData != null && !string.IsNullOrEmpty(fileName))
                {
                    var content = new MultipartFormDataContent
                {
                    { new ByteArrayContent(fileData) { Headers = { { "Content-Type", "application/octet-stream" } } }, "file", fileName }
                };

                    if (data != null)
                    {
                        string jsonData = JsonSerializer.Serialize(data);
                        content.Add(new StringContent(jsonData, Encoding.UTF8, "application/json"), "payload_json");
                    }

                    request.Content = content;
                }
                else if ((httpMethod != HttpMethod.Get) && data != null)
                {
                    string jsonData = JsonSerializer.Serialize(data);
                    request.Content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                }

                try
                {
                    ctoken.ThrowIfCancellationRequested();
                    using (HttpResponseMessage response = await InternalHttpClient.SendAsync(request, ctoken))
                    {
                        return await response.Content.ReadAsStringAsync();
                    }
                }
                catch (OperationCanceledException)
                {
                    throw;
                }
                catch (Exception ex)
                {
                    return $"[API/RequestError]{ex.Message}\nURL: {url}";
                }
            }
        }
    }
}