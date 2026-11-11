/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using Skymu.Preferences;
using System;
using System.Net.Http;
using System.Net.WebSockets;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading;
using System.Threading.Tasks;
using OmegaAOL.Bifrost.Http;
using OmegaAOL.Bifrost.WebSockets;
using System.Windows.Documents;

namespace Skymu.WebServices
{
    internal static class UserServerAPI

    {
        // REST API variables
        private static readonly HttpClient client = new HttpClient(new BifrostEngine())
        {
            BaseAddress = new Uri(Universal.SKYMU_WEBSERVICES_USERSERVER),
        };
        public static string ApiTkn = null;

        // User count polling variables
        private static CancellationTokenSource cts = new CancellationTokenSource();
        private static Task pollingTask;
        public static event Action<int> UserCountUpdated;

        // REST API functions
        public static async Task GenerateUID()
        {
            string json = await client.GetStringAsync("token");
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

        // TODO multiuser
        public static async Task<bool> SetUserStatus(
            bool online,
            string dn = null,
            string user = null,
            string id = null
        )
        {
            string anon_random = $"{Universal.NAME.ToLowerInvariant()}-user-" + GenerateRandomNumberString(10);
            var payload = new
            {
                display_name = Settings.Anonymize ? "Anonymous" : dn,
                username = Settings.Anonymize ? anon_random : user,
                identifier = Settings.Anonymize ? anon_random : id,
                plugin = Universal.Plugin?.Name,
                skymu_build_codename = Universal.BUILD_INFO.GetCodeName(),
                skymu_build_version = Universal.BUILD_INFO.GetVersionString(),
                token = ApiTkn,
                online,
            };

            var json = JsonSerializer.Serialize(payload);

            using (StringContent content = new StringContent(json))
            using (
                HttpResponseMessage response = await client.PostAsync("set_status", content)
            )
            {
                await response.Content.ReadAsStringAsync(); // drain the buffer
            }

            return true;
        }

        public static async Task<bool> PingServer()
        {
            var payload = new { token = ApiTkn };

            var json = JsonSerializer.Serialize(payload);

            using (
                StringContent content = new StringContent(json, Encoding.UTF8, "application/json")
            )
            using (HttpResponseMessage response = await client.PostAsync("ping", content))
            {
                await response.Content.ReadAsStringAsync(); 
            }

            return true;
        }

        // User count polling functions
        public static async Task StartPolling()
        {
            if (cts.IsCancellationRequested)
                cts = new CancellationTokenSource();

            await FetchUserCount();

            if (pollingTask == null || pollingTask.IsCompleted)
                pollingTask = Task.Run(() => PollCountLoop(cts.Token));
        }

        private static async Task PollCountLoop(CancellationToken token)
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(5000, token);
                    await FetchUserCount();
                }
                catch (TaskCanceledException)
                {
                    break;
                }
                catch (Exception)
                {
                    
                }
            }
        }

        public static async Task FetchUserCount()
        {
            using (HttpResponseMessage response = await client.GetAsync("count"))
            {
                response.EnsureSuccessStatusCode();

                string json = await response.Content.ReadAsStringAsync();
                JsonNode node = JsonNode.Parse(json);

                if (node?["type"]?.ToString() == "user_count")
                {
                    int count = node["count"]?.GetValue<int>() ?? 0;
                    UserCountUpdated?.Invoke(count);
                }
            }
        }

        public static async Task StopPolling()
        {
            await SetUserStatus(false);

            cts.Cancel();
        }
    }
}
