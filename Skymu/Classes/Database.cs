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
// Important Notice
/*==========================================================*/
// Full credits go to Erki Suurjaak, Skyperious, for his
// extensive documentation of the Skype SQL database format.
// This is simply a port of their own implementation.
// Heads up: This database includes over 90% redundant
// columns and all tables except 5 are redundant, this
// is to ensure maximum compatibility with old Skype tooling.
// It basically tries to impersonate a Skype database. 
/*==========================================================*/
// Some new columns have been added, though, such as:
// username (for storage of a mutable username; skypename is
// now used for the identifier, as tools expect immutability)
// and plugin (plugin this account is associated with)
// This has been done to make sure that Skymu doesn't cause
// incompatibiliies with old Skype database-reading software.
/*==========================================================*/

using Microsoft.Data.Sqlite;
using MiddleMan;
using System;
using System.IO;

namespace Skymu
{
    internal class Database
    {
        private static string DbPath;
        private static string PluginName => Universal.Plugin?.InternalName ?? "unknown";

        private static bool _tablesEnsured = false;

        private static SqliteConnection CreateConnection()
        {
            Directory.CreateDirectory(Path.GetDirectoryName(DbPath));
            SqliteConnection connection = new SqliteConnection($"Data Source={DbPath}");
            connection.Open();
            return connection;
        }

        public static void Init(User user)
        {
            DbPath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
            "Skymu", Universal.Plugin.InternalName + " (" + user.Identifier + ")", "main.db"); 
            if (_tablesEnsured)
                return;

            using (SqliteConnection connection = CreateConnection())
            {
                EnsureTablesInternal(connection);
            }

            _tablesEnsured = true;
        }

        private static void EnsureTablesInternal(SqliteConnection connection)
        {
            using (SqliteCommand cmd = connection.CreateCommand())
            {
                cmd.CommandText = @"
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
                        identity                                TEXT UNIQUE,
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

        public static class Accounts
        {
            public static bool Write(User user)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText = @"
                                INSERT INTO Accounts (
                                    is_permanent, skypename, username, pstnnumber, fullname, birthday, gender,
                                    languages, country, province, city, phone_home, phone_office,
                                    phone_mobile, emails, homepage, about, displayname, given_displayname,
                                    mood_text, rich_mood_text, avatar_image, liveid_membername,
                                    availability, lastonline_timestamp, plugin
                                )
                                VALUES (
                                    @is_permanent, @skypename, @username, @pstnnumber, @fullname, @birthday, @gender,
                                    @languages, @country, @province, @city, @phone_home, @phone_office,
                                    @phone_mobile, @emails, @homepage, @about, @displayname, @given_displayname,
                                    @mood_text, @rich_mood_text, @avatar_image, @liveid_membername,
                                    @availability, @lastonline_timestamp, @plugin
                                )
                                ON CONFLICT(skypename, plugin) DO UPDATE SET
                                    skypename            = excluded.skypename,
                                    username             = excluded.username,
                                    fullname             = excluded.fullname,
                                    displayname          = excluded.displayname,
                                    given_displayname    = excluded.given_displayname,
                                    mood_text            = excluded.mood_text,
                                    rich_mood_text       = excluded.rich_mood_text,
                                    avatar_image         = excluded.avatar_image,
                                    liveid_membername    = excluded.liveid_membername,
                                    availability         = excluded.availability,
                                    lastonline_timestamp = excluded.lastonline_timestamp,
                                    plugin               = excluded.plugin;";

                            cmd.Parameters.Add("@is_permanent", SqliteType.Integer).Value = 1;
                            cmd.Parameters.Add("@skypename", SqliteType.Text).Value = (object)user.Identifier ?? DBNull.Value;
                            cmd.Parameters.Add("@username", SqliteType.Text).Value = (object)user.Username ?? DBNull.Value;
                            cmd.Parameters.Add("@pstnnumber", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@fullname", SqliteType.Text).Value = (object)user.DisplayName ?? DBNull.Value;
                            cmd.Parameters.Add("@birthday", SqliteType.Integer).Value = DBNull.Value;
                            cmd.Parameters.Add("@gender", SqliteType.Integer).Value = DBNull.Value;
                            cmd.Parameters.Add("@languages", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@country", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@province", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@city", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@phone_home", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@phone_office", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@phone_mobile", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@emails", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@homepage", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@about", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@displayname", SqliteType.Text).Value = (object)user.DisplayName ?? DBNull.Value;
                            cmd.Parameters.Add("@given_displayname", SqliteType.Text).Value = (object)user.DisplayName ?? DBNull.Value;
                            cmd.Parameters.Add("@mood_text", SqliteType.Text).Value = (object)user.Status ?? DBNull.Value;
                            cmd.Parameters.Add("@rich_mood_text", SqliteType.Text).Value = DBNull.Value;
                            cmd.Parameters.Add("@avatar_image", SqliteType.Blob).Value = (object)user.ProfilePicture ?? DBNull.Value;
                            cmd.Parameters.Add("@liveid_membername", SqliteType.Text).Value = (object)user.Username ?? DBNull.Value;
                            cmd.Parameters.Add("@availability", SqliteType.Integer).Value = DBNull.Value;
                            cmd.Parameters.Add("@lastonline_timestamp", SqliteType.Integer).Value = DBNull.Value;
                            cmd.Parameters.Add("@plugin", SqliteType.Text).Value = PluginName;

                            cmd.ExecuteNonQuery();
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.ShowMsg(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }

        public static class Contacts
        {
            public static bool Write(Conversation[] conversations)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText = @"
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

                                string identifier = (conversation is DirectMessage dmId)
                                    ? dmId.ConversationPartner?.Identifier
                                    : conversation.Identifier;

                                cmd.Parameters["@is_permanent"].Value = 1;
                                cmd.Parameters["@type"].Value = 1;
                                cmd.Parameters["@skypename"].Value = (object)identifier ?? DBNull.Value;
                                cmd.Parameters["@username"].Value = (object)dm.ConversationPartner?.Username ?? DBNull.Value;
                                cmd.Parameters["@pstnnumber"].Value = DBNull.Value;
                                cmd.Parameters["@fullname"].Value = (object)dm.ConversationPartner?.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@displayname"].Value = (object)dm.ConversationPartner?.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@given_displayname"].Value = (object)dm.ConversationPartner?.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@avatar_image"].Value = (object)dm.ConversationPartner?.ProfilePicture ?? DBNull.Value;
                                cmd.Parameters["@mood_text"].Value = (object)dm.ConversationPartner?.Status ?? DBNull.Value;
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
                        Universal.ShowMsg(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }

        public static class Conversations
        {
            public static bool Write(Conversation[] conversations)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText = @"
                                INSERT INTO Conversations (
                                    is_permanent, identity, type, displayname, given_displayname,
                                    meta_topic, meta_name, dialog_partner, 
                                    creator, creation_timestamp,
                                    last_message_id, last_activity_timestamp,
                                    is_bookmarked, is_blocked, my_status
                                )
                                VALUES (
                                    @is_permanent, @identity, @type, @displayname, @given_displayname,
                                    @meta_topic, @meta_name, @dialog_partner,
                                    NULL, NULL,
                                    NULL, NULL,
                                    0, 0, 0
                                )
                                ON CONFLICT(identity) DO UPDATE SET
                                    displayname             = excluded.displayname,
                                    given_displayname       = excluded.given_displayname,
                                    meta_topic              = excluded.meta_topic,
                                    meta_name               = excluded.meta_name,
                                    dialog_partner          = excluded.dialog_partner;";

                            cmd.Parameters.Add("@is_permanent", SqliteType.Integer);
                            cmd.Parameters.Add("@identity", SqliteType.Text);
                            cmd.Parameters.Add("@type", SqliteType.Integer);
                            cmd.Parameters.Add("@displayname", SqliteType.Text);
                            cmd.Parameters.Add("@given_displayname", SqliteType.Text);
                            cmd.Parameters.Add("@meta_topic", SqliteType.Text);
                            cmd.Parameters.Add("@meta_name", SqliteType.Text);
                            cmd.Parameters.Add("@dialog_partner", SqliteType.Text);

                            foreach (Conversation conversation in conversations)
                            {
                                int type;
                                if (conversation is DirectMessage) type = 1;
                                else if (conversation is Group) type = 2;
                                else if (conversation is ServerChannel) type = 2;
                                else type = 0;

                                string dialogPartner = null;
                                string dialogPartnerId = null;

                                if (conversation is DirectMessage dm)
                                {
                                    dialogPartner = dm.ConversationPartner?.Username;
                                    dialogPartnerId = dm.ConversationPartner?.Identifier;
                                }

                                cmd.Parameters["@is_permanent"].Value = 1;
                                cmd.Parameters["@identity"].Value = (object)conversation.Identifier ?? DBNull.Value;
                                cmd.Parameters["@type"].Value = type;
                                cmd.Parameters["@displayname"].Value = (object)conversation.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@given_displayname"].Value = (object)conversation.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@meta_topic"].Value = (object)conversation.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@meta_name"].Value = (object)conversation.DisplayName ?? DBNull.Value;
                                cmd.Parameters["@dialog_partner"].Value = (object)dialogPartner ?? DBNull.Value;

                                cmd.ExecuteNonQuery();
                            }
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.ShowMsg(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                Database.Participants.Write(conversations); // need this for members of groups lol
                return true;
            }
        }

        public static class Participants
        {
            public static bool Write(Conversation[] conversations)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand idCmd = connection.CreateCommand())
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            idCmd.CommandText = "SELECT id FROM Conversations WHERE identity = @identity LIMIT 1;";
                            idCmd.Parameters.Add("@identity", SqliteType.Text);

                            cmd.CommandText = @"
                        INSERT INTO Participants (
                            is_permanent, convo_id, identity, rank
                        )
                        VALUES (
                            1, @convo_id, @identity, @rank
                        )
                        ON CONFLICT(convo_id, identity) DO UPDATE SET
                            rank = excluded.rank;";
                            cmd.Parameters.Add("@convo_id", SqliteType.Integer);
                            cmd.Parameters.Add("@identity", SqliteType.Text);
                            cmd.Parameters.Add("@rank", SqliteType.Integer);

                            foreach (Conversation conversation in conversations)
                            {
                                idCmd.Parameters["@identity"].Value = (object)conversation.Identifier ?? DBNull.Value;
                                object result = idCmd.ExecuteScalar();
                                if (result == null || result == DBNull.Value)
                                    continue;
                                long convoId = Convert.ToInt64(result);

                                User[] members = null;
                                if (conversation is Group group)
                                    members = group.Members;
                                else if (conversation is DirectMessage dm)
                                    members = dm.ConversationPartner != null ? new[] { dm.ConversationPartner } : null;

                                if (members == null)
                                    continue;

                                foreach (User member in members)
                                {
                                    if (member?.Identifier == null)
                                        continue;

                                    cmd.Parameters["@convo_id"].Value = convoId;
                                    cmd.Parameters["@identity"].Value = member.Identifier;
                                    cmd.Parameters["@rank"].Value = 0; // 0 = normal member. TODO: CHANGE LATER for server roles
                                    cmd.ExecuteNonQuery();
                                }
                            }
                        }
                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.ShowMsg(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }

        public static class Messages
        {
            public static bool Write(ConversationItem[] items, Conversation conversation)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    long conversation_incremental_id = 0;
                    using (SqliteCommand idCmd = connection.CreateCommand())
                    {
                        idCmd.CommandText = "SELECT id FROM Conversations WHERE identity = @identity LIMIT 1;";
                        idCmd.Parameters.Add("@identity", SqliteType.Text).Value = (object)conversation.Identifier ?? DBNull.Value;
                        object result = idCmd.ExecuteScalar();
                        if (result != null && result != DBNull.Value)
                            conversation_incremental_id = Convert.ToInt64(result);
                    }

                    string dialogPartner = null;
                    if (conversation is DirectMessage dm)
                    {
                        dialogPartner = dm.ConversationPartner?.Identifier;
                    }

                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.Transaction = transaction;
                            cmd.CommandText = @"
                                INSERT INTO Messages (
                                    is_permanent, chatname, timestamp, author, from_dispname, from_username,
                                    chatmsg_type, body_xml, dialog_partner, convo_id, type,
                                    pk_id, timestamp__ms, 
                                    identities, leavereason, chatmsg_status, body_is_rawxml,
                                    edited_by, edited_timestamp, sending_status, consumption_status
                                )
                                VALUES (
                                    @is_permanent, @chatname, @timestamp, @author, @from_dispname, @from_username,
                                    @chatmsg_type, @body_xml, @dialog_partner, @convo_id, @type,
                                    @pk_id, @timestamp__ms, 
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
                                    timestamp__ms = excluded.timestamp__ms";

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
                            cmd.Parameters.Add("@timestamp__ms", SqliteType.Integer);

                            foreach (ConversationItem item in items)
                            {
                                if (item is Message message)
                                {
                                    long tsSeconds = new DateTimeOffset(message.Time).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(message.Time).ToUnixTimeMilliseconds();
                                    bool hasFile = message.Attachments != null
                                                     && message.Attachments.Length > 0
                                                     && message.Attachments[0]?.File != null;

                                    cmd.Parameters["@is_permanent"].Value = 1;
                                    cmd.Parameters["@chatname"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp"].Value = tsSeconds;
                                    cmd.Parameters["@author"].Value = (object)message.Sender?.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@from_username"].Value = (object)message.Sender?.Username ?? DBNull.Value;
                                    cmd.Parameters["@from_dispname"].Value = (object)message.Sender?.DisplayName ?? DBNull.Value;
                                    cmd.Parameters["@chatmsg_type"].Value = hasFile ? 7 : 3;
                                    cmd.Parameters["@body_xml"].Value = (object)message.Text ?? DBNull.Value;
                                    cmd.Parameters["@dialog_partner"].Value = (object)dialogPartner ?? DBNull.Value;
                                    cmd.Parameters["@convo_id"].Value = conversation_incremental_id;
                                    cmd.Parameters["@type"].Value = hasFile ? 68 : 61;
                                    cmd.Parameters["@pk_id"].Value = (object)message.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@timestamp__ms"].Value = tsMs;
                                }
                                else if (item is CallStartedNotice callStarted)
                                {
                                    long tsSeconds = new DateTimeOffset(callStarted.Time).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(callStarted.Time).ToUnixTimeMilliseconds();

                                    cmd.Parameters["@is_permanent"].Value = 1;
                                    cmd.Parameters["@chatname"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp"].Value = tsSeconds;
                                    cmd.Parameters["@author"].Value = (object)callStarted.StartedBy?.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@from_username"].Value = (object)callStarted.StartedBy?.Username ?? DBNull.Value;
                                    cmd.Parameters["@from_dispname"].Value = (object)callStarted.StartedBy ?? DBNull.Value;
                                    cmd.Parameters["@chatmsg_type"].Value = 18;
                                    cmd.Parameters["@body_xml"].Value = DBNull.Value;
                                    cmd.Parameters["@dialog_partner"].Value = (object)dialogPartner ?? DBNull.Value;
                                    cmd.Parameters["@convo_id"].Value = conversation_incremental_id;
                                    cmd.Parameters["@type"].Value = 30;
                                    cmd.Parameters["@pk_id"].Value = (object)item.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@timestamp__ms"].Value = tsMs;
                                }
                                else if (item is CallEndedNotice callEnded)
                                {
                                    long tsSeconds = new DateTimeOffset(callEnded.Time).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(callEnded.Time).ToUnixTimeMilliseconds();

                                    cmd.Parameters["@is_permanent"].Value = 1;
                                    cmd.Parameters["@chatname"].Value = DBNull.Value;
                                    cmd.Parameters["@timestamp"].Value = tsSeconds;
                                    cmd.Parameters["@author"].Value = (object)callEnded.StartedBy?.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@from_username"].Value = (object)callEnded.StartedBy?.Username ?? DBNull.Value;
                                    cmd.Parameters["@from_dispname"].Value = (object)callEnded.StartedBy ?? DBNull.Value;
                                    cmd.Parameters["@chatmsg_type"].Value = 18;
                                    cmd.Parameters["@body_xml"].Value = callEnded.Duration.ToString();
                                    cmd.Parameters["@dialog_partner"].Value = (object)dialogPartner ?? DBNull.Value;
                                    cmd.Parameters["@convo_id"].Value = conversation_incremental_id;
                                    cmd.Parameters["@type"].Value = 39;
                                    cmd.Parameters["@pk_id"].Value = (object)item.Identifier ?? DBNull.Value;
                                    cmd.Parameters["@timestamp__ms"].Value = tsMs;
                                }
                                else
                                {
                                    continue;
                                }

                                cmd.ExecuteNonQuery();
                            }
                        }

                        // update things on the parent conversation
                        if (items.Length > 0)
                        {
                            using (SqliteCommand updateCmd = connection.CreateCommand())
                            {
                                updateCmd.Transaction = transaction;
                                updateCmd.CommandText = @"
                                    UPDATE Conversations
                                    SET last_message_id         = (SELECT id FROM Messages WHERE convo_id = @convo_id ORDER BY timestamp DESC LIMIT 1),
                                        last_activity_timestamp = @last_activity_timestamp
                                    WHERE identity = @identity;";
                                updateCmd.Parameters.Add("@convo_id", SqliteType.Integer).Value = conversation_incremental_id;
                                updateCmd.Parameters.Add("@last_activity_timestamp", SqliteType.Integer).Value = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
                                updateCmd.Parameters.Add("@identity", SqliteType.Text).Value = (object)conversation.Identifier ?? DBNull.Value;
                                updateCmd.ExecuteNonQuery();
                            }
                        }

                        transaction.Commit();
                    }
                    catch (Exception ex)
                    {
                        Universal.ShowMsg(ex.Message);
                        transaction.Rollback();
                        throw;
                    }
                }

                return true;
            }
        }
    }
}