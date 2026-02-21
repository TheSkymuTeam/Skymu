/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

// Copied from Naticord which is found here: https://github.com/Naticord/naticord/blob/dev/Naticord/Networking/API.cs
// This is done by, and with permission from, the original creator (patricktbp).

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Discord.Classes 
{
    internal class API 
    {
        private static readonly ConfigMgr configMgr = new ConfigMgr();


        private static readonly HttpClient client;

        // Configuration (Firefox 115 ESR on Windows 10)
        public static string XSuperProperties = null;
        public static readonly string UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";

        static API()
        {
            // Use SocketsHttpHandler for better performance and HTTP/2
            var handler = new SocketsHttpHandler
            {
                PooledConnectionLifetime = TimeSpan.FromMinutes(2),
                PooledConnectionIdleTimeout = TimeSpan.FromMinutes(1),
                MaxConnectionsPerServer = 10
            };

            // Re-used client (Less memory usage)
            client = new HttpClient(handler);

            // Set default headers once
            client.DefaultRequestHeaders.Add("Accept", "*/*");
            client.DefaultRequestHeaders.Add("User-Agent", UserAgent);

            XSuperProperties = configMgr.GetXSPJson();
            client.DefaultRequestHeaders.Add("X-Super-Properties", XSuperProperties);

            // Forcefully use TLS 1.2+ (supports 1.2 and 1.3)
            System.Net.ServicePointManager.SecurityProtocol =
                System.Net.SecurityProtocolType.Tls12 |
                System.Net.SecurityProtocolType.Tls13;
        }

        public async Task<string> SendAPI(string endpoint, HttpMethod httpMethod, string token = null, object data = null, byte[] fileData = null, string fileName = null, Dictionary<string, string> headers = null)
        {
            string url = "https://discord.com/api/v" + Discord.Core.API_VERSION + "/" + endpoint; 
            Debug.WriteLine(url);
            var request = new HttpRequestMessage(httpMethod, url);

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

            if (headers is not null)
            {
                foreach (var kvp in headers)
                {
                    request.Headers.TryAddWithoutValidation(kvp.Key, kvp.Value);
                }
            }

            if (fileData is not null && !string.IsNullOrEmpty(fileName))
            {
                var content = new MultipartFormDataContent
                {
                    { new ByteArrayContent(fileData) { Headers = { { "Content-Type", "application/octet-stream" } } }, "file", fileName }
                };

                if (data is not null)
                {
                    string jsonData = JsonSerializer.Serialize(data);
                    content.Add(new StringContent(jsonData, Encoding.UTF8, "application/json"), "payload_json");
                }

                request.Content = content;
            }
            else if ((httpMethod == HttpMethod.Post || httpMethod == HttpMethod.Put || httpMethod == HttpMethod.Patch) && data is not null)
            {
                string jsonData = JsonSerializer.Serialize(data);
                request.Content = new StringContent(jsonData, Encoding.UTF8, "application/json");
            }

            try
            {
                HttpResponseMessage response = await client.SendAsync(request);
                return await response.Content.ReadAsStringAsync();
            }
            catch (Exception ex)
            {
                return $"[API/RequestError] An error occurred while sending the request: {ex.Message}\n\n$\"[API] URL used when the error occurred: {{url}}";
            }
        }
    }
}