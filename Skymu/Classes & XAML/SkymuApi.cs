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

using System;
using System.Diagnostics;
using System.Net.Http;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace Skymu
{
    internal class SkymuApi
    {
        public static async Task<string> GenerateUID()
        {
            string skymuGenerateUri = "https://skymu.kier.ovh/generate";
            try
            {
                using (HttpResponseMessage generateResponse = await Universal.HttpClient.GetAsync(skymuGenerateUri))
                {

                    string genResBody = await generateResponse.Content.ReadAsStringAsync();
                    return JsonNode.Parse(genResBody)["token"].ToString();
                }
            }
            catch
            {
                return String.Empty;
            }
        }

        public static async Task SetStatus(bool onlineState, string token)
        {
            if (string.IsNullOrEmpty(token))
                return;

            string endpoint = onlineState ? "/online" : "/offline";
            using (var req = new HttpRequestMessage(
                HttpMethod.Post,
                $"https://skymu.kier.ovh{endpoint}"))
            {
                req.Headers.Add("X-Skymu-Auth", token);
                using (HttpResponseMessage resp = await Universal.HttpClient.SendAsync(req))
                {
                    string resBody = await resp.Content.ReadAsStringAsync();
                    Debug.WriteLine($"Status set response ({endpoint}): {resBody}");
                }
            }
        }

        public static async Task StatusPing(string token)
        {
            if (string.IsNullOrEmpty(token))
                return;
            string skymuPingUri = "https://skymu.kier.ovh/ping";
            using (var req = new HttpRequestMessage(
                HttpMethod.Post,
                skymuPingUri))
            {
                req.Headers.Add("X-Skymu-Auth", token);
                using (HttpResponseMessage resp = await Universal.HttpClient.SendAsync(req))
                {
                    string resBody = await resp.Content.ReadAsStringAsync();
                    Debug.WriteLine($"Ping response ({skymuPingUri}): {resBody}");
                }
            }
        }

        public static async Task<int> FetchUserCount()
        {
            string skymuCountUri = "https://skymu.kier.ovh/usr_count";
            try
            {
                using (var req = new HttpRequestMessage(
                    HttpMethod.Get,
                    skymuCountUri))
                {
                    using (HttpResponseMessage resp = await Universal.HttpClient.SendAsync(req))
                    {
                        string resBody = await resp.Content.ReadAsStringAsync();
                        JsonNode parsedJson = JsonNode.Parse(resBody);
                        return parsedJson["online_count"].GetValue<int>();
                    }
                }
            }
            catch
            {
                return -1;
            }
        }
    }
}
