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
using System.ComponentModel;
using Yggdrasil.Enumerations;

namespace Yggdrasil.Models
{
    public abstract class Metadata : INotifyPropertyChanged
    {
        private string _displayName;
        private string _description;
        private byte[] _avatar;

        public ICore Core { get; set; }
        public string Identifier { get; set; }

        public string DisplayName
        {
            get => _displayName;
            set => Set(ref _displayName, value, nameof(DisplayName));
        }

        public byte[] Avatar
        {
            get => _avatar;
            set => Set(ref _avatar, value, nameof(Avatar));
        }

        public string Description
        {
            get => _description;
            set => Set(ref _description, value, nameof(Description));
        }

        protected Metadata(ICore core, string displayName, string identifier, byte[] avatar = null, string description = null)
        {
            Core = core;
            _displayName = displayName;
            Identifier = identifier;
            _avatar = avatar;
            _description = description;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void Set<T>(ref T field, T value, string name)
        {
            if (Equals(field, value))
                return;
            field = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }

    public abstract class Participant : Metadata
    {
        protected Participant(ICore core, string displayName, string identifier, byte[] avatar = null)
            : base(core, displayName, identifier, avatar) { }
    }

    public class Role : Metadata
    {
        private uint _hex_color;
        private bool _hoist;
        private bool _mentionable;

        public uint HexColor
        {
            get => _hex_color;
            set => Set(ref _hex_color, value, nameof(HexColor));
        }

        public bool Hoist
        {
            get => _hoist;
            set => Set(ref _hoist, value, nameof(Hoist));
        }

        public bool Mentionable
        {
            get => _mentionable;
            set => Set(ref _mentionable, value, nameof(Mentionable));
        }

        public Role(
            ICore core,
            string title,
            string identifier,
            uint hex_color = 0,
            byte[] avatar = null,
            bool hoist = false,
            bool mentionable = false
        ) : base(core, title, identifier, avatar)
        {
            _hex_color = hex_color;
            _hoist = hoist;
            _mentionable = mentionable;
        }
    }

    public class User : Participant
    {
        private string _status;
        private string _username;
        private PresenceStatus _presence_status;

        public string Status
        {
            get => _status;
            set => Set(ref _status, value, nameof(Status));
        }

        public string Username
        {
            get => _username;
            set => Set(ref _username, value, nameof(Username));
        }

        public PresenceStatus ConnectionStatus
        {
            get => _presence_status;
            set => Set(ref _presence_status, value, nameof(ConnectionStatus));
        }

        public User(
            ICore core,
            string display_name,
            string username,
            string identifier,
            string status = null,
            PresenceStatus presence_status = PresenceStatus.Offline,
            byte[] avatar = null
        )
            : base(core, display_name, identifier, avatar)
        {
            _username = username;
            _status = status;
            _presence_status = presence_status;
        }
    }

    public abstract class Conversation : Metadata
    {
        private int _unreadCount;
        private DateTime _lastMessageTime;

        public int UnreadCount
        {
            get => _unreadCount;
            set => Set(ref _unreadCount, value, nameof(UnreadCount));
        }

        public DateTime LastMessageTime
        {
            get => _lastMessageTime;
            set => Set(ref _lastMessageTime, value, nameof(LastMessageTime));
        }

        protected Conversation(
            ICore core,
            string display_name,
            string identifier,
            int unread_count,
            byte[] profile_picture = null,
            DateTime? last_message_time = null,
            string description = null
        )
            : base(core, display_name, identifier, profile_picture, description)
        {
            _unreadCount = unread_count;
            _lastMessageTime = last_message_time ?? DateTime.Now;
        }
    }

    public class DirectMessage : Conversation
    {
        public User Partner { get; }

        public DirectMessage(
            User partner,
            int unread_count,
            string identifier,
            DateTime? last_message_time = null
        )
            : base(
                partner.Core,
                partner.DisplayName,
                identifier,
                unread_count,
                partner.Avatar,
                last_message_time
            )
        {
            Partner = partner;
        }
        public DirectMessage(
            ICore core,
            User partner,
            int unread_count,
            string identifier,
            DateTime? last_message_time = null
        )
            : base(
                core,
                partner.DisplayName,
                identifier,
                unread_count,
                partner.Avatar,
                last_message_time
            )
        {
            Partner = partner;
        }
    }

    public class Group : Conversation
    {
        private User[] _members;

        public User[] Members
        {
            get => _members;
            set => Set(ref _members, value, nameof(Members));
        }

        public Group(
            ICore core,
            string name,
            string identifier,
            int unread_count,
            User[] members,
            byte[] profile_picture = null,
            DateTime? last_message_time = null
        )
            : base(core, name, identifier, unread_count, profile_picture, last_message_time)
        {
            _members = members;
        }
    }

    public class Server : Metadata
    {
        private List<ServerMember> _members;
        private List<Role> _roles;
        private List<ServerChannel> _channels;
        private ObservableCollection<object> _groupedChannels;
        private int _memberCount;
        private int _position;
        private string _invite;

        public List<ServerMember> Members
        {
            get => _members;
            set => Set(ref _members, value, nameof(Members));
        }

        public List<Role> Roles
        {
            get => _roles;
            set => Set(ref _roles, value, nameof(Roles));
        }

        public List<ServerChannel> Channels
        {
            get => _channels;
            set => Set(ref _channels, value, nameof(Channels));
        }

        public ObservableCollection<object> GroupedChannels
        {
            get => _groupedChannels;
            set => Set(ref _groupedChannels, value, nameof(GroupedChannels));
        }

        public int MemberCount
        {
            get => _memberCount;
            set => Set(ref _memberCount, value, nameof(MemberCount));
        }

        public int Position
        {
            get => _position;
            set => Set(ref _position, value, nameof(Position));
        }

        public string Invite
        {
            get => _invite;
            set => Set(ref _invite, value, nameof(Invite));
        }

        public Dictionary<string, string> CategoryMap { get; set; }

        public Server(
            ICore core,
            string name,
            string identifier,
            List<ServerMember> members,
            List<Role> roles,
            List<ServerChannel> channels,
            byte[] profile_picture = null,
            Dictionary<string, string> category_map = null,
            int member_count = 0,
            string description = null,
            int position = 0,
            string invite = null
        )
            : base(core, name, identifier, profile_picture, description)
        {
            _members = members;
            _roles = roles;
            _channels = channels;
            CategoryMap = category_map ?? new Dictionary<string, string>();
            _groupedChannels = new ObservableCollection<object>();
            _memberCount = member_count == 0 && members != null ? members.Count : member_count;
            _invite = invite;
            _position = position;
        }
    }

    public class ServerChannel : Conversation
    {
        public string ParentServerID { get; }
        public ChannelType ChannelType { get; }
        public string CategoryID { get; }
        public int Position { get; }

        public ServerChannel(
            ICore core,
            string name,
            string identifier,
            string parent_server_id,
            int unread_count,
            ChannelType channel_type,
            string category_id = null,
            int position = 0,
            string description = null
        )
            : base(core, name, identifier, unread_count, null, last_message_time, description)
        {
            ParentServerID = parent_server_id;
            Description = description;
            ChannelType = channel_type;
            CategoryID = category_id;
            Position = position;
        }
    }

    public class ServerMember
    {
        public User User { get; }
        public List<Role> Roles { get; }
        public string Nickname { get; set; }
        public DateTime? JoinDate { get; }

        public ServerMember(User user, List<Role> roles = null, string nickname = null, DateTime? join_date = null)
        {
            User = user;
            Roles = roles ?? new List<Role>();
            Nickname = nickname;
            JoinDate = join_date;
        }

    }

    public class Attachment
    {
        public string Name { get; set; }
        public byte[] File { get; set; }
        public string Url { get; set; }
        public AttachmentType Type { get; set; }

        public Attachment(byte[] file, string name)
        {
            File = file;
            Name = name;
            Type = AttachmentType.File;
        }

        public Attachment(byte[] file, string name, string url, AttachmentType type)
        {
            File = file;
            Name = name;
            Url = url;
            Type = type;
        }

        public Attachment(string location_url, string name)
        {
            Url = location_url;
            Name = name;
        }
    }

    public class AuthTypeInfo
    {
        public AuthenticationMethod AuthType { get; set; }
        public string CustomTextUsername { get; set; }
        public string CustomTextPassword { get; set; }
        public string CustomTextAuthType { get; set; }
        public string Url { get; set; }

        public AuthTypeInfo(
            AuthenticationMethod type,
            string custom_text_username_field = null,
            string custom_text_auth_type = null,
            string custom_text_password_field = null
        )
        {
            AuthType = type;
            CustomTextAuthType = custom_text_auth_type;
            CustomTextUsername = custom_text_username_field;
            CustomTextPassword = custom_text_password_field;
        }
    }

    public class SavedCredential
    {
        public User User { get; }
        public string PasswordOrToken { get; }
        public string Plugin { get; }
        public AuthenticationMethod AuthenticationType { get; }

        public SavedCredential(
            User user,
            string password_or_token,
            AuthenticationMethod authentication_type,
            string plugin
        )
        {
            User = user;
            PasswordOrToken = password_or_token;
            AuthenticationType = authentication_type;
            Plugin = plugin;
        }
    }

    public abstract class ConversationItem
    {
        public DateTime Time { get; set; } // Time when the item was sent. If your server API returns send_started and send_completed (for example) use send_completed.
        public string Identifier { get; set; } // Unique identifier for the item
        public string ConversationId { get; set; } // Identifier of the conversation that the item is in
    }

    public class Message : ConversationItem
    {
        public User Author { get; set; } // Who sent the message
        public string Text { get; set; } // Message body
        public Attachment[] Attachments { get; set; } // Media or files attached to the message
        public Message ParentMessage { get; set; } // Parent message, if applicable (e.g. this message is a reply to another message)
        public bool IsForwarded { get; set; }

        public string PreviousMessageIdentifier { get; set; } // TODO: TO BE REMOVED!!
        public bool PreviousMessageIsAction { get; set; } // TODO: REMOVE THIS TOO!!!

        public Message(
            string identifier,
            User author,
            DateTime time,
            string text = null,
            Attachment[] attachments = null,
            Message parent_message = null,
            bool is_forwarded = false
        )
        {
            Identifier = identifier;
            Author = author;
            Text = text;
            Time = time;
            Attachments = attachments;
            ParentMessage = parent_message;
            IsForwarded = is_forwarded;
        }
    }

    public class ActionMessage : Message
    {
        public ActionMessage(
            string identifier,
            User sender,
            DateTime time,
            string text = null,
            Attachment[] attachments = null,
            Message parent_message = null,
            bool is_forwarded = false
        )
            : base(identifier, sender, time, text, attachments, parent_message, is_forwarded) { }
    }

    public class CallStartedNotice : ConversationItem
    {
        public User StartedBy { get; set; }
        public bool IsVideoCall { get; set; } // Set to true if the call is video

        public CallStartedNotice(User started_by, bool is_video_call, DateTime time)
        {
            StartedBy = started_by;
            Time = time;
            IsVideoCall = is_video_call;
        }
    }

    public class CallEndedNotice : ConversationItem
    {
        public User StartedBy { get; set; }
        public TimeSpan Duration { get; set; } // Length of call
        public bool IsVideoCall { get; set; } // Set to true if the call was video

        public CallEndedNotice(
            User started_by,
            TimeSpan duration,
            bool is_video_call,
            DateTime time
        ) // time here is when the "Call ended" notification was sent, not when call started
        {
            StartedBy = started_by;
            Duration = duration;
            Time = time;
            IsVideoCall = is_video_call;
        }
    }

    public class ClickableConfiguration
    {
        public string DelimiterLeft { get; set; } // left delimiter for clickable item, e.g. '<@', '@'.
        public string DelimiterRight { get; set; } // right delimiter for clickable item, e.g. '>'. Space means left-only delimitation in practice.
        public ClickableItemType Type { get; set; } // items that are clickable within the clickability delimiter range

        public ClickableConfiguration(
            ClickableItemType type,
            string delimiter_left,
            string delimiter_right
        )
        {
            DelimiterLeft = delimiter_left;
            DelimiterRight = delimiter_right;
            Type = type;
        }
    }

    public class ExtraConfiguration
    {
        public string title { get; set; }
        public string description { get; set; }
        public Action onRun { get; set;  }

        public ExtraConfiguration(
            string title,
            Action onRun,
            string description = null
        )
        {
            this.title = title;
            this.description = description;
            this.onRun = onRun;
        }
    }

    public class ActiveCall
    {
        public string CallId { get; }
        public string ConversationId { get; }
        public bool IsVideo { get; }
        public CallState State { get; set; }
        public DateTime StartedAt { get; }
        public User[] Participants { get; set; }

        public ActiveCall(
            string call_id,
            string conversation_id,
            bool is_video,
            User[] participants
        )
        {
            CallId = call_id;
            ConversationId = conversation_id;
            IsVideo = is_video;
            StartedAt = DateTime.UtcNow;
            Participants = participants;
            State = CallState.Ringing;
        }
    }
}
