Imports System.Globalization
Imports System.Reflection

<Obsolete("From SeanKype, untouched, will be reworked when we will add themes to Skymu .")>
Public Module Themer
    Public Current_Theme As New Theme
    Public Event ThemeApplied(Theme As Theme)

    Public Sub Init()
        Try
            Dim SelectedTheme As String = IO.File.ReadAllText("Themes\Selected_Theme.txt", Text.Encoding.UTF8).Replace(Environment.NewLine, "").Replace(".sk", "")
            ApplyTheme(SelectedTheme)
        Catch ex As Exception
            Console.WriteLine("[THEME] : Can't load themes correctly, please use the installer to repair the program .")
        End Try
    End Sub

    Public Sub ApplyTheme(Name As String)
        Try
            Console.WriteLine($"[THEME] : Loading theme {Name} ...")
            If Not IO.File.Exists("Themes\" & Name & ".sk") Then Console.WriteLine($"[THEME] : Theme ""{Name}"" not found ...") : Return
            Current_Theme = New Theme(IO.File.ReadAllText("Themes\" & Name & ".sk", Text.Encoding.UTF8))
            RefreshTheme()
        Catch ex As Exception
            Console.WriteLine($"[THEME] : Can't load the ""{Name}"" theme correctly, please use the installer to repair the program .")
        End Try
    End Sub

    Public Sub RefreshTheme()
        RaiseEvent ThemeApplied(Current_Theme)
    End Sub
End Module

<Obsolete("From SeanKype, untouched, will be reworked when we will add themes to Skymu .")>
Public Class Theme
    ' THEME INFO '
    Public Theme_Name As String = "Default"
    Public Description As String = "Default"
    Public Author As String = "W.O.L.F"
    Public Version As String = "V0.0.0"

    ' THEME COLORS '
    Public SkBlue As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkCustomTint As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkWashedBlue As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkMidGray As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkLightGraySep As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkLightGraySep2 As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkLight As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkLight2 As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkWhite As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkWhite2 As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkDarkBlue As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkBlack As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkBlack2 As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkBubble As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkSteelBlue As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkBubbleLight As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkCatHover As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkCatSelected As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)

    ' OPTIONAL '
    Public SkSelectedCatBar As Boolean = False
    Public SkSelectedCatBarColor As Color = Color.FromArgb(&HFF, &HFF, &H0, &HFF)
    Public SkSelectedCatBarWidth As Single = 0.05

    Public SkColoredHousing As Boolean = False

    Public Sub New(Optional Theme As String = "' NOTHING '")
        Dim ReflectionDidntWorkedSoIMadeThis As New Dictionary(Of String, FieldInfo)
        For Each Elem In Me.GetType.GetFields()
            ReflectionDidntWorkedSoIMadeThis.Add(Elem.Name, Elem)
        Next
        For Each Line In Theme.Replace(vbCrLf, vbCr).Split(vbCr)
            If Line.StartsWith("'") OrElse (Not Line.Contains(":=")) Then Continue For

            Try
                Dim Data As String() = Line.Replace(" := ", ":=").Split(New String() {":="}, 2, StringSplitOptions.None)
                Dim Name As String = Data.First()
                Dim Value As String = Data.Last()

                Dim Field As FieldInfo = ReflectionDidntWorkedSoIMadeThis(Name)
                If Field IsNot Nothing Then
                    Select Case Field.FieldType.Name
                        Case "Color"
                            If Value.Length <= 6 Then
                                Dim R As Integer = Integer.Parse(Value.Substring(0, 2), NumberStyles.HexNumber)
                                Dim G As Integer = Integer.Parse(Value.Substring(2, 2), NumberStyles.HexNumber)
                                Dim B As Integer = Integer.Parse(Value.Substring(4, 2), NumberStyles.HexNumber)

                                Dim NewColor As Color = Color.FromArgb(255, R, G, B)

                                Field.SetValue(Me, NewColor)
                            Else
                                Dim A As Integer = Integer.Parse(Value.Substring(0, 2), NumberStyles.HexNumber)
                                Dim R As Integer = Integer.Parse(Value.Substring(2, 2), NumberStyles.HexNumber)
                                Dim G As Integer = Integer.Parse(Value.Substring(4, 2), NumberStyles.HexNumber)
                                Dim B As Integer = Integer.Parse(Value.Substring(6, 2), NumberStyles.HexNumber)

                                Dim NewColor As Color = Color.FromArgb(A, R, G, B)

                                Field.SetValue(Me, NewColor)
                            End If
                        Case "String"
                            Field.SetValue(Me, Value)

                        Case "Boolean"
                            Field.SetValue(Me, If(Value.ToLower() = "true", True, False))

                        Case "Integer"
                            Field.SetValue(Me, Integer.Parse(Value))

                        Case "Single"
                            Field.SetValue(Me, Single.Parse(Value, CultureInfo.InvariantCulture))

                        Case Else
                            Console.WriteLine($"[THEME] : Can't set ""{Name}"" with ""{Field.FieldType.Name}"" as type ...")
                    End Select
                Else
                    Console.WriteLine("REFLECTION ERROR")
                End If
            Catch ex As Exception
                Console.WriteLine($"[THEME] : Can't load ""{Line}"" from the theme file data !")
                Console.WriteLine("ERR : " & ex.ToString())
            End Try
        Next
    End Sub
End Class
