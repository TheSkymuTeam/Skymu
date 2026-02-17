/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team: contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

using MiddleMan;
using System;
using System.Collections.ObjectModel;
using System.Data;
using System.Threading.Tasks;
using Microsoft.Data.Sqlite;
using System.IO;
using System.Linq;

namespace SkypeDBBrowser
{
    public class Core : ICore
    {
        private string _databasePath;
        private string _currentUserId;

        // configurable message limit 
        private const int MESSAGE_LIMIT = 1000; 

        public event EventHandler<PluginMessageEventArgs> OnError;
        public event EventHandler<PluginMessageEventArgs> OnWarning;
        public event EventHandler<NotificationEventArgs> Notification;

        public string Name => "Skype DB Browser";
        public string TextUsername => "Database path (e.g., C:\\Skype\\main.db)";
        public string InternalName => "skymu-skypedb-plugin";
        public AuthenticationMethod[] AuthenticationType => new[] { AuthenticationMethod.Token };

        public SidebarData SidebarInformation { get; private set; }
        public ObservableCollection<ConversationItem> ActiveConversation { get; private set; } = new ObservableCollection<ConversationItem>();
        public ObservableCollection<ProfileData> ContactsList { get; private set; } = new ObservableCollection<ProfileData>();
        public ObservableCollection<ProfileData> RecentsList { get; private set; } = new ObservableCollection<ProfileData>();
        public ObservableCollection<UserData> TypingUsersList { get; private set; } = new ObservableCollection<UserData>();
        public ClickableConfiguration[] ClickableConfigurations => new ClickableConfiguration[0];

        public async Task<LoginResult> LoginMainStep(AuthenticationMethod authType, string username, string password = null, bool tryLoginWithSavedCredentials = false)
        {
            try
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
                    OnError?.Invoke(this, new PluginMessageEventArgs($"Database file not found: {username}"));
                    return LoginResult.Failure;
                }

                _databasePath = username;

                // test database connection and get current user
                using (var connection = new SqliteConnection($"Data Source={_databasePath};Mode=ReadOnly"))
                {
                    await connection.OpenAsync();

                    // try to get the current user's Skype Name from Accounts table
                    using (var command = connection.CreateCommand())
                    {
                        command.CommandText = "SELECT skypename FROM Accounts LIMIT 1";
                        var result = await command.ExecuteScalarAsync();
                        _currentUserId = result?.ToString() ?? "unknown";
                    }
                }

                return LoginResult.Success;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Login failed: {ex.Message}"));
                return LoginResult.Failure;
            }
        }

        public async Task<string> GetQRCode()
        {
            return string.Empty;
        }

        public async Task<LoginResult> LoginOptStep(string code)
        {
            return LoginResult.Success;
        }

        public async Task<bool> SendMessage(string identifier, string text) // nice try
        {
            OnWarning?.Invoke(this, new PluginMessageEventArgs("Databases are read-only."));
            return false;
        }

        public async Task<bool> SetActiveConversation(string identifier)
        {
            try
            {
                ActiveConversation.Clear();
                TypingUsersList.Clear();

                using (var connection = new SqliteConnection($"Data Source={_databasePath};Mode=ReadOnly"))
                {
                    await connection.OpenAsync();

                    using (var command = connection.CreateCommand())
                    {
                        // query messages from the Messages table
                        // get the most recent (MESSAGE_LIMIT) messages, then sort them chronologically
                        command.CommandText = @"
                            SELECT 
                                id,
                                author,
                                from_dispname,
                                body_xml,
                                timestamp,
                                type,
                                chatmsg_type
                            FROM (
                                SELECT * FROM Messages
                                WHERE convo_id = (SELECT id FROM Conversations WHERE identity = @identifier OR displayname = @identifier)
                                ORDER BY timestamp DESC
                                LIMIT " + MESSAGE_LIMIT + @"
                            )
                            ORDER BY timestamp ASC";

                        command.Parameters.AddWithValue("@identifier", identifier);

                        var messageList = new System.Collections.Generic.List<MessageItem>();

                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                var messageType = reader.IsDBNull(5) ? 0 : reader.GetInt32(5);
                                var chatMsgType = reader.IsDBNull(6) ? 0 : reader.GetInt32(6);

                                // chatmsg_type variations: 1 = text, 2 = file, etc.
                                if (messageType == 61 || chatMsgType == 1)
                                {
                                    var messageId = reader.GetInt64(0).ToString();
                                    var author = reader.IsDBNull(1) ? "Unknown" : reader.GetString(1);
                                    var displayName = reader.IsDBNull(2) ? author : reader.GetString(2);
                                    var body = reader.IsDBNull(3) ? "" : reader.GetString(3);
                                    var timestamp = reader.IsDBNull(4) ? 0 : reader.GetInt64(4);

                                    // (skype timestamps are unix time in seconds)
                                    var dateTime = DateTimeOffset.FromUnixTimeSeconds(timestamp).LocalDateTime;

                                    // clean up XML-formatted body text (Skype stores messages with XML tags)
                                    body = CleanSkypeMessageBody(body);

                                    var messageItem = new MessageItem(
                                        message_id: messageId,
                                        sender_id: author,
                                        sender_display_name: displayName,
                                        time: dateTime,
                                        body: body
                                    );

                                    messageList.Add(messageItem);
                                }
                            }
                        }

                        foreach (var message in messageList)
                        {
                            ActiveConversation.Add(message);
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load conversation: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateSidebarInformation()
        {
            try
            {
                using (var connection = new SqliteConnection($"Data Source={_databasePath};Mode=ReadOnly"))
                {
                    await connection.OpenAsync();

                    string displayName = _currentUserId;
                    string mood = string.Empty;

                    using (var command = connection.CreateCommand())
                    {
                        command.CommandText = @"
                            SELECT fullname, mood_text 
                            FROM Accounts 
                            WHERE skypename = @userId";
                        command.Parameters.AddWithValue("@userId", _currentUserId);

                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            if (await reader.ReadAsync())
                            {
                                displayName = reader.IsDBNull(0) ? _currentUserId : reader.GetString(0);
                                mood = reader.IsDBNull(1) ? "" : reader.GetString(1);
                            }
                        }
                    }

                    SidebarInformation = new SidebarData(
                        displayName,
                        _currentUserId,
                        "Skype DB Browser (Read-Only)",
                        UserConnectionStatus.Offline
                    );
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load sidebar: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateContactsList()
        {
            try
            {
                ContactsList.Clear();

                using (var connection = new SqliteConnection($"Data Source={_databasePath};Mode=ReadOnly"))
                {
                    await connection.OpenAsync();

                    using (var command = connection.CreateCommand())
                    {
                        // query contacts from Contacts table
                        command.CommandText = @"
                            SELECT 
                                skypename,
                                displayname,
                                mood_text,
                                availability
                            FROM Contacts 
                            WHERE is_permanent = 1 
                            AND skypename != @currentUser
                            ORDER BY displayname ASC
                            LIMIT 500";

                        command.Parameters.AddWithValue("@currentUser", _currentUserId);

                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (await reader.ReadAsync())
                            {
                                var skypename = reader.IsDBNull(0) ? "unknown" : reader.GetString(0);
                                var displayName = reader.IsDBNull(1) ? skypename : reader.GetString(1);
                                var mood = reader.IsDBNull(2) ? "" : reader.GetString(2);
                                var availability = reader.IsDBNull(3) ? 0 : reader.GetInt32(3);

                                var status = ConvertSkypeAvailabilityToStatus(availability);

                                ContactsList.Add(new UserData(
                                    displayName,
                                    skypename,
                                    mood,
                                    status
                                ));
                            }
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load contacts: {ex.Message}"));
                return false;
            }
        }

        public async Task<bool> PopulateRecentsList()
        {
            try
            {
                RecentsList.Clear();

                using (var connection = new SqliteConnection($"Data Source={_databasePath};Mode=ReadOnly"))
                {
                    await connection.OpenAsync();

                    using (var command = connection.CreateCommand())
                    {
                        // gset recent conversations
                        command.CommandText = @"
                            SELECT 
                                c.identity,
                                c.displayname,
                                c.type,
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
                                var displayName = reader.IsDBNull(1) ? identity : reader.GetString(1);
                                var type = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);

                                // type 1 = one-on-one, 2 = group chat, 4 = ???
                                if (type == 2)
                                {
                                    // group conversation
                                    RecentsList.Add(new GroupData(
                                        displayName,
                                        identity
                                    ));
                                }
                                else
                                {
                                    // individual conversation
                                    RecentsList.Add(new UserData(
                                        displayName,
                                        identity,
                                        null,
                                        UserConnectionStatus.Offline
                                    ));
                                }
                            }
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                OnError?.Invoke(this, new PluginMessageEventArgs($"Failed to load recents: {ex.Message}"));
                return false;
            }
        }

        public async Task<string[]> SaveAutoLoginCredential()
        {
            // save the database path for auto-login
            return new[] { _databasePath };
        }

        public async Task<LoginResult> TryAutoLogin(string[] autoLoginCredentials)
        {
            if (autoLoginCredentials == null || autoLoginCredentials.Length == 0)
                return LoginResult.Failure;

            return await LoginMainStep(AuthenticationMethod.Token, autoLoginCredentials[0]);
        }

        public void Dispose()
        {
            _databasePath = null;
            _currentUserId = null;
            ContactsList?.Clear();
            RecentsList?.Clear();
            ActiveConversation?.Clear();
            TypingUsersList?.Clear();
        }

        // helper methods

        private string CleanSkypeMessageBody(string body)
        {
            if (string.IsNullOrEmpty(body))
                return body;

            body = System.Net.WebUtility.HtmlDecode(body);

            var ssPattern = new System.Text.RegularExpressions.Regex(@"<ss type=""([^""]+)"">([^<]*)</ss>");
            body = ssPattern.Replace(body, m => {
                var emoticonName = m.Groups[1].Value;
                var emoticonText = m.Groups[2].Value;
                return string.IsNullOrEmpty(emoticonText) ? $"({emoticonName})" : emoticonText;
            });

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

            // Remove any remaining XML-like tags (catch-all for malformed or unknown tags)
            var tagPattern = new System.Text.RegularExpressions.Regex(@"<[^>]*>");
            body = tagPattern.Replace(body, "");

            return body.Trim();
        }

        private UserConnectionStatus ConvertSkypeAvailabilityToStatus(int availability)
        {
            // Skype availability codes:
            // 0 = Offline, 1 = Online, 2 = Away, 3 = Do Not Disturb, 4 = Invisible, etc.
            return availability switch
            {
                1 => UserConnectionStatus.Online,
                2 => UserConnectionStatus.Away,
                3 => UserConnectionStatus.DoNotDisturb,
                4 => UserConnectionStatus.Invisible,
                _ => UserConnectionStatus.Offline
            };
        }
    }
}