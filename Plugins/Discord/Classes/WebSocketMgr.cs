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
using System.Net.Sockets;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace Discord.Classes
{
    internal class WebSocketMgr
    {
        // We reuse this to avoid creating more WebSocket instances, which is quite heavy
        public static WebSocket _webSocket;
        public static WebSocket Socket => _webSocket;

        public static void EnsureConnected(string token, EventHandler<HelperClasses.MessageReceivedEventArgs> handler, Core core)
        {
            if (_webSocket != null)
                return;

            _webSocket = new WebSocket(token, core);
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
            if (_webSocket == null) return;
            await _webSocket.SendPayload(payload);
        }

        public static void SubscribeMessageReceived(EventHandler<HelperClasses.MessageReceivedEventArgs> handler)
        {
            if (_webSocket == null)
                return;

            _webSocket.MessageReceived -= handler;
            _webSocket.MessageReceived += handler;
        }

        public static JsonArray GetPrivateChannels()
        {
            return Socket?.privateChannelsData as JsonArray
                   ?? new JsonArray();
        }

        public static JsonArray GetGuilds()
        {
            return Socket?.guildsData as JsonArray ?? new JsonArray();
        }

        public static string GetUserStatus(string userId)
            => UserStatusMgr.UserStatusStore.GetStatus(userId);

        public static string GetCustomStatus(string userId)
            => UserStatusMgr.UserStatusStore.GetCustomStatus(userId);
    }
}
