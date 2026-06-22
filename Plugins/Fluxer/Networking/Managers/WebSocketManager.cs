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

using Fluxer.Helpers;
using System;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace Fluxer.Networking.Managers
{
    internal class WebSocketManager
    {
        // We reuse this to avoid creating more WebSocket instances, which is quite heavy
        // Also, marked as static so WebSocketManager helper classes can be called throughout the app
        internal static WebSocket Socket;

        public static void EnsureConnected(string token, EventHandler<HelperClasses.FluxerMessageReceivedEventArgs> handler, Core core)
        {
            if (Socket != null)
                return;

            Socket = new WebSocket(token, core);
            SubscribeMessageReceived(handler);
        }

        public static Task<bool> WaitUntilReady()
        {
            var tcs = new TaskCompletionSource<bool>();

            EventHandler readyHandler = null;
            readyHandler = (s, e) =>
            {
                Socket.Ready -= readyHandler;
                tcs.TrySetResult(true);
            };

            Socket.Ready += readyHandler;

            return tcs.Task;
        }

        public static async Task SendPayload(string payload)
        {
            if (Socket == null) return;
            await Socket.SendPayload(payload);
        }

        public static void SubscribeMessageReceived(EventHandler<HelperClasses.FluxerMessageReceivedEventArgs> handler)
        {
            if (Socket == null)
                return;

            Socket.MessageReceived -= handler;
            Socket.MessageReceived += handler;
        }

        public static JsonArray GetPrivateChannels()
        {
            string json = Socket?._privateChannelsJson ?? "[]";
            return JsonNode.Parse(json) as JsonArray ?? new JsonArray();
        }

        public static JsonArray GetGuilds()
        {
            string json = Socket?._guildsJson ?? "[]";
            return JsonNode.Parse(json) as JsonArray ?? new JsonArray();
        }
    }
}
