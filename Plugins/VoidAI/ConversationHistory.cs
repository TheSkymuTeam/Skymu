using System.Collections.Concurrent;
using System.Collections.Generic;

namespace VoidAI
{
    // A single turn in a conversation, shaped to map directly onto the
    // "messages" array VoidAI's chat completions endpoint expects.
    internal sealed class ChatTurn
    {
        public string Role { get; }   // "user" or "assistant"
        public string Content { get; }

        public ChatTurn(string role, string content)
        {
            Role = role;
            Content = content;
        }
    }

    // Keeps a real back-and-forth history per model or conversation, so each
    // new request resends the full transcript as context (a good proper chat
    // behaviour instead of the single-turn/stateless requests).
    // Keyed by Skymu conversation identifier which in this plugin is
    // always the VoidAI model ID since each "contact" is a 1:1 stand-in
    // for a model.
    internal sealed class ConversationHistory
    {
        private readonly ConcurrentDictionary<string, List<ChatTurn>> _byConversation =
            new ConcurrentDictionary<string, List<ChatTurn>>();

        public void AddUserMessage(string conversationId, string text)
        {
            GetList(conversationId).Add(new ChatTurn("user", text));
        }

        public void AddAssistantMessage(string conversationId, string text)
        {
            GetList(conversationId).Add(new ChatTurn("assistant", text));
        }

        // Removes the most recently added assistant turn. Used to roll back
        // history if a streamed response fails partway through, so a retry
        // doesn't end up with a broken/duplicate assistant turn in context.
        public void RemoveLastAssistantMessage(string conversationId)
        {
            var list = GetList(conversationId);
            for (int i = list.Count - 1; i >= 0; i--)
            {
                if (list[i].Role == "assistant")
                {
                    list.RemoveAt(i);
                    return;
                }
            }
        }

        public IReadOnlyList<ChatTurn> GetHistory(string conversationId)
        {
            return GetList(conversationId);
        }

        public void Clear(string conversationId)
        {
            _byConversation.TryRemove(conversationId, out _);
        }

        private List<ChatTurn> GetList(string conversationId)
        {
            return _byConversation.GetOrAdd(conversationId, _ => new List<ChatTurn>());
        }
    }
}