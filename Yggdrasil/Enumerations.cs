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
        Unknown,
        LoggedOut
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

    public enum DialogType
    {
        Error,
        Warning,
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
