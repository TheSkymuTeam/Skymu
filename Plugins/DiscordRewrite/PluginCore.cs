using System;
using System.Net.Http;
using System.Text.Json;
using Yggdrasil;
using Yggdrasil.Bottles;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;
using DiscordRewrite.Networking;
using DiscordRewrite.Authentication.Sockets;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace DiscordRewrite
{
    public class Core : ICore, ICall
    {
        #region Plugin details
        public bool SupportsVideoCalls => false; // Will need to set to true, once calling has been implemented.

        // Plugin tubes
        public event EventHandler<DialogBottle> DialogTube;

        public event EventHandler<MessageBottle> MessageTube;

        public event EventHandler<ListBottle> ListTube;

        public event EventHandler<CallBottle> IncomingCallTube;
        public event EventHandler<CallBottle> CallStateChangedTube;

        // Plugin information
        public string Name { get { return "Discord Rewrite"; } }
        public string InternalName { get { return "discord-rewrite"; } }
        public bool SupportsServers { get { return true; } }

        // Plugin authentication types
        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[]
                {
                    new AuthTypeInfo(AuthenticationMethod.Password, "E-mail"),
                    new AuthTypeInfo(AuthenticationMethod.QRCode, "QR Code"),
                    new AuthTypeInfo(AuthenticationMethod.Token, "Token")
                };
            }
        }
        #endregion

        #region Plugin variables
        private AuthSocket _authSocket;
        private TaskCompletionSource<string> _qrTokenSource;

        private string _dscToken;
        #endregion

        public int TypingTimeout => throw new NotImplementedException();
        
        public int TypingRepeat => throw new NotImplementedException();

        public ClickableConfiguration[] ClickableConfigurations => throw new NotImplementedException();

        public ObservableCollection<User> TypingUsersList => throw new NotImplementedException();

        public Task<SavedCredential> StoreCredential()
        {
            throw new NotImplementedException();
        }

        public async Task<string> GetQRCode()
        {
            _authSocket?.Dispose();
            _authSocket = new AuthSocket();

            var qrReadySource = new TaskCompletionSource<string>();
            _qrTokenSource = new TaskCompletionSource<string>();

            _authSocket.qrCodeReady += url => qrReadySource.TrySetResult(url);
            _authSocket.tokenReceived += token => _qrTokenSource.TrySetResult(token);

            await _authSocket.StartSocket();
            return await qrReadySource.Task;
        }

        public async Task<LoginResult> Authenticate(AuthenticationMethod auth_type, string username, string password)
        {
            switch (auth_type)
            {
                // case AuthenticationMethod.Password: return await AuthenticateWithPassword(username, password);
                case AuthenticationMethod.Token: return await AuthenticateWithToken(password);
                case AuthenticationMethod.QRCode: return await AuthenticateWithQRCode();
                default: return LoginResult.UnsupportedAuthType;
            }
        }

        private async Task<LoginResult> AuthenticateWithToken(string dscToken)
        {
            if (string.IsNullOrEmpty(dscToken)) return LoginResult.Failure;
            // Verify if the token is legitimate and not a random string that Discord won't accept as a token.
            string usersResponse = await API.Instance.SendAPI("users/@me", HttpMethod.Get, dscToken: dscToken);

            using (var jsonDoc = JsonDocument.Parse(usersResponse))
            {
                if (!jsonDoc.RootElement.TryGetProperty("id", out _)) return LoginResult.Failure;

                _dscToken = dscToken;
                return LoginResult.Success;
            }
        }

        private async Task<LoginResult> AuthenticateWithQRCode()
        {
            if (_qrTokenSource == null) return LoginResult.Failure;

            Task timeoutTask = Task.Delay(TimeSpan.FromMinutes(5));
            Task completedTask = await Task.WhenAny(_qrTokenSource.Task, timeoutTask);

            if (completedTask == timeoutTask)
            {
                _authSocket?.StopSocket();
                return LoginResult.Failure;
            }

            _dscToken = await _qrTokenSource.Task;
            return LoginResult.Success;
        }

        public Task<LoginResult> Authenticate(SavedCredential credential) { throw new NotImplementedException(); }
        public Task<LoginResult> AuthenticateTwoFA(string code) { throw new NotImplementedException(); }

        public Task<bool> SendMessage(string conversation_id, string text = null, Attachment attachment = null, string parent_message_id = null, bool action = false)
        {
            throw new NotImplementedException();
        }

        public Task<bool> EditMessage(string conversation_id, string message_id, string new_text)
        {
            throw new NotImplementedException();
        }

        public Task<bool> DeleteMessage(string conversation_id, string message_id)
        {
            throw new NotImplementedException();
        }

        public Task<User> GetUserInfo()
        {
            throw new NotImplementedException();
        }

        public Task<List<DirectMessage>> FetchContacts()
        {
            throw new NotImplementedException();
        }

        public Task<List<Conversation>> FetchConversations()
        {
            throw new NotImplementedException();
        }

        public Task<List<Server>> FetchServers()
        {
            throw new NotImplementedException();
        }

        public Task<List<ConversationItem>> FetchMessages(Conversation conversation, Fetch fetch_type = Fetch.Newest, int message_count = 50, string identifier = null)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public Task<bool> SetConnectionStatus(PresenceStatus status)
        {
            throw new NotImplementedException();
        }

        public Task<bool> SetMood(string status)
        {
            throw new NotImplementedException();
        }

        public Task<bool> SetTyping(string idenfitier, bool typing)
        {
            throw new NotImplementedException();
        }

        public Task<ActiveCall> StartCall(string convo_id, bool is_video_call, bool start_muted)
        {
            throw new NotImplementedException();
        }

        public Task<ActiveCall> AnswerCall(string convo_id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> DeclineCall(string convo_id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> EndCall(ActiveCall call)
        {
            throw new NotImplementedException();
        }

        public Task<bool> SetMuted(ActiveCall call, bool muted)
        {
            throw new NotImplementedException();
        }

        public Task<bool> SetVideoEnabled(ActiveCall call, bool enabled)
        {
            throw new NotImplementedException();
        }
    }
}