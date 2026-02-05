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
        // REST API variables
        private static readonly HttpClient httpClient = new HttpClient
        {
            BaseAddress = new Uri("https://skymu.kier.ovh")
        };
        public string ApiTkn = null;
        public string WsUrl = "ws://skymu.kier.ovh/ws";


        // WebSocket variables
        private ClientWebSocket ws;
        private CancellationTokenSource cts = new CancellationTokenSource();
        public event Action<int> OnUserCountUpdate;

        // REST API functions
        public async Task GenerateUID()
        {
            string json = await httpClient.GetStringAsync("/token");
            JsonNode node = JsonNode.Parse(json);
            ApiTkn = node?["token"]?.ToString();
        }

        public async Task<bool> SetUsrStatus(bool online)
        {
            var payload = new
            {
                token = ApiTkn,
                online
            };

            var json = JsonSerializer.Serialize(payload);

            using var content = new StringContent(json);
            using var response = await httpClient.PostAsync("/set_status", content);

            return true;
        }

        public async Task<bool> SendPingToServ()
        {
            var payload = new
            {
                token = ApiTkn
            };

            var json = JsonSerializer.Serialize(payload);

            using var content = new StringContent(json);
            using var response = await httpClient.PostAsync("/ping", content);

            return true;
        }

        // WebSocket functions
        public async Task ConnectWS()
        {
            ws = new ClientWebSocket();
            await ws.ConnectAsync(new Uri(WsUrl), cts.Token);

            var initMsg = JsonSerializer.Serialize(new { token = ApiTkn });
            var initBytes = Encoding.UTF8.GetBytes(initMsg);
            await ws.SendAsync(initBytes, WebSocketMessageType.Text, true, cts.Token);

            _ = Task.Run(ReceiveLoop);
        }

        private async Task ReceiveLoop()
        {
            var buffer = new byte[4096];

            while (ws.State == WebSocketState.Open)
            {
                var result = await ws.ReceiveAsync(buffer, cts.Token);
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
                await ws.SendAsync(bytes, WebSocketMessageType.Text, true, cts.Token);
            }
        }

        public async Task CloseWS()
        {
            if (ws.State == WebSocketState.Open)
            {
                await ws.CloseAsync(WebSocketCloseStatus.NormalClosure, "Client is being closed", CancellationToken.None);
            }
        }
    }
}