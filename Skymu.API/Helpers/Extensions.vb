Imports System.Runtime.CompilerServices

Public Module Extensions
    '<Extension>
    'Public Function GetValueOrDefault(Of KeyType, ValueType)(Dict As Dictionary(Of KeyType, ValueType), Key As KeyType, Optional DefaultValue As ValueType) As ValueType
    '    Dim Value As ValueType = Nothing
    '    If Dict.TryGetValue(Key, Value) Then Return Value Else Return DefaultValue
    'End Function

    '<Extension>
    'Public Function GetValueOrDefault(Of KeyType, ValueType)(Dict As SortedDictionary(Of KeyType, ValueType), Key As KeyType, Optional DefaultValue As ValueType) As ValueType
    '    Dim Value As ValueType = Nothing
    '    If Dict.TryGetValue(Key, Value) Then Return Value Else Return DefaultValue
    'End Function

    <Extension>
    Public Function GetValueOrDefault(Of KeyType, ValueType)(Dict As SortedDictionary(Of KeyType, ValueType), Key As KeyType, Optional DefaultValue As ValueType = Nothing) As ValueType
        Dim Value As ValueType = Nothing
        If Dict.TryGetValue(Key, Value) Then Return Value Else Return DefaultValue
    End Function

    <Extension>
    Public Function GetValueOrDefault(Of KeyType, ValueType)(Dict As Dictionary(Of KeyType, ValueType), Key As KeyType, Optional DefaultValue As ValueType = Nothing) As ValueType
        Dim Value As ValueType = Nothing
        If Dict.TryGetValue(Key, Value) Then Return Value Else Return DefaultValue
    End Function

    <Extension>
    Public Function GetValueOrDefault(Of ValueType)(List As IEnumerable(Of ValueType), Key As Integer, Optional DefaultValue As ValueType = Nothing) As ValueType
        If List.Count() >= Key OrElse Key < 0 Then Return DefaultValue
        Return List(Key)
    End Function
End Module
