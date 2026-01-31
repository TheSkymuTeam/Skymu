Public MustInherit Class Plugin
    Public Property Name As String
    Public Property Author As String
    Public Property Version As String
    ''' <summary>
    ''' Can embed as a resource .
    ''' </summary>
    Public Property Icon As Bitmap
    Public ReadOnly Property CanBeStopped As Boolean = False
    Public ReadOnly Property HaveClient = False

    Public MustOverride Sub Start()
    Public MustOverride Sub [Stop]()
    Public MustOverride Function GetClient() As ISkClient
End Class

<Obsolete("We will need to decide how we do that exactly later, for now, use your custom loader, get the Plugin class, and use it .")>
Public Module PluginLoader
    Public Function LoadModule()

    End Function

    Public Function LoadClient()

    End Function
End Module