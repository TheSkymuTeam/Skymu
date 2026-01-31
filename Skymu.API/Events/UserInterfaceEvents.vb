''' <summary>
''' Events related to the GUI system, should be triggered by the GUI .
''' </summary>
Public Module UserInterfaceEvents
    ''' <summary>
    ''' Should trigger when the main GUI window is minimized .
    ''' </summary>
    Public Event WindowMinimized()
    ''' <summary>
    ''' Should trigger when the main GUI window go from minimized to normal mode .
    ''' </summary>
    Public Event WindowRestored()
    ''' <summary>
    ''' Should trigger when the main GUI window is finally loaded .
    ''' </summary>
    Public Event WindowLoaded()

    Public Sub Perform_WindowMinimized()
        RaiseEvent WindowMinimized()
    End Sub

    Public Sub Perform_WindowRestored()
        RaiseEvent WindowRestored()
    End Sub

    ''' <summary>
    ''' The GUI should execute this function when it's fully loaded !
    ''' </summary>
    Public Sub Perform_WindowLoaded()
        RaiseEvent WindowLoaded()
    End Sub
End Module
