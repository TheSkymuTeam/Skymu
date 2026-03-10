/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Net.Http;
using System.Net.WebSockets;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Tasks;

namespace Skymu
{
    internal class SkymuApi
    {
        private static readonly string DOMAIN_NAME = "skymu.kier.ovh";
        // REST API variables
        private static readonly HttpClient httpClient = new HttpClient
        {
            BaseAddress = new Uri("https://" + DOMAIN_NAME)
        };
        public string ApiTkn = null;
        public string WsUrl = $"wss://{DOMAIN_NAME}/ws";


        // WebSocket variables
        private System.Net.WebSockets.Managed.ClientWebSocket ws;
        private CancellationTokenSource cts = new CancellationTokenSource();
        public event Action<int> OnUserCountUpdate;

        // REST API functions
        public async Task GenerateUID()
        {
            string json = await httpClient.GetStringAsync("/token");
            JsonNode node = JsonNode.Parse(json);
            ApiTkn = node?["token"]?.ToString();
        }

        private static string GenerateRandomNumberString(int length)
        {
            Random random = new Random();
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < length; i++)
            {
                sb.Append(random.Next(0, 10));
            }

            return sb.ToString();
        }

        public async Task<bool> SetUsrStatus(bool online, string dn = null, string user = null, string id = null)
        {
            string anon_random = "skymu-user-" + GenerateRandomNumberString(10);
            var payload = new
            {
                display_name = Properties.Settings.Default.Anonymize ? "Anonymous" : dn,
                username = Properties.Settings.Default.Anonymize ? anon_random : user,
                identifier = Properties.Settings.Default.Anonymize ? anon_random : id,
                plugin = Universal.Plugin.Name,
                skymu_build_codename = Properties.Settings.Default.BuildName,
                skymu_build_version = Properties.Settings.Default.BuildVersion,
                token = ApiTkn,
                online
            };

            var json = JsonSerializer.Serialize(payload);

            using (StringContent content = new StringContent(json))
            using (HttpResponseMessage response = await httpClient.PostAsync("/set_status", content))
            {
                await response.Content.ReadAsStringAsync(); // drain the buffer
            }

            return true;
        }

        public async Task<bool> SendPingToServ()
        {
            var payload = new
            {
                token = ApiTkn
            };

            var json = JsonSerializer.Serialize(payload);

            using (StringContent content = new StringContent(json))
            using (HttpResponseMessage response = await httpClient.PostAsync("/set_status", content))
            {
                await response.Content.ReadAsStringAsync(); // drain the buffer
            }

            return true;
        }

        // WebSocket functions
        public async Task ConnectWS()
        {
            ws = new System.Net.WebSockets.Managed.ClientWebSocket();
            await ws.ConnectAsync(new Uri(WsUrl), cts.Token);

            var initMsg = JsonSerializer.Serialize(new { token = ApiTkn });
            var initBytes = Encoding.UTF8.GetBytes(initMsg);
            await ws.SendAsync(new ArraySegment<byte>(initBytes), WebSocketMessageType.Text, true, cts.Token);

            _ = Task.Run(ReceiveLoop);
        }


        private async Task ReceiveLoop()
        {
            var buffer = new byte[4096];

            while (ws.State == WebSocketState.Open)
            {
                var result = await ws.ReceiveAsync(new ArraySegment<byte>(buffer), cts.Token);
                if (result.MessageType == WebSocketMessageType.Close)
                {
                    await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, "", CancellationToken.None);
                }
                else if (result.MessageType == WebSocketMessageType.Text)
                {
                    string msg = Encoding.UTF8.GetString(buffer, 0, result.Count);
                    var node = JsonNode.Parse(msg);
                    if (node?["type"]?.ToString() == "user_count")
                    {
                        int count = node["count"]?.GetValue<int>() ?? 0;
                        OnUserCountUpdate?.Invoke(count);
                    }
                }
            }
        }

        public async Task SendGetCount()
        {
            if (ws.State == WebSocketState.Open)
            {
                var msg = JsonSerializer.Serialize(new { action = "get_count" });
                var bytes = Encoding.UTF8.GetBytes(msg);
                await ws.SendAsync(new ArraySegment<byte>(bytes), WebSocketMessageType.Text, true, cts.Token);
            }
        }

        public async Task CloseWS()
        {
            await SetUsrStatus(false);
            if (ws.State == WebSocketState.Open)
            {
                await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, "Client is being closed", CancellationToken.None);
            }
        }
    }
}