/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our license.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/
// Skymu plugin for Chat Completions, which is a protocol 
// that supports turn-by-turn chatting streamed over HTTP.
// Note that this is not an AI plugin, even though it can
// be used with a myriad of AI services that happen to
// support the Chat Completions protocol.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Yggdrasil;
using Yggdrasil.Models;
using Yggdrasil.Bottles;
using Yggdrasil.Enumerations;

namespace Chaco
{
    public class Core : ICore
    {
        #region Tubes

        public event EventHandler<DialogBottle> DialogTube;
        public event EventHandler<MessageBottle> MessageTube;
        public event EventHandler<ListBottle> ListTube;

        #endregion

        #region Identity

        public string Name => "Chat Completions";
        public string InternalName => "chat-completions";
        public bool SupportsServers => false;
        public int TypingTimeout => 8000;
        public int TypingRepeat => 5000;

        public AuthTypeInfo[] AuthenticationTypes => new[]
{
    new AuthTypeInfo(
        AuthenticationMethod.Password,
        custom_text_username_field: "Base URL, e.g. https://api.skymu.app/v1",
        custom_text_password_field: "API key")
};

        public ClickableConfiguration[] ClickableConfigurations => Array.Empty<ClickableConfiguration>();

        public ObservableCollection<User> TypingUsersList { get; } = new ObservableCollection<User>();

        #endregion

        #region State

        private ChacoClient _client;
        private readonly ConversationHistory _history = new ConversationHistory();
        private User _me;
        private string _baseUrl;
        private string _apiKey;
        private readonly Dictionary<string, User> _modelUsers = new Dictionary<string, User>();
        private List<string> _modelIds = new List<string>();

        #endregion

        #region Authentication

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password)
        {
            var baseUrl = username;
            var apiKey = password;

            if (string.IsNullOrWhiteSpace(baseUrl))
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Please enter a base URL."));
                return LoginResult.Failure;
            }

            if (!Uri.TryCreate(baseUrl.Trim(), UriKind.Absolute, out var parsed)
                || (parsed.Scheme != Uri.UriSchemeHttp && parsed.Scheme != Uri.UriSchemeHttps))
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "That doesn't look like a valid http(s) URL."));
                return LoginResult.Failure;
            }

            var client = new ChacoClient(baseUrl.Trim(), apiKey);

            List<string> modelIds;
            try
            {
                modelIds = await client.ListModelsAsync().ConfigureAwait(false);
            }
            catch (ChacoException ex)
            {
                client.Dispose();
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, $"Endpoint error: {ex.Message}", ex.ToString()));
                return LoginResult.Failure;
            }
            catch (Exception ex)
            {
                client.Dispose();
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Could not reach that endpoint.", ex.ToString()));
                return LoginResult.Failure;
            }

            if (modelIds == null || modelIds.Count == 0)
            {
                client.Dispose();
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Endpoint reported no models."));
                return LoginResult.Failure;
            }

            _baseUrl = baseUrl.Trim();
            _apiKey = apiKey;
            _client = client;
            _modelIds = modelIds;

            _modelUsers.Clear();
            foreach (var modelId in _modelIds)
            {
                _modelUsers[modelId] = new User(modelId, modelId, modelId, _baseUrl, PresenceStatus.Online);
            }

            _me = new User("You", _baseUrl, _baseUrl, presence_status: PresenceStatus.Online);
            return LoginResult.Success;
        }

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            return await Authenticate(AuthenticationMethod.Password, credential.User.Username, credential.PasswordOrToken).ConfigureAwait(false);
        }

        public Task<LoginResult> AuthenticateTwoFA(string code)
        {
            // not needed !
            return Task.FromResult(LoginResult.Success);
        }

        public Task<SavedCredential> StoreCredential()
        {
            return Task.FromResult(new SavedCredential(_me, _apiKey, AuthenticationMethod.Password, InternalName));
        }

        public Task<string> GetQRCode() => Task.FromResult(string.Empty);

        #endregion

        #region User info

        public Task<User> GetUserInfo()
        {
            return Task.FromResult(_me);
        }

        #endregion

        #region Lists

        // Contacts and conversations should be identical here.
        public Task<List<DirectMessage>> FetchContacts()
        {
            return Task.FromResult(BuildModelDirectMessages());
        }

        public Task<List<Conversation>> FetchConversations()
        {
            return Task.FromResult(BuildModelDirectMessages().Cast<Conversation>().ToList());
        }

        public Task<List<Server>> FetchServers()
        {
            // TODO maybe make simulated CC servers
            return Task.FromResult(new List<Server>());
        }

        private List<DirectMessage> BuildModelDirectMessages()
        {
            return _modelIds
                .Select(modelId => new DirectMessage(_modelUsers[modelId], 0, modelId))
                .ToList();
        }

        #endregion

        #region Messages

        public Task<List<ConversationItem>> FetchMessages(
            Conversation conversation,
            Fetch fetchType,
            int messageCount,
            string identifier)
        {
            // The full transcript already lives in-memory in ConversationHistory
            // (it has to, in order to be resent as context on every request).
            // Surface that same transcript back to Skymu as ConversationItems
            // so reopening a conversation shows prior turns in this session.
            var modelId = conversation.Identifier;
            var history = _history.GetHistory(modelId);
            var modelUser = _modelUsers.TryGetValue(modelId, out var u) ? u : new User(modelId, modelId, modelId);

            var items = new List<ConversationItem>();
            var baseTime = DateTime.UtcNow.AddSeconds(-history.Count);
            for (int i = 0; i < history.Count; i++)
            {
                var turn = history[i];
                var author = turn.Role == "user" ? _me : modelUser;
                items.Add(new Message(
                    identifier: $"{modelId}-{i}",
                    author: author,
                    time: baseTime.AddSeconds(i),
                    text: turn.Content));
            }

            return Task.FromResult(items);
        }

        public async Task<bool> SendMessage(
            string conversationId,
            string text,
            Attachment attachment,
            string parentMessageId,
            bool action)
        {
            if (string.IsNullOrEmpty(text))
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Chaco only supports text messages."));
                return false;
            }

            if (!_modelUsers.TryGetValue(conversationId, out var modelUser))
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Unknown model conversation."));
                return false;
            }

            var userMessageId = Guid.NewGuid().ToString("N");
            MessageTube?.Invoke(this, new MessageRecievedBottle(
                conversationId,
                new Message(userMessageId, _me, DateTime.UtcNow, text),
                false));

            _history.AddUserMessage(conversationId, text);

            string assistantMessageId = Guid.NewGuid().ToString("N");
            bool firstChunk = true;
            var streamedText = new System.Text.StringBuilder();

            try
            {
                var fullResponse = await _client.SendStreamingAsync(
                    conversationId,
                    _history.GetHistory(conversationId),
                    onDelta: delta =>
                    {
                        streamedText.Append(delta);

                        if (firstChunk)
                        {
                            // first chunk creates the message
                            MessageTube?.Invoke(this, new MessageRecievedBottle(
                                conversationId,
                                new Message(assistantMessageId, modelUser, DateTime.UtcNow, streamedText.ToString()),
                                false));
                            firstChunk = false;
                        }
                        else
                        {
                            // every subsequent chunk edits that same message in place
                            MessageTube?.Invoke(this, new MessageEditedBottle(
                                conversationId,
                                assistantMessageId,
                                new Message(assistantMessageId, modelUser, DateTime.UtcNow, streamedText.ToString())));
                        }
                    }).ConfigureAwait(false);

                if (string.IsNullOrEmpty(fullResponse))
                {
                    // Oop (fallback)
                    fullResponse = "(no response)";
                    if (firstChunk)
                    {
                        MessageTube?.Invoke(this, new MessageRecievedBottle(
                            conversationId,
                            new Message(assistantMessageId, modelUser, DateTime.UtcNow, fullResponse),
                            false));
                    }
                    else
                    {
                        MessageTube?.Invoke(this, new MessageEditedBottle(
                            conversationId,
                            assistantMessageId,
                            new Message(assistantMessageId, modelUser, DateTime.UtcNow, fullResponse)));
                    }
                }

                _history.AddAssistantMessage(conversationId, fullResponse);
                return true;

            }
            catch (ChacoException ex)
            {
                if (!firstChunk)
                {
                    _history.AddAssistantMessage(conversationId, streamedText.ToString());
                }

                var friendly = ex.ErrorCode == "RATE_LIMITED"
                    ? "Provider rate limit hit. Try again shortly."
                    : $"Chaco error: {ex.Message}";

                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, friendly, ex.ToString()));
                return false;
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(
                    DialogType.Error,
                    "Something went wrong talking to the provider.",
                    ex.ToString()));
                return false;
            }
        }

        public Task<bool> EditMessage(string conversationId, string messageId, string newText)
        {
            DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Editing isn't supported for Chaco conversations."));
            return Task.FromResult(false);
        }

        public Task<bool> DeleteMessage(string conversationId, string messageId)
        {
            DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Deleting isn't supported for Chaco conversations."));
            return Task.FromResult(false);
        }

        #endregion

        #region Presence

        public Task<bool> SetConnectionStatus(PresenceStatus status)
        {
            if (_me != null) _me.ConnectionStatus = status;
            return Task.FromResult(true);
        }

        public Task<bool> SetMood(string status)
        {
            if (_me != null) _me.Status = status;
            return Task.FromResult(true);
        }

        public Task<bool> SetTyping(string identifier, bool typing)
        {
            // not apply
            return Task.FromResult(false);
        }

        #endregion

        #region Cleanup

        public void Dispose()
        {
            _client?.Dispose();
            _client = null;
        }

        #endregion
    }
}