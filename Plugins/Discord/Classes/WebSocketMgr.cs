using System;
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

        public static async Task<bool> WaitUntilReady(int retries, int delayMs)
        {
            while (Socket != null && !Socket.CanCheckData && retries-- > 0)
                await Task.Delay(delayMs).ConfigureAwait(false);

            return Socket != null && Socket.CanCheckData;
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

        public static string GetUserStatus(string userId)
            => UserStatusMgr.UserStatusStore.GetStatus(userId);

        public static string GetCustomStatus(string userId)
            => UserStatusMgr.UserStatusStore.GetCustomStatus(userId);
    }
}
