/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using Discord.Helpers;
using System;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace Discord.Networking.Managers
{
    internal class WebSocketManager
    {
        // We reuse this to avoid creating more WebSocket instances, which is quite heavy
        // Also, marked as static so WebSocketManager helper classes can be called throughout the app
        internal static WebSocket Socket;

        public static void EnsureConnected(string token, EventHandler<HelperClasses.DiscordMessageReceivedEventArgs> handler, Core core)
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

        public static void SubscribeMessageReceived(EventHandler<HelperClasses.DiscordMessageReceivedEventArgs> handler)
        {
            if (Socket == null)
                return;

            Socket.MessageReceived -= handler;
            Socket.MessageReceived += handler;
        }

        public static void SubscribeVoiceServerUpdated(EventHandler<WebSocket.VoiceServerUpdateEventArgs> handler)
        {
            if (Socket == null)
                return;

            Socket.VoiceServerUpdateCompleted -= handler;
            Socket.VoiceServerUpdateCompleted += handler;
        }

        public static void UnsubscribeVoiceServerUpdated(EventHandler<WebSocket.VoiceServerUpdateEventArgs> handler)
        {
            if (Socket == null) return;
            Socket.VoiceServerUpdateCompleted -= handler;
        }

        public static void SubscribeIncomingCall(EventHandler<JsonNode> handler)
        {
            if (Socket == null) return;
            Socket.IncomingCall -= handler;
            Socket.IncomingCall += handler;
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
