Public Module UserInterfaceInteractions
    Public Event EV_MinimizeWindow()
    Public Event EV_RestoreWindow()

    Public Sub MinimizeWindow()
        RaiseEvent EV_MinimizeWindow()
    End Sub

    Public Sub RestoreWindow()
        RaiseEvent EV_RestoreWindow()
    End Sub
End Module
