Imports Skymu.API.Auth

Public Interface ISkClient
    ReadOnly Property Connected As Boolean
    Property UserName As String
    Property DisplayName As String
    ''' <summary>
    ''' The current connected user !
    ''' </summary>
    Property User As IUser

    ''' <summary>
    ''' Login the user with their auth info .
    ''' </summary>
    ''' <param name="Username">Username, email, or token .</param>
    ''' <param name="Password">Password of the user, can be empty if using token .</param>
    ''' <remarks>For double factor popup, please see Auth.DoubleFactorManager .</remarks>
    Function Login(Username As String, Password As String, Optional AuthMethod As Auth.AuthMethods = AuthMethods.Standard) As LoginResult
    Sub Disconnect()
    Function GetFriends(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IUser)
    ''' <returns>A list of users of the DMs list, you may need to get each channels individually .</returns>
    Function GetDMs(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IUser)
    Function GetGroups(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IGroup)
    ''' <summary>
    ''' Get a single channel or a channel belonging to a group .
    ''' </summary>
    Function GetChannel(ID As String) As Channel
    ''' <summary>
    ''' Get a group of channels, like from a server, or other stuff .
    ''' </summary>
    Function GetGroup(ID As String) As IGroup
    Function GetUser(ID As String) As IUser
    Function GetAvailableGroups() As List(Of IGroup)
    Function GetAvailableChannelGroups() As List(Of ChannelGroup)
    ''' <summary>
    ''' Take data from the server to fill the instance .
    ''' </summary>
    ''' <returns></returns>
    Function SyncFromServer() As Result
    ''' <summary>
    ''' Take data from the instance to update the server, like applying new settings or new name .
    ''' </summary>
    ''' <remarks>You can use a cache to cache old data and only update the edited elements .</remarks>
    Function SyncToServer() As Result

    ''' <summary>
    ''' This even can be triggered when the user is finally connected .
    ''' </summary>
    ''' <remarks>I don't know if i will keep this or edit this, use it if you want .</remarks>
    <Obsolete("Old SeanKype stuff that idk if i will keep or nah, if you use it, i will keep it, safe to use, just saying i'm not sure to keep it .")>
    Event ConnectedEvent()
    <Obsolete("Old SeanKype stuff that idk if i will keep or nah, if you use it, i will keep it, safe to use, just saying i'm not sure to keep it .")>
    Event FailedEvent()
End Interface

Public Interface ISync
    Property ID As String
    ''' <summary>
    ''' Take data from the server to fill the instance .
    ''' </summary>
    Function SyncFromServer() As Result
    ''' <summary>
    ''' Take data from the instance to update the server, like applying new settings or new name .
    ''' </summary>
    ''' <remarks>You can use a cache to cache old data and only update the edited elements .</remarks>
    Function SyncToServer() As Result
End Interface

Public Interface IUser
    Property Username As String
    Property DisplayName As String
    <Obsolete("From SeanKype, i think i will remove it, it's the user object instance used by a Cobble DLL, in Skymu, it can be a Discord.NET User object .")>
    Property UserObject As Object
    Property UserID As String
    Property UserStatus As AvailabilityMode
    Property UserStatusText As String
    ''' <summary>
    ''' If empty, then do not show any activity !
    ''' </summary>
    Property UserActivity As String
    ReadOnly Property IsBlocked As Boolean
    ReadOnly Property IsFriend As Boolean

    Function GetAvatar(Optional Size As Single = 128) As Bitmap
    Function GetBanner() As Bitmap
    Function GetAvatarUrl(Optional Size As Single = 128) As Uri
    Function GetBannerUrl() As Uri
    Sub SendDM(Message As String)
    Function GetDMChannel() As IChannel
    Function GetCommonFriends() As List(Of IUser)
    Function GetCommonServers() As List(Of IGroup)
    ''' <summary>
    ''' Take data from the server to fill the instance .
    ''' </summary>
    Function Sync() As Result
    Sub ChangeBlockedStatus(IsBlocked As Boolean)
    Sub ChangeFriendStatus(IsFriend As Boolean)
End Interface

Public Enum AvailabilityMode
    Unknown = 0
    Online = 1
    Away = 2
    DoNotDisturb = 3 ' This one disable notifications by default, can be disabled in the notifications manager or by filters .
    Offline = 4 ' Apply to invisible too .
    Special = 5 ' May be used for a special mode, for example : "At Work", "Driving", etc, may need to implement a custom availability system, with stuff like if we should disable notifications, etc .
    Special2 = 6
    Special3 = 7
    Special4 = 8
End Enum

Public Interface IChannel
    Inherits ISync

    Property Name As String
    ''' <summary>
    ''' If the channel belong to a group or category, it should be set as parent here .
    ''' </summary>
    ''' <returns>An IGroup or IGroupCategory, not limited to that however ...</returns>
    Property Parent As Object
    Property ImageSource As Uri
    Property ChannelType As ChannelType
    Property Accessible As Boolean
    Property [ReadOnly] As Boolean
    ''' <summary>
    ''' Can contains stuff like if the channel have a slow mode, etc .
    ''' </summary>
    Property Settings As Dictionary(Of String, String)
    ''' <summary>
    ''' EX : U.%USER_ID%.SendMessage = "True" / R.%ROLE_ID%.MaximumCharacters = "64"
    ''' </summary>
    Property Permissions As Dictionary(Of String, String)
    ''' <summary>
    ''' Can be set by the class and read by the GUI to know how when to show settings and if the user have access to them .
    ''' </summary>
    ''' <remarks>Getting those for the first time should return every possible settings .</remarks>
    Property SettingsAccess As SettingAccessLevel
    Property PermissionsAccess As SettingAccessLevel

    Sub SendMessage(Message As String)
    Function GetMessages(Optional Max As Integer = -1) As List(Of Message)
    Function GetMessagesBefore(TargetMessage As Message, Optional Max As Integer = -1) As List(Of Message)

End Interface

Public Enum SettingAccessLevel
    NoAccess
    CanViewSettings
    CanViewAndEditSettings
End Enum

Public Enum ChannelType
    TextChannel
    VoiceChannel
End Enum

Public Interface IGroup
    Inherits ISync

    Property Name As String
    Property ImageSource As Uri
    Property MembersCount As Integer
    Property ChannelsCount As Integer
    Property Accessible As Boolean
    ''' <summary>
    ''' Can contains properties about the group, those settings aren't fixed by the API, getting those for the first time should return every possible settings .
    ''' </summary>
    Property Settings As Dictionary(Of String, String)
    ''' <summary>
    ''' Can be set by the class and read by the GUI to know how when to show settings and if the user have access to them .
    ''' </summary>
    Property SettingsAccess As SettingAccessLevel

    ''' <summary>
    ''' Get members having access to this group of channels .
    ''' </summary>
    Function GetMembers(Optional Skip As Integer = 0, Optional Max As Integer = 50) As List(Of IUser)
    Function GetChannels(Optional Skip As Integer = 0, Optional Max As Integer = 20, Optional ReturnChannelsFromCategories As Boolean = True) As List(Of IChannel)
    ''' <summary>
    ''' Categories acts like sub groups of channels, it have a name, and ID, and some channels .
    ''' </summary>
    Function GetCategories(Optional Skip As Integer = 0, Optional Max As Integer = 20) As List(Of IGroupCategory)
End Interface

Public Interface IGroupCategory
    Property Name As String
    Property Id As String
    ''' <summary>
    ''' Categories usually don't have images, supporting this isn't an obligation, but still here if someone ever need, this is optional .
    ''' </summary>
    ''' <returns></returns>
    Property ImageSource As Uri
    Property ChannelsCount As Integer

    Function GetChannels(Optional Skip As Integer = 0, Optional Max As Integer = 200) As List(Of IUser)
End Interface

Public Class Result
    Public Success As Boolean
    Public Message As String

    Public Sub New(Success As Boolean, Message As String)
        Me.Success = Success
        Me.Message = Message
    End Sub
End Class

''' <summary>
''' Reserved for stuff like Twitter's feed, Instagram's infinity scrolling, or other stuff, so, a feed, a flux of messages ...
''' </summary>
''' <remarks>Formerly called IFlux .</remarks>
<Obsolete("This is currently reserved and WIP ...")>
Public Interface IFeed

End Interface