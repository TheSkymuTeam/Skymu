Public Module InitModule
    Public Event API_Ready()
    Public IsReady As Boolean = False

    ''' <summary>
    ''' Initiate the API, if you use the API_Ready event, please subscribe before initiating the API !
    ''' </summary>
    Public Sub Init()
        Compatibility.InitCompatibilityVector()
        IsReady = True
        RaiseEvent API_Ready()
    End Sub
End Module
