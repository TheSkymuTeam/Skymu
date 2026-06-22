/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/licenses/agpl-3.0
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

namespace Yggdrasil.Enumerations
{
    public enum AuthenticationMethod
    {
        Password,
        QRCode,
        Passwordless,
        External,
        Token,
    }

    public enum DialogType
    {
        Error,
        Warning,
        Information,
        Question
    }

    public enum ListType
    {
        Contacts,
        Conversations,
        Servers
    }

    public enum LoginResult
    {
        Success,
        TwoFARequired,
        Failure,
        UnsupportedAuthType,
    }

    public enum PresenceStatus
    {
        Online,
        DoNotDisturb,
        Away,
        OnlineMobile,
        DoNotDisturbMobile,
        AwayMobile,
        Invisible,
        Blocked,
        Offline,
        Unknown
    }

    public enum ChannelType
    {
        Standard,
        ReadOnly,
        Announcement,
        Voice,
        Restricted,
        NoAccess,
        Forum,
    }

    public enum Fetch
    {
        Newest,
        Oldest,
        BeforeIdentifier,
        AfterIdentifier,
        NewestAfterIdentifier,
    }

    public enum CallState
    {
        Ringing,
        Active,
        Ended,
        Failed,
    }

    public enum AttachmentType
    {
        Image,
        ThumbnailImage,
        Video,
        Audio,
        File,
    }

    public enum ClickableItemType
    {
        User,
        Server,
        ServerRole,
        ServerChannel,
        GroupChat,
    }

    public enum ConversationType
    {
        DirectMessage,
        Group,
        Server,
    }
}
