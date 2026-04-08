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
using Skymu.Preferences;
using System.Threading;
using System.Threading.Tasks;

namespace Skymu.UserDirectory
{
    internal static class UserCountAPI
    {
        private static readonly string DOMAIN_NAME = "skymu.kier.ovh";
        public static readonly string WS_URL = $"wss://{DOMAIN_NAME}/ws";

        // REST API variables
        private static readonly HttpClient httpClient = new HttpClient
        {
            BaseAddress = new Uri("https://" + DOMAIN_NAME),
        };
        public static string ApiTkn = null;

        // WebSocket variables
        private static System.Net.WebSockets.Managed.ClientWebSocket ws;
        private static CancellationTokenSource cts = new CancellationTokenSource();
        public static event Action<int> OnUserCountUpdate;

        // REST API functions
        public static async Task GenerateUID()
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

        public static async Task<bool> SetUsrStatus(
            bool online,
            string dn = null,
            string user = null,
            string id = null
        )
        {
            string anon_random = "skymu-user-" + GenerateRandomNumberString(10);
            var payload = new
            {
                display_name = Settings.Anonymize ? "Anonymous" : dn,
                username = Settings.Anonymize ? anon_random : user,
                identifier = Settings.Anonymize ? anon_random : id,
                plugin = Universal.Plugin.Name,
                skymu_build_codename = Settings.BuildName,
                skymu_build_version = Settings.BuildVersion,
                token = ApiTkn,
                online,
            };

            var json = JsonSerializer.Serialize(payload);

            using (StringContent content = new StringContent(json))
            using (
                HttpResponseMessage response = await httpClient.PostAsync("/set_status", content)
            )
            {
                await response.Content.ReadAsStringAsync(); // drain the buffer
            }

            return true;
        }

        public static async Task<bool> SendPingToServ()
        {
            var payload = new { token = ApiTkn };

            var json = JsonSerializer.Serialize(payload);

            using (
                StringContent content = new StringContent(json, Encoding.UTF8, "application/json")
            )
            using (HttpResponseMessage response = await httpClient.PostAsync("/ping", content))
            {
                await response.Content.ReadAsStringAsync(); // drain the buffer
            }

            return true;
        }

        // WebSocket functions
        public static async Task ConnectWS()
        {
            ws = new System.Net.WebSockets.Managed.ClientWebSocket();
            await ws.ConnectAsync(new Uri(WS_URL), cts.Token);

            var initMsg = JsonSerializer.Serialize(new { token = ApiTkn });
            var initBytes = Encoding.UTF8.GetBytes(initMsg);
            await ws.SendAsync(
                new ArraySegment<byte>(initBytes),
                WebSocketMessageType.Text,
                true,
                cts.Token
            );

            _ = Task.Run(ReceiveLoop);
        }

        private static async Task ReceiveLoop()
        {
            var buffer = new byte[4096];

            while (ws.State == WebSocketState.Open)
            {
                var result = await ws.ReceiveAsync(new ArraySegment<byte>(buffer), cts.Token);
                if (result.MessageType == WebSocketMessageType.Close)
                {
                    await ws.CloseAsync(
                        WebSocketCloseStatus.NormalClosure,
                        "",
                        CancellationToken.None
                    );
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

        public static async Task SendGetCount()
        {
            if (ws.State == WebSocketState.Open)
            {
                var msg = JsonSerializer.Serialize(new { action = "get_count" });
                var bytes = Encoding.UTF8.GetBytes(msg);
                await ws.SendAsync(
                    new ArraySegment<byte>(bytes),
                    WebSocketMessageType.Text,
                    true,
                    cts.Token
                );
            }
        }

        public static async Task CloseWS()
        {
            await SetUsrStatus(false);
            if (ws.State == WebSocketState.Open)
            {
                await ws.CloseAsync(
                    WebSocketCloseStatus.NormalClosure,
                    "Client is being closed",
                    CancellationToken.None
                );
            }
        }
    }
}
