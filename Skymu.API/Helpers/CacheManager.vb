Namespace Extras
    <Obsolete("Cache manager will be reworked entirely, so i removed it and just kept the cached channels as permanent stuff .")>
    Public Module CacheManager
        Public CachedChannels As New Dictionary(Of String, List(Of API.Message))
    End Module
End Namespace