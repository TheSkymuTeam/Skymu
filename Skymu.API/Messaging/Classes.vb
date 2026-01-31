Public MustInherit Class Channel
    Implements IChannel

    Public Overridable Property Name As String Implements IChannel.Name
    Public Overridable Property Id As String Implements IChannel.Id
    Public Overridable Property ImageSource As Uri Implements IChannel.ImageSource
    Public Property Accessible As Boolean Implements IChannel.Accessible

    Public Event MessageReceived(Message As Message)

    Public Overridable Property IsAsyncCompatible As Boolean = False

    Public Property Parent As Object Implements IChannel.Parent

    Public Property ChannelType As ChannelType Implements IChannel.ChannelType

    Public Property [ReadOnly] As Boolean Implements IChannel.ReadOnly

    Public Property Settings As Dictionary(Of String, String) Implements IChannel.Settings

    Public Property Permissions As Dictionary(Of String, String) Implements IChannel.Permissions

    Public Property SettingsAccess As SettingAccessLevel = SettingAccessLevel.NoAccess Implements IChannel.SettingsAccess

    Public Property PermissionsAccess As SettingAccessLevel = SettingAccessLevel.NoAccess Implements IChannel.PermissionsAccess

    Public MustOverride Sub SendMessage(Text As String) Implements IChannel.SendMessage

    Public MustOverride Function GetMessages(Optional Max As Integer = -1) As List(Of Message) Implements IChannel.GetMessages

    Public MustOverride Function GetMessagesBefore(TargetMessage As Message, Optional Max As Integer = -1) As List(Of Message) Implements IChannel.GetMessagesBefore

    ''' <summary>
    ''' Execute a method for each message recovered by the implementation .
    ''' </summary>
    Public Overridable Sub ForEachMessageAsync(Action As Action(Of Message), Optional Max As Integer = -1)
    End Sub

    ''' <summary>
    ''' Execute a method for each message recovered by the implementation before a certain time .
    ''' </summary>
    Public Overridable Sub ForEachMessageBeforeAsync(Action As Action(Of Message), TargetMessage As Message, Optional Max As Integer = -1)
    End Sub

    Public Function SyncFromServer() As Result Implements ISync.SyncFromServer

    End Function

    Public Function SyncToServer() As Result Implements ISync.SyncToServer

    End Function
End Class

Public Class DummyChannel
    Inherits Channel

    Public Sub New(Name As String, Optional Id As String = "0")
        Me.Name = Name
        Me.Id = Id
    End Sub

    Public Overrides Sub SendMessage(Text As String)
    End Sub

    Public Overrides Function GetMessages(Optional Max As Integer = -1) As List(Of Message)
        Return New List(Of Message)
    End Function

    Public Overrides Function GetMessagesBefore(TargetMessage As Message, Optional Max As Integer = -1) As List(Of Message)
        Return New List(Of Message)
    End Function
End Class

Public Class DummyUser
    Implements IUser

    Public Property Username As String Implements IUser.Username
    Public Property UserObject As Object Implements IUser.UserObject
    Public Property UserID As String Implements IUser.UserID
    Public Property UserStatus As AvailabilityMode Implements IUser.UserStatus
    Public Property UserStatusText As String Implements IUser.UserStatusText
    Public Property DisplayName As String Implements IUser.DisplayName

    Public Property UserActivity As String Implements IUser.UserActivity
    Public ReadOnly Property IsBlocked As Boolean = False Implements IUser.IsBlocked
    Public ReadOnly Property IsFriend As Boolean = False Implements IUser.IsFriend

    Public Sub SendDM(Message As String) Implements IUser.SendDM
        Console.WriteLine($"(DummyUser) {Username} : " & Message)
    End Sub

    Public Sub ChangeBlockedStatus(IsBlocked As Boolean) Implements IUser.ChangeBlockedStatus
        Throw New NotImplementedException()
    End Sub

    Public Sub ChangeFriendStatus(IsFriend As Boolean) Implements IUser.ChangeFriendStatus
        Throw New NotImplementedException()
    End Sub

    Public Function GetAvatar(Optional Size As Single = 128) As Bitmap Implements IUser.GetAvatar
        Return New Bitmap(128, 128)
    End Function

    Public Function GetAvatarUrl(Optional Size As Single = 128) As Uri Implements IUser.GetAvatarUrl
        Return Nothing
    End Function

    Public Function GetDMChannel() As IChannel Implements IUser.GetDMChannel
        Return New DummyChannel(Username, UserID & "_CHAN")
    End Function

    Public Function GetBanner() As Bitmap Implements IUser.GetBanner
        Throw New NotImplementedException()
    End Function

    Public Function GetBannerUrl() As Uri Implements IUser.GetBannerUrl
        Throw New NotImplementedException()
    End Function

    Public Function GetCommonFriends() As List(Of IUser) Implements IUser.GetCommonFriends
        Throw New NotImplementedException()
    End Function

    Public Function GetCommonServers() As List(Of IGroup) Implements IUser.GetCommonServers
        Throw New NotImplementedException()
    End Function

    Public Function Sync() As Result Implements IUser.Sync
        Throw New NotImplementedException()
    End Function
End Class

Public Class Message
    Public Property Author As IUser
    ''' <summary>
    ''' If applicable, will contains an IChannel .
    ''' </summary>
    Property Parent As Object
    Public Property Content As String
    ''' <summary>
    ''' If the ID is 0 or empty, this mean that the ID isn't known yet and the message was likely made to be sent, if received, it should have one .
    ''' </summary>
    Public Property ID As String
    ''' <summary>
    ''' Contains the ID of the message it replies to .
    ''' </summary>
    Public Property ReplyToID As String
    Public Property Time As Date
    ''' <summary>
    ''' If not edited then should be Nothing/null, else just contains the date of the last edit .
    ''' </summary>
    ''' <returns></returns>
    Public Property LastEdited As Date = Nothing
    ''' <summary>
    ''' See VCStuff properties please, enable this if it's a voice chat notification, like a missed call or something .
    ''' </summary>
    Public Property IsVoiceNotification As Boolean = False
    ''' <summary>
    ''' Duration of the voice chat, ignored if still running .
    ''' </summary>
    Public Property VCDuration As TimeSpan = TimeSpan.Zero
    ''' <summary>
    ''' If you missed the voice chat .
    ''' </summary>
    Public Property VCMissed As Boolean = False
    ''' <summary>
    ''' If the voice chat is still running .
    ''' </summary>
    Public Property VCStillRunning As Boolean = False
    ''' <summary>
    ''' Self just means it's coming from the connected user, maybe comparing the Author ID to the connected user ID can work instead .
    ''' </summary>
    <Obsolete("From SeanKype, will maybe be deleted since you can already check the connected user ID, will see if i delete it or nah in the future .")>
    Public Property Self As Boolean
    Public Property ChannelID As String

    Public Sub New(Author As IUser, Content As String, Optional ID As String = "0", Optional Time As Date? = Nothing, Optional SentByCurrentUser As Boolean = False, Optional ChannelID As String = "0")
        Me.Author = Author
        Me.Content = Content
        Me.ID = ID
        Me.Time = If(Time.HasValue, Time.Value, DateTime.Now)
        Me.Self = SentByCurrentUser
        Me.ChannelID = ChannelID
    End Sub
End Class

''' <summary>
''' Base user class but with more features and helper stuff .
''' </summary>
<Obsolete("From SeanKype, useless for now (and not functionnal anyway) since it was never finished, but will maybe be finished someday .")>
Public MustInherit Class ExtendedUser

End Class

''' <summary>
''' Represent a channel group, so like a Discord guild (server) .
''' </summary>
<Obsolete("From SeanKype, was supposed to be a helper class for Discord-like servers, was never done, will maybe be finished someday and renamed too .")>
Public MustInherit Class ChannelGroup

End Class