/*==========================================================*/
// Yggdrasil API copyright © OmegaAOL 2025-2026.
// For any inquiries, email hackersword666@gmail.com.
/*==========================================================*/
// License: GNU Lesser General Public License v2.1 or later
// SPDX-License-Identifier: LGPL-2.1-or-later
// Web link: https://www.gnu.org/licenses/lgpl-2.1.en.html
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
        Choice
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

    /// <summary>
    /// If both is present, use Explicit over Implicit.
    /// </summary>
    public enum MentionType
    {
        None,
        Implicit,
        Explicit
    }
}
