/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: skymu@hubaxe.fr.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Threading.Tasks;
using Microsoft.Data.Sqlite;
using MiddleMan;

namespace SkypeDBBrowser
{
    public class Core : ICore
    {
        private string _databasePath;
        private User _currentUser;

        // configurable message limit
        private static readonly byte[] JpegMagic = new byte[] { 0xFF, 0xD8, 0xFF };
        private static readonly byte[] PngMagic = new byte[] { 0x89, 0x50, 0x4E, 0x47 }; // \x89PNG

        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<MessageEventArgs> MessageEvent;

        public string Name => "Skype DB Browser";
        public string InternalName => "db-browser";

        public bool SupportsServers
        {
            get { return false; }
        }
        public AuthTypeInfo[] AuthenticationTypes
        {
            get
            {
                return new[]
                {
                    new AuthTypeInfo(
                        AuthenticationMethod.Token,
                        "Database path (e.g., C:\\Skype\\main.db)"
                    ),
                };
            }
        }

        public User MyInformation { get; private set; }
        public ObservableCollection<DirectMessage> ContactsList { get; private set; } =
            new ObservableCollection<DirectMessage>();
        public ObservableCollection<Conversation> RecentsList { get; private set; } =
            new ObservableCollection<Conversation>();

        public ObservableCollection<Server> ServerList { get; private set; }

        public Task<bool> PopulateServerList()
        {
            return Task.FromResult(false);
        }

        public ObservableCollection<User> TypingUsersList { get; private set; } =
            new ObservableCollection<User>();
        public ClickableConfiguration[] ClickableConfigurations => new ClickableConfiguration[0];

        public async Task<LoginResult> Authenticate(
            AuthenticationMethod authType,
            string username,
            string password = null
        )
        {
            if (authType != AuthenticationMethod.Token)
                return LoginResult.UnsupportedAuthType;

            if (string.IsNullOrWhiteSpace(username))
            {
                OnError?.Invoke(this, new PluginMessageEventArgs("Database path cannot be empty."));
                return LoginResult.Failure;
            }

            if (!File.Exists(username))
            {
                OnError?.Invoke(
                    this,
                    new PluginMessageEventArgs($"Database file not found: {username}")
                );
                return LoginResult.Failure;
            }

            _databasePath = username;

            // test database connection and get current user
            using (
                var connection = new SqliteConnection($"Data Source={_databasePath};Mode=ReadOnly")
            )
            {
                await connection.OpenAsync();

                // try to get the current user's Skype Name from Accounts table
                using (var command = connection.CreateCommand())
                {
                    command.CommandText =
                        "SELECT skypename, displayname, avatar_image FROM Accounts LIMIT 1";
                    using (var reader = await command.ExecuteReaderAsync())
                    {
                        if (await reader.ReadAsync())
                        {
                            string identifier = reader.IsDBNull(0) ? null : reader.GetString(0);
                            string displayName = reader.IsDBNull(1) ? null : reader.GetString(1);
                            byte[] avatar = reader.IsDBNull(2) ? null : (byte[])reader.GetValue(2);
                            _currentUser = new User(
                                displayName,
                                identifier,
                                identifier,
                                null,
                                UserConnectionStatus.Offline,
                                avatar
                            );
                        }
                    }
                }
            }

            return LoginResult.Success;
        }

        public Task<string> GetQRCode()
        {
            return Task.FromResult(String.Empty);
        }

        public Task<LoginResult> AuthenticateTwoFA(string code)
        {
            return Task.FromResult(LoginResult.Success);
        }

        public Task<bool> SetConnectionStatus(UserConnectionStatus status)
        {
            return Task.FromResult(false);
        }

        public Task<bool> SetTextStatus(string status)
        {
            return Task.FromResult(false);
        }

        public Task<bool> SendMessage(
            string identifier,
            string text,
            Attachment attachment,
            string parent
        ) // nice try
        {
            OnWarning?.Invoke(this, new PluginMessageEventArgs("Databases are read-only."));
            return Task.FromResult(false);
        }

        public async Task<ConversationItem[]> FetchMessages(
            Conversation conversation,
            Fetch fetch_type,
            int message_count,
            string identifier
        )
        {
            try
            {
                TypingUsersList.Clear();
                List<ConversationItem> messageList = new List<ConversationItem>();

                using (
                    var connection = new SqliteConnection(
                        $"Data Source={_databasePath};Mode=ReadOnly"
                    )
                )
                {
                    await connection.OpenAsync();

                    using (var command = connection.CreateCommand())
                    {
                        string fetchQuery;

                        if (fetch_type == Fetch.Newest)
                        {
                            fetchQuery =
                                @"
        SELECT id, author, from_dispname, body_xml, timestamp, type, chatmsg_type
        FROM (
            SELECT * FROM Messages
            WHERE convo_id = (SELECT id FROM Conversations WHERE identity = @convoIdentifier OR displayname = @convoIdentifier)
            ORDER BY timestamp DESC
            LIMIT @message_count
        )
        ORDER BY timestamp ASC";
                        }
                        else if (fetch_type == Fetch.Oldest)
                        {
                            fetchQuery =
                                @"
        SELECT id, author, from_dispname, body_xml, timestamp, type, chatmsg_type
        FROM Messages
        WHERE convo_id = (SELECT id FROM Conversations WHERE identity = @convoIdentifier OR displayname = @convoIdentifier)
        ORDER BY timestamp ASC
        LIMIT @message_count";
                        }
                        else if (fetch_type == Fetch.BeforeIdentifier)
                        {
                            fetchQuery =
                                @"
        SELECT id, author, from_dispname, body_xml, timestamp, type, chatmsg_type
        FROM (
            SELECT * FROM Messages
            WHERE convo_id = (SELECT id FROM Conversations WHERE identity = @convoIdentifier OR displayname = @convoIdentifier)
            AND timestamp < (SELECT timestamp FROM Messages WHERE id = @identifier)
            ORDER BY timestamp DESC
            LIMIT @message_count
        )
        ORDER BY timestamp ASC";
                        }
                        else if (fetch_type == Fetch.AfterIdentifier)
                        {
                            fetchQuery =
                                @"
        SELECT id, author, from_dispname, body_xml, timestamp, type, chatmsg_type
        FROM Messages
        WHERE convo_id = (SELECT id FROM Conversations WHERE identity = @convoIdentifier OR displayname = @convoIdentifier)
        AND timestamp > (SELECT timestamp FROM Messages WHERE id = @identifier)
        ORDER BY timestamp ASC
        LIMIT @message_count";
                        }
                        else
                        {
                            throw new ArgumentOutOfRangeException("fetch_type", fetch_type, null);
                        }

                        command.CommandText = fetchQuery;
                        command.Parameters.AddWithValue(
                            "@convoIdentifier",
                            conversation.Identifier
                        );
                        command.Parameters.AddWithValue("@message_count", message_count);

                        command.Parameters.AddWithValue("@identifier", identifier ?? string.Empty);

                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                var messageType = reader.IsDBNull(5) ? 0 : reader.GetInt32(5);
                                var chatMsgType = reader.IsDBNull(6) ? 0 : reader.GetInt32(6);

                                if (messageType == 61 || chatMsgType == 1)
                                {
                                    var messageId = reader.GetInt64(0).ToString();
                                    var author = reader.IsDBNull(1)
                                        ? "Unknown"
                                        : reader.GetString(1);
                                    var displayName = reader.IsDBNull(2)
                                        ? author
                                        : reader.GetString(2);
                                    var body = reader.IsDBNull(3) ? "" : reader.GetString(3);
                                    var timestamp = reader.IsDBNull(4) ? 0 : reader.GetInt64(4);

                                    var dateTime = DateTimeOffset
                                        .FromUnixTimeSeconds(timestamp)
                                        .LocalDateTime;

                                    body = CleanSkypeMessageBody(body);

                                    var messageItem = new Message(
                                        messageId,
                                        new User(displayName, author, author),
                                        dateTime,
                                        body
                                    );

                                    messageList.Add(messageItem);
                                }
                            }
                        }
                    }
                }

                return messageList.ToArray();
            }
            catch (Exception ex)
            {
                OnError?.Invoke(
                    this,
                    new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}")
                );
                return new ConversationItem[0];
            }
        }

        public Task<bool> PopulateSidebarInformation()
        {
            MyInformation = _currentUser;
            return Task.FromResult(true);
        }

        public async Task<bool> PopulateContactsList()
        {
            try
            {
                ContactsList.Clear();

                using (
                    var connection = new SqliteConnection(
                        $"Data Source={_databasePath};Mode=ReadOnly"
                    )
                )
                {
                    await connection.OpenAsync();

                    using (var command = connection.CreateCommand())
                    {
                        // query contacts from Contacts table, including avatar_image
                        command.CommandText =
                            @"
                            SELECT 
                                skypename,
                                displayname,
                                mood_text,
                                availability,
                                avatar_image
                            FROM Contacts 
                            WHERE is_permanent = 1 
                            AND skypename != @currentUser
                            ORDER BY displayname ASC
                            LIMIT 500";

                        command.Parameters.AddWithValue("@currentUser", _currentUser.Identifier);

                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                var skypename = reader.IsDBNull(0)
                                    ? "unknown"
                                    : reader.GetString(0);
                                var displayName = reader.IsDBNull(1)
                                    ? skypename
                                    : reader.GetString(1);
                                var mood = reader.IsDBNull(2) ? "" : reader.GetString(2);
                                var availability = reader.IsDBNull(3) ? 0 : reader.GetInt32(3);
                                var avatarBytes = reader.IsDBNull(4)
                                    ? null
                                    : ExtractImageFromAvatarBlob((byte[])reader.GetValue(4));

                                var status = ConvertSkypeAvailabilityToStatus(availability);

                                ContactsList.Add(
                                    new DirectMessage(
                                        new User(
                                            displayName,
                                            skypename,
                                            skypename,
                                            mood,
                                            status,
                                            avatarBytes
                                        ),
                                        0,
                                        skypename
                                    )
                                );
                            }
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(
                    this,
                    new PluginMessageEventArgs($"Failed to load contacts: {ex.Message}")
                );
                return false;
            }
        }

        public async Task<bool> PopulateRecentsList()
        {
            try
            {
                RecentsList.Clear();

                // build a lookup of contact data (avatar + mood) keyed by skypename so we
                // can enrich individual conversations that belong to a known contact
                var contactInfo = new System.Collections.Generic.Dictionary<
                    string,
                    (string Mood, byte[] Avatar, UserConnectionStatus Status)
                >(StringComparer.OrdinalIgnoreCase);

                using (
                    var connection = new SqliteConnection(
                        $"Data Source={_databasePath};Mode=ReadOnly"
                    )
                )
                {
                    await connection.OpenAsync();

                    using (var contactCmd = connection.CreateCommand())
                    {
                        contactCmd.CommandText =
                            @"
                            SELECT 
                                skypename,
                                mood_text,
                                availability,
                                avatar_image
                            FROM Contacts
                            WHERE skypename IS NOT null";

                        using (var reader = await contactCmd.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                var skypename = reader.IsDBNull(0) ? null : reader.GetString(0);
                                if (string.IsNullOrEmpty(skypename))
                                    continue;

                                var mood = reader.IsDBNull(1) ? "" : reader.GetString(1);
                                var availability = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);
                                var avatarBytes = reader.IsDBNull(3)
                                    ? null
                                    : ExtractImageFromAvatarBlob((byte[])reader.GetValue(3));
                                var status = ConvertSkypeAvailabilityToStatus(availability);

                                contactInfo[skypename] = (mood, avatarBytes, status);
                            }
                        }
                    }

                    using (var command = connection.CreateCommand())
                    {
                        // get recent conversations
                        command.CommandText =
                            @"
                            SELECT 
                                c.identity,
                                c.displayname,
                                c.type,
                                c.dialog_partner,
                                MAX(m.timestamp) as last_message
                            FROM Conversations c
                            LEFT JOIN Messages m ON c.id = m.convo_id
                            WHERE c.type IN (1, 2, 4)
                            GROUP BY c.id
                            ORDER BY last_message DESC
                            LIMIT 50";

                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                var identity = reader.IsDBNull(0) ? "unknown" : reader.GetString(0);
                                var displayName = reader.IsDBNull(1)
                                    ? identity
                                    : reader.GetString(1);
                                var type = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);
                                var dialogPartner = reader.IsDBNull(3) ? null : reader.GetString(3);
                                var lastMessageTimestamp = reader.IsDBNull(4)
                                    ? 0
                                    : reader.GetInt64(4);

                                DateTime lastMessageTime =
                                    lastMessageTimestamp > 0
                                        ? DateTimeOffset
                                            .FromUnixTimeSeconds(lastMessageTimestamp)
                                            .LocalDateTime
                                        : DateTime.Now;

                                // type 1 = one-on-one, 2 = group chat, 4 = ???
                                if (type == 2)
                                {
                                    // group conversation,  look up participants and hydrate member data
                                    var members = await GetGroupMembersAsync(
                                        connection,
                                        identity,
                                        contactInfo
                                    );

                                    RecentsList.Add(
                                        new Group(
                                            displayName,
                                            identity,
                                            0,
                                            members,
                                            null,
                                            lastMessageTime
                                        )
                                    );
                                }
                                else
                                {
                                    // individual conversation — enrich with contact data if available
                                    string identifier = dialogPartner ?? identity;
                                    contactInfo.TryGetValue(identifier, out var info);
                                    RecentsList.Add(
                                        new DirectMessage(
                                            new User(
                                                displayName,
                                                identifier,
                                                identifier,
                                                info.Mood,
                                                info.Status == default
                                                    ? UserConnectionStatus.Offline
                                                    : info.Status,
                                                info.Avatar
                                            ),
                                            0,
                                            identity,
                                            lastMessageTime
                                        )
                                    );
                                }
                            }
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(
                    this,
                    new PluginMessageEventArgs($"Failed to load recents: {ex.Message}")
                );
                return false;
            }
        }

        public Task<SavedCredential> StoreCredential()
        {
            // save the database path for auto-login
            return Task.FromResult(
                new SavedCredential(
                    _currentUser,
                    _databasePath,
                    AuthenticationMethod.Token,
                    InternalName
                )
            );
        }

        public async Task<LoginResult> Authenticate(SavedCredential credential)
        {
            if (credential == null)
                return LoginResult.Failure;

            return await Authenticate(AuthenticationMethod.Token, credential.PasswordOrToken);
        }

        public void Dispose()
        {
            _databasePath = null;
            _currentUser = null;
            ContactsList?.Clear();
            RecentsList?.Clear();
            TypingUsersList?.Clear();
        }

        // helper methods
        private async Task<User[]> GetGroupMembersAsync(
            SqliteConnection connection,
            string conversationIdentity,
            System.Collections.Generic.Dictionary<
                string,
                (string Mood, byte[] Avatar, UserConnectionStatus Status)
            > contactInfo
        )
        {
            var members = new System.Collections.Generic.List<User>();

            using (var cmd = connection.CreateCommand())
            {
                // Participants links to Conversations by convo_id; identity holds the skypename
                cmd.CommandText =
                    @"
                    SELECT 
                        p.identity,
                        COALESCE(ct.displayname, p.identity) AS displayname
                    FROM Participants p
                    INNER JOIN Conversations c ON c.id = p.convo_id
                    LEFT JOIN Contacts ct ON ct.skypename = p.identity
                    WHERE c.identity = @conversationIdentity
                      AND p.identity != @currentUser";

                cmd.Parameters.AddWithValue("@conversationIdentity", conversationIdentity);
                cmd.Parameters.AddWithValue("@currentUser", _currentUser.Identifier);

                using (var reader = await cmd.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        var skypename = reader.IsDBNull(0) ? null : reader.GetString(0);
                        if (string.IsNullOrEmpty(skypename))
                            continue;

                        var displayName = reader.IsDBNull(1) ? skypename : reader.GetString(1);

                        // enrich with avatar + mood if we have this person in contacts
                        contactInfo.TryGetValue(skypename, out var info);

                        members.Add(
                            new User(
                                displayName,
                                skypename,
                                skypename,
                                info.Mood,
                                info.Status == default ? UserConnectionStatus.Offline : info.Status,
                                info.Avatar
                            )
                        );
                    }
                }
            }

            return members.ToArray();
        }

        /// Skype stores avatars as a raw blob that begins with a proprietary 1-byte
        /// null sentinel followed immediately by a full JPEG file (SOI = 0xFF 0xD8 0xFF ...).
        /// This method scans the blob for the first occurrence of the JPEG SOI magic bytes
        /// and returns everything from that offset onward, giving a clean JPEG that any
        /// standard image decoder can consume.  Returns null when no JPEG is found or the
        /// input == null/empty.
        private static byte[] ExtractImageFromAvatarBlob(byte[] blob)
        {
            if (blob == null || blob.Length < 4)
                return null;

            for (int i = 0; i <= blob.Length - 4; i++)
            {
                // JPEG
                if (
                    i <= blob.Length - JpegMagic.Length
                    && blob[i] == JpegMagic[0]
                    && blob[i + 1] == JpegMagic[1]
                    && blob[i + 2] == JpegMagic[2]
                )
                {
                    var img = new byte[blob.Length - i];
                    Array.Copy(blob, i, img, 0, img.Length);
                    return img;
                }

                // PNG
                if (
                    i <= blob.Length - PngMagic.Length
                    && blob[i] == PngMagic[0]
                    && blob[i + 1] == PngMagic[1]
                    && blob[i + 2] == PngMagic[2]
                    && blob[i + 3] == PngMagic[3]
                )
                {
                    var img = new byte[blob.Length - i];
                    Array.Copy(blob, i, img, 0, img.Length);
                    return img;
                }
            }

            return null;
        }

        private string CleanSkypeMessageBody(string body)
        {
            if (string.IsNullOrEmpty(body))
                return body;

            body = System.Net.WebUtility.HtmlDecode(body);

            var ssPattern = new System.Text.RegularExpressions.Regex(
                @"<ss type=""([^""]+)"">([^<]*)</ss>"
            );
            body = ssPattern.Replace(
                body,
                m =>
                {
                    var emoticonName = m.Groups[1].Value;
                    var emoticonText = m.Groups[2].Value;
                    return string.IsNullOrEmpty(emoticonText) ? $"({emoticonName})" : emoticonText;
                }
            );

            // remove quote tags
            body = body.Replace("<quote>", "");
            body = body.Replace("</quote>", "");

            // remove formatting tags but keep content
            body = body.Replace("<b>", "");
            body = body.Replace("</b>", "");
            body = body.Replace("<i>", "");
            body = body.Replace("</i>", "");
            body = body.Replace("<s>", "");
            body = body.Replace("</s>", "");

            // Convert links to markdown-style
            body = body.Replace("<a href=\"", "[");
            body = body.Replace("\">", "](");
            body = body.Replace("</a>", ")");

            // remove any remaining XML-like tags (catch-all for malformed or unknown tags)
            var tagPattern = new System.Text.RegularExpressions.Regex(@"<[^>]*>");
            body = tagPattern.Replace(body, "");

            return body.Trim();
        }

        private UserConnectionStatus ConvertSkypeAvailabilityToStatus(int availability)
        {
            // Skype availability codes:
            // 0 = Offline, 1 = Online, 2 = Away, 3 = Do Not Disturb, 4 = Invisible, etc.
            switch (availability)
            {
                case 1:
                    return UserConnectionStatus.Online;

                case 2:
                    return UserConnectionStatus.Away;

                case 3:
                    return UserConnectionStatus.DoNotDisturb;

                case 4:
                    return UserConnectionStatus.Invisible;

                default:
                    return UserConnectionStatus.Offline;
            }
        }
    }
}
