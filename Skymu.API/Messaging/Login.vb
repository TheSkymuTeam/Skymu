Namespace Auth
    Public Enum AuthMethods
        Token
        Standard
        OAuth
        UsernameOnly
        No
    End Enum

    Public Class LoginResult
        Public Success As Boolean
        Public Details As LoginResultDetails
        Public CustomMessage As String

        Public Sub New(Success As String, Optional Details As LoginResultDetails = LoginResultDetails.NoDetails, Optional CustomMessage As String = "")
            Me.Success = Success
            Me.Details = Details
            Me.CustomMessage = CustomMessage
        End Sub
    End Class

    Public Enum LoginResultDetails
        NoDetails
        ServerNotFound
        UnknownFailure
        WrongPassword
        AccountNotFound
        MissingValues
        DoubleFactorFailed
        CustomWarning
        CustomError
    End Enum

    Public Module DoubleFactorManager
        Public Show2FAPopupGUIAction As Func(Of ISkClient, Integer)

        Public Function Call2FAPopup(Client As ISkClient) As Boolean
            Return Show2FAPopupGUIAction.Invoke(Client)
        End Function
    End Module
End Namespace