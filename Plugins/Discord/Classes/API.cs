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

using Newtonsoft.Json;
using System;
using System.Diagnostics;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Discord.Classes
{
    internal class API
    {
        // Re-used client (Less memory usage)
        private static readonly HttpClient client = new HttpClient();

        // Configuration (Firefox 115 ESR on Windows 10)
        public static readonly string XSuperProperties = "eyJvcyI6IldpbmRvd3MiLCJicm93c2VyIjoiRmlyZWZveCIsImRldmljZSI6IiIsInN5c3RlbV9sb2NhbGUiOiJlbi1VUyIsImhhc19jbGllbnRfbW9kcyI6ZmFsc2UsImJyb3dzZXJfdXNlcl9hZ2VudCI6Ik1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDEwLjA7IFdpbjY0OyB4NjQ7IHJ2OjEwOS4wKSBHZWNrby8yMDEwMDEwMSBGaXJlZm94LzExNS4wIiwiYnJvd3Nlcl92ZXJzaW9uIjoiMTE1LjAiLCJvc192ZXJzaW9uIjoiMTAiLCJyZWZlcnJlciI6IiIsInJlZmVycmluZ19kb21haW4iOiIiLCJyZWZlcnJlcl9jdXJyZW50IjoiaHR0cHM6Ly9kaXNjb3JkLmNvbS8iLCJyZWZlcnJpbmdfZG9tYWluX2N1cnJlbnQiOiJkaXNjb3JkLmNvbSIsInJlbGVhc2VfY2hhbm5lbCI6InN0YWJsZSIsImNsaWVudF9idWlsZF9udW1iZXIiOjQ4ODU3OSwiY2xpZW50X2V2ZW50X3NvdXJjZSI6bnVsbCwiY2xpZW50X2xhdW5jaF9pZCI6Ijc5MzI5Yjg2LThmODctNGVjYi1iZTRmLTY1ZGMzYTJiM2ZiYiIsImxhdW5jaF9zaWduYXR1cmUiOiIzOTIzYzRlYi1iNmE2LTQxNjgtODkzMi0yZThiNTQ2NmU1MmIiLCJjbGllbnRfYXBwX3N0YXRlIjoidW5mb2N1c2VkIn0=";
        public static readonly string UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0";

        static API()
        {
            // Forcefully use TLS 1.2 (Adds back Windows 7 support)
            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
        }

        public async Task<string> SendAPI(string endpoint, HttpMethod httpMethod, string token = null, object data = null, byte[] fileData = null, string fileName = null)
        {
            string url = $"https://discord.com/api/v9/{endpoint}";
            var request = new HttpRequestMessage(httpMethod, url);

            if (!string.IsNullOrEmpty(token))
            {
                request.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue(token);
            }

            if (fileData != null && !string.IsNullOrEmpty(fileName))
            {
                var content = new MultipartFormDataContent
                {
                    { new ByteArrayContent(fileData) { Headers = { { "Content-Type", "application/octet-stream" } } }, "file", fileName }
                };

                if (data != null)
                {
                    string jsonData = JsonConvert.SerializeObject(data);
                    content.Add(new StringContent(jsonData, Encoding.UTF8, "application/json"), "payload_json");
                }

                request.Content = content;
            }
            else if ((httpMethod == HttpMethod.Post || httpMethod == HttpMethod.Put) && data != null)
            {
                string jsonData = JsonConvert.SerializeObject(data);
                request.Content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                Debug.WriteLine($"[API] Serialized JSON data is {jsonData}");
            }

            request.Headers.Add("Accept", "*/*");
            request.Headers.Add("User-Agent", UserAgent);
            request.Headers.Add("X-Super-Properties", XSuperProperties);

            foreach (var header in request.Headers)
            {
                Debug.WriteLine($"[API Header] {header.Key}: {string.Join(", ", header.Value)}");
            }

            try
            {
                HttpResponseMessage response = await client.SendAsync(request);
                return await response.Content.ReadAsStringAsync();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[API] An error occurred while sending the request: {ex.Message}");
                Debug.WriteLine($"[API] URL used when the error occurred: {url}");
            }

            return string.Empty;
        }
    }
}