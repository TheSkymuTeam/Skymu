/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
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
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Discord.Classes
{
    internal class API
    {
        private static readonly ConfigMgr configMgr = new ConfigMgr();

        // Re-used client (Less memory usage)
        private static readonly HttpClient client = new HttpClient();

        // Configuration (Firefox 115 ESR on Windows 10)
        public static string XSuperProperties = null;
        public static readonly string UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";

        static API()
        {
            // Forcefully use TLS 1.2 (Adds back Windows 7 support)
            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
            XSuperProperties = configMgr.GetXSPJson();
        }

        public async Task<string> SendAPI(string endpoint, HttpMethod httpMethod, string token = null, object data = null, byte[] fileData = null, string fileName = null)
        {
            string url = $"https://discord.com/api/v10/{endpoint}";
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
            else if ((httpMethod == HttpMethod.Post || httpMethod == HttpMethod.Put) && data is not null)
            {
                string jsonData = JsonSerializer.Serialize(data);
                request.Content = new StringContent(jsonData, Encoding.UTF8, "application/json");
            }

            request.Headers.Add("Accept", "*/*");
            request.Headers.Add("User-Agent", UserAgent);
            request.Headers.Add("X-Super-Properties", XSuperProperties);

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