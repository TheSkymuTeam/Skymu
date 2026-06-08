/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Skymu.Skype7
{
    public class MessageGrouper
    {
        private readonly ObservableCollection<ConversationItem> _source;
        public ObservableCollection<MessageGroup> Grouped { get; } =
            new ObservableCollection<MessageGroup>();

        private NotifyCollectionChangedEventHandler _handler;

        public MessageGrouper(ObservableCollection<ConversationItem> source)
        {
            _source = source;
        }

        public void Build(Conversation conversation)
        {
            Grouped.Clear();
            if (_handler != null)
                _source.CollectionChanged -= _handler;

            bool isGroupOrServer = conversation is Group || conversation is ServerChannel;

            int i = 0;
            while (i < _source.Count)
            {
                i = ConsumeFrom(i, isGroupOrServer);
            }

            _handler = (s, e) =>
            {
                if (e.Action != NotifyCollectionChangedAction.Add)
                    return;
                foreach (var item in e.NewItems)
                {
                    if (item is Message msg)
                        Append(msg, isGroupOrServer);
                    // non-Message items (CallStartedNotice etc) don't appear in Skype7
                }
            };
            _source.CollectionChanged += _handler;
        }

        public void Clear()
        {
            if (_handler != null)
            {
                _source.CollectionChanged -= _handler;
                _handler = null;
            }
            Grouped.Clear();
        }

        private int ConsumeFrom(int i, bool isGroupOrServer)
        {
            if (!(_source[i] is Message firstMsg))
                return i + 1;

            bool isSelf = firstMsg.Author?.Identifier == Universal.CurrentUser?.Identifier;
            bool showName = !isSelf && isGroupOrServer;
            bool isImage = IsImageMessage(firstMsg);

            if (isImage)
            {
                Grouped.Add(new MessageGroup(new[] { firstMsg }, showName));
                return i + 1;
            }

            var batch = new List<Message> { firstMsg };
            int j = i + 1;
            while (j < _source.Count)
            {
                if (!(_source[j] is Message next))
                    break;
                if (next.Author?.Identifier != firstMsg.Author?.Identifier)
                    break;
                if ((next.Time - batch[batch.Count - 1].Time).TotalSeconds >= 60)
                    break;
                if (IsImageMessage(next))
                    break;
                batch.Add(next);
                j++;
            }
            Grouped.Add(new MessageGroup(batch, showName));
            return j;
        }

        private void Append(Message message, bool isGroupOrServer)
        {
            bool isSelf = message.Author?.Identifier == Universal.CurrentUser?.Identifier;
            bool showName = !isSelf && isGroupOrServer;
            bool isImage = IsImageMessage(message);

            if (!isImage && Grouped.Count > 0)
            {
                var last = Grouped[Grouped.Count - 1];
                if (!last.IsImageGroup && last.Sender?.Identifier == message.Author?.Identifier)
                {
                    var lastMsg = last.Messages[last.Messages.Count - 1];
                    if ((message.Time - lastMsg.Time).TotalSeconds < 60)
                    {
                        last.Messages.Add(message);
                        return;
                    }
                }
            }
            Grouped.Add(new MessageGroup(new[] { message }, showName));
        }

        private static bool IsImageMessage(Message m)
        {
            if (m.Attachments == null)
                return false;
            foreach (var a in m.Attachments)
                if (a.Type == AttachmentType.Image || a.Type == AttachmentType.ThumbnailImage)
                    return true;
            return false;
        }
    }

    public class MessageGroup
    {
        public ObservableCollection<Message> Messages { get; }
        public bool ShowSenderName { get; }
        public User Sender => Messages.Count > 0 ? Messages[0].Author : null;
        public DateTime Time =>
            Messages.Count > 0 ? Messages[Messages.Count - 1].Time : default(DateTime);

        public bool IsImageGroup
        {
            get
            {
                if (Messages.Count != 1 || Messages[0].Attachments == null)
                    return false;
                foreach (var a in Messages[0].Attachments)
                    if (a.Type == AttachmentType.Image || a.Type == AttachmentType.ThumbnailImage)
                        return true;
                return false;
            }
        }

        public MessageGroup(IList<Message> messages, bool showSenderName)
        {
            Messages = new ObservableCollection<Message>(messages);
            ShowSenderName = showSenderName;
        }
    }
}
