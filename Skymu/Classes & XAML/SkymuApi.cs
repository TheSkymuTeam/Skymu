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
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net;
using System.Net.Http;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using System.Xml.Linq;

namespace Skymu
{
    internal class SkymuApi
    {
        public static async Task<string> GenerateUID()
        {
            string skymuGenerateUri = "https://skymu.kier.ovh/generate";
            string SkymuToken;

            try
            {
                HttpClient client = new HttpClient();
                HttpResponseMessage generateResponse = await client.GetAsync(skymuGenerateUri);
                string genResBody = await generateResponse.Content.ReadAsStringAsync();
                JObject parsedGenJson = JObject.Parse(genResBody);
                SkymuToken = parsedGenJson["token"].ToString();
            }
            catch
            {
                SkymuToken = String.Empty;
            }

            return SkymuToken;
        }

        public static async Task SetStatus(bool onlineState, string SkymuClientToken)
        {
            string skymuAPIUri = "https://skymu.kier.ovh";
            string endpoint = onlineState ? "/online" : "/offline";

            if (!String.IsNullOrEmpty(SkymuClientToken))
            {
                using (HttpClient client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("X-Skymu-Auth", SkymuClientToken);
                    HttpResponseMessage response = await client.PostAsync($"{skymuAPIUri}{endpoint}", new StringContent(string.Empty));
                    string resBody = await response.Content.ReadAsStringAsync();
                    Debug.WriteLine($"Status set response ({endpoint}): {resBody}");
                }
            }
        }

        public static async Task StatusPing(bool onlineState, string SkymuClientToken)
        {
            string skymuPingUri = "https://skymu.kier.ovh/ping";

            if (!String.IsNullOrEmpty(SkymuClientToken))
            {
                using (HttpClient client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("X-Skymu-Auth", SkymuClientToken);
                    HttpResponseMessage response = await client.PostAsync(skymuPingUri, new StringContent(string.Empty));
                    string resBody = await response.Content.ReadAsStringAsync();
                    Debug.WriteLine($"Ping response ({skymuPingUri}): {resBody}");
                }
            }
        }

        public static async Task<int> FetchUserCount()
        {
            string skymuCountUri = "https://skymu.kier.ovh/usr_count";
            int onlineCount;
            try
            {
                HttpClient client = new HttpClient();

                HttpResponseMessage response = await client.GetAsync(skymuCountUri);
                string resBody = await response.Content.ReadAsStringAsync();
                JObject parsedJson = JObject.Parse(resBody);
                onlineCount = parsedJson["online_count"].ToObject<int>();
            }
            catch
            {
                onlineCount = 0;
            }
            return onlineCount;
        }
    }
}
