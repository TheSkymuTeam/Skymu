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
// Events are called "tubes". Event arguments are called
// "bottles". Invoking an event is referred to as "loading"
//  the tube with a bottle.
/*==========================================================*/
// They want to deliver vast amounts of information using
// Yggdrasil. And again, Yggdrasil is not something that you
// just dump something on. It's not a big truck. It's a series
// of tubes. And if you don't understand, those tubes can be
// filled and if they are filled, when you put your bottle in,
// it gets in line and it's going to be delayed by anyone that
// puts into that tube enormous amounts of material, enormous
// amounts of material.
/*==========================================================*/

using System;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Yggdrasil.Bottles
{
    /// <summary>
    ///  Event arguments for DialogBottle covering all types of dialogs a plugin can invoke.
    /// </summary>
    public class DialogBottle : EventArgs
    {
        public DialogType Type { get; }
        public string Message { get; }
        public string CopyToClipboardText { get; } // text to copy to clipboard.
        public Func<bool, object> Action { get; }

        public DialogBottle(DialogType type, string message)
        {
            Type = type;
            Message = message;
        }

        public DialogBottle(DialogType type, string message, string copy_to_clipboard_text)
        {
            Type = type;
            Message = message;
            CopyToClipboardText = copy_to_clipboard_text;
        }

        public DialogBottle(DialogType type, string message, Func<bool, object> action)
        {
            Type = type;
            Message = message;
            Action = action;
        }
    }

    /// <summary>
    ///  Abstract event arguments for lists. Do not use these directly when invoking ListPipe, use the event arguments that inherit from this base class.
    /// </summary>
    public abstract class ListBottle : EventArgs
    {
        public ListType List { get; }

        public ListBottle(ListType list)
        {
            List = list;
        }
    }

    /// <summary>
    ///  Used when a list item is positively updated (created or edited, doesn't matter). May be split into dedicated 
    ///  bottles in the future, like ContactUpdatedBottle, ServerUpdatedBottle, ChannelUpdatedBottle etc.
    /// </summary>
    public class ListItemUpdatedBottle : ListBottle
    {
        public Metadata Item { get; }

        public ListItemUpdatedBottle(ListType list, Metadata item) : base (list)
        {
            Item = item;
        }
    }

    /// <summary>
    ///  Used when a list item is removed.
    /// </summary>
    public class ListItemRemovedBottle : ListBottle
    {
        public string Identifier { get; }

        public ListItemRemovedBottle(ListType list, string identifier) : base(list)
        {
            Identifier = identifier;
        }
    }

    /// <summary>
    ///  Abstract event arguments for instant messages. Do not use these directly when invoking MessagePipe, use the event arguments that inherit from this base class.
    /// </summary>
    public abstract class MessageBottle : EventArgs
    {
        public string ConversationId { get; }

        public MessageBottle(string conversation_id)
        {
            ConversationId = conversation_id;
        }
    }

    /// <summary>
    ///  Event arguments used to invoke MessageEvent when an instant message is recieved.
    /// </summary>
    public class MessageRecievedBottle : MessageBottle
    {
        public ConversationItem Item { get; }
        public bool SentInServerChannel { get; }

        public MessageRecievedBottle(
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
    public class MessageEditedBottle : MessageBottle
    {
        public string OldItemId { get; }
        public ConversationItem NewItem { get; }

        public MessageEditedBottle(
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
    public class MessageDeletedBottle : MessageBottle
    {
        public string DeletedItemId { get; }

        public MessageDeletedBottle(string conversation_id, string deleted_item_id)
            : base(conversation_id)
        {
            DeletedItemId = deleted_item_id;
        }
    }

    /// <summary>
    ///  Event arguments that signal call state changes. Used when invoking OnIncomingCall and OnCallStateChanged (in ICall).
    /// </summary>
    public class CallBottle : EventArgs
    {
        public string ConversationId { get; }
        public CallState State { get; }
        public string FailReason { get; }
        public Conversation Caller { get; }

        public CallBottle(string convo_id, CallState state)
        {
            ConversationId = convo_id;
            State = state;
        }

        public CallBottle(string convo_id, CallState state, string fail_reason)
        {
            ConversationId = convo_id;
            State = state;
            FailReason = fail_reason;
        }

        public CallBottle(Conversation caller, CallState state)
        {
            ConversationId = caller.Identifier;
            State = state;
            Caller = caller;
        }
    }
}
