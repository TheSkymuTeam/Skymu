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

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Globalization;
using Yggdrasil.Models;
using Yggdrasil.Enumerations;

namespace Skymu.Skype7
{
    public class MessageGrouper
    {
        private readonly ObservableCollection<ConversationItem> _source;
        public ObservableCollection<object> Grouped { get; } =
            new ObservableCollection<object>();

        private DateTime _lastDate = DateTime.MinValue;

        private NotifyCollectionChangedEventHandler _handler;

        public MessageGrouper(ObservableCollection<ConversationItem> source)
        {
            _source = source;
        }

        public void Build(Conversation conversation)
        {
            Grouped.Clear();
            _lastDate = DateTime.MinValue;
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
                switch(e.Action) {
                    case NotifyCollectionChangedAction.Add:
                        foreach(var item in e.NewItems) {
                            if(item is Message msg)
                                Append(msg, isGroupOrServer);
                            // non-Message items (CallStartedNotice etc) don't appear in Skype7
                        }
                        break;

                    case NotifyCollectionChangedAction.Remove:
                        foreach(var item in e.OldItems)
                            if(item is Message msg)
                                Remove(msg);
                        break;
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
            _lastDate = DateTime.MinValue;
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
                EmitDate(firstMsg);
                Grouped.Add(new MessageGroup(new[] { firstMsg }, showName, isSelf));
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
            EmitDate(firstMsg);
            Grouped.Add(new MessageGroup(batch, showName, isSelf));
            return j;
        }

        private void EmitDate(Message message)
        {
            if (message.Time.Date == _lastDate)
                return;
            _lastDate = message.Time.Date;
            Grouped.Add(new ChatDateItem(DateLabel(message.Time)));
        }

        private static string DateLabel(DateTime time)
        {
            var day = time.Date;
            if (day == DateTime.Today)
                return "Today";
            if (day == DateTime.Today.AddDays(-1))
                return "Yesterday";
            return time.ToString("dddd, MMMM d", CultureInfo.CurrentCulture);
        }

        private void Append(Message message, bool isGroupOrServer)
        {
            bool isSelf = message.Author?.Identifier == Universal.CurrentUser?.Identifier;
            bool showName = !isSelf && isGroupOrServer;
            bool isImage = IsImageMessage(message);

            if (!isImage)
            {
                for (int i = Grouped.Count - 1; i >= 0; i--)
                {
                    if (!(Grouped[i] is MessageGroup last))
                        continue;
                    if (!last.IsImageGroup && last.Sender?.Identifier == message.Author?.Identifier)
                    {
                        var lastMsg = last.Messages[last.Messages.Count - 1];
                        if ((message.Time - lastMsg.Time).TotalSeconds < 60 && message.Time.Date == lastMsg.Time.Date)
                        {
                            last.Messages.Add(message);
                            return;
                        }
                    }
                    break;
                }
            }
            EmitDate(message);
            Grouped.Add(new MessageGroup(new[] { message }, showName, isSelf));
        }

        private void Remove(Message Msg) {
            for(int i = Grouped.Count - 1; i >= 0; i--) {
                if (!(Grouped[i] is MessageGroup Group))
                    continue;
                if (Group.Messages.Remove(Msg)) {
                    if (Group.Messages.Count == 0) { Grouped.RemoveAt(i); }
                    return;
                }
            }
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

    public class ChatDateItem
    {
        public ChatDateItem(string text)
        {
            Text = text;
        }

        public string Text { get; }
    }

    public class MessageGroup
    {
        public ObservableCollection<Message> Messages { get; }
        public bool ShowSenderName { get; }
        public User Sender => Messages.Count > 0 ? Messages[0].Author : null;
        public DateTime Time =>
            Messages.Count > 0 ? Messages[Messages.Count - 1].Time : default(DateTime);
        public bool IsSelf { get; }

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

        public MessageGroup(IList<Message> messages, bool showSenderName, bool isSelf)
        {
            Messages = new ObservableCollection<Message>(messages);
            ShowSenderName = showSenderName;
            IsSelf = isSelf;
        }
    }
}
