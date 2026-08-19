.class Lcom/perm/kate/db/DataHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0xb0

    .line 651
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createAdEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table ad_events(type integer,ads_id1 integer,ads_id2 integer,date integer)"

    .line 1376
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index AdEventsIndex1 on ad_events(type,ads_id1,ads_id2);"

    .line 1378
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index AdEventsIndex2 on ad_events(date);"

    .line 1381
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAlbumPhotoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table albumphoto(_id integer primary key, album_id integer, album_owner_id integer, photo_id integer, photo_owner_id integer );"

    .line 1298
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_albumphoto_1 on albumphoto(album_owner_id, album_id);"

    .line 1300
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAttachmentsIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_attachments_1 on attachments(content_type, content_id);"

    .line 1206
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAttachmentsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table attachments(_id integer primary key, content_type integer, content_id integer, type text, photo_id integer, posted_photo_id integer, audio_id integer, video_id integer, video_owner_id integer, video_access_key text, poll_id integer, poll_owner_id integer, note_id integer, link_url text, link_title text, link_desc text, link_img text, graffiti_id integer, graffiti_owner_id integer, graffiti_src text, graffiti_src_big text, geo_type text, geo_lat text, geo_lon text, doc_id integer, page_title text, page_id integer, page_group_id integer, message blob );"

    .line 1139
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAudioAlbumsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table audio_albums(_id integer primary key, album_id integer, owner_id integer, photo text, title text );"

    .line 1353
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAudioCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table audio_cache(_id integer primary key, audio_id integer, owner_id integer, status integer, position integer );"

    .line 1312
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_audio_cache on audio_cache(audio_id);"

    .line 1314
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAudioInListTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table audio_in_list(_id integer primary key,list_id integer,list_owner_id integer,audio_id integer)"

    .line 1364
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioInListIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createAudioIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_audio_1 on audio(audio_id);"

    .line 1212
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createAudioTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table audio(_id integer primary key, audio_id integer, owner_id integer, artist text, title text, duration integer, url text, genre_id integer, lyrics_id integer );"

    .line 1093
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createChatMembersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table chat_members(_id integer primary key, chat_id integer, user_id integer );"

    .line 1166
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_chat_members on chat_members(chat_id);"

    .line 1168
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createChatTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table chat(_id integer primary key, chat_id integer, account_id integer, group_id integer not null default 0, title text, photo_100 text, unread_count integer );"

    .line 1181
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createCommentsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table comments(_id integer primary key, comment_id integer, date integer, from_id integer, message text, content_type integer, content_owner_id integer, content_id integer, reply_to_cid integer, reply_to_uid integer, like_count integer );"

    .line 1070
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createCommentsIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createDocsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table docs(_id integer primary key, doc_id integer, owner_id integer, title text, size integer, url text, ext text, thumb text, thumb_s text, title_lower text )"

    .line 1284
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_doc_owner on docs(owner_id)"

    .line 1286
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createFaveGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table fave_groups(_id integer primary key, account_id integer, group_id integer );"

    .line 1267
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createFaveLinksTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table fave_links(_id integer primary key, account_id integer, url text, title text, description text, image_src text, link_id text );"

    .line 1246
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createFavePostsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table fave_posts(_id integer primary key, account_id integer, post_id integer, owner_id integer );"

    .line 1257
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createFaveUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table fave_users(_id integer primary key, account_id integer, user_id integer );"

    .line 1232
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createGraffitiTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table graffiti(_id integer primary key, owner_id integer, src text, src_big text );"

    .line 960
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table groups(_id integer primary key, name text, name_lower text, photo text, photo_medium text, photo_big text, is_closed integer, description text, wiki text, can_see_all_posts integer default 1, fixed_post integer, members_count integer, type integer, start_date integer, status text, photos integer, albums integer, topics integer, videos integer, audios integer, docs integer, posts integer, podcasts integer, can_message integer, market_enabled integer, market_contact_id integer, market_wiki_id integer, market_wiki_title text, cover_400 text, cover_800 text, verified integer );"

    .line 998
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createGroupTopicsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table group_topics(_id integer primary key, group_id integer, title text, created integer, created_by text, updated integer, updated_by text, is_closed integer, is_fixed integer, title_lower text, comments integer );"

    .line 1199
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_group_topic_group_id on group_topics(group_id);"

    .line 1201
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_messages_1 on messages(account_id, group_id, message_id);"

    .line 1222
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table messages(_id integer primary key, message_id integer, account_id integer, group_id integer not null default 0, date integer, uid integer, title text, body text, read_state integer, chat_id integer, is_out integer, have_attachments integer, important integer, update_time integer, [action] integer, action_mid integer, attachments blob, action_text text );"

    .line 857
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createNewsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table news(_id integer primary key, account_id integer, type text, source_id integer, from_id integer, date integer, post_id integer, copy_owner_id integer, copy_post_id integer, copy_text text, text text, signer_id integer, like_count integer, user_like integer, comment_count integer, comment_can_post integer, is_comments integer not null default 0, comments text, reposts_count integer, views integer, ads_title text, ads_id1 integer, ads_id2 integer, ad_data text, ad_data_impression text, age_restriction text, statistics blob, track_code text, attachments blob, user_reposted integer, copyright_link text, copyright_name text, is_explicit integer );"

    .line 832
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPhotoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_photo_1 on photos(photo_id);"

    .line 1387
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPhotosTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table photos(_id integer primary key, photo_id integer, owner_id integer, album_id integer, src text, phototext text, created integer, src_big text, src_xbig text, src_xxbig text, src_xxxbig text, src_small text, like_count integer, width integer, height integer, lat text, lon text, comments_count integer);"

    .line 794
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createPollTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table poll(_id integer primary key, account_id integer, poll_id integer, owner_id integer, answers text, created integer, question text, votes integer, anonymous integer );"

    .line 1157
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createUserGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table user_group(_id integer primary key, user_id integer, group_id integer, admin_level integer );"

    .line 1009
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table users(_id integer primary key, is_full integer not null, first_name text not null, last_name text not null, nickname text, photo text, photo_medium text, photo_medium_rec text, photo_big text, photo_200 text, photo_400_orig text, domain text, sex integer, birthdate text, city integer, country integer, timezone integer, has_mobile integer, rate integer, mobile_phone text, home_phone text, university integer, university_name text, faculty integer, faculty_name text, first_name_lower text, last_name_lower text, nickname_lower text, online integer, online_mobile integer, graduation integer, status text, relation integer, last_seen integer, albums integer, photos integer, videos integer, audios integer, notes integer, friends integer, user_photos integer, user_videos integer, groups integer, followers integer, online_friends integer, mutual_friends integer, gifts integer, posts integer, crop_photo_rect_x1 real, crop_photo_rect_x2 real, crop_photo_rect_y1 real, crop_photo_rect_y2 real, verified integer );"

    .line 917
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createVideoCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table video_cache(_id integer primary key, video_id integer, owner_id integer, status integer );"

    .line 1325
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_video_cache on video_cache(video_id,owner_id);"

    .line 1327
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createVideoInAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table video_in_album(_id integer primary key, album_id integer, album_owner_id integer, video_id integer, video_owner_id integer );"

    .line 1339
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create index index_video_in_album on video_in_album(album_id,album_owner_id);"

    .line 1341
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createVideoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_video_1 on video(video_id, owner_id);"

    .line 1217
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createVideoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table video(_id integer primary key, video_id integer, owner_id integer, title text, description text, duration integer, link text, image text, image_big text, date integer, player_url text, video_url text, views integer, likes_count integer, platform text);"

    .line 1031
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createWallIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_wall_1 on wall(to_id)"

    .line 949
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static createWallLikeIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_wall_like on wall_like (type, wall_owner_id, post_id)"

    .line 1050
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createWallLikeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table wall_like(_id integer primary key, wall_owner_id integer not null, post_id integer not null, account_id integer not null, [like] integer not null, reposted integer, type integer not null );"

    .line 1045
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    invoke-static {p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallLikeIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createWallTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table wall(_id integer primary key, post_id integer, to_id integer, from_id integer, date integer, text text, comments_count integer, likes_count integer, signer_id integer, copy_owner_id integer, copy_post_id integer, copy_text text, reposts_count integer, post_type integer, views integer, is_pinned integer, copyright_link text, attachments blob, copyright_name text, created_by integer, is_explicit integer );"

    .line 944
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private recreateAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS users"

    .line 1629
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS news"

    .line 1630
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS friends"

    .line 1631
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS photos"

    .line 1632
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS news_photo"

    .line 1633
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS news_phototags"

    .line 1634
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS news_friend"

    .line 1635
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS news_note"

    .line 1636
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS messages"

    .line 1637
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS comments"

    .line 1638
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS albums"

    .line 1639
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS notes"

    .line 1640
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS cities"

    .line 1641
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS countries"

    .line 1642
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio"

    .line 1643
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS wall"

    .line 1644
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS graffiti"

    .line 1645
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS groups"

    .line 1646
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_group"

    .line 1647
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS video"

    .line 1648
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS wall_like"

    .line 1649
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS attachments"

    .line 1650
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS poll"

    .line 1651
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS chat"

    .line 1652
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS group_topics"

    .line 1653
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS chat_members"

    .line 1654
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS fave_users"

    .line 1655
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS fave_links"

    .line 1656
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS fave_posts"

    .line 1657
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS docs"

    .line 1658
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS albumphoto"

    .line 1659
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_cache"

    .line 1660
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS video_in_album"

    .line 1661
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS video_cache"

    .line 1662
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_albums"

    .line 1663
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_in_list"

    .line 1664
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS ad_events"

    .line 1665
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS fave_groups"

    .line 1666
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const/16 v0, 0x7e

    if-ne p2, v0, :cond_0

    const-string v0, "ALTER TABLE chat ADD unread_count integer"

    .line 1428
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x7f

    if-ne p2, v0, :cond_1

    .line 1431
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/16 v0, 0x80

    if-ne p2, v0, :cond_2

    const-string v0, "ALTER TABLE users ADD posts integer"

    .line 1434
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x81

    if-ne p2, v0, :cond_3

    const-string v0, "ALTER TABLE groups ADD posts integer"

    .line 1437
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x82

    if-ne p2, v0, :cond_4

    const-string v0, "ALTER TABLE users ADD photo_400_orig text"

    .line 1440
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x83

    if-ne p2, v0, :cond_5

    .line 1443
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioAlbumsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    const/16 v0, 0x84

    if-ne p2, v0, :cond_6

    const-string v0, "ALTER TABLE users ADD verified integer"

    .line 1446
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x85

    if-ne p2, v0, :cond_7

    const-string v0, "ALTER TABLE groups ADD verified integer"

    .line 1449
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x86

    if-ne p2, v0, :cond_8

    .line 1452
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioInListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    const/16 v0, 0x87

    if-ne p2, v0, :cond_9

    const-string v0, "ALTER TABLE users ADD mutual_friends integer"

    .line 1455
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 v0, 0x88

    if-ne p2, v0, :cond_a

    const-string v0, "ALTER TABLE groups ADD can_message integer"

    .line 1458
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    const/16 v0, 0x89

    if-ne p2, v0, :cond_b

    const-string v0, "ALTER TABLE groups ADD market_enabled integer"

    .line 1461
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE groups ADD market_contact_id integer"

    .line 1462
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE groups ADD market_wiki_id integer"

    .line 1463
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE groups ADD market_wiki_title text"

    .line 1464
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    const/16 v0, 0x8a

    if-ne p2, v0, :cond_c

    const-string v0, "ALTER TABLE users ADD photos integer"

    .line 1468
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c
    const/16 v0, 0x8b

    if-ne p2, v0, :cond_d

    const-string v0, "ALTER TABLE albums ADD privacy_str text"

    .line 1471
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    const/16 v0, 0x8c

    if-ne p2, v0, :cond_e

    const-string v0, "ALTER TABLE messages ADD group_id integer not null default 0"

    .line 1474
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE chat ADD group_id integer not null default 0"

    .line 1475
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX IF EXISTS index_messages_1"

    .line 1476
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    const/16 v0, 0x8d

    if-ne p2, v0, :cond_f

    const-string v0, "ALTER TABLE photos RENAME TO photos_old"

    .line 1481
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1482
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotosTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    const/16 v0, 0x8e

    if-ne p2, v0, :cond_10

    .line 1486
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    const/16 v0, 0x8f

    if-ne p2, v0, :cond_11

    const-string v0, "ALTER TABLE docs ADD doc_id integer"

    .line 1489
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    const/16 v0, 0x90

    if-ne p2, v0, :cond_12

    const-string v0, "ALTER TABLE users ADD crop_photo_rect_x1 real"

    .line 1496
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE users ADD crop_photo_rect_x2 real"

    .line 1497
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE users ADD crop_photo_rect_y1 real"

    .line 1498
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE users ADD crop_photo_rect_y2 real"

    .line 1499
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    const/16 v0, 0x91

    if-ne p2, v0, :cond_13

    const-string v0, "ALTER TABLE news_photo ADD photo_owner_id integer"

    .line 1506
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news_phototags ADD photo_owner_id integer"

    .line 1507
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_13
    const/16 v0, 0x92

    if-ne p2, v0, :cond_14

    const-string v0, "ALTER TABLE albumphoto ADD photo_owner_id integer"

    .line 1515
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_14
    const/16 v0, 0x93

    if-ne p2, v0, :cond_15

    const-string v0, "ALTER TABLE groups ADD cover_400 text"

    .line 1519
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE groups ADD cover_800 text"

    .line 1520
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_15
    const/16 v0, 0x94

    if-ne p2, v0, :cond_16

    const-string v0, "ALTER TABLE wall ADD views integer"

    .line 1524
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD views integer"

    .line 1525
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_16
    const/16 v0, 0x95

    if-ne p2, v0, :cond_17

    const-string v0, "ALTER TABLE comments ADD reply_to_cid integer"

    .line 1529
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE comments ADD reply_to_uid integer"

    .line 1530
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_17
    const/16 v0, 0x96

    if-ne p2, v0, :cond_18

    const-string v0, "ALTER TABLE wall_like ADD reposted integer"

    .line 1534
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_18
    const/16 v0, 0x97

    if-ne p2, v0, :cond_19

    const-string v0, "ALTER TABLE audio ADD genre_id integer"

    .line 1537
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_19
    const/16 v0, 0x98

    if-ne p2, v0, :cond_1a

    const-string v0, "ALTER TABLE group_topics ADD title_lower text"

    .line 1540
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1a
    const/16 v0, 0x99

    if-ne p2, v0, :cond_1b

    const-string v0, "ALTER TABLE messages ADD update_time integer"

    .line 1543
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1b
    const/16 v0, 0x9a

    if-ne p2, v0, :cond_1c

    const-string v0, "ALTER TABLE news ADD ads_title text"

    .line 1546
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD ads_id1 integer"

    .line 1547
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD ads_id2 integer"

    .line 1548
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD ad_data text"

    .line 1549
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD ad_data_impression text"

    .line 1550
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD age_restriction text"

    .line 1551
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD statistics blob"

    .line 1552
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD track_code text"

    .line 1553
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1c
    const/16 v0, 0x9b

    if-ne p2, v0, :cond_1d

    .line 1557
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAdEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1d
    const/16 v0, 0x9c

    if-ne p2, v0, :cond_1e

    const-string v0, "ALTER TABLE news ADD attachments blob"

    .line 1560
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1e
    const/16 v0, 0x9d

    if-ne p2, v0, :cond_1f

    const-string v0, "ALTER TABLE photos ADD lat text"

    .line 1563
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE photos ADD lon text"

    .line 1564
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1f
    const/16 v0, 0x9e

    if-ne p2, v0, :cond_20

    .line 1568
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_20
    const/16 v0, 0x9f

    if-ne p2, v0, :cond_21

    const-string v0, "ALTER TABLE groups ADD podcasts integer"

    .line 1571
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_21
    const/16 v0, 0xa0

    if-ne p2, v0, :cond_22

    const-string v0, "ALTER TABLE albums ADD privacy_comments text"

    .line 1574
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_22
    const/16 v0, 0xa1

    if-ne p2, v0, :cond_23

    const-string v0, "ALTER TABLE news ADD copyright_link text"

    .line 1577
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD copyright_name text"

    .line 1578
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE wall ADD copyright_link text"

    .line 1579
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE wall ADD copyright_name text"

    .line 1580
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_23
    const/16 v0, 0xa2

    if-ne p2, v0, :cond_24

    const-string v0, "ALTER TABLE video ADD platform text"

    .line 1584
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_24
    const/16 v0, 0xa3

    if-ne p2, v0, :cond_25

    .line 1587
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_25
    const/16 v0, 0xa4

    if-ne p2, v0, :cond_26

    const-string v0, "ALTER TABLE wall ADD attachments blob"

    .line 1590
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_26
    const/16 v0, 0xa5

    if-ne p2, v0, :cond_27

    const-string v0, "ALTER TABLE audio_albums ADD photo text"

    .line 1593
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_27
    const/16 v0, 0xa6

    if-ne p2, v0, :cond_28

    const-string v0, "ALTER TABLE messages ADD attachments blob"

    .line 1596
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_28
    const/16 v0, 0xa7

    if-ne p2, v0, :cond_29

    const-string v0, "ALTER TABLE wall ADD created_by integer"

    .line 1599
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_29
    const/16 v0, 0xa8

    if-ne p2, v0, :cond_2a

    .line 1602
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createCommentsIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2a
    const/16 v0, 0xa9

    if-ne p2, v0, :cond_2b

    .line 1605
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFriendsIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2b
    const/16 v0, 0xaa

    if-ne p2, v0, :cond_2c

    .line 1608
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioInListIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2c
    const/16 v0, 0xab

    if-ne p2, v0, :cond_2d

    .line 1611
    invoke-static {p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallLikeIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2d
    const/16 v0, 0xae

    if-ne p2, v0, :cond_2e

    .line 1623
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createIndexNewsPhoto(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1624
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createIndexMessages2(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2e
    const/16 v0, 0xaf

    if-ne p2, v0, :cond_2f

    const-string v0, "ALTER TABLE wall ADD is_explicit integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE news ADD is_explicit integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method createAudioInListIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_audio_in_list on audio_in_list(list_owner_id)"

    .line 1395
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public createCommentsIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index INDEX_COMMENTS on comments(content_id)"

    .line 1076
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method createFriendsIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index index_friends on friends(owner_id)"

    .line 1391
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public createIndexMessages2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index IF NOT EXISTS index_messages_2 on messages(chat_id,account_id,group_id,message_id)"

    .line 1403
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public createIndexNewsPhoto(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create index IF NOT EXISTS index_news_photo on news_photo(news_id)"

    .line 1399
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 660
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 661
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createNewsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "create table friends(_id integer primary key, owner_id integer, friend_id integer);"

    .line 668
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFriendsIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 670
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotosTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 671
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "create table news_photo(_id integer primary key, news_id integer, photo_id integer,photo_owner_id integer);"

    .line 679
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createIndexNewsPhoto(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "create table news_phototags(_id integer primary key, news_id integer, photo_id integer,photo_owner_id integer);"

    .line 688
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table news_friend(_id integer primary key, news_id integer, user_id integer);"

    .line 695
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table news_note(_id integer primary key, news_id integer, note_id integer);"

    .line 702
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 704
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createCommentsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "create table albums(_id integer primary key, album_id integer, thumb_id integer, owner_id integer, title text, description text, created integer, updated integer, size integer, privacy_str text, privacy_comments text, thumb_src text);"

    .line 720
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table notes(_id integer primary key, comments integer, comments_read integer, title text, text text, date integer, from_id integer );"

    .line 731
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table cities(_id integer primary key, name text );"

    .line 737
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table countries(_id integer primary key, name text );"

    .line 743
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 745
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGraffitiTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 747
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 748
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createUserGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 749
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 750
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallLikeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 751
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createChatMembersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 752
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createChatTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 753
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAttachmentsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 754
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPollTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGroupTopicsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 756
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAttachmentsIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 757
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 758
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 759
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 760
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createIndexMessages2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 761
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveLinksTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 763
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFavePostsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 764
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createDocsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 765
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAlbumPhotoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 766
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 767
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoInAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 768
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioAlbumsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 770
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioInListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 771
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAdEventsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 772
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.DataHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7e

    if-ge p2, v0, :cond_0

    .line 1411
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->recreateAll(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 1416
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->update(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1418
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->recreateAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1420
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1421
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method setWriteAheadLoggingEnabledWithReflection(Z)V
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
