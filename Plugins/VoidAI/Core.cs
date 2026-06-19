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
// Skymu plugin for VoidAI (https://voidai.app), a unified
// OpenAI-compatible gateway. Each "contact"/"conversation" in
// Skymu's UI represents one of VoidAI's (free-tier) chat models
// (We r cheap); sending a message to it is a chat completion
// request against that model, with real conversation history
// maintained per model and responses streamed in as they arrive.
// Wowie zowie... TODO: in the future maybe I can add an endpoint
// field that lets you enter your own Chat Completions
// compatible API !
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

namespace VoidAI
{
    public class Core : ICore
    {
        #region Tubes

        public event EventHandler<DialogBottle> DialogTube;
        public event EventHandler<MessageBottle> MessageTube;
        public event EventHandler<ListBottle> ListTube;

        #endregion

        #region Identity

        public string Name => "VoidAI";
        public string InternalName => "skymu-voidai-plugin";
        public bool SupportsServers => false;

        // Models can take a while to respond, especially the larger free-tier
        // ones, so keep the typing indicator alive for a generous window and
        // refresh it reasonably often while we wait on a streaming response.
        public int TypingTimeout => 8000;
        public int TypingRepeat => 5000;

        public AuthTypeInfo[] AuthenticationTypes => new[]
        {
            new AuthTypeInfo(AuthenticationMethod.Token, "API key")
        };

        public ClickableConfiguration[] ClickableConfigurations => Array.Empty<ClickableConfiguration>();

        public ObservableCollection<User> TypingUsersList { get; } = new ObservableCollection<User>();

        #endregion

        #region State

        private VoidAIClient _client;
        private readonly ConversationHistory _history = new ConversationHistory();
        private User _me;
        private string _apiKey;

        // Each free model gets a stable synthetic User acting as the "other
        // participant" in its DirectMessage, keyed by VoidAI model ID.
        private readonly Dictionary<string, User> _modelUsers = new Dictionary<string, User>();

        #endregion

        public Core()
        {
            foreach (var model in FreeModels.All)
            {
                _modelUsers[model.ModelId] = new User(
                    display_name: model.DisplayName,
                    username: model.ModelId,
                    identifier: model.ModelId,
                    status: "VoidAI free tier",
                    presence_status: PresenceStatus.Online);
            }
        }

        #region Authentication

        public async Task<LoginResult> Authenticate(AuthenticationMethod authType, string username, string password)
        {
            var apiKey = username;

            if (string.IsNullOrWhiteSpace(apiKey))
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Please enter a VoidAI API key."));
                return LoginResult.Failure;
            }

            var client = new VoidAIClient(apiKey);

            bool valid;
            try
            {
                valid = await client.ValidateKeyAsync().ConfigureAwait(false);
            }
            catch (Exception ex)
            {
                client.Dispose();
                DialogTube?.Invoke(this, new DialogBottle(
                    DialogType.Error,
                    "Could not reach VoidAI to verify the key. Check your connection and try again.",
                    ex.ToString()));
                return LoginResult.Failure;
            }

            if (!valid)
            {
                client.Dispose();
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "That VoidAI API key was rejected."));
                return LoginResult.Failure;
            }

            _apiKey = apiKey;
            _client = client;
            _me = new User("You", "you", "voidai-local-user", presence_status: PresenceStatus.Online);

            return LoginResult.Success;
        }

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            return await Authenticate(AuthenticationMethod.Token, credential.PasswordOrToken, null).ConfigureAwait(false);
        }

        public Task<LoginResult> AuthenticateTwoFA(string code)
        {
            // not needed !
            return Task.FromResult(LoginResult.Success);
        }

        public Task<SavedCredential> StoreCredential()
        {
            return Task.FromResult(new SavedCredential(_me, _apiKey, AuthenticationMethod.Token, InternalName));
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
            // SupportsServers is false, so Skymu will not call this. Returned
            // as an empty list as a safe stub per the guide's recommendation.
            return Task.FromResult(new List<Server>());
        }

        private List<DirectMessage> BuildModelDirectMessages()
        {
            return FreeModels.All
                .Select(model => new DirectMessage(
                    partner: _modelUsers[model.ModelId],
                    unread_count: 0,
                    identifier: model.ModelId))
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
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "VoidAI models only support text messages."));
                return false;
            }

            if (!_modelUsers.TryGetValue(conversationId, out var modelUser))
            {
                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, "Unknown model conversation."));
                return false;
            }

            // Echo the user's own message into the UI immediately, the same
            // way a normal chat client would, rather than waiting on the
            // network round-trip.
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
                            // First chunk creates the message.
                            MessageTube?.Invoke(this, new MessageRecievedBottle(
                                conversationId,
                                new Message(assistantMessageId, modelUser, DateTime.UtcNow, streamedText.ToString()),
                                false));
                            firstChunk = false;
                        }
                        else
                        {
                            // Every subsequent chunk edits that same message in place.
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
            catch (VoidAIException ex)
            {
                if (!firstChunk)
                {
                    _history.AddAssistantMessage(conversationId, streamedText.ToString());
                }

                var friendly = ex.ErrorCode == "RATE_LIMITED"
                    ? "VoidAI rate limit hit (100 requests/minute). Try again shortly."
                    : $"VoidAI error: {ex.Message}";

                DialogTube?.Invoke(this, new DialogBottle(DialogType.Error, friendly, ex.ToString()));
                return false;
            }
            catch (Exception ex)
            {
                DialogTube?.Invoke(this, new DialogBottle(
                    DialogType.Error,
                    "Something went wrong talking to VoidAI.",
                    ex.ToString()));
                return false;
            }
        }

        public Task<bool> EditMessage(string conversationId, string messageId, string newText)
        {
            DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Editing isn't supported for VoidAI conversations."));
            return Task.FromResult(false);
        }

        public Task<bool> DeleteMessage(string conversationId, string messageId)
        {
            DialogTube?.Invoke(this, new DialogBottle(DialogType.Warning, "Deleting isn't supported for VoidAI conversations."));
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