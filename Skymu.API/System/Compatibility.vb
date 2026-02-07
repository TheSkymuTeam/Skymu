''' <summary>
''' Here is the compatibility settings, if GUI support themes, then Themes should be True, if client support Groups, Groups will be True and client can check that and enable it's Groups features .
''' </summary>
''' <remarks>This is an unfinished prototype that is subject to changes ! This applies to both GUI and clients, clients could have their own compatibility settings in the future ! (Will be easy to port, don't worry .)</remarks>
Public Module Compatibility
    Dim Vector As New SortedDictionary(Of String, String)

    Public Property Themes
        Get
            Return GetCompatibilityValue("Themes")
        End Get
        Set(value)
            SetCompatibilityValue("Themes", value)
        End Set
    End Property
    ''' <summary>
    ''' Compatible with groups .
    ''' </summary>
    ''' <returns></returns>
    Public Property Groups
        Get
            Return GetCompatibilityValue("Groups")
        End Get
        Set(value)
            SetCompatibilityValue("Groups", value)
        End Set
    End Property
    ''' <summary>
    ''' Compatible with servers .
    ''' </summary>
    ''' <returns></returns>
    Public Property Servers
        Get
            Return GetCompatibilityValue("Servers")
        End Get
        Set(value)
            SetCompatibilityValue("Servers", value)
        End Set
    End Property
    ''' <summary>
    ''' For normal login, using the GUI's username & password form.
    ''' </summary>
    Public Property UsernameLogin
        Get
            Return GetCompatibilityValue("UsernameLogin")
        End Get
        Set(value)
            SetCompatibilityValue("UsernameLogin", value)
        End Set
    End Property
    ''' <summary>
    ''' For normal login, same as UsernameLogin, but will ask for email instead or username, or both if both are enabled.
    ''' </summary>
    Public Property EmailLogin
        Get
            Return GetCompatibilityValue("EmailLogin")
        End Get
        Set(value)
            SetCompatibilityValue("EmailLogin", value)
        End Set
    End Property
    ''' <summary>
    ''' If normal login not available, will use token login, will also enable dialog for token login.
    ''' </summary>
    ''' <returns></returns>
    Public Property TokenLogin
        Get
            Return GetCompatibilityValue("TokenLogin")
        End Get
        Set(value)
            SetCompatibilityValue("TokenLogin", value)
        End Set
    End Property



    Public Sub InitCompatibilityVector()
        Vector = New SortedDictionary(Of String, String) From {
        {"Themes", "False"},
        {"Groups", "False"},
        {"Servers", "False"},
        {"UsernameLogin", "False"},
        {"EmailLogin", "False"},
        {"TokenLogin", "False"}
        }
    End Sub

    Public Sub SetCompatibilityValue(Name As String, Value As String)
        Vector(Name) = Value
    End Sub

    Public Function GetCompatibilityValue(Name As String) As String
        Return Vector.GetValueOrDefault(Name, "ERROR")
    End Function
End Module
