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

using System;
using Yggdrasil.Classes;
using Yggdrasil.Enumerations;

namespace Yggdrasil.EventArgs
{
    /// <summary>
    ///  Event arguments for DialogEvent covering all types of dialogs a plugin can invoke.
    /// </summary>
    public class DialogEventArgs : System.EventArgs
    {
        public DialogType Type { get; }
        public string Message { get; }
        public string CopyToClipboardText { get; } // text to copy to clipboard.
        public Func<bool, object> Action { get; }

        public DialogEventArgs(DialogType type, string message)
        {
            Type = type;
            Message = message;
        }

        public DialogEventArgs(DialogType type, string message, string copyToClipboardText)
        {
            Type = type;
            Message = message;
            CopyToClipboardText = copyToClipboardText;
        }

        public DialogEventArgs(DialogType type, string message, Func<bool, object> action)
        {
            Type = type;
            Message = message;
            Action = action;
        }
    }

    /// <summary>
    ///  Abstract event arguments for instant messages. Do not use these directly when invoking MessageEvent, use the event arguments that inherit from this base class.
    /// </summary>
    public abstract class MessageEventArgs : System.EventArgs
    {
        public string ConversationId { get; }

        public MessageEventArgs(string conversation_id)
        {
            ConversationId = conversation_id;
        }
    }

    /// <summary>
    ///  Event arguments used to invoke MessageEvent when an instant message is recieved.
    /// </summary>
    public class MessageRecievedEventArgs : MessageEventArgs
    {
        public ConversationItem Item { get; }
        public bool SentInServerChannel { get; }

        public MessageRecievedEventArgs(
            string conversation_id,
            ConversationItem item,
            bool sent_in_server_channel
        )
            : base(conversation_id)
        {
            Item = item;
            SentInServerChannel = sent_in_server_channel;
        }
    }

    /// <summary>
    ///  Event arguments used to invoke MessageEvent when an instant message is edited (modified).
    /// </summary>
    public class MessageEditedEventArgs : MessageEventArgs
    {
        public string OldItemId { get; }
        public ConversationItem NewItem { get; }

        public MessageEditedEventArgs(
            string conversation_id,
            string old_item_id,
            ConversationItem new_item
        )
            : base(conversation_id)
        {
            OldItemId = old_item_id;
            NewItem = new_item;
        }
    }

    /// <summary>
    ///  Event arguments used to invoke MessageEvent when an instant message is deleted.
    /// </summary>
    public class MessageDeletedEventArgs : MessageEventArgs
    {
        public string DeletedItemId { get; }

        public MessageDeletedEventArgs(string conversation_id, string deleted_item_id)
            : base(conversation_id)
        {
            DeletedItemId = deleted_item_id;
        }
    }

    /// <summary>
    ///  Event arguments that signal call state changes. Used when invoking OnIncomingCall and OnCallStateChanged (in ICall).
    /// </summary>
    public class CallEventArgs : System.EventArgs
    {
        public string ConversationId { get; }
        public CallState State { get; }
        public string FailReason { get; }
        public User Caller { get; }

        public CallEventArgs(string convo_id, CallState state)
        {
            ConversationId = convo_id;
            State = state;
        }

        public CallEventArgs(string convo_id, CallState state, string fail_reason)
        {
            ConversationId = convo_id;
            State = state;
            FailReason = fail_reason;
        }

        public CallEventArgs(string convo_id, CallState state, User caller)
        {
            ConversationId = convo_id;
            State = state;
            Caller = caller;
        }
    }
}
