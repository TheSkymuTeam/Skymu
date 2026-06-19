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

using System.Collections.Concurrent;
using System.Collections.Generic;

namespace Chaco
{
    // one turn in conversation
    internal sealed class ChatTurn
    {
        public string Role { get; }   
        public string Content { get; }

        public ChatTurn(string role, string content)
        {
            Role = role;
            Content = content;
        }
    }

    // Keeps a real back-and-forth history per conversation, so each
    // new request resends the full transcript as context (a good proper chat
    // behaviour instead of the single-turn/stateless requests).
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

        // removes the most recently added turn
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