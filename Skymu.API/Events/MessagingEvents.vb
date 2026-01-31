' Events related to the messaging system . '

''' <summary>
''' Events from the messaging system(s), should be triggered by plugins .
''' </summary>
Partial Public Module MessagingEvents
    Public Event ClientLoaded(Client As ISkClient)
    ''' <summary>
    ''' The GUI should listen to it and filter channels by itself to mange notifications .
    ''' </summary>
    Public Event MessageReceived(Message As Message)
    ''' <summary>
    ''' When someone update their profile, listening to this event can help updating it on the GUI .
    ''' </summary>
    Public Event ProfileUpdated(User As IUser)
    ''' <summary>
    ''' Same as ProfileUpdated, but for the current connected user .
    ''' </summary>
    Public Event CurrentProfileUpdated(Client As ISkClient)
    Public Event DMChannelAdded(Message As Message)
    Public Event GroupChannelAdded(Server As IGroup)
    Public Event ServerChannelAdded(Server As IGroup)

    Public Sub Perform_ClientLoaded(Client As ISkClient)
        RaiseEvent ClientLoaded(Client)
    End Sub

    ''' <summary>
    ''' Should be called by the plugin to send message to the GUI .
    ''' </summary>
    Public Sub Perform_MessageReceived(Message As Message)
        RaiseEvent MessageReceived(Message)
    End Sub

    ''' <summary>
    ''' Use this when a user updated their profile, like name, profile picture, etc .
    ''' </summary>
    Public Sub Perform_ProfileUpdated(User As IUser)
        RaiseEvent ProfileUpdated(User)
    End Sub

    ''' <summary>
    ''' Should be called when the connected user's profile is edited .
    ''' </summary>
    Public Sub Perform_CurrentProfileUpdated(Client As ISkClient)
        RaiseEvent CurrentProfileUpdated(Client)
    End Sub
End Module
