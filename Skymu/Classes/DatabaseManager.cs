/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/legal/licenses/standard.txt
/*==========================================================*/
// Important Notice
/*==========================================================*/
// Credits go to Erki Suurjaak, Skyperious, for his
// extensive documentation of the Skype SQL database format.
// Heads up: This database includes over 90% redundant
// columns and all tables except 5 are redundant, this
// is to ensure maximum compatibility with old Skype tooling.
// It basically tries to impersonate a Skype database.
/*==========================================================*/
// Some new columns have been added, though, such as:
// username (for storage of a mutable username; skypename is
// now used for the identifier, as tools expect immutability),
// conversation_id (to track DM conversation wrappers),
// and plugin (plugin this account is associated with)
// This has been done to make sure that Skymu doesn't cause
// incompatibiliies with old Skype database-reading software.
/*==========================================================*/



using Microsoft.Data.Sqlite;
using MiddleMan;
using Skymu.Preferences;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Skymu.Views;

namespace Skymu.Databases
{
    internal class DatabaseManager
    {
        #region Definitions

        // WHOEVER IS READING THIS: bump this number whenever a breaking schema change is made
        // or just when you feel like your changes could cause incompatibilities with old databases.
        // Increment this number liberally. DO NOT use migration functions etc as an alternative to
        // incrementing the number. Originally started at: 1.
        private const int Version = 4;

        internal string DbPath;
        public AccountsTable Accounts { get; private set; }
        public ContactsTable Contacts { get; private set; }
        public ConversationsTable Conversations { get; private set; }
        public ParticipantsTable Participants { get; private set; }
        public MessagesTable Messages { get; private set; }

        internal Dictionary<string, User> _contactMap;

        public DatabaseManager(User user)
        {
            string folderPath = Path.Combine(
                Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
                "Skymu",
                Universal.Plugin.InternalName,
                SanitizeFolderName(user.Identifier)
            );

            DbPath = Path.Combine(folderPath, "main.db");
            string configPath = Path.Combine(folderPath, "config.xml");

            EnsureDatabaseVersion(folderPath, configPath);

            Accounts = new AccountsTable(this);
            Contacts = new ContactsTable(this);
            Conversations = new ConversationsTable(this);
            Participants = new ParticipantsTable(this);
            Messages = new MessagesTable(this);

            using (SqliteConnection connection = CreateConnection())
            {
                using (var cmd = connection.CreateCommand())
                {
                    cmd.CommandText = "PRAGMA journal_mode=DELETE;";
                    cmd.ExecuteNonQuery();
                }

                EnsureTablesInternal(connection);
            }
        }
        #endregion

        #region Helper methods

        private void EnsureDatabaseVersion(string folderPath, string configPath)
        {
            bool wipe = false;

            if (!File.Exists(configPath))
            {
                wipe = true;
            }
            else
            {
                try
                {
                    var doc = System.Xml.Linq.XDocument.Load(configPath);
                    int LastUsedVersion = (int)doc.Root.Element("DatabaseVersion");
                    if (LastUsedVersion < Version)
                        wipe = true;
                    else if (LastUsedVersion > Version)
                    {
                        Dialog dlg = null;
                        dlg = new Dialog(
                            WindowBase.IconType.Question,
                            $"{Settings.BrandingName} found a database associated with this user account, but it was made by a newer version of the database manager (v{LastUsedVersion}) " +
                            $"than the existing one (v{Version}).\n\nWould you like to delete the database and start fresh, or download the latest version of {Settings.BrandingName}?",
                            "Purge database?",
                            $"{Settings.BrandingName} Database Manager",
                            new Action(() =>
                            {
                                new Views.Pages.Updater();
                            }),
                            $"Update {Settings.BrandingName}",
                            true,
                            new Action(() =>
                            {
                                wipe = true;
                                dlg.Close();
                            }),
                            "Purge database"
                        );
                        dlg.ShowDialog();
                    }
                }
                catch
                {
                    wipe = true;
                }
            }

            if (wipe)
            {
                if (Directory.Exists(folderPath))
                    Directory.Delete(folderPath, recursive: true);
                Directory.CreateDirectory(folderPath);
                WriteConfigInternal(configPath);
            }
        }

        public static string SanitizeFolderName(string name, string replacement = "_")
        {
            if (string.IsNullOrEmpty(name))
                return "GenericAccount";

            var invalidChars = Path.GetInvalidFileNameChars();
            string sanitized = string.Concat(
                name.Select(c => invalidChars.Contains(c) ? replacement[0] : c)
            );

            sanitized = sanitized.TrimEnd(' ', '.');

            if (string.IsNullOrEmpty(sanitized))
                return "GenericAccount";

            return sanitized;
        }

        private void BuildContactMap()
        {
            if (_contactMap != null)
                return;
            _contactMap = new Dictionary<string, User>();
            foreach (User u in Contacts.Read())
                if (u.Identifier != null)
                    _contactMap[u.Identifier] = u;
        }

        private static void WriteConfigInternal(string configPath)
        {
            new System.Xml.Linq.XDocument(
                new System.Xml.Linq.XElement(
                    "SkymuDatabase",
                    new System.Xml.Linq.XElement("DatabaseVersion", Version)
                )
            ).Save(configPath);
        }

        private SqliteConnection CreateConnection()
        {
            Directory.CreateDirectory(Path.GetDirectoryName(DbPath));
            SqliteConnection connection = new SqliteConnection($"Data Source={DbPath}");
            connection.Open();
            return connection;
        }

        private static string ConvertIdentifier(string identifier)
        {
            if (string.IsNullOrEmpty(identifier) || !char.IsDigit(identifier[0]))
                return identifier;
            return "id-" + identifier;
        }

        private static string UnconvertIdentifier(string identifier)
        {
            if (string.IsNullOrEmpty(identifier) || !identifier.StartsWith("id-"))
                return identifier;
            string stripped = identifier.Substring(3);
            if (stripped.Length > 0 && char.IsDigit(stripped[0]))
                return stripped;
            return identifier;
        }

        private static byte[] PrepareAvatarBytes(byte[] imageBytes)
        {
            if (imageBytes == null || imageBytes.Length == 0)
                return imageBytes;
            // already has 0x00 skoipe prefix ??
            if (imageBytes[0] == 0x00)
                return imageBytes;
            var result = new byte[imageBytes.Length + 1];
            result[0] = 0x00;
            Buffer.BlockCopy(imageBytes, 0, result, 1, imageBytes.Length);
            return result;
        }

        private static User UserFromReader(SqliteDataReader reader, int offset = 0)
        {
            string identifier = reader.IsDBNull(offset + 0)
                ? null
                : UnconvertIdentifier(reader.GetString(offset + 0));
            string username = reader.IsDBNull(offset + 1) ? null : reader.GetString(offset + 1);
            string displayName = reader.IsDBNull(offset + 2) ? null : reader.GetString(offset + 2);
            byte[] avatar = reader.IsDBNull(offset + 3) ? null : (byte[])reader[offset + 3];
            if (avatar != null && avatar.Length > 0 && avatar[0] == 0x00)
                avatar = avatar.Skip(1).ToArray();
            string status = reader.IsDBNull(offset + 4) ? null : reader.GetString(offset + 4);
            return new User(displayName, username, identifier, status, profilePicture: avatar);
        }

        private static User StubUser(string identifier)
        {
            return new User(identifier, identifier, identifier);
        }

        #endregion

        #region Database table creation
        private void EnsureTablesInternal(SqliteConnection connection)
        {
            using (SqliteCommand cmd = connection.CreateCommand())
            {
                cmd.CommandText =
                    @"
                    CREATE TABLE IF NOT EXISTS Accounts (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER,
                        status                      INTEGER,
                        pwdchangestatus             INTEGER,
                        logoutreason                INTEGER,
                        commitstatus                INTEGER,
                        suggested_skypename         TEXT,
                        skypeout_balance_currency   TEXT,
                        skypeout_balance            INTEGER,
                        skypeout_precision          INTEGER,
                        skypein_numbers             TEXT,
                        subscriptions               TEXT,
                        cblsyncstatus               INTEGER,
                        contactssyncstatus          INTEGER,
                        offline_callforward         TEXT,
                        chat_policy                 INTEGER,
                        skype_call_policy           INTEGER,
                        pstn_call_policy            INTEGER,
                        avatar_policy               INTEGER,
                        buddycount_policy           INTEGER,
                        timezone_policy             INTEGER,
                        webpresence_policy          INTEGER,
                        phonenumbers_policy         INTEGER,
                        voicemail_policy            INTEGER,
                        authrequest_policy          INTEGER,
                        ad_policy                   INTEGER,
                        partner_optedout            TEXT,
                        service_provider_info       TEXT,
                        registration_timestamp      INTEGER,
                        nr_of_other_instances       INTEGER,
                        partner_channel_status      TEXT,
                        flamingo_xmpp_status        INTEGER,
                        federated_presence_policy   INTEGER,
                        liveid_membername           TEXT,
                        roaming_history_enabled     INTEGER,
                        cobrand_id                  INTEGER,
                        shortcircuit_sync           INTEGER,
                        signin_name                 TEXT,
                        read_receipt_optout         INTEGER,
                        hidden_expression_tabs      TEXT,
                        owner_under_legal_age       INTEGER,
                        type                        INTEGER,
                        username                    TEXT,
                        skypename                   TEXT,
                        pstnnumber                  TEXT,
                        fullname                    TEXT,
                        birthday                    INTEGER,
                        gender                      INTEGER,
                        languages                   TEXT,
                        country                     TEXT,
                        province                    TEXT,
                        city                        TEXT,
                        phone_home                  TEXT,
                        phone_office                TEXT,
                        phone_mobile                TEXT,
                        emails                      TEXT,
                        homepage                    TEXT,
                        about                       TEXT,
                        profile_timestamp           INTEGER,
                        received_authrequest        TEXT,
                        displayname                 TEXT,
                        refreshing                  INTEGER,
                        given_authlevel             INTEGER,
                        aliases                     TEXT,
                        authreq_timestamp           INTEGER,
                        mood_text                   TEXT,
                        timezone                    INTEGER,
                        nrof_authed_buddies         INTEGER,
                        ipcountry                   TEXT,
                        given_displayname           TEXT,
                        availability                INTEGER,
                        lastonline_timestamp        INTEGER,
                        capabilities                BLOB,
                        avatar_image                BLOB,
                        assigned_speeddial          TEXT,
                        lastused_timestamp          INTEGER,
                        authrequest_count           INTEGER,
                        assigned_comment            TEXT,
                        alertstring                 TEXT,
                        avatar_timestamp            INTEGER,
                        mood_timestamp              INTEGER,
                        rich_mood_text              TEXT,
                        synced_email                BLOB,
                        set_availability            INTEGER,
                        options_change_future       BLOB,
                        msa_pmn                     TEXT,
                        authorized_time             INTEGER,
                        sent_authrequest            TEXT,
                        sent_authrequest_time       INTEGER,
                        sent_authrequest_serial     INTEGER,
                        buddyblob                   BLOB,
                        cbl_future                  BLOB,
                        node_capabilities           INTEGER,
                        node_capabilities_and       INTEGER,
                        revoked_auth                INTEGER,
                        added_in_shared_group       INTEGER,
                        in_shared_group             INTEGER,
                        authreq_history             BLOB,
                        profile_attachments         BLOB,
                        stack_version               INTEGER,
                        offline_authreq_id          INTEGER,
                        verified_email              BLOB,
                        verified_company            BLOB,
                        uses_jcs                    INTEGER,
                        forward_starttime           INTEGER,
                        plugin                      TEXT,
                        UNIQUE(skypename, plugin)
                    );

                    CREATE TABLE IF NOT EXISTS Alerts (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER,
                        timestamp                   INTEGER,
                        partner_name                TEXT,
                        is_unseen                   INTEGER,
                        partner_id                  INTEGER,
                        partner_event               TEXT,
                        partner_history             TEXT,
                        partner_header              TEXT,
                        partner_logo                TEXT,
                        message_content             TEXT,
                        message_footer              TEXT,
                        meta_expiry                 INTEGER,
                        message_header_caption      TEXT,
                        message_header_title        TEXT,
                        message_header_subject      TEXT,
                        message_header_cancel       TEXT,
                        message_header_later        TEXT,
                        message_button_caption      TEXT,
                        message_button_uri          TEXT,
                        message_type                INTEGER,
                        window_size                 INTEGER,
                        notification_id             INTEGER,
                        extprop_hide_from_history   INTEGER,
                        chatmsg_guid                BLOB,
                        event_flags                 INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS CallHandlers (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS CallMembers (
                        id                                      INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                            INTEGER,
                        identity                                TEXT,
                        dispname                                TEXT,
                        languages                               TEXT,
                        call_duration                           INTEGER,
                        price_per_minute                        INTEGER,
                        price_precision                         INTEGER,
                        price_currency                          TEXT,
                        payment_category                        TEXT,
                        type                                    INTEGER,
                        status                                  INTEGER,
                        failurereason                           INTEGER,
                        sounderror_code                         INTEGER,
                        soundlevel                              INTEGER,
                        pstn_statustext                         TEXT,
                        pstn_feedback                           TEXT,
                        forward_targets                         TEXT,
                        forwarded_by                            TEXT,
                        debuginfo                               TEXT,
                        videostatus                             INTEGER,
                        target_identity                         TEXT,
                        mike_status                             INTEGER,
                        is_read_only                            INTEGER,
                        quality_status                          INTEGER,
                        call_name                               TEXT,
                        transfer_status                         INTEGER,
                        transfer_active                         INTEGER,
                        transferred_by                          TEXT,
                        transferred_to                          TEXT,
                        guid                                    TEXT,
                        next_redial_time                        INTEGER,
                        nrof_redials_done                       INTEGER,
                        nrof_redials_left                       INTEGER,
                        transfer_topic                          TEXT,
                        real_identity                           TEXT,
                        start_timestamp                         INTEGER,
                        is_conference                           INTEGER,
                        quality_problems                        TEXT,
                        identity_type                           INTEGER,
                        country                                 TEXT,
                        creation_timestamp                      INTEGER,
                        stats_xml                               TEXT,
                        is_premium_video_sponsor                INTEGER,
                        is_multiparty_video_capable             INTEGER,
                        recovery_in_progress                    INTEGER,
                        fallback_in_progress                    INTEGER,
                        nonse_word                              TEXT,
                        nr_of_delivered_push_notifications      INTEGER,
                        call_session_guid                       TEXT,
                        version_string                          TEXT,
                        ip_address                              TEXT,
                        is_video_codec_compatible               INTEGER,
                        group_calling_capabilities              INTEGER,
                        mri_identity                            TEXT,
                        is_seamlessly_upgraded_call             INTEGER,
                        voicechannel                            INTEGER,
                        video_count_changed                     INTEGER,
                        is_active_speaker                       INTEGER,
                        dominant_speaker_rank                   INTEGER,
                        participant_sponsor                     TEXT,
                        content_sharing_role                    INTEGER,
                        endpoint_details                        TEXT,
                        pk_status                               INTEGER,
                        call_db_id                              INTEGER,
                        prime_status                            INTEGER,
                        light_weight_meeting_role               INTEGER,
                        capabilities                            INTEGER,
                        endpoint_type                           INTEGER,
                        accepted_by                             TEXT,
                        is_server_muted                         INTEGER,
                        admit_failure_reason                    INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS Calls (
                        id                                      INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                            INTEGER,
                        begin_timestamp                         INTEGER,
                        topic                                   TEXT,
                        is_muted                                INTEGER,
                        is_unseen_missed                        INTEGER,
                        host_identity                           TEXT,
                        is_hostless                             INTEGER,
                        mike_status                             INTEGER,
                        duration                                INTEGER,
                        soundlevel                              INTEGER,
                        access_token                            TEXT,
                        active_members                          INTEGER,
                        is_active                               INTEGER,
                        name                                    TEXT,
                        video_disabled                          INTEGER,
                        joined_existing                         INTEGER,
                        server_identity                         TEXT,
                        vaa_input_status                        INTEGER,
                        is_incoming                             INTEGER,
                        is_conference                           INTEGER,
                        is_on_hold                              INTEGER,
                        start_timestamp                         INTEGER,
                        quality_problems                        TEXT,
                        current_video_audience                  TEXT,
                        premium_video_status                    INTEGER,
                        premium_video_is_grace_period           INTEGER,
                        is_premium_video_sponsor                INTEGER,
                        premium_video_sponsor_list              TEXT,
                        technology                              INTEGER,
                        max_videoconfcall_participants          INTEGER,
                        optimal_remote_videos_in_conference     INTEGER,
                        message_id                              TEXT,
                        status                                  INTEGER,
                        thread_id                               TEXT,
                        leg_id                                  TEXT,
                        conversation_type                       TEXT,
                        datachannel_object_id                   INTEGER,
                        endpoint_details                        TEXT,
                        caller_mri_identity                     TEXT,
                        member_count_changed                    INTEGER,
                        transfer_status                         INTEGER,
                        transfer_failure_reason                 INTEGER,
                        old_members                             BLOB,
                        partner_handle                          TEXT,
                        partner_dispname                        TEXT,
                        type                                    INTEGER,
                        failurereason                           INTEGER,
                        failurecode                             INTEGER,
                        pstn_number                             TEXT,
                        old_duration                            INTEGER,
                        conf_participants                       BLOB,
                        pstn_status                             TEXT,
                        members                                 BLOB,
                        conv_dbid                               INTEGER,
                        is_server_muted                         INTEGER,
                        forwarding_destination_type             TEXT,
                        incoming_type                           TEXT,
                        onbehalfof_mri                          TEXT,
                        transferor_mri                          TEXT,
                        light_weight_meeting_count_changed      INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS ChatMembers (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER,
                        chatname                    TEXT,
                        identity                    TEXT,
                        role                        INTEGER,
                        is_active                   INTEGER,
                        cur_activities              INTEGER,
                        adder                       TEXT
                    );

                    CREATE TABLE IF NOT EXISTS Chats (
                        id                              INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                    INTEGER,
                        name                            TEXT,
                        timestamp                       INTEGER,
                        adder                           TEXT,
                        type                            INTEGER,
                        posters                         TEXT,
                        participants                    TEXT,
                        topic                           TEXT,
                        activemembers                   TEXT,
                        friendlyname                    TEXT,
                        alertstring                     TEXT,
                        is_bookmarked                   INTEGER,
                        activity_timestamp              INTEGER,
                        mystatus                        INTEGER,
                        passwordhint                    TEXT,
                        description                     TEXT,
                        options                         INTEGER,
                        picture                         BLOB,
                        guidelines                      TEXT,
                        dialog_partner                  TEXT,
                        myrole                          INTEGER,
                        applicants                      TEXT,
                        banned_users                    TEXT,
                        topic_xml                       TEXT,
                        name_text                       TEXT,
                        unconsumed_suppressed_msg       INTEGER,
                        unconsumed_normal_msg           INTEGER,
                        unconsumed_elevated_msg         INTEGER,
                        unconsumed_msg_voice            INTEGER,
                        state_data                      BLOB,
                        lifesigns                       INTEGER,
                        last_change                     INTEGER,
                        first_unread_message            INTEGER,
                        pk_type                         INTEGER,
                        dbpath                          TEXT,
                        split_friendlyname              TEXT,
                        conv_dbid                       INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS ContactGroups (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER,
                        type_old                    INTEGER,
                        given_displayname           TEXT,
                        nrofcontacts                INTEGER,
                        nrofcontacts_online         INTEGER,
                        custom_group_id             INTEGER,
                        type                        INTEGER,
                        associated_chat             TEXT,
                        proposer                    TEXT,
                        description                 TEXT,
                        members                     TEXT,
                        cbl_id                      INTEGER,
                        cbl_blob                    BLOB,
                        fixed                       INTEGER,
                        keep_sharedgroup_contacts   INTEGER,
                        chats                       TEXT,
                        extprop_is_hidden           INTEGER,
                        extprop_sortorder_value     INTEGER,
                        extprop_is_expanded         INTEGER,
                        given_sortorder             INTEGER,
                        abch_guid                   TEXT
                    );

                    CREATE TABLE IF NOT EXISTS Contacts (
                        id                                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                        INTEGER,
                        type                                INTEGER,
                        skypename                           TEXT,
                        username                            TEXT,
                        pstnnumber                          TEXT,
                        aliases                             TEXT,
                        fullname                            TEXT,
                        birthday                            INTEGER,
                        gender                              INTEGER,
                        languages                           TEXT,
                        country                             TEXT,
                        province                            TEXT,
                        city                                TEXT,
                        phone_home                          TEXT,
                        phone_office                        TEXT,
                        phone_mobile                        TEXT,
                        emails                              TEXT,
                        hashed_emails                       TEXT,
                        homepage                            TEXT,
                        about                               TEXT,
                        avatar_image                        BLOB,
                        mood_text                           TEXT,
                        rich_mood_text                      TEXT,
                        timezone                            INTEGER,
                        capabilities                        BLOB,
                        profile_timestamp                   INTEGER,
                        nrof_authed_buddies                 INTEGER,
                        ipcountry                           TEXT,
                        avatar_timestamp                    INTEGER,
                        mood_timestamp                      INTEGER,
                        received_authrequest                TEXT,
                        authreq_timestamp                   INTEGER,
                        lastonline_timestamp                INTEGER,
                        availability                        INTEGER,
                        displayname                         TEXT,
                        refreshing                          INTEGER,
                        given_authlevel                     INTEGER,
                        given_displayname                   TEXT,
                        assigned_speeddial                  TEXT,
                        assigned_comment                    TEXT,
                        alertstring                         TEXT,
                        lastused_timestamp                  INTEGER,
                        authrequest_count                   INTEGER,
                        assigned_phone1                     TEXT,
                        assigned_phone1_label               TEXT,
                        assigned_phone2                     TEXT,
                        assigned_phone2_label               TEXT,
                        assigned_phone3                     TEXT,
                        assigned_phone3_label               TEXT,
                        buddystatus                         INTEGER,
                        isauthorized                        INTEGER,
                        popularity_ord                      TEXT,
                        external_id                         TEXT,
                        external_system_id                  TEXT,
                        isblocked                           INTEGER,
                        authorization_certificate           BLOB,
                        certificate_send_count              INTEGER,
                        account_modification_serial_nr      INTEGER,
                        saved_directory_blob                BLOB,
                        nr_of_buddies                       INTEGER,
                        server_synced                       INTEGER,
                        contactlist_track                   INTEGER,
                        last_used_networktime               INTEGER,
                        authorized_time                     INTEGER,
                        sent_authrequest                    TEXT,
                        sent_authrequest_time               INTEGER,
                        sent_authrequest_serial             INTEGER,
                        buddyblob                           BLOB,
                        cbl_future                          BLOB,
                        node_capabilities                   INTEGER,
                        revoked_auth                        INTEGER,
                        added_in_shared_group               INTEGER,
                        in_shared_group                     INTEGER,
                        authreq_history                     BLOB,
                        profile_attachments                 BLOB,
                        stack_version                       INTEGER,
                        offline_authreq_id                  INTEGER,
                        node_capabilities_and               INTEGER,
                        authreq_crc                         INTEGER,
                        authreq_src                         INTEGER,
                        pop_score                           INTEGER,
                        authreq_nodeinfo                    BLOB,
                        main_phone                          TEXT,
                        unified_servants                    TEXT,
                        phone_home_normalized               TEXT,
                        phone_office_normalized             TEXT,
                        phone_mobile_normalized             TEXT,
                        sent_authrequest_initmethod         INTEGER,
                        authreq_initmethod                  INTEGER,
                        verified_email                      BLOB,
                        verified_company                    BLOB,
                        sent_authrequest_extrasbitmask      INTEGER,
                        liveid_cid                          TEXT,
                        extprop_seen_birthday               INTEGER,
                        extprop_sms_target                  INTEGER,
                        extprop_external_data               TEXT,
                        is_auto_buddy                       INTEGER,
                        group_membership                    INTEGER,
                        is_mobile                           INTEGER,
                        is_trusted                          INTEGER,
                        avatar_url                          TEXT,
                        firstname                           TEXT,
                        lastname                            TEXT,
                        network_availability                INTEGER,
                        avatar_url_new                      TEXT,
                        avatar_hiresurl                     TEXT,
                        avatar_hiresurl_new                 TEXT,
                        profile_json                        TEXT,
                        profile_etag                        TEXT,
                        dirblob_last_search_time            INTEGER,
                        mutual_friend_count                 INTEGER,
                        UNIQUE(skypename)
                    );

                    CREATE TABLE IF NOT EXISTS ContentSharings (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER,
                        call_id             INTEGER,
                        identity            TEXT,
                        status              INTEGER,
                        sharing_id          TEXT,
                        state               TEXT,
                        failurereason       INTEGER,
                        failurecode         INTEGER,
                        failuresubcode      INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS ConversationViews (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER,
                        view_id             INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS Conversations (
                        id                                      INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                            INTEGER,
                        identity                                TEXT,
                        conversation_id                         TEXT UNIQUE,
                        type                                    INTEGER,
                        live_host                               TEXT,
                        live_is_hostless                        INTEGER,
                        live_call_technology                    INTEGER,
                        optimal_remote_videos_in_conference     INTEGER,
                        live_start_timestamp                    INTEGER,
                        live_is_muted                           INTEGER,
                        max_videoconfcall_participants          INTEGER,
                        alert_string                            TEXT,
                        is_bookmarked                           INTEGER,
                        is_blocked                              INTEGER,
                        given_displayname                       TEXT,
                        displayname                             TEXT,
                        local_livestatus                        INTEGER,
                        inbox_timestamp                         INTEGER,
                        inbox_message_id                        INTEGER,
                        last_message_id                         INTEGER,
                        unconsumed_suppressed_messages          INTEGER,
                        unconsumed_normal_messages              INTEGER,
                        unconsumed_elevated_messages            INTEGER,
                        unconsumed_messages_voice               INTEGER,
                        active_vm_id                            INTEGER,
                        context_horizon                         INTEGER,
                        consumption_horizon                     INTEGER,
                        consumption_horizon__ms                 INTEGER,
                        last_activity_timestamp                 INTEGER,
                        active_invoice_message                  INTEGER,
                        spawned_from_convo_id                   INTEGER,
                        pinned_order                            INTEGER,
                        creator                                 TEXT,
                        creation_timestamp                      INTEGER,
                        my_status                               INTEGER,
                        opt_joining_enabled                     INTEGER,
                        opt_moderated                           INTEGER,
                        opt_access_token                        TEXT,
                        opt_entry_level_rank                    INTEGER,
                        opt_disclose_history                    INTEGER,
                        opt_history_limit_in_days               INTEGER,
                        opt_admin_only_activities               INTEGER,
                        passwordhint                            TEXT,
                        meta_name                               TEXT,
                        meta_topic                              TEXT,
                        meta_guidelines                         TEXT,
                        meta_picture                            BLOB,
                        picture                                 TEXT,
                        is_p2p_migrated                         INTEGER,
                        migration_instructions_posted           INTEGER,
                        premium_video_status                    INTEGER,
                        premium_video_is_grace_period           INTEGER,
                        guid                                    TEXT,
                        dialog_partner                          TEXT,
                        meta_description                        TEXT,
                        premium_video_sponsor_list              TEXT,
                        mcr_caller                              TEXT,
                        chat_dbid                               INTEGER,
                        history_horizon                         INTEGER,
                        history_sync_state                      TEXT,
                        thread_version                          TEXT,
                        consumption_horizon_set_at              INTEGER,
                        alt_identity                            TEXT,
                        in_migrated_thread_since                INTEGER,
                        awareness_liveState                     TEXT,
                        join_url                                TEXT,
                        reaction_thread                         TEXT,
                        parent_thread                           TEXT,
                        consumption_horizon_rid                 INTEGER,
                        consumption_horizon_crc                 INTEGER,
                        consumption_horizon_bookmark            INTEGER,
                        client_id                               TEXT,
                        last_synced_message_id                  INTEGER,
                        last_synced_message_version             INTEGER,
                        last_synced_days                        INTEGER,
                        version                                 INTEGER,
                        endpoint_details                        TEXT,
                        extprop_profile_height                  INTEGER,
                        extprop_chat_width                      INTEGER,
                        extprop_chat_left_margin                INTEGER,
                        extprop_chat_right_margin               INTEGER,
                        extprop_entry_height                    INTEGER,
                        extprop_windowpos_x                     INTEGER,
                        extprop_windowpos_y                     INTEGER,
                        extprop_windowpos_w                     INTEGER,
                        extprop_windowpos_h                     INTEGER,
                        extprop_window_maximized                INTEGER,
                        extprop_window_detached                 INTEGER,
                        extprop_pinned_order                    INTEGER,
                        extprop_new_in_inbox                    INTEGER,
                        extprop_tab_order                       INTEGER,
                        extprop_video_layout                    INTEGER,
                        extprop_video_chat_height               INTEGER,
                        extprop_chat_avatar                     INTEGER,
                        extprop_consumption_timestamp           INTEGER,
                        extprop_form_visible                    INTEGER,
                        extprop_recovery_mode                   INTEGER,
                        extprop_translator_enabled              INTEGER,
                        extprop_translator_call_my_lang         TEXT,
                        extprop_translator_call_other_lang      TEXT,
                        extprop_translator_chat_my_lang         TEXT,
                        extprop_translator_chat_other_lang      TEXT,
                        extprop_conversation_first_unread_emote INTEGER,
                        datachannel_object_id                   INTEGER,
                        invite_status                           INTEGER,
                        highlights_follow_pending               TEXT,
                        highlights_follow_waiting               TEXT,
                        highlights_add_pending                  TEXT,
                        highlights_add_waiting                  TEXT
                    );

                    CREATE TABLE IF NOT EXISTS DataChannels (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER,
                        status              INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS DbMeta (
                        key                 TEXT NOT NULL PRIMARY KEY,
                        value               TEXT
                    );

                    CREATE TABLE IF NOT EXISTS LegacyMessages (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS LightWeightMeetings (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER,
                        call_id             INTEGER,
                        status              INTEGER,
                        state               TEXT,
                        failurereason       INTEGER,
                        failurecode         INTEGER,
                        failuresubcode      INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS MediaDocuments (
                        id                      INTEGER NOT NULL PRIMARY KEY,
                        is_permanent            INTEGER,
                        storage_document_id     INTEGER,
                        status                  INTEGER,
                        doc_type                INTEGER,
                        uri                     TEXT,
                        original_name           TEXT,
                        title                   TEXT,
                        description             TEXT,
                        thumbnail_url           TEXT,
                        web_url                 TEXT,
                        mime_type               TEXT,
                        type                    TEXT,
                        service                 TEXT,
                        consumption_status      INTEGER,
                        convo_id                INTEGER,
                        message_id              INTEGER,
                        sending_status          INTEGER,
                        ams_id                  TEXT
                    );

                    CREATE TABLE IF NOT EXISTS MessageAnnotations (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER,
                        message_id          INTEGER,
                        type                INTEGER,
                        key                 TEXT,
                        value               TEXT,
                        author              TEXT,
                        timestamp           INTEGER,
                        status              INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS Messages (
                        id                              INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                    INTEGER,
                        chatname                        TEXT,
                        timestamp                       INTEGER,
                        author                          TEXT,
                        from_username                   TEXT,
                        from_dispname                   TEXT,
                        chatmsg_type                    INTEGER,
                        identities                      TEXT,
                        leavereason                     INTEGER,
                        body_xml                        TEXT,
                        chatmsg_status                  INTEGER,
                        body_is_rawxml                  INTEGER,
                        edited_by                       TEXT,
                        edited_timestamp                INTEGER,
                        newoptions                      INTEGER,
                        newrole                         INTEGER,
                        dialog_partner                  TEXT,
                        oldoptions                      INTEGER,
                        guid                            BLOB,
                        convo_id                        INTEGER,
                        type                            INTEGER,
                        sending_status                  INTEGER,
                        param_key                       INTEGER,
                        param_value                     INTEGER,
                        reason                          TEXT,
                        error_code                      INTEGER,
                        consumption_status              INTEGER,
                        author_was_live                 INTEGER,
                        participant_count               INTEGER,
                        pk_id                           INTEGER,
                        crc                             INTEGER,
                        remote_id                       INTEGER,
                        parent_id                       INTEGER,
                        call_guid                       TEXT,
                        extprop_contact_review_date     TEXT,
                        extprop_contact_received_stamp  INTEGER,
                        extprop_contact_reviewed        INTEGER,
                        option_bits                     INTEGER,
                        server_id                       INTEGER,
                        annotation_version              INTEGER,
                        timestamp__ms                   INTEGER,
                        language                        TEXT,
                        bots_settings                   TEXT,
                        reaction_thread                 TEXT,
                        content_flags                   INTEGER,
                        UNIQUE(pk_id, convo_id)
                    );

                    CREATE TABLE IF NOT EXISTS Participants (
                        id                                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                        INTEGER,
                        convo_id                            INTEGER,
                        identity                            TEXT,
                        rank                                INTEGER,
                        requested_rank                      INTEGER,
                        text_status                         INTEGER,
                        voice_status                        INTEGER,
                        live_identity                       TEXT,
                        live_price_for_me                   TEXT,
                        live_fwd_identities                 TEXT,
                        live_start_timestamp                INTEGER,
                        sound_level                         INTEGER,
                        debuginfo                           TEXT,
                        next_redial_time                    INTEGER,
                        nrof_redials_left                   INTEGER,
                        last_voice_error                    TEXT,
                        quality_problems                    TEXT,
                        live_type                           INTEGER,
                        live_country                        TEXT,
                        transferred_by                      TEXT,
                        transferred_to                      TEXT,
                        adder                               TEXT,
                        sponsor                             TEXT,
                        last_leavereason                    INTEGER,
                        is_premium_video_sponsor            INTEGER,
                        is_multiparty_video_capable         INTEGER,
                        live_identity_to_use                TEXT,
                        livesession_recovery_in_progress    INTEGER,
                        livesession_fallback_in_progress    INTEGER,
                        is_multiparty_video_updatable       INTEGER,
                        live_ip_address                     TEXT,
                        is_video_codec_compatible           INTEGER,
                        group_calling_capabilities          INTEGER,
                        is_seamlessly_upgraded_call         INTEGER,
                        live_voicechannel                   INTEGER,
                        read_horizon                        INTEGER,
                        is_active_speaker                   INTEGER,
                        dominant_speaker_rank               INTEGER,
                        endpoint_details                    TEXT,
                        messaging_mode                      INTEGER,
                        real_identity                       TEXT,
                        adding_in_progress_since            INTEGER,
                        UNIQUE(convo_id, identity)
                    );

                    CREATE TABLE IF NOT EXISTS SMSes (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER,
                        is_failed_unseen            INTEGER,
                        price_precision             INTEGER,
                        type                        INTEGER,
                        status                      INTEGER,
                        failurereason               INTEGER,
                        price                       INTEGER,
                        price_currency              TEXT,
                        target_numbers              TEXT,
                        target_statuses             BLOB,
                        body                        TEXT,
                        timestamp                   INTEGER,
                        reply_to_number             TEXT,
                        chatmsg_id                  INTEGER,
                        extprop_hide_from_history   INTEGER,
                        extprop_extended            INTEGER,
                        identity                    TEXT,
                        notification_id             INTEGER,
                        event_flags                 INTEGER,
                        reply_id_number             TEXT,
                        convo_name                  TEXT,
                        outgoing_reply_type         INTEGER,
                        error_category              INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS Transfers (
                        id                              INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                    INTEGER,
                        type                            INTEGER,
                        partner_handle                  TEXT,
                        partner_dispname                TEXT,
                        status                          INTEGER,
                        failurereason                   INTEGER,
                        starttime                       INTEGER,
                        finishtime                      INTEGER,
                        filepath                        TEXT,
                        filename                        TEXT,
                        filesize                        TEXT,
                        bytestransferred                TEXT,
                        bytespersecond                  INTEGER,
                        chatmsg_guid                    BLOB,
                        chatmsg_index                   INTEGER,
                        convo_id                        INTEGER,
                        pk_id                           INTEGER,
                        fullsize_url                    TEXT,
                        nodeid                          BLOB,
                        last_activity                   INTEGER,
                        flags                           INTEGER,
                        old_status                      INTEGER,
                        old_filepath                    INTEGER,
                        extprop_localfilename           TEXT,
                        extprop_hide_from_history       INTEGER,
                        extprop_window_visible          INTEGER,
                        extprop_handled_by_chat         INTEGER,
                        accepttime                      INTEGER,
                        parent_id                       INTEGER,
                        offer_send_list                 TEXT
                    );

                    CREATE TABLE IF NOT EXISTS Translators (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS VideoMessages (
                        id                      INTEGER NOT NULL PRIMARY KEY,
                        is_permanent            INTEGER,
                        qik_id                  BLOB,
                        attached_msg_ids        TEXT,
                        sharing_id              TEXT,
                        status                  INTEGER,
                        vod_status              INTEGER,
                        vod_path                TEXT,
                        local_path              TEXT,
                        public_link             TEXT,
                        progress                INTEGER,
                        title                   TEXT,
                        description             TEXT,
                        author                  TEXT,
                        creation_timestamp      INTEGER,
                        type                    TEXT
                    );

                    CREATE TABLE IF NOT EXISTS Videos (
                        id                  INTEGER NOT NULL PRIMARY KEY,
                        is_permanent        INTEGER,
                        status              INTEGER,
                        dimensions          TEXT,
                        error               TEXT,
                        debuginfo           TEXT,
                        duration_1080       INTEGER,
                        duration_720        INTEGER,
                        duration_hqv        INTEGER,
                        duration_vgad2      INTEGER,
                        duration_ltvgad2    INTEGER,
                        timestamp           INTEGER,
                        hq_present          INTEGER,
                        duration_ss         INTEGER,
                        ss_timestamp        INTEGER,
                        media_type          INTEGER,
                        convo_id            INTEGER,
                        device_path         TEXT,
                        device_name         TEXT,
                        participant_id      INTEGER,
                        rank                INTEGER
                    );

                    CREATE TABLE IF NOT EXISTS Voicemails (
                        id                          INTEGER NOT NULL PRIMARY KEY,
                        is_permanent                INTEGER,
                        type                        INTEGER,
                        partner_handle              TEXT,
                        partner_dispname            TEXT,
                        status                      INTEGER,
                        failurereason               INTEGER,
                        subject                     TEXT,
                        timestamp                   INTEGER,
                        duration                    INTEGER,
                        allowed_duration            INTEGER,
                        playback_progress           INTEGER,
                        convo_id                    INTEGER,
                        chatmsg_guid                BLOB,
                        notification_id             INTEGER,
                        flags                       INTEGER,
                        size                        INTEGER,
                        path                        TEXT,
                        failures                    INTEGER,
                        vflags                      INTEGER,
                        xmsg                        TEXT,
                        extprop_hide_from_history   INTEGER
                    );";
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region Accounts

        public class AccountsTable
        {
            private readonly DatabaseManager _db;

            public AccountsTable(DatabaseManager db)
            {
                _db = db;
            }

            public bool Write(User user) // JUMP accounts write
            {
                using (SqliteConnection connection = _db.CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText =
                                @"
                                INSERT INTO Accounts (
                                    is_permanent, skypename, username, pstnnumber, fullname, birthday, gender,
                                    languages, country, province, city, phone_home, phone_office,
                                    phone_mobile, emails, homepage, about, displayname,
                                    mood_text, rich_mood_text, avatar_image, liveid_membername,
                                    availability, lastonline_timestamp, plugin
                                )
                                VALUES (
                                    @is_permanent, @skypename, @username, @pstnnumber, @fullname, @birthday, @gender,
                                    @languages, @country, @province, @city, @phone_home, @phone_office,
                                    @phone_mobile, @emails, @homepage, @about, @displayname,
                                    @mood_text, @rich_mood_text, @avatar_image, @liveid_membername,
                                    @availability, @lastonline_timestamp, @plugin
                                )
                                ON CONFLICT(skypename, plugin) DO UPDATE SET
                                    skypename            = excluded.skypename,
                                    username             = excluded.username,
                                    fullname             = excluded.fullname,
                                    displayname          = excluded.displayname,
                                    mood_text            = excluded.mood_text,
                                    rich_mood_text       = excluded.rich_mood_text,
                                    avatar_image         = excluded.avatar_image,
                                    liveid_membername    = excluded.liveid_membername,
                                    availability         = excluded.availability,
                                    lastonline_timestamp = excluded.lastonline_timestamp,
                                    plugin               = excluded.plugin;";

                            cmd.Parameters.Add("@is_permanent", SqliteType.Integer).Value = 1;
                            cmd.Parameters.Add("@skypename", SqliteType.Text).Value =
                                (object)ConvertIdentifier(user.Identifier) ?? DBNull.Value;
                            cmd.Parameters.Add("@username", SqliteType.Text).Value =
                                (object)user.Username ?? DBNull.Value;
                            cmd.Parameters.Add("@pstnnumber", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@fullname", SqliteType.Text).Value =
                                (object)user.DisplayName ?? DBNull.Value;
                            cmd.Parameters.Add("@birthday", SqliteType.Integer).Value =
                                DBNull.Value;
                            cmd.Parameters.Add("@gender", SqliteType.Integer).Value = DBNull.Value;
                            cmd.Parameters.Add("@languages", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@country", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@province", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@city", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@phone_home", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@phone_office", SqliteType.Text).Value =
                                DBNull.Value;
                            cmd.Parameters.Add("@phone_mobile", SqliteType.Text).Value =
                                DBNull.Value;
                            cmd.Parameters.Add("@emails", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@homepage", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@about", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@displayname", SqliteType.Text).Value =
                                (object)user.DisplayName ?? DBNull.Value;
                            cmd.Parameters.Add("@mood_text", SqliteType.Text).Value =
                                (object)user.Status ?? DBNull.Value;
                            cmd.Parameters.Add("@rich_mood_text", SqliteType.Text).Value =
                                DBNull.Value;
                            cmd.Parameters.Add("@avatar_image", SqliteType.Blob).Value =
                                (object)PrepareAvatarBytes(user.ProfilePicture) ?? DBNull.Value;
                            cmd.Parameters.Add("@liveid_membername", SqliteType.Text).Value =
                                (object)user.Username ?? DBNull.Value;
                            cmd.Parameters.Add("@availability", SqliteType.Integer).Value =
                                DBNull.Value;
                            cmd.Parameters.Add("@lastonline_timestamp", SqliteType.Integer).Value =
                                DBNull.Value;
                            cmd.Parameters.Add("@plugin", SqliteType.Text).Value = Universal
                                .Plugin
                                .InternalName;

                            cmd.ExecuteNonQuery();
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.MessageBox(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }

        #endregion Accounts

        #region Contacts

        public class ContactsTable
        {
            private readonly DatabaseManager _db;

            public ContactsTable(DatabaseManager db)
            {
                _db = db;
            }

            public User[] Read()
            {
                var users = new List<User>();
                using (SqliteConnection connection = _db.CreateConnection())
                using (SqliteCommand cmd = connection.CreateCommand())
                {
                    cmd.CommandText =
                        "SELECT skypename, username, displayname, avatar_image, mood_text FROM Contacts;";
                    using (SqliteDataReader reader = cmd.ExecuteReader())
                        while (reader.Read())
                            users.Add(UserFromReader(reader));
                }
                return users.ToArray();
            }

            public User Read(string identifier) // JUMP contacts read
            {
                using (SqliteConnection connection = _db.CreateConnection())
                using (SqliteCommand cmd = connection.CreateCommand())
                {
                    cmd.CommandText =
                        "SELECT skypename, username, displayname, avatar_image, mood_text FROM Contacts WHERE skypename = @skypename LIMIT 1;";
                    cmd.Parameters.Add("@skypename", SqliteType.Text).Value = ConvertIdentifier(
                        identifier
                    );
                    using (SqliteDataReader reader = cmd.ExecuteReader())
                        return reader.Read() ? UserFromReader(reader) : null;
                }
            }

            public bool Write(Conversation[] conversations) // JUMP contacts write
            {
                using (SqliteConnection connection = _db.CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText =
                                @"
                                INSERT INTO Contacts (
                                    is_permanent, type, skypename, username, pstnnumber, fullname,
                                    displayname, given_displayname, avatar_image, mood_text,
                                    isauthorized, isblocked, buddystatus,
                                    aliases, birthday, gender, languages, country, province,
                                    city, phone_home, phone_office, phone_mobile, emails,
                                    hashed_emails, homepage, about, rich_mood_text,
                                    profile_timestamp, nrof_authed_buddies, ipcountry,
                                    avatar_timestamp, mood_timestamp, received_authrequest,
                                    authreq_timestamp, lastonline_timestamp, availability,
                                    refreshing, given_authlevel, assigned_speeddial,
                                    assigned_comment, alertstring, lastused_timestamp,
                                    authrequest_count
                                )
                                VALUES (
                                    @is_permanent, @type, @skypename, @username, @pstnnumber, @fullname,
                                    @displayname, @given_displayname, @avatar_image, @mood_text,
                                    @isauthorized, @isblocked, @buddystatus, 
                                    NULL, NULL, NULL, NULL, NULL, NULL,
                                    NULL, NULL, NULL, NULL, NULL,
                                    NULL, NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    NULL
                                )
                                ON CONFLICT(skypename) DO UPDATE SET
                                    fullname          = excluded.fullname,
                                    displayname       = excluded.displayname,
                                    given_displayname = excluded.given_displayname,
                                    avatar_image      = excluded.avatar_image,
                                    mood_text         = excluded.mood_text,
                                    skypename         = excluded.skypename;";

                            cmd.Parameters.Add("@is_permanent", SqliteType.Integer);
                            cmd.Parameters.Add("@type", SqliteType.Integer);
                            cmd.Parameters.Add("@skypename", SqliteType.Text);
                            cmd.Parameters.Add("@username", SqliteType.Text);
                            cmd.Parameters.Add("@pstnnumber", SqliteType.Text);
                            cmd.Parameters.Add("@fullname", SqliteType.Text);
                            cmd.Parameters.Add("@displayname", SqliteType.Text);
                            cmd.Parameters.Add("@given_displayname", SqliteType.Text);
                            cmd.Parameters.Add("@avatar_image", SqliteType.Blob);
                            cmd.Parameters.Add("@mood_text", SqliteType.Text);
                            cmd.Parameters.Add("@isauthorized", SqliteType.Integer);
                            cmd.Parameters.Add("@isblocked", SqliteType.Integer);
                            cmd.Parameters.Add("@buddystatus", SqliteType.Integer);

                            foreach (Conversation conversation in conversations)
                            {
                                if (!(conversation is DirectMessage dm))
                                    continue;

                                string identifier =
                                    (conversation is DirectMessage dmId)
                                        ? dmId.Partner?.Identifier
                                        : conversation.Identifier;

                                cmd.Parameters["@is_permanent"].Value = 1;
                                cmd.Parameters["@type"].Value = 1;
                                cmd.Parameters["@skypename"].Value =
                                    (object)ConvertIdentifier(identifier) ?? DBNull.Value;
                                cmd.Parameters["@username"].Value =
                                    (object)dm.Partner?.Username ?? DBNull.Value;
                                cmd.Parameters["@pstnnumber"].Value = DBNull.Value;
                                cmd.Parameters["@fullname"].Value =
                                    (object)dm.Partner?.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@displayname"].Value =
                                    (object)dm.Partner?.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@given_displayname"].Value = DBNull.Value; // TODO add nickname support
                                cmd.Parameters["@avatar_image"].Value =
                                    (object)PrepareAvatarBytes(dm.Partner?.ProfilePicture)
                                    ?? DBNull.Value;
                                cmd.Parameters["@mood_text"].Value =
                                    (object)dm.Partner?.Status ?? DBNull.Value;
                                cmd.Parameters["@isauthorized"].Value = 1;
                                cmd.Parameters["@isblocked"].Value = 0;
                                cmd.Parameters["@buddystatus"].Value = 2;

                                cmd.ExecuteNonQuery();
                            }
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.MessageBox(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }

        #endregion

        #region Conversations

        public class ConversationsTable
        {
            private readonly DatabaseManager _db;

            public ConversationsTable(DatabaseManager db)
            {
                _db = db;
            }

            public Conversation[] Read() // JUMP conversation read
            {
                _db.BuildContactMap();
                var participantMap = LoadParticipantMap();
                var result = new List<Conversation>();

                using (SqliteConnection connection = _db.CreateConnection())
                using (SqliteCommand cmd = connection.CreateCommand())
                {
                    cmd.CommandText =
                        @"
                        SELECT id, conversation_id, type, displayname, dialog_partner,
                               last_activity_timestamp, unconsumed_normal_messages
                        FROM Conversations
                        ORDER BY last_activity_timestamp DESC;";

                    using (SqliteDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            long dbId = reader.GetInt64(0);
                            string convoId = reader.IsDBNull(1)
                                ? null
                                : UnconvertIdentifier(reader.GetString(1));
                            int type = reader.IsDBNull(2) ? 0 : reader.GetInt32(2);
                            string displayName = reader.IsDBNull(3) ? null : reader.GetString(3);
                            string dlgPartner = reader.IsDBNull(4)
                                ? null
                                : UnconvertIdentifier(reader.GetString(4));
                            long lastActivity = reader.IsDBNull(5) ? 0 : reader.GetInt64(5);
                            int unread = reader.IsDBNull(6) ? 0 : reader.GetInt32(6);

                            DateTime lastTime =
                                lastActivity != 0
                                    ? DateTimeOffset.FromUnixTimeSeconds(lastActivity).UtcDateTime
                                    : DateTime.MinValue;

                            participantMap.TryGetValue(dbId, out var memberIds);

                            result.Add(
                                type == 1
                                    ? (Conversation)BuildDM(
                                        convoId,
                                        dlgPartner,
                                        unread,
                                        lastTime,
                                        _db._contactMap
                                    )
                                    : BuildGroup(
                                        convoId,
                                        displayName,
                                        unread,
                                        lastTime,
                                        memberIds,
                                        _db._contactMap
                                    )
                            );
                        }
                    }
                }

                return result.ToArray();
            }

            public Conversation Read(string skymuConvoId) // JUMP conversation read one
            {
                _db.BuildContactMap();

                using (SqliteConnection connection = _db.CreateConnection())
                {
                    long dbId;
                    int type;
                    string displayName,
                        dlgPartner;
                    long lastActivity;
                    int unread;

                    using (SqliteCommand cmd = connection.CreateCommand())
                    {
                        cmd.CommandText =
                            @"
                            SELECT id, type, displayname, dialog_partner,
                                   last_activity_timestamp, unconsumed_normal_messages
                            FROM Conversations WHERE conversation_id = @conversation_id LIMIT 1;";
                        cmd.Parameters.Add("@conversation_id", SqliteType.Text).Value =
                            ConvertIdentifier(skymuConvoId);

                        using (SqliteDataReader reader = cmd.ExecuteReader())
                        {
                            if (!reader.Read())
                                return null;
                            dbId = reader.GetInt64(0);
                            type = reader.IsDBNull(1) ? 0 : reader.GetInt32(1);
                            displayName = reader.IsDBNull(2) ? null : reader.GetString(2);
                            dlgPartner = reader.IsDBNull(3)
                                ? null
                                : UnconvertIdentifier(reader.GetString(3));
                            lastActivity = reader.IsDBNull(4) ? 0 : reader.GetInt64(4);
                            unread = reader.IsDBNull(5) ? 0 : reader.GetInt32(5);
                        }
                    }

                    DateTime lastTime =
                        lastActivity != 0
                            ? DateTimeOffset.FromUnixTimeSeconds(lastActivity).UtcDateTime
                            : DateTime.MinValue;

                    var memberIds = new List<string>();
                    using (SqliteCommand pCmd = connection.CreateCommand())
                    {
                        pCmd.CommandText =
                            "SELECT identity FROM Participants WHERE convo_id = @convo_id;";
                        pCmd.Parameters.Add("@convo_id", SqliteType.Integer).Value = dbId;
                        using (SqliteDataReader pr = pCmd.ExecuteReader())
                            while (pr.Read())
                                if (!pr.IsDBNull(0))
                                    memberIds.Add(UnconvertIdentifier(pr.GetString(0)));
                    }

                    return type == 1
                        ? BuildDM(skymuConvoId, dlgPartner, unread, lastTime, _db._contactMap)
                        : (Conversation)BuildGroup(
                            skymuConvoId,
                            displayName,
                            unread,
                            lastTime,
                            memberIds,
                            _db._contactMap
                        );
                }
            }

            private Dictionary<long, List<string>> LoadParticipantMap()
            {
                var map = new Dictionary<long, List<string>>();
                using (SqliteConnection connection = _db.CreateConnection())
                using (SqliteCommand cmd = connection.CreateCommand())
                {
                    cmd.CommandText = "SELECT convo_id, identity FROM Participants;";
                    using (SqliteDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (reader.IsDBNull(1))
                                continue;
                            long convoId = reader.GetInt64(0);
                            if (!map.TryGetValue(convoId, out var list))
                                map[convoId] = list = new List<string>();
                            list.Add(UnconvertIdentifier(reader.GetString(1)));
                        }
                    }
                }
                return map;
            }

            private static DirectMessage BuildDM(
                string skymuConvoId,
                string dialogPartner,
                int unread,
                DateTime lastTime,
                Dictionary<string, User> contactMap
            )
            {
                string partnerId = dialogPartner ?? skymuConvoId;
                contactMap.TryGetValue(partnerId, out User partner);
                return new DirectMessage(
                    partner ?? StubUser(partnerId),
                    unread,
                    skymuConvoId,
                    lastTime
                );
            }

            private static Group BuildGroup(
                string skymuConvoId,
                string displayName,
                int unread,
                DateTime lastTime,
                List<string> memberIds,
                Dictionary<string, User> contactMap
            )
            {
                var members = new List<User>();
                if (memberIds != null)
                    foreach (string mid in memberIds)
                    {
                        contactMap.TryGetValue(mid, out User m);
                        members.Add(m ?? StubUser(mid));
                    }
                return new Group(
                    displayName,
                    skymuConvoId,
                    unread,
                    members.ToArray(),
                    last_message_time: lastTime
                );
            }

            public bool Write(Conversation[] conversations) // JUMP conversation write
            {
                using (SqliteConnection connection = _db.CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText =
                                @"
                                INSERT INTO Conversations (
                                    is_permanent, identity, conversation_id, type, displayname, given_displayname,
                                    meta_topic, dialog_partner, 
                                    creator, creation_timestamp,
                                    last_message_id, last_activity_timestamp,
                                    is_bookmarked, is_blocked, my_status
                                )
                                VALUES (
                                    @is_permanent, @identity, @conversation_id, @type, @displayname, @given_displayname,
                                    @meta_topic, @dialog_partner,
                                    NULL, NULL,
                                    NULL, NULL,
                                    0, 0, 0
                                )
                                ON CONFLICT(conversation_id) DO UPDATE SET
                                    displayname             = excluded.displayname,
                                    given_displayname       = excluded.given_displayname,
                                    meta_topic              = excluded.meta_topic,
                                    dialog_partner          = excluded.dialog_partner;";

                            cmd.Parameters.Add("@is_permanent", SqliteType.Integer);
                            cmd.Parameters.Add("@identity", SqliteType.Text);
                            cmd.Parameters.Add("@conversation_id", SqliteType.Text);
                            cmd.Parameters.Add("@type", SqliteType.Integer);
                            cmd.Parameters.Add("@displayname", SqliteType.Text);
                            cmd.Parameters.Add("@given_displayname", SqliteType.Text);
                            cmd.Parameters.Add("@meta_topic", SqliteType.Text);
                            cmd.Parameters.Add("@dialog_partner", SqliteType.Text);

                            foreach (Conversation conversation in conversations)
                            {
                                int type;
                                if (conversation is DirectMessage)
                                    type = 1;
                                else if (conversation is Group)
                                    type = 2;
                                else if (conversation is ServerChannel)
                                    type = 3;
                                else
                                    type = 0;

                                string dialogPartner = null;
                                if (conversation is DirectMessage dm)
                                    dialogPartner = dm.Partner?.Identifier;

                                // identity: for DMs use the partner's skypename (Skype compat);
                                // for groups/channels use the platform conversation ID.
                                string skypeIdentity =
                                    (conversation is DirectMessage)
                                        ? dialogPartner
                                        : conversation.Identifier;

                                cmd.Parameters["@is_permanent"].Value = 1;
                                cmd.Parameters["@identity"].Value =
                                    (object)ConvertIdentifier(skypeIdentity) ?? DBNull.Value;
                                cmd.Parameters["@conversation_id"].Value =
                                    (object)ConvertIdentifier(conversation.Identifier)
                                    ?? DBNull.Value;
                                cmd.Parameters["@type"].Value = type;
                                cmd.Parameters["@displayname"].Value =
                                    (object)conversation.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@given_displayname"].Value = DBNull.Value; // TODO add nickname support
                                cmd.Parameters["@meta_topic"].Value =
                                    (object)conversation.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@dialog_partner"].Value =
                                    (object)ConvertIdentifier(dialogPartner) ?? DBNull.Value;

                                cmd.ExecuteNonQuery();
                            }
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.MessageBox(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                _db.Participants.Write(conversations);
                return true;
            }
        }

        #endregion

        #region Participants

        public class ParticipantsTable
        {
            private readonly DatabaseManager _db;

            public ParticipantsTable(DatabaseManager db)
            {
                _db = db;
            }

            public bool Write(Conversation[] conversations) // JUMP participants write
            {
                using (SqliteConnection connection = _db.CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand idCmd = connection.CreateCommand())
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            idCmd.CommandText =
                                "SELECT id FROM Conversations WHERE conversation_id = @conversation_id LIMIT 1;";
                            idCmd.Parameters.Add("@conversation_id", SqliteType.Text);

                            cmd.CommandText =
                                @"
                                INSERT INTO Participants (is_permanent, convo_id, identity, rank)
                                VALUES (1, @convo_id, @identity, @rank)
                                ON CONFLICT(convo_id, identity) DO UPDATE SET rank = excluded.rank;";
                            cmd.Parameters.Add("@convo_id", SqliteType.Integer);
                            cmd.Parameters.Add("@identity", SqliteType.Text);
                            cmd.Parameters.Add("@rank", SqliteType.Integer);

                            foreach (Conversation conversation in conversations)
                            {
                                idCmd.Parameters["@conversation_id"].Value =
                                    (object)ConvertIdentifier(conversation.Identifier)
                                    ?? DBNull.Value;
                                object result = idCmd.ExecuteScalar();
                                if (result == null || result == DBNull.Value)
                                    continue;
                                long convoId = Convert.ToInt64(result);

                                User[] members = null;
                                if (conversation is Group group)
                                    members = group.Members;
                                else if (conversation is DirectMessage dm)
                                    members = dm.Partner != null ? new[] { dm.Partner } : null;

                                if (members == null)
                                    continue;

                                foreach (User member in members)
                                {
                                    if (member?.Identifier == null)
                                        continue;
                                    cmd.Parameters["@convo_id"].Value = convoId;
                                    cmd.Parameters["@identity"].Value = ConvertIdentifier(
                                        member.Identifier
                                    );
                                    cmd.Parameters["@rank"].Value = 0;
                                    cmd.ExecuteNonQuery();
                                }
                            }
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.MessageBox(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }
        #endregion

        #region Messages

        public class MessagesTable
        {
            private readonly DatabaseManager _db;

            public MessagesTable(DatabaseManager db)
            {
                _db = db;
            }

            private string GetMediaFolder()
            {
                string mediaDir = Path.Combine(Path.GetDirectoryName(_db.DbPath), "Media");
                Directory.CreateDirectory(mediaDir);
                return mediaDir;
            }

            internal static string ResolveImageExtension(byte[] bytes, string existingName)
            {
                string ext = Path.GetExtension(existingName)?.ToLowerInvariant();
                if ( // does the file already have the extension? (unlikely)
                    ext == ".png"
                    || ext == ".jpg"
                    || ext == ".jpeg"
                    || ext == ".gif"
                    || ext == ".webp"
                )
                {
                    return existingName; // just save as is, the file has the extension already
                }

                if (bytes.Length >= 4) // are there magic bytes?
                {
                    if ( // do they match up with any of the formats we know?
                        bytes[0] == 0x89
                        && bytes[1] == 0x50
                        && bytes[2] == 0x4E
                        && bytes[3] == 0x47
                    )
                        return existingName + ".png"; // save as PNG
                    if (bytes[0] == 0xFF && bytes[1] == 0xD8)
                        return existingName + ".jpg"; // save as JPEG
                    if (bytes[0] == 0x47 && bytes[1] == 0x49 && bytes[2] == 0x46)
                        return existingName + ".gif"; // save as GIF
                    if (
                        bytes[0] == 0x52
                        && bytes[1] == 0x49
                        && bytes[2] == 0x46
                        && bytes[3] == 0x46
                    )
                        return existingName + ".webp"; // save as WebP
                }

                return existingName; // couldn't find proper extension, just save without an extension
            }

            private void WriteImageAttachments(
                ConversationItem[] items,
                Conversation conversation,
                long conversationIncrementalId,
                SqliteConnection connection,
                SqliteTransaction transaction
            )
            {
                string dialogPartner =
                    (conversation is DirectMessage dm) ? dm.Partner?.Identifier : null;
                string mediaDir = GetMediaFolder();

                using (SqliteCommand cmd = connection.CreateCommand())
                {
                    cmd.Transaction = transaction;
                    cmd.CommandText =
                        @"INSERT INTO Transfers (
                is_permanent, type, partner_handle, partner_dispname,
                status, starttime, finishtime,
                filepath, filename, filesize,
                bytestransferred, convo_id, pk_id, fullsize_url, chatmsg_index,
                last_activity, flags
            )
            VALUES (
                1, @type, @partner_handle, @partner_dispname,
                8, @starttime, @finishtime,
                @filepath, @filename, @filesize,
                @filesize, @convo_id, @pk_id, @fullsize_url, @chatmsg_index,
                @finishtime, 0
            )
            ON CONFLICT DO NOTHING;";

                    cmd.Parameters.Add("@type", SqliteType.Integer);
                    cmd.Parameters.Add("@partner_handle", SqliteType.Text);
                    cmd.Parameters.Add("@partner_dispname", SqliteType.Text);
                    cmd.Parameters.Add("@starttime", SqliteType.Integer);
                    cmd.Parameters.Add("@finishtime", SqliteType.Integer);
                    cmd.Parameters.Add("@filepath", SqliteType.Text);
                    cmd.Parameters.Add("@filename", SqliteType.Text);
                    cmd.Parameters.Add("@filesize", SqliteType.Text);
                    cmd.Parameters.Add("@convo_id", SqliteType.Integer);
                    cmd.Parameters.Add("@pk_id", SqliteType.Integer);
                    cmd.Parameters.Add("@fullsize_url", SqliteType.Text);
                    cmd.Parameters.Add("@chatmsg_index", SqliteType.Integer);

                    foreach (ConversationItem item in items)
                    {
                        if (!(item is Message message))
                            continue;
                        if (message.Attachments == null)
                            continue;

                        long tsSeconds = new DateTimeOffset(message.Time).ToUnixTimeSeconds();

                        int attachmentIndex = 0;
                        foreach (Attachment attachment in message.Attachments)
                        {
                            if (
                                (attachment?.Type != AttachmentType.Image)
                                && (attachment?.Type != AttachmentType.ThumbnailImage)
                            )
                                continue;
                            if (attachment.File == null || attachment.File.Length == 0)
                                continue;

                            string rawName = string.IsNullOrWhiteSpace(attachment.Name)
                                ? "image"
                                : string.Concat(
                                    attachment.Name.Split(Path.GetInvalidFileNameChars())
                                );
                            string safeName = ResolveImageExtension(attachment.File, rawName);

                            string fileName = $"{message.Identifier}_{attachmentIndex}_{safeName}";
                            string filePath = Path.Combine(mediaDir, fileName);

                            File.WriteAllBytes(filePath, attachment.File);

                            cmd.Parameters["@type"].Value = 1; // incoming image
                            cmd.Parameters["@partner_handle"].Value =
                                (object)ConvertIdentifier(dialogPartner) ?? DBNull.Value;
                            cmd.Parameters["@partner_dispname"].Value =
                                (object)(
                                    conversation is DirectMessage dmConvo
                                        ? dmConvo.Partner?.DisplayName
                                        : conversation.DisplayName
                                ) ?? DBNull.Value;
                            cmd.Parameters["@starttime"].Value = tsSeconds;
                            cmd.Parameters["@finishtime"].Value = tsSeconds;
                            cmd.Parameters["@filepath"].Value = filePath;
                            cmd.Parameters["@filename"].Value = safeName;
                            cmd.Parameters["@filesize"].Value = attachment.File.Length.ToString();
                            cmd.Parameters["@convo_id"].Value = conversationIncrementalId;
                            cmd.Parameters["@pk_id"].Value =
                                (object)message.Identifier ?? DBNull.Value;
                            cmd.Parameters["@fullsize_url"].Value = attachment.Url ?? String.Empty;
                            cmd.Parameters["@chatmsg_index"].Value = attachmentIndex;

                            cmd.ExecuteNonQuery();
                            attachmentIndex++;
                        }
                    }
                }
            }

            private Dictionary<string, Attachment[]> ReadImageAttachments(
                long convoId,
                SqliteConnection connection
            )
            {
                var result = new Dictionary<string, List<Attachment>>();

                using (SqliteCommand cmd = connection.CreateCommand())
                {
                    cmd.CommandText =
                        @"SELECT pk_id, filepath, filename, fullsize_url
              FROM Transfers
              WHERE convo_id = @convo_id AND type = 1
              ORDER BY pk_id ASC, chatmsg_index ASC;";
                    cmd.Parameters.Add("@convo_id", SqliteType.Integer).Value = convoId;

                    using (SqliteDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string pkId = reader.IsDBNull(0) ? null : reader.GetInt64(0).ToString();
                            string filePath = reader.IsDBNull(1) ? null : reader.GetString(1);
                            string fileName = reader.IsDBNull(2) ? null : reader.GetString(2);
                            string url = reader.IsDBNull(3) ? null : reader.GetString(3);

                            if (pkId == null || filePath == null)
                                continue;
                            if (!File.Exists(filePath))
                                continue;

                            byte[] bytes = File.ReadAllBytes(filePath);
                            Attachment attachment;
                            if (!String.IsNullOrEmpty(url))
                            {
                                attachment = new Attachment(
                                    bytes,
                                    fileName,
                                    url,
                                    AttachmentType.ThumbnailImage
                                );
                            }
                            else
                            {
                                attachment = new Attachment(
                                    bytes,
                                    fileName,
                                    null,
                                    AttachmentType.Image
                                );
                            }

                            if (!result.TryGetValue(pkId, out var list))
                                result[pkId] = list = new List<Attachment>();
                            list.Add(attachment);
                        }
                    }
                }

                return result.ToDictionary(kv => kv.Key, kv => kv.Value.ToArray());
            }

            public ConversationItem[] Read(Conversation conversation, int limit = 0)
            {
                return Read(conversation, limit, beforeTimestampMs: null);
            }

            public ConversationItem[] Read( // JUMP messages read
                Conversation conversation,
                int limit,
                long? beforeTimestampMs
            )
            {
                var items = new List<ConversationItem>();
                _db.BuildContactMap();

                using (SqliteConnection connection = _db.CreateConnection())
                {
                    long convoId = 0;
                    using (SqliteCommand idCmd = connection.CreateCommand())
                    {
                        idCmd.CommandText =
                            "SELECT id FROM Conversations WHERE conversation_id = @conversation_id LIMIT 1;";
                        idCmd.Parameters.Add("@conversation_id", SqliteType.Text).Value =
                            (object)ConvertIdentifier(conversation.Identifier) ?? DBNull.Value;
                        object result = idCmd.ExecuteScalar();
                        if (result == null || result == DBNull.Value)
                            return items.ToArray();
                        convoId = Convert.ToInt64(result);
                    }

                    var attachmentMap = ReadImageAttachments(convoId, connection);

                    using (SqliteCommand cmd = connection.CreateCommand())
                    {
                        string beforeClause = beforeTimestampMs.HasValue
                            ? " AND timestamp__ms < @before_ms"
                            : "";
                        string limitClause = limit > 0 ? $" LIMIT {limit}" : "";

                        cmd.CommandText =
                            limit > 0
                                ? $@"SELECT type, author, from_username, from_dispname,
                body_xml, timestamp__ms, timestamp, pk_id, parent_id
         FROM (
             SELECT type, author, from_username, from_dispname,
                    body_xml, timestamp__ms, timestamp, pk_id, parent_id
             FROM Messages
             WHERE convo_id = @convo_id{beforeClause}
             ORDER BY timestamp DESC{limitClause}
         )
         ORDER BY timestamp ASC;"
                                : $@"SELECT type, author, from_username, from_dispname,
                body_xml, timestamp__ms, timestamp, pk_id, parent_id
         FROM Messages
         WHERE convo_id = @convo_id{beforeClause}
         ORDER BY timestamp ASC;";

                        cmd.Parameters.Add("@convo_id", SqliteType.Integer).Value = convoId;
                        if (beforeTimestampMs.HasValue)
                            cmd.Parameters.Add("@before_ms", SqliteType.Integer).Value =
                                beforeTimestampMs.Value;

                        using (SqliteDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                int msgType = reader.IsDBNull(0) ? 0 : reader.GetInt32(0);
                                string authorId = reader.IsDBNull(1)
                                    ? null
                                    : UnconvertIdentifier(reader.GetString(1));
                                string authorUser = reader.IsDBNull(2) ? null : reader.GetString(2);
                                string authorDisp = reader.IsDBNull(3) ? null : reader.GetString(3);
                                string bodyXml = reader.IsDBNull(4) ? null : reader.GetString(4);
                                long tsMs = reader.IsDBNull(5) ? 0 : reader.GetInt64(5);
                                long tsSec = reader.IsDBNull(6) ? 0 : reader.GetInt64(6);
                                string pkId = reader.IsDBNull(7)
                                    ? null
                                    : reader.GetInt64(7).ToString();
                                string parentId = reader.IsDBNull(8) ? null : reader.GetString(8);

                                User sender = null;
                                if (authorId != null)
                                {
                                    _db._contactMap.TryGetValue(authorId, out sender);
                                    if (sender == null)
                                        sender = new User(authorDisp, authorUser, authorId);
                                }

                                DateTime time =
                                    tsMs != 0
                                        ? DateTimeOffset
                                            .FromUnixTimeMilliseconds(tsMs)
                                            .LocalDateTime
                                        : DateTimeOffset.FromUnixTimeSeconds(tsSec).LocalDateTime;

                                switch (msgType)
                                {
                                    case 61: // Ordinary message
                                    case 68: // File transfer, body present
                                        var msg = new Message(pkId, sender, time, text: bodyXml);
                                        if (attachmentMap.TryGetValue(pkId, out var attachments))
                                            msg.Attachments = attachments;
                                        if (parentId != null)
                                            msg.ParentMessage =
                                                ReadRow(
                                                    parentId,
                                                    convoId,
                                                    _db._contactMap,
                                                    connection
                                                ) as Message;
                                        items.Add(msg);
                                        break;

                                    case 30: // Call started
                                        items.Add(
                                            new CallStartedNotice(
                                                sender,
                                                is_video_call: false,
                                                time
                                            )
                                        );
                                        break;

                                    case 39: // Call ended. I think body_xml stores duration in seconds (Which is how i write it to the DB anyway), but not sure if this is accurate
                                        double secs = 0;
                                        double.TryParse(bodyXml, out secs);
                                        items.Add(
                                            new CallEndedNotice(
                                                sender,
                                                TimeSpan.FromSeconds(secs),
                                                is_video_call: false,
                                                time
                                            )
                                        );
                                        break;

                                        // Other types (topic changes, joins, etc.) not in MM yet, skip for now. TODO add the things
                                }
                            }
                        }
                    }
                }

                return items.ToArray();
            }

            private ConversationItem ReadRow( // JUMP messages read row
                string pkId,
                long convoId,
                Dictionary<string, User> contactMap,
                SqliteConnection connection = null
            )
            {
                bool ownsConnection = connection == null;
                if (ownsConnection)
                    connection = _db.CreateConnection();

                try
                {
                    using (SqliteCommand cmd = connection.CreateCommand())
                    {
                        cmd.CommandText =
                            @"
                SELECT type, author, from_username, from_dispname,
                       body_xml, timestamp__ms, timestamp, pk_id
                FROM Messages WHERE pk_id = @pk_id AND convo_id = @convo_id LIMIT 1;";
                        cmd.Parameters.Add("@pk_id", SqliteType.Text).Value = pkId;
                        cmd.Parameters.Add("@convo_id", SqliteType.Integer).Value = convoId;

                        using (var r = cmd.ExecuteReader())
                        {
                            if (!r.Read())
                                return null;

                            string authorId = r.IsDBNull(1)
                                ? null
                                : UnconvertIdentifier(r.GetString(1));
                            string authorUser = r.IsDBNull(2) ? null : r.GetString(2);
                            string authorDisp = r.IsDBNull(3) ? null : r.GetString(3);
                            string body = r.IsDBNull(4) ? null : r.GetString(4);
                            long tsMs = r.IsDBNull(5) ? 0 : r.GetInt64(5);
                            long tsSec = r.IsDBNull(6) ? 0 : r.GetInt64(6);
                            string pid = r.IsDBNull(7) ? null : r.GetString(7);

                            contactMap.TryGetValue(authorId ?? "", out User sender);
                            if (sender == null && authorId != null)
                                sender = new User(authorDisp, authorUser, authorId);

                            DateTime time =
                                tsMs != 0
                                    ? DateTimeOffset.FromUnixTimeMilliseconds(tsMs).LocalDateTime
                                    : DateTimeOffset.FromUnixTimeSeconds(tsSec).LocalDateTime;

                            return new Message(pid, sender, time, text: body);
                        }
                    }
                }
                finally
                {
                    if (ownsConnection)
                        connection.Dispose();
                }
            }

            public bool Write( // JUMP messages write
                ConversationItem[] items,
                Conversation conversation,
                SqliteConnection existingConnection = null
            )
            {
                bool ownsConnection = existingConnection == null;
                SqliteConnection connection = ownsConnection
                    ? _db.CreateConnection()
                    : existingConnection;

                try
                {
                    long conversation_incremental_id = 0;
                    using (SqliteCommand idCmd = connection.CreateCommand())
                    {
                        idCmd.CommandText =
                            "SELECT id FROM Conversations WHERE conversation_id = @conversation_id LIMIT 1;";
                        idCmd.Parameters.Add("@conversation_id", SqliteType.Text).Value =
                            (object)ConvertIdentifier(conversation.Identifier) ?? DBNull.Value;
                        object result = idCmd.ExecuteScalar();
                        if (result != null && result != DBNull.Value)
                            conversation_incremental_id = Convert.ToInt64(result);
                    }

                    string dialogPartner = null;
                    if (conversation is DirectMessage dm)
                        dialogPartner = dm.Partner?.Identifier;

                    bool ownsTransaction = ownsConnection;
                    SqliteTransaction transaction = ownsTransaction
                        ? connection.BeginTransaction()
                        : null;

                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            if (ownsTransaction)
                                cmd.Transaction = transaction;
                            cmd.CommandText =
                                @"
                    INSERT INTO Messages (
                        is_permanent, chatname, timestamp, author, from_dispname, from_username,
                        chatmsg_type, body_xml, dialog_partner, convo_id, type,
                        pk_id, remote_id, parent_id, timestamp__ms, 
                        identities, leavereason, chatmsg_status, body_is_rawxml,
                        edited_by, edited_timestamp, sending_status, consumption_status
                    )
                    VALUES (
                        @is_permanent, @chatname, @timestamp, @author, @from_dispname, @from_username,
                        @chatmsg_type, @body_xml, @dialog_partner, @convo_id, @type,
                        @pk_id, @remote_id, @parent_id, @timestamp__ms, 
                        NULL, NULL, 4, 0,
                        NULL, NULL, 2, 0
                    )
                    ON CONFLICT(pk_id, convo_id) DO UPDATE SET
                        timestamp     = excluded.timestamp,
                        author        = excluded.author,
                        from_dispname = excluded.from_dispname,
                        from_username = excluded.from_username,
                        chatmsg_type  = excluded.chatmsg_type,
                        body_xml      = excluded.body_xml,
                        type          = excluded.type,
                        timestamp__ms = excluded.timestamp__ms,
                        parent_id     = excluded.parent_id";

                            cmd.Parameters.Add("@is_permanent", SqliteType.Integer);
                            cmd.Parameters.Add("@chatname", SqliteType.Text);
                            cmd.Parameters.Add("@timestamp", SqliteType.Integer);
                            cmd.Parameters.Add("@author", SqliteType.Text);
                            cmd.Parameters.Add("@from_username", SqliteType.Text);
                            cmd.Parameters.Add("@from_dispname", SqliteType.Text);
                            cmd.Parameters.Add("@chatmsg_type", SqliteType.Integer);
                            cmd.Parameters.Add("@body_xml", SqliteType.Text);
                            cmd.Parameters.Add("@dialog_partner", SqliteType.Text);
                            cmd.Parameters.Add("@convo_id", SqliteType.Integer);
                            cmd.Parameters.Add("@type", SqliteType.Integer);
                            cmd.Parameters.Add("@pk_id", SqliteType.Integer);
                            cmd.Parameters.Add("@remote_id", SqliteType.Integer);
                            cmd.Parameters.Add("@parent_id", SqliteType.Integer);
                            cmd.Parameters.Add("@timestamp__ms", SqliteType.Integer);

                            foreach (ConversationItem item in items)
                            {
                                if (item is Message message)
                                {
                                    long tsSeconds = new DateTimeOffset(
                                        message.Time
                                    ).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(
                                        message.Time
                                    ).ToUnixTimeMilliseconds();
                                    bool hasFile =
                                        message.Attachments != null
                                        && message.Attachments.Length > 0
                                        && message.Attachments[0]?.File != null;

                                    if (message.ParentMessage != null)
                                        Write(
                                            new ConversationItem[] { message.ParentMessage },
                                            conversation,
                                            connection
                                        );

                                    cmd.Parameters["@is_permanent"].Value = 1;
                                    cmd.Parameters["@chatname"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp"].Value = tsSeconds;
                                    cmd.Parameters["@author"].Value =
                                        (object)ConvertIdentifier(message.Sender?.Identifier)
                                        ?? DBNull.Value;
                                    cmd.Parameters["@from_username"].Value =
                                        (object)message.Sender?.Username ?? DBNull.Value;
                                    cmd.Parameters["@from_dispname"].Value =
                                        (object)message.Sender?.DisplayName ?? DBNull.Value;
                                    cmd.Parameters["@chatmsg_type"].Value = hasFile ? 7 : 3;
                                    cmd.Parameters["@body_xml"].Value =
                                        (object)message.Text ?? DBNull.Value;
                                    cmd.Parameters["@dialog_partner"].Value =
                                        (object)ConvertIdentifier(dialogPartner) ?? DBNull.Value;
                                    cmd.Parameters["@convo_id"].Value = conversation_incremental_id;
                                    cmd.Parameters["@type"].Value = hasFile ? 68 : 61;
                                    cmd.Parameters["@pk_id"].Value =
                                        (object)message.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@remote_id"].Value =
                                        (object)message.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@parent_id"].Value =
                                        (object)message.ParentMessage?.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@timestamp__ms"].Value = tsMs;
                                }
                                else if (item is CallStartedNotice callStarted)
                                {
                                    long tsSeconds = new DateTimeOffset(
                                        callStarted.Time
                                    ).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(
                                        callStarted.Time
                                    ).ToUnixTimeMilliseconds();

                                    cmd.Parameters["@is_permanent"].Value = 1;
                                    cmd.Parameters["@chatname"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp"].Value = tsSeconds;
                                    cmd.Parameters["@author"].Value =
                                        (object)ConvertIdentifier(callStarted.StartedBy?.Identifier)
                                        ?? DBNull.Value;
                                    cmd.Parameters["@from_username"].Value =
                                        (object)callStarted.StartedBy?.Username ?? DBNull.Value;
                                    cmd.Parameters["@from_dispname"].Value =
                                        (object)callStarted.StartedBy?.DisplayName ?? DBNull.Value;
                                    cmd.Parameters["@chatmsg_type"].Value = 18;
                                    cmd.Parameters["@body_xml"].Value = DBNull.Value;
                                    cmd.Parameters["@dialog_partner"].Value =
                                        (object)ConvertIdentifier(dialogPartner) ?? DBNull.Value;
                                    cmd.Parameters["@convo_id"].Value = conversation_incremental_id;
                                    cmd.Parameters["@type"].Value = 30;
                                    cmd.Parameters["@pk_id"].Value =
                                        (object)item.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@remote_id"].Value =
                                        (object)item.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@parent_id"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp__ms"].Value = tsMs;
                                }
                                else if (item is CallEndedNotice callEnded)
                                {
                                    long tsSeconds = new DateTimeOffset(
                                        callEnded.Time
                                    ).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(
                                        callEnded.Time
                                    ).ToUnixTimeMilliseconds();

                                    cmd.Parameters["@is_permanent"].Value = 1;
                                    cmd.Parameters["@chatname"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp"].Value = tsSeconds;
                                    cmd.Parameters["@author"].Value =
                                        (object)ConvertIdentifier(callEnded.StartedBy?.Identifier)
                                        ?? DBNull.Value;
                                    cmd.Parameters["@from_username"].Value =
                                        (object)callEnded.StartedBy?.Username ?? DBNull.Value;
                                    cmd.Parameters["@from_dispname"].Value =
                                        (object)callEnded.StartedBy?.DisplayName ?? DBNull.Value;
                                    cmd.Parameters["@chatmsg_type"].Value = 18;
                                    cmd.Parameters["@body_xml"].Value =
                                        callEnded.Duration.TotalSeconds.ToString();
                                    cmd.Parameters["@dialog_partner"].Value =
                                        (object)ConvertIdentifier(dialogPartner) ?? DBNull.Value;
                                    cmd.Parameters["@convo_id"].Value = conversation_incremental_id;
                                    cmd.Parameters["@type"].Value = 39;
                                    cmd.Parameters["@pk_id"].Value =
                                        (object)item.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@remote_id"].Value =
                                        (object)item.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@parent_id"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp__ms"].Value = tsMs;
                                }
                                else
                                {
                                    continue;
                                }

                                cmd.ExecuteNonQuery();
                            }
                        }
                        WriteImageAttachments(
                            items,
                            conversation,
                            conversation_incremental_id,
                            connection,
                            transaction
                        );
                        if (ownsTransaction && items.Length > 0)
                        {
                            using (SqliteCommand updateCmd = connection.CreateCommand())
                            {
                                updateCmd.Transaction = transaction;
                                updateCmd.CommandText =
                                    @"
                        UPDATE Conversations
                        SET last_message_id         = (SELECT id FROM Messages WHERE convo_id = @convo_id ORDER BY timestamp DESC LIMIT 1),
                            last_activity_timestamp = @last_activity_timestamp
                        WHERE conversation_id = @conversation_id;";
                                updateCmd.Parameters.Add("@convo_id", SqliteType.Integer).Value =
                                    conversation_incremental_id;
                                updateCmd
                                    .Parameters.Add("@last_activity_timestamp", SqliteType.Integer)
                                    .Value = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
                                updateCmd
                                    .Parameters.Add("@conversation_id", SqliteType.Text)
                                    .Value =
                                    (object)ConvertIdentifier(conversation.Identifier)
                                    ?? DBNull.Value;
                                updateCmd.ExecuteNonQuery();
                            }
                        }

                        if (ownsTransaction)
                            transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.MessageBox(ex.Message);
                        if (ownsTransaction)
                            transaction?.Rollback();
                        throw;
                    }
                }
                finally
                {
                    if (ownsConnection)
                        connection.Dispose();
                }

                return true;
            }
        }

        #endregion
    }
}
