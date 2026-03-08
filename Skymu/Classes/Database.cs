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

/*==========================================================*/
// Important Notice
/*==========================================================*/
// Full credits go to the Skyperious team for their extensive
// documentation of the Skype SQL database format.
// This is simply a port of their own implementation.
// Heads up: This database includes over 90% redundant
// columns and all tables except 5 are redundant, this
// is to ensure maximum compatibility with old Skype tooling.
// It basically tries to impersonate a Skype database. 
/*==========================================================*/
// Some new columns have been added, though, such as:
// skymu_dialog_partner_id (for user ID in conversation)
// skymu_userid (for user ID alongside Skype Name)
// skymu_plugin (plugin this account is associated with)
// This has been done to make sure that Skymu doesn't cause
// incompatibiliies with old Skype database-reading software.
/*==========================================================*/

using Microsoft.Data.Sqlite;
using MiddleMan;
using System;
using System.IO;
using System.Threading.Tasks;

namespace Skymu
{
    internal class Database
    {
        private static readonly string DbPath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
            "Skymu", "main.db");

        private static string PluginName => Universal.Plugin?.InternalName ?? "unknown";

        private static SqliteConnection CreateConnection()
        {
            Directory.CreateDirectory(Path.GetDirectoryName(DbPath));
            SqliteConnection connection = new SqliteConnection($"Data Source={DbPath}");
            connection.Open();
            return connection;
        }

        private static void EnsureTables(SqliteConnection connection)
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
                        skymu_userid                TEXT,
                        skymu_plugin                TEXT
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

                    CREATE TABLE IF NOT EXISTS AppSchemaVersion (
                        ClientVersion               TEXT NOT NULL,
                        SQLiteSchemaVersion         INTEGER NOT NULL,
                        SchemaUpdateType            INTEGER NOT NULL
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
                        skymu_userid                        TEXT
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
                        skymu_dialog_partner_id                 TEXT,
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
                        skymu_dialog_partner_id         TEXT,
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
                        skymu_userid                    TEXT
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
                        skymu_userid                        TEXT
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
            public static async Task Write(User user)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    EnsureTables(connection);
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        using (SqliteCommand cmd = connection.CreateCommand())
                        {
                            cmd.CommandText = @"
                                INSERT INTO Accounts (
                                    is_permanent, skypename, pstnnumber, fullname, birthday, gender,
                                    languages, country, province, city, phone_home, phone_office,
                                    phone_mobile, emails, homepage, about, displayname, given_displayname,
                                    mood_text, rich_mood_text, avatar_image, liveid_membername,
                                    availability, lastonline_timestamp, skymu_userid, skymu_plugin
                                )
                                VALUES (
                                    @is_permanent, @skypename, @pstnnumber, @fullname, @birthday, @gender,
                                    @languages, @country, @province, @city, @phone_home, @phone_office,
                                    @phone_mobile, @emails, @homepage, @about, @displayname, @given_displayname,
                                    @mood_text, @rich_mood_text, @avatar_image, @liveid_membername,
                                    @availability, @lastonline_timestamp, @skymu_userid, @skymu_plugin
                                )
                                ON CONFLICT(id) DO UPDATE SET
                                    skypename           = excluded.skypename,
                                    fullname            = excluded.fullname,
                                    displayname         = excluded.displayname,
                                    given_displayname   = excluded.given_displayname,
                                    mood_text           = excluded.mood_text,
                                    rich_mood_text      = excluded.rich_mood_text,
                                    avatar_image        = excluded.avatar_image,
                                    liveid_membername   = excluded.liveid_membername,
                                    availability        = excluded.availability,
                                    lastonline_timestamp= excluded.lastonline_timestamp,
                                    skymu_userid        = excluded.skymu_userid,
                                    skymu_plugin        = excluded.skymu_plugin;";

                            cmd.Parameters.AddWithValue("@is_permanent", 1);
                            cmd.Parameters.AddWithValue("@skypename", user.Username ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@pstnnumber", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@fullname", user.DisplayName ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@birthday", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@gender", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@languages", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@country", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@province", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@city", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@phone_home", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@phone_office", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@phone_mobile", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@emails", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@homepage", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@about", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@displayname", user.DisplayName ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@given_displayname", user.DisplayName ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@mood_text", user.Status ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@rich_mood_text", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@avatar_image", user.ProfilePicture ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@liveid_membername", user.Username ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@availability", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@lastonline_timestamp", (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@skymu_userid", user.Identifier ?? (object)DBNull.Value);
                            cmd.Parameters.AddWithValue("@skymu_plugin", PluginName);

                            await cmd.ExecuteNonQueryAsync();
                        }
                        transaction.Commit();
                    }
                    catch
                    {
                        transaction.Rollback();
                        throw;
                    }
                }
            }
        }

        public static class Contacts
        {
            public static async Task Write(Conversation[] conversations)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    EnsureTables(connection);
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        foreach (Conversation conversation in conversations)
                        {
                            if (!(conversation is DirectMessage) && !(conversation is Group))
                                continue;

                            int type;
                            string skypename;
                            string pstnnumber;
                            string fullname;
                            string displayname;
                            string givenDisplayname;
                            byte[] avatarImage;
                            string moodText;
                            int isauthorized;
                            int isblocked;
                            int buddystatus;

                            if (conversation is DirectMessage dm)
                            {
                                type = 1; // CONTACT_TYPE_NORMAL
                                skypename = dm.RemoteUser?.Username;
                                pstnnumber = null;
                                fullname = dm.RemoteUser?.DisplayName;
                                displayname = dm.RemoteUser?.DisplayName;
                                givenDisplayname = dm.RemoteUser?.DisplayName;
                                avatarImage = dm.RemoteUser?.ProfilePicture;
                                moodText = dm.RemoteUser?.Status;
                                isauthorized = 1;
                                isblocked = 0;
                                buddystatus = 2; // mutual contact
                            }
                            else
                            {
                                // Groups have no skypename — use identity as pstnnumber sentinel
                                type = 2;
                                skypename = conversation.Identifier;
                                pstnnumber = null;
                                fullname = conversation.DisplayName;
                                displayname = conversation.DisplayName;
                                givenDisplayname = conversation.DisplayName;
                                avatarImage = conversation.ProfilePicture;
                                moodText = null;
                                isauthorized = 1;
                                isblocked = 0;
                                buddystatus = 2;
                            }

                            string skymuUserid = (conversation is DirectMessage dmId)
                                ? dmId.RemoteUser?.Identifier
                                : conversation.Identifier;

                            using (SqliteCommand cmd = connection.CreateCommand())
                            {
                                cmd.CommandText = @"
                                    INSERT INTO Contacts (
                                        is_permanent, type, skypename, pstnnumber, fullname,
                                        displayname, given_displayname, avatar_image, mood_text,
                                        isauthorized, isblocked, buddystatus, skymu_userid,
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
                                        @is_permanent, @type, @skypename, @pstnnumber, @fullname,
                                        @displayname, @given_displayname, @avatar_image, @mood_text,
                                        @isauthorized, @isblocked, @buddystatus, @skymu_userid,
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
                                    ON CONFLICT(id) DO UPDATE SET
                                        fullname            = excluded.fullname,
                                        displayname         = excluded.displayname,
                                        given_displayname   = excluded.given_displayname,
                                        avatar_image        = excluded.avatar_image,
                                        mood_text           = excluded.mood_text,
                                        skymu_userid        = excluded.skymu_userid;";

                                cmd.Parameters.AddWithValue("@is_permanent", 1);
                                cmd.Parameters.AddWithValue("@type", type);
                                cmd.Parameters.AddWithValue("@skypename", skypename ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@pstnnumber", pstnnumber ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@fullname", fullname ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@displayname", displayname ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@given_displayname", givenDisplayname ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@avatar_image", avatarImage ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@mood_text", moodText ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@isauthorized", isauthorized);
                                cmd.Parameters.AddWithValue("@isblocked", isblocked);
                                cmd.Parameters.AddWithValue("@buddystatus", buddystatus);
                                cmd.Parameters.AddWithValue("@skymu_userid", skymuUserid ?? (object)DBNull.Value);

                                await cmd.ExecuteNonQueryAsync();
                            }
                        }
                        transaction.Commit();
                    }
                    catch
                    {
                        transaction.Rollback();
                        throw;
                    }
                }
            }
        }

        public static class Conversations
        {
            public static async Task Write(Conversation[] conversations)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    EnsureTables(connection);
                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        foreach (Conversation conversation in conversations)
                        {
                            int type;
                            if (conversation is DirectMessage) type = 1; // CHATS_TYPE_SINGLE
                            else if (conversation is Group) type = 2; // CHATS_TYPE_GROUP
                            else if (conversation is ServerChannel) type = 2; // closest equivalent
                            else type = 0;

                            string dialogPartner = null;
                            string dialogPartnerId = null;
                            string displayname = conversation.DisplayName;
                            string metaTopic = conversation.DisplayName;
                            string identity = conversation.Identifier;

                            if (conversation is DirectMessage dm)
                            {
                                dialogPartner = dm.RemoteUser?.Username;
                                dialogPartnerId = dm.RemoteUser?.Identifier;
                            }


                            using (SqliteCommand cmd = connection.CreateCommand())
                            {
                                cmd.CommandText = @"
                                    INSERT INTO Conversations (
                                        is_permanent, identity, type, displayname, given_displayname,
                                        meta_topic, meta_name, dialog_partner, skymu_dialog_partner_id,
                                        creator, creation_timestamp,
                                        last_message_id, last_activity_timestamp,
                                        is_bookmarked, is_blocked, my_status
                                    )
                                    VALUES (
                                        @is_permanent, @identity, @type, @displayname, @given_displayname,
                                        @meta_topic, @meta_name, @dialog_partner, @skymu_dialog_partner_id,
                                        NULL, NULL,
                                        NULL, NULL,
                                        0, 0, 0
                                    )
                                    ON CONFLICT(id) DO UPDATE SET
                                        displayname                = excluded.displayname,
                                        given_displayname          = excluded.given_displayname,
                                        meta_topic                 = excluded.meta_topic,
                                        meta_name                  = excluded.meta_name,
                                        dialog_partner             = excluded.dialog_partner,
                                        skymu_dialog_partner_id    = excluded.skymu_dialog_partner_id;";

                                cmd.Parameters.AddWithValue("@is_permanent", 1);
                                cmd.Parameters.AddWithValue("@identity", identity ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@type", type);
                                cmd.Parameters.AddWithValue("@displayname", displayname ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@given_displayname", displayname ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@meta_topic", metaTopic ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@meta_name", displayname ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@dialog_partner", dialogPartner ?? (object)DBNull.Value);
                                cmd.Parameters.AddWithValue("@skymu_dialog_partner_id", dialogPartnerId ?? (object)DBNull.Value);
                                await cmd.ExecuteNonQueryAsync();
                            }
                        }
                        transaction.Commit();
                    }
                    catch
                    {
                        transaction.Rollback();
                        throw;
                    }
                }
            }
        }

        public static class Messages
        {
            public static async Task Write(ConversationItem[] items, Conversation conversation)
            {
                using (SqliteConnection connection = CreateConnection())
                {
                    EnsureTables(connection);

                    // Resolve the integer convo_id from the Conversations table
                    long convoId = 0;
                    using (SqliteCommand idCmd = connection.CreateCommand())
                    {
                        idCmd.CommandText = "SELECT id FROM Conversations WHERE identity = @identity LIMIT 1;";
                        idCmd.Parameters.AddWithValue("@identity", conversation.Identifier ?? (object)DBNull.Value);
                        object result = await idCmd.ExecuteScalarAsync();
                        if (result != null && result != DBNull.Value)
                            convoId = Convert.ToInt64(result);
                    }

                    string dialogPartner = null;
                    string dialogPartnerId = null;
                    if (conversation is DirectMessage dm)
                    {
                        dialogPartner = dm.RemoteUser?.Identifier;
                        dialogPartnerId = dm.RemoteUser?.Identifier;
                    }

                    SqliteTransaction transaction = connection.BeginTransaction();
                    try
                    {
                        foreach (ConversationItem item in items)
                        {
                            using (SqliteCommand cmd = connection.CreateCommand())
                            {
                                cmd.CommandText = @"
                                    INSERT OR IGNORE INTO Messages (
                                        is_permanent, chatname, timestamp, author, from_dispname,
                                        chatmsg_type, body_xml, dialog_partner, skymu_dialog_partner_id, convo_id, type,
                                        pk_id, timestamp__ms, guid, skymu_userid,
                                        identities, leavereason, chatmsg_status, body_is_rawxml,
                                        edited_by, edited_timestamp, sending_status, consumption_status
                                    )
                                    VALUES (
                                        @is_permanent, @chatname, @timestamp, @author, @from_dispname,
                                        @chatmsg_type, @body_xml, @dialog_partner, @skymu_dialog_partner_id, @convo_id, @type,
                                        @pk_id, @timestamp__ms, @guid, @skymu_userid,
                                        NULL, NULL, 4, 0,
                                        NULL, NULL, 2, 0
                                    );";

                                if (item is Message message)
                                {
                                    long tsSeconds = new DateTimeOffset(message.Time).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(message.Time).ToUnixTimeMilliseconds();
                                    bool hasFile = message.Attachments != null
                                                       && message.Attachments.Length > 0
                                                       && message.Attachments[0]?.File != null;

                                    // chatmsg_type 3 = ordinary message (type 61)
                                    // chatmsg_type 7 = file/special (type 61 or 68)
                                    int chatmsgType = hasFile ? 7 : 3;
                                    int msgType = hasFile ? 68 : 61;

                                    cmd.Parameters.AddWithValue("@is_permanent", 1);
                                    cmd.Parameters.AddWithValue("@chatname", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@timestamp", tsSeconds);
                                    cmd.Parameters.AddWithValue("@author", message.Sender?.Username ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@from_dispname", message.Sender?.DisplayName ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@chatmsg_type", chatmsgType);
                                    cmd.Parameters.AddWithValue("@body_xml", message.Text ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@dialog_partner", dialogPartner ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@skymu_dialog_partner_id", dialogPartnerId ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@convo_id", convoId);
                                    cmd.Parameters.AddWithValue("@type", msgType);
                                    cmd.Parameters.AddWithValue("@pk_id", message.Identifier ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@timestamp__ms", tsMs);
                                    cmd.Parameters.AddWithValue("@guid", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@skymu_userid", message.Sender?.Identifier ?? (object)DBNull.Value);
                                }
                                else if (item is CallStartedNotice callStarted)
                                {
                                    // type 30 = call started, chatmsg_type 18
                                    long tsSeconds = new DateTimeOffset(callStarted.Time).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(callStarted.Time).ToUnixTimeMilliseconds();

                                    cmd.Parameters.AddWithValue("@is_permanent", 1);
                                    cmd.Parameters.AddWithValue("@chatname", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@timestamp", tsSeconds);
                                    cmd.Parameters.AddWithValue("@author", callStarted.StartedBy ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@from_dispname", callStarted.StartedBy ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@chatmsg_type", 18);
                                    cmd.Parameters.AddWithValue("@body_xml", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@dialog_partner", dialogPartner ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@skymu_dialog_partner_id", dialogPartnerId ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@convo_id", convoId);
                                    cmd.Parameters.AddWithValue("@type", 30);
                                    cmd.Parameters.AddWithValue("@pk_id", item.Identifier ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@timestamp__ms", tsMs);
                                    cmd.Parameters.AddWithValue("@guid", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@skymu_userid", (object)DBNull.Value);
                                }
                                else if (item is CallEndedNotice callEnded)
                                {
                                    // type 39 = call ended, chatmsg_type 18
                                    long tsSeconds = new DateTimeOffset(callEnded.Time).ToUnixTimeSeconds();
                                    long tsMs = new DateTimeOffset(callEnded.Time).ToUnixTimeMilliseconds();

                                    cmd.Parameters.AddWithValue("@is_permanent", 1);
                                    cmd.Parameters.AddWithValue("@chatname", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@timestamp", tsSeconds);
                                    cmd.Parameters.AddWithValue("@author", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@from_dispname", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@chatmsg_type", 18);
                                    cmd.Parameters.AddWithValue("@body_xml", callEnded.Duration.ToString());
                                    cmd.Parameters.AddWithValue("@dialog_partner", dialogPartner ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@skymu_dialog_partner_id", dialogPartnerId ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@convo_id", convoId);
                                    cmd.Parameters.AddWithValue("@type", 39);
                                    cmd.Parameters.AddWithValue("@pk_id", item.Identifier ?? (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@timestamp__ms", tsMs);
                                    cmd.Parameters.AddWithValue("@guid", (object)DBNull.Value);
                                    cmd.Parameters.AddWithValue("@skymu_userid", (object)DBNull.Value);
                                }
                                else
                                {
                                    continue;
                                }

                                await cmd.ExecuteNonQueryAsync();
                            }
                        }

                        // Update last_message_id and last_activity_timestamp on the parent conversation
                        if (items.Length > 0)
                        {
                            using (SqliteCommand updateCmd = connection.CreateCommand())
                            {
                                updateCmd.CommandText = @"
                                    UPDATE Conversations
                                    SET last_message_id         = (SELECT id FROM Messages WHERE convo_id = @convo_id ORDER BY timestamp DESC LIMIT 1),
                                        last_activity_timestamp = @last_activity_timestamp
                                    WHERE identity = @identity;";
                                updateCmd.Parameters.AddWithValue("@convo_id", convoId);
                                updateCmd.Parameters.AddWithValue("@last_activity_timestamp", DateTimeOffset.UtcNow.ToUnixTimeSeconds());
                                updateCmd.Parameters.AddWithValue("@identity", conversation.Identifier ?? (object)DBNull.Value);
                                await updateCmd.ExecuteNonQueryAsync();
                            }
                        }

                        transaction.Commit();
                    }
                    catch
                    {
                        transaction.Rollback();
                        throw;
                    }
                }
            }
        }
    }
}