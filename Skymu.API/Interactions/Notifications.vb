Public Module Notifications
    Public Event ENV_ShowNotification(eader As String, Text As String, Type As NotificationsType, NavigateToChannelID As String)

    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="Header">Main text .</param>
    ''' <param name="Text"></param>
    ''' <param name="NavigateToChannelID"></param>
    Public Sub ShowNotification(Header As String, Text As String, Optional Type As NotificationsType = NotificationsType.Notification, Optional NavigateToChannelID As String = "")
        RaiseEvent ENV_ShowNotification(Header, Text, Type, NavigateToChannelID)
    End Sub

    Public Enum NotificationsType
        Message
        [Call]
        Notification ' Default thing, act like an information popup but Skype-style .
        [Error]
        UpdateAvailable
    End Enum
End Module
