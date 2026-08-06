.class Lcom/perm/kate/db/DataHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/db/DataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    const-string v0, "kate.db"

    const/4 v1, 0x0

    const/16 v2, 0x95

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 579
    return-void
.end method

.method private createAlbumPhotoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1176
    const-string v0, "create table albumphoto(_id integer primary key, album_id integer, album_owner_id integer, photo_id integer, photo_owner_id integer );"

    .line 1184
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1185
    const-string v1, "create index index_albumphoto_1 on albumphoto(album_owner_id, album_id);"

    .line 1186
    .local v1, "sql_index":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method private createAttachmentsIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1101
    const-string v0, "create index index_attachments_1 on attachments(content_type, content_id);"

    .line 1102
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method private createAttachmentsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 995
    const-string v0, "create table attachments(_id integer primary key, content_type integer, content_id integer, type text, photo_id integer, posted_photo_id integer, audio_id integer, video_id integer, video_owner_id integer, video_access_key text, poll_id integer, poll_owner_id integer, note_id integer, link_url text, link_title text, link_desc text, link_img text, graffiti_id integer, graffiti_owner_id integer, graffiti_src text, graffiti_src_big text, geo_type text, geo_lat text, geo_lon text, doc_id integer, page_title text, page_id integer, page_group_id integer, message blob );"

    .line 1036
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method private createAudioAlbumsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1231
    const-string v0, "create table audio_albums(_id integer primary key, album_id integer, owner_id integer, title text );"

    .line 1238
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method private createAudioCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1190
    const-string v0, "create table audio_cache(_id integer primary key, audio_id integer, owner_id integer, status integer, position integer );"

    .line 1198
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1199
    const-string v1, "create index index_audio_cache on audio_cache(audio_id);"

    .line 1200
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1201
    return-void
.end method

.method private createAudioInListTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1242
    const-string v0, "create table audio_in_list(_id integer primary key,list_id integer,list_owner_id integer,audio_id integer)"

    .line 1249
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1250
    return-void
.end method

.method private createAudioIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1107
    const-string v0, "create index index_audio_1 on audio(audio_id);"

    .line 1108
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method private createAudioTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 979
    const-string v0, "create table audio(_id integer primary key, audio_id integer, owner_id integer, artist text, title text, duration integer, url text, lyrics_id integer );"

    .line 990
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method private createChatMembersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1058
    const-string v0, "create table chat_members(_id integer primary key, chat_id integer, user_id integer );"

    .line 1063
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1064
    const-string v0, "create index index_chat_members on chat_members(chat_id);"

    .line 1065
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method private createChatTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1069
    const-string v0, "create table chat(_id integer primary key, chat_id integer, account_id integer, group_id integer not null default 0, title text, photo_100 text, unread_count integer );"

    .line 1078
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method private createCommentsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 962
    const-string v0, "create table comments(_id integer primary key, comment_id integer, date integer, from_id integer, message text, content_type integer, content_owner_id integer, content_id integer, like_count integer );"

    .line 974
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method private createDocsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1157
    const-string v0, "create table docs(_id integer primary key, doc_id integer, owner_id integer, title text, size integer, url text, ext text, thumb text, thumb_s text, title_lower text )"

    .line 1170
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    const-string v0, "create index index_doc_owner on docs(owner_id)"

    .line 1172
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method private createFaveLinksTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1132
    const-string v0, "create table fave_links(_id integer primary key, account_id integer, url text, title text, description text, image_src text, link_id text );"

    .line 1142
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method private createFavePostsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1146
    const-string v0, "create table fave_posts(_id integer primary key, account_id integer, post_id integer, owner_id integer );"

    .line 1153
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1154
    return-void
.end method

.method private createFaveUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1122
    const-string v0, "create table fave_users(_id integer primary key, account_id integer, user_id integer );"

    .line 1128
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method private createGraffitiTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 868
    const-string v0, "create table graffiti(_id integer primary key, owner_id integer, src text, src_big text );"

    .line 875
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method private createGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 879
    const-string v0, "create table groups(_id integer primary key, name text, name_lower text, photo text, photo_medium text, photo_big text, is_closed integer, description text, wiki text, can_see_all_posts integer default 1, fixed_post integer, members_count integer, type integer, start_date integer, status text, photos integer, albums integer, topics integer, videos integer, audios integer, docs integer, posts integer, can_message integer, market_enabled integer, market_contact_id integer, market_wiki_id integer, market_wiki_title text, cover_400 text, cover_800 text, verified integer );"

    .line 912
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method private createGroupTopicsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1082
    const-string v0, "create table group_topics(_id integer primary key, group_id integer, title text, created integer, created_by text, updated integer, updated_by text, is_closed integer, is_fixed integer, comments integer );"

    .line 1095
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1096
    const-string v1, "create index index_group_topic_group_id on group_topics(group_id);"

    .line 1097
    .local v1, "sql_index":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method private createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1117
    const-string v0, "create index index_messages_1 on messages(account_id, group_id, message_id);"

    .line 1118
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method private createMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 762
    const-string v0, "create table messages(_id integer primary key, message_id integer, account_id integer, group_id integer not null default 0, date integer, uid integer, title text, body text, read_state integer, chat_id integer, is_out integer, have_attachments integer, important integer, action integer, action_mid integer, action_text text );"

    .line 781
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method private createNewsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 734
    const-string v0, "create table news(_id integer primary key, account_id integer, type text, source_id integer, from_id integer, date integer, post_id integer, copy_owner_id integer, copy_post_id integer, copy_text text, text text, signer_id integer, like_count integer, user_like integer, comment_count integer, comment_can_post integer, is_comments integer not null default 0, comments text, reposts_count integer, views integer, user_reposted integer );"

    .line 758
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private createPhotoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1254
    const-string v0, "create index index_photo_1 on photos(photo_id);"

    .line 1255
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method private createPhotosTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 714
    const-string v0, "create table photos(_id integer primary key, photo_id integer, owner_id integer, album_id integer, src text, phototext text, created integer, src_big text, src_xbig text, src_xxbig text, src_xxxbig text, src_small text, like_count integer, width integer, height integer, comments_count integer);"

    .line 731
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private createPollTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1041
    const-string v0, "create table poll(_id integer primary key, account_id integer, poll_id integer, owner_id integer, answers text, created integer, question text, votes integer, answer_id integer, anonymous integer );"

    .line 1054
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method private createUserGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 916
    const-string v0, "create table user_group(_id integer primary key, user_id integer, group_id integer, admin_level integer );"

    .line 923
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method private createUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 785
    const-string v0, "create table users(_id integer primary key, is_full integer not null, first_name text not null, last_name text not null, nickname text, photo text, photo_medium text, photo_medium_rec text, photo_big text, photo_200 text, photo_400_orig text, domain text, sex integer, birthdate text, city integer, country integer, timezone integer, has_mobile integer, rate integer, mobile_phone text, home_phone text, university integer, university_name text, faculty integer, faculty_name text, first_name_lower text, last_name_lower text, nickname_lower text, online integer, online_mobile integer, graduation integer, status text, relation integer, last_seen integer, albums integer, photos integer, videos integer, audios integer, notes integer, friends integer, user_photos integer, user_videos integer, groups integer, followers integer, online_friends integer, mutual_friends integer, gifts integer, posts integer, crop_photo_rect_x1 real, crop_photo_rect_x2 real, crop_photo_rect_y1 real, crop_photo_rect_y2 real, verified integer );"

    .line 841
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method private createVideoCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1204
    const-string v0, "create table video_cache(_id integer primary key, video_id integer, owner_id integer, status integer );"

    .line 1211
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1212
    const-string v1, "create index index_video_cache on video_cache(video_id,owner_id);"

    .line 1213
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method private createVideoInAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1217
    const-string v0, "create table video_in_album(_id integer primary key, album_id integer, album_owner_id integer, video_id integer, video_owner_id integer );"

    .line 1225
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1226
    const-string v1, "create index index_video_in_album on video_in_album(album_id,album_owner_id);"

    .line 1227
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method private createVideoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1112
    const-string v0, "create index index_video_1 on video(video_id, owner_id);"

    .line 1113
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method private createVideoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 927
    const-string v0, "create table video(_id integer primary key, video_id integer, owner_id integer, title text, description text, duration integer, link text, image text, image_big text, date integer, player_url text, video_url text, views integer, likes_count integer);"

    .line 944
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method private createWallLikeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 948
    const-string v0, "create table wall_like(_id integer primary key, wall_owner_id integer not null, post_id integer not null, account_id integer not null, like integer not null, type integer not null );"

    .line 957
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method private createWallTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 845
    const-string v0, "create table wall(_id integer primary key, post_id integer, to_id integer, from_id integer, date integer, text text, comments_count integer, likes_count integer, signer_id integer, copy_owner_id integer, copy_post_id integer, copy_text text, reposts_count integer, post_type integer, views integer, is_pinned integer );"

    .line 864
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method private recreateAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1737
    const-string v0, "DROP TABLE IF EXISTS users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1738
    const-string v0, "DROP TABLE IF EXISTS news"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1739
    const-string v0, "DROP TABLE IF EXISTS friends"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1740
    const-string v0, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1741
    const-string v0, "DROP TABLE IF EXISTS news_photo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1742
    const-string v0, "DROP TABLE IF EXISTS news_phototags"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1743
    const-string v0, "DROP TABLE IF EXISTS news_friend"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1744
    const-string v0, "DROP TABLE IF EXISTS news_note"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1745
    const-string v0, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    const-string v0, "DROP TABLE IF EXISTS comments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1747
    const-string v0, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1748
    const-string v0, "DROP TABLE IF EXISTS notes"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1749
    const-string v0, "DROP TABLE IF EXISTS cities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1750
    const-string v0, "DROP TABLE IF EXISTS countries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1751
    const-string v0, "DROP TABLE IF EXISTS audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1752
    const-string v0, "DROP TABLE IF EXISTS wall"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1753
    const-string v0, "DROP TABLE IF EXISTS graffiti"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1754
    const-string v0, "DROP TABLE IF EXISTS groups"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1755
    const-string v0, "DROP TABLE IF EXISTS user_group"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1756
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1757
    const-string v0, "DROP TABLE IF EXISTS wall_like"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1758
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1759
    const-string v0, "DROP TABLE IF EXISTS poll"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1760
    const-string v0, "DROP TABLE IF EXISTS chat"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1761
    const-string v0, "DROP TABLE IF EXISTS group_topics"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1762
    const-string v0, "DROP INDEX IF EXISTS index_group_topic_group_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1763
    const-string v0, "DROP INDEX IF EXISTS index_attachments_1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1764
    const-string v0, "DROP INDEX IF EXISTS index_audio_1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1765
    const-string v0, "DROP INDEX IF EXISTS index_video_1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1766
    const-string v0, "DROP INDEX IF EXISTS index_photo_1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1767
    const-string v0, "DROP TABLE IF EXISTS chat_members"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1768
    const-string v0, "DROP INDEX IF EXISTS index_chat_members"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1769
    const-string v0, "DROP TABLE IF EXISTS fave_users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1770
    const-string v0, "DROP TABLE IF EXISTS fave_links"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1771
    const-string v0, "DROP TABLE IF EXISTS fave_posts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1772
    const-string v0, "DROP TABLE IF EXISTS docs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1773
    const-string v0, "DROP INDEX IF EXISTS index_doc_owner"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1774
    const-string v0, "DROP TABLE IF EXISTS albumphoto"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1775
    const-string v0, "DROP INDEX IF EXISTS index_albumphoto_1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1776
    const-string v0, "DROP TABLE IF EXISTS audio_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1777
    const-string v0, "DROP TABLE IF EXISTS video_in_album"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1778
    const-string v0, "DROP TABLE IF EXISTS video_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1779
    const-string v0, "DROP TABLE IF EXISTS audio_albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1780
    const-string v0, "DROP TABLE IF EXISTS audio_in_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1782
    return-void
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 1279
    const/16 v1, 0x1d

    if-ne p2, v1, :cond_0

    .line 1280
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGraffitiTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1282
    :cond_0
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_1

    .line 1283
    const-string v1, "DROP TABLE IF EXISTS wall"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1284
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1287
    :cond_1
    const/16 v1, 0x1f

    if-ne p2, v1, :cond_2

    .line 1289
    const-string v1, "ALTER TABLE users ADD first_name_lower text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    const-string v1, "ALTER TABLE users ADD last_name_lower text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    const-string v1, "ALTER TABLE users ADD nickname_lower text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    :cond_2
    const/16 v1, 0x20

    if-ne p2, v1, :cond_3

    .line 1295
    const-string v1, "ALTER TABLE photos ADD phototext text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    const-string v1, "ALTER TABLE photos ADD created integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    :cond_3
    const/16 v1, 0x21

    if-ne p2, v1, :cond_4

    .line 1300
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1301
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createUserGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1305
    :cond_4
    const/16 v1, 0x22

    if-ne p2, v1, :cond_5

    .line 1306
    const-string v1, "DROP TABLE IF EXISTS wall"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1310
    :cond_5
    const/16 v1, 0x23

    if-ne p2, v1, :cond_6

    .line 1311
    const-string v1, "ALTER TABLE users ADD online integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1313
    :cond_6
    const/16 v1, 0x24

    if-ne p2, v1, :cond_7

    .line 1314
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1316
    :cond_7
    const/16 v1, 0x27

    if-ne p2, v1, :cond_8

    .line 1317
    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1318
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1321
    :cond_8
    const/16 v1, 0x2a

    if-ne p2, v1, :cond_9

    .line 1322
    const-string v1, "DROP TABLE IF EXISTS comments"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1323
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createCommentsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1326
    :cond_9
    const/16 v1, 0x2b

    if-ne p2, v1, :cond_a

    .line 1327
    const-string v1, "DROP TABLE IF EXISTS audio"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1331
    :cond_a
    const/16 v1, 0x2c

    if-ne p2, v1, :cond_b

    .line 1332
    const-string v1, "DROP TABLE IF EXISTS news"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createNewsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1336
    :cond_b
    const/16 v1, 0x2e

    if-ne p2, v1, :cond_c

    .line 1337
    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1341
    :cond_c
    const/16 v1, 0x2f

    if-ne p2, v1, :cond_d

    .line 1342
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallLikeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1344
    :cond_d
    const/16 v1, 0x31

    if-ne p2, v1, :cond_e

    .line 1345
    const-string v1, "ALTER TABLE news ADD is_comments integer not null default 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1346
    const-string v1, "ALTER TABLE news ADD comments text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1347
    const-string v1, "ALTER TABLE news ADD from_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1350
    :cond_e
    const/16 v1, 0x32

    if-ne p2, v1, :cond_f

    .line 1352
    const-string v1, "ALTER TABLE wall_like ADD type integer not null default 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1355
    :cond_f
    const/16 v1, 0x33

    if-ne p2, v1, :cond_10

    .line 1356
    const-string v1, "ALTER TABLE users ADD status text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    :cond_10
    const/16 v1, 0x34

    if-ne p2, v1, :cond_11

    .line 1359
    const-string v1, "ALTER TABLE photos ADD like_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1361
    :cond_11
    const/16 v1, 0x35

    if-ne p2, v1, :cond_12

    .line 1362
    const-string v1, "ALTER TABLE video ADD video_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1363
    const-string v1, "UPDATE video SET video_id=_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1366
    :cond_12
    const/16 v1, 0x36

    if-ne p2, v1, :cond_13

    .line 1367
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAttachmentsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1369
    :cond_13
    const/16 v1, 0x37

    if-ne p2, v1, :cond_14

    .line 1370
    const-string v1, "ALTER TABLE photos ADD photo_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1371
    const-string v1, "UPDATE photos SET photo_id=_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1372
    const-string v1, "ALTER TABLE photos ADD album_owner_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    :cond_14
    const/16 v1, 0x39

    if-ne p2, v1, :cond_15

    .line 1376
    const-string v1, "ALTER TABLE users ADD relation integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1378
    :cond_15
    const/16 v1, 0x3a

    if-ne p2, v1, :cond_16

    .line 1379
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPollTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1381
    :cond_16
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_17

    .line 1382
    const-string v1, "ALTER TABLE groups ADD photo_medium text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1383
    const-string v1, "ALTER TABLE groups ADD photo_big text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1384
    const-string v1, "UPDATE groups SET photo_medium=photo"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    :cond_17
    const/16 v1, 0x3c

    if-ne p2, v1, :cond_18

    .line 1388
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGroupTopicsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1390
    :cond_18
    const/16 v1, 0x3d

    if-ne p2, v1, :cond_19

    .line 1391
    const-string v1, "ALTER TABLE comments ADD like_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1393
    :cond_19
    const/16 v1, 0x3e

    if-ne p2, v1, :cond_1a

    .line 1394
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAttachmentsIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1395
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1396
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1399
    :cond_1a
    const/16 v1, 0x3f

    if-ne p2, v1, :cond_1b

    .line 1400
    const-string v1, "ALTER TABLE photos ADD src_xbig text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1401
    const-string v1, "ALTER TABLE photos ADD src_xxbig text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1404
    :cond_1b
    const/16 v1, 0x40

    if-ne p2, v1, :cond_1c

    .line 1405
    const-string v1, "ALTER TABLE users ADD last_seen integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    :cond_1c
    const/16 v1, 0x41

    if-ne p2, v1, :cond_1d

    .line 1408
    const-string v1, "ALTER TABLE users ADD albums integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1409
    const-string v1, "ALTER TABLE users ADD videos integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v1, "ALTER TABLE users ADD audios integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string v1, "ALTER TABLE users ADD notes integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v1, "ALTER TABLE users ADD friends integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    const-string v1, "ALTER TABLE users ADD user_photos integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v1, "ALTER TABLE users ADD user_videos integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1417
    :cond_1d
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1e

    .line 1418
    const-string v1, "ALTER TABLE attachments ADD geo_type text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1419
    const-string v1, "ALTER TABLE attachments ADD geo_lat text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1420
    const-string v1, "ALTER TABLE attachments ADD geo_lon text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    :cond_1e
    const/16 v1, 0x44

    if-ne p2, v1, :cond_1f

    .line 1424
    const-string v1, "ALTER TABLE photos ADD src_xxxbig text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1427
    :cond_1f
    const/16 v1, 0x45

    if-ne p2, v1, :cond_20

    .line 1428
    const-string v1, "ALTER TABLE groups ADD description text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    :cond_20
    const/16 v1, 0x46

    if-ne p2, v1, :cond_21

    .line 1432
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createChatMembersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1434
    :cond_21
    const/16 v1, 0x47

    if-ne p2, v1, :cond_22

    .line 1435
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createChatTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1437
    :cond_22
    const/16 v1, 0x48

    if-ne p2, v1, :cond_23

    .line 1438
    const-string v1, "ALTER TABLE users ADD photo_medium_rec text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    :cond_23
    const/16 v1, 0x49

    if-ne p2, v1, :cond_24

    .line 1441
    const-string v1, "ALTER TABLE messages ADD have_attachments integer default 1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1443
    :cond_24
    const/16 v1, 0x4a

    if-ne p2, v1, :cond_25

    .line 1444
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1445
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveLinksTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1448
    :cond_25
    const/16 v1, 0x4b

    if-ne p2, v1, :cond_26

    .line 1449
    const-string v1, "ALTER TABLE attachments ADD message blob"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1451
    :cond_26
    const/16 v1, 0x4c

    if-ne p2, v1, :cond_27

    .line 1452
    const-string v1, "ALTER TABLE users ADD online_mobile integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1454
    :cond_27
    const/16 v1, 0x4d

    if-ne p2, v1, :cond_28

    .line 1455
    const-string v1, "ALTER TABLE photos ADD comments_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1457
    :cond_28
    const/16 v1, 0x4f

    if-ne p2, v1, :cond_29

    .line 1458
    const-string v1, "ALTER TABLE users ADD groups integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    :cond_29
    const/16 v1, 0x51

    if-ne p2, v1, :cond_2a

    .line 1461
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFavePostsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1463
    :cond_2a
    const/16 v1, 0x52

    if-ne p2, v1, :cond_2b

    .line 1464
    const-string v1, "DELETE FROM fave_posts"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1465
    const-string v1, "ALTER TABLE fave_posts ADD owner_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1468
    :cond_2b
    const/16 v1, 0x54

    if-ne p2, v1, :cond_2c

    .line 1469
    const-string v1, "ALTER TABLE attachments ADD video_access_key text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1471
    :cond_2c
    const/16 v1, 0x55

    if-ne p2, v1, :cond_2d

    .line 1472
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createDocsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1474
    :cond_2d
    const/16 v1, 0x56

    if-ne p2, v1, :cond_2e

    .line 1475
    const-string v1, "ALTER TABLE groups ADD name_lower text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1477
    :cond_2e
    const/16 v1, 0x57

    if-ne p2, v1, :cond_2f

    .line 1478
    const-string v1, "ALTER TABLE attachments ADD page_title text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1479
    const-string v1, "ALTER TABLE attachments ADD page_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1480
    const-string v1, "ALTER TABLE attachments ADD page_group_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1483
    :cond_2f
    const/16 v1, 0x58

    if-ne p2, v1, :cond_30

    .line 1484
    const-string v1, "ALTER TABLE wall ADD copy_text text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1485
    const-string v1, "ALTER TABLE news ADD copy_text text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1488
    :cond_30
    const/16 v1, 0x59

    if-ne p2, v1, :cond_31

    .line 1489
    const-string v1, "ALTER TABLE groups ADD wiki text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1491
    :cond_31
    const/16 v1, 0x5a

    if-ne p2, v1, :cond_32

    .line 1492
    const-string v1, "DROP INDEX IF EXISTS index_photos_album_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAlbumPhotoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1496
    :cond_32
    const/16 v1, 0x5b

    if-ne p2, v1, :cond_33

    .line 1497
    const-string v1, "ALTER TABLE video ADD image_big text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1499
    :cond_33
    const/16 v1, 0x5c

    if-ne p2, v1, :cond_34

    .line 1500
    const-string v1, "ALTER TABLE attachments ADD doc_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1502
    :cond_34
    const/16 v1, 0x5d

    if-ne p2, v1, :cond_35

    .line 1503
    const-string v1, "ALTER TABLE wall ADD signer_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1504
    const-string v1, "ALTER TABLE news ADD signer_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    :cond_35
    const/16 v1, 0x5e

    if-ne p2, v1, :cond_36

    .line 1508
    const-string v1, "ALTER TABLE groups ADD fixed_post integer;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1510
    :cond_36
    const/16 v1, 0x5f

    if-ne p2, v1, :cond_37

    .line 1511
    const-string v1, "ALTER TABLE poll ADD anonymous integer;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1513
    :cond_37
    const/16 v1, 0x60

    if-ne p2, v1, :cond_38

    .line 1514
    const-string v1, "DROP INDEX IF EXISTS index_photos_photo_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1515
    const-string v1, "DELETE FROM photos"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1518
    :cond_38
    const/16 v1, 0x61

    if-ne p2, v1, :cond_39

    .line 1519
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1521
    :cond_39
    const/16 v1, 0x62

    if-ne p2, v1, :cond_3a

    .line 1522
    const-string v1, "ALTER TABLE albums ADD thumb_src text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1524
    :cond_3a
    const/16 v1, 0x63

    if-ne p2, v1, :cond_3b

    .line 1525
    const-string v1, "DELETE FROM albums"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1526
    const-string v1, "ALTER TABLE albums ADD album_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1529
    :cond_3b
    const/16 v1, 0x64

    if-ne p2, v1, :cond_3c

    .line 1530
    const-string v1, "ALTER TABLE users ADD followers integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1532
    :cond_3c
    const/16 v1, 0x65

    if-ne p2, v1, :cond_3d

    .line 1533
    const-string v1, "ALTER TABLE photos ADD width integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1534
    const-string v1, "ALTER TABLE photos ADD height integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1537
    :cond_3d
    const/16 v1, 0x66

    if-ne p2, v1, :cond_3e

    .line 1538
    const-string v1, "ALTER TABLE news ADD reposts_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1539
    const-string v1, "ALTER TABLE news ADD user_reposted integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1540
    const-string v1, "ALTER TABLE wall ADD reposts_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1543
    :cond_3e
    const/16 v1, 0x67

    if-ne p2, v1, :cond_3f

    .line 1544
    const-string v1, "ALTER TABLE groups ADD can_see_all_posts integer default 1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1546
    :cond_3f
    const/16 v1, 0x68

    if-ne p2, v1, :cond_40

    .line 1547
    const-string v1, "ALTER TABLE user_group ADD admin_level integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1549
    :cond_40
    const/16 v1, 0x69

    if-ne p2, v1, :cond_41

    .line 1550
    const-string v1, "ALTER TABLE docs ADD title_lower text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    :cond_41
    const/16 v1, 0x6a

    if-ne p2, v1, :cond_42

    .line 1553
    const-string v1, "ALTER TABLE users ADD photo_200 text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1555
    :cond_42
    const/16 v1, 0x6b

    if-ne p2, v1, :cond_43

    .line 1556
    const-string v1, "ALTER TABLE wall ADD post_type integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1558
    :cond_43
    const/16 v1, 0x6c

    if-ne p2, v1, :cond_44

    .line 1559
    const-string v1, "ALTER TABLE groups ADD members_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1561
    :cond_44
    const/16 v1, 0x6d

    if-ne p2, v1, :cond_45

    .line 1562
    const-string v1, "ALTER TABLE video ADD views integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    :cond_45
    const/16 v1, 0x6e

    if-ne p2, v1, :cond_46

    .line 1565
    const-string v1, "ALTER TABLE groups ADD type integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1567
    :cond_46
    const/16 v1, 0x6f

    if-ne p2, v1, :cond_47

    .line 1568
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1570
    :cond_47
    const/16 v1, 0x70

    if-ne p2, v1, :cond_48

    .line 1571
    const-string v1, "ALTER TABLE chat ADD photo_100 text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1573
    :cond_48
    const/16 v1, 0x71

    if-ne p2, v1, :cond_49

    .line 1574
    const-string v1, "ALTER TABLE video ADD likes_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1576
    :cond_49
    const/16 v1, 0x72

    if-ne p2, v1, :cond_4a

    .line 1577
    const-string v1, "ALTER TABLE chat ADD chat_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v1, "ALTER TABLE chat ADD account_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1581
    :cond_4a
    const/16 v1, 0x73

    if-ne p2, v1, :cond_4b

    .line 1582
    const-string v1, "ALTER TABLE groups ADD start_date integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    :cond_4b
    const/16 v1, 0x74

    if-ne p2, v1, :cond_4c

    .line 1585
    const-string v1, "ALTER TABLE messages ADD important integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1587
    :cond_4c
    const/16 v1, 0x75

    if-ne p2, v1, :cond_4d

    .line 1588
    const-string v1, "ALTER TABLE users ADD online_friends integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1590
    :cond_4d
    const/16 v1, 0x76

    if-ne p2, v1, :cond_4e

    .line 1591
    const-string v1, "ALTER TABLE wall ADD is_pinned integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1593
    :cond_4e
    const/16 v1, 0x77

    if-ne p2, v1, :cond_4f

    .line 1594
    const-string v1, "ALTER TABLE groups ADD status text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1596
    :cond_4f
    const/16 v1, 0x78

    if-ne p2, v1, :cond_50

    .line 1597
    const-string v1, "ALTER TABLE groups ADD photos integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1598
    const-string v1, "ALTER TABLE groups ADD albums integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1599
    const-string v1, "ALTER TABLE groups ADD topics integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1600
    const-string v1, "ALTER TABLE groups ADD videos integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1601
    const-string v1, "ALTER TABLE groups ADD audios integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1602
    const-string v1, "ALTER TABLE groups ADD docs integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    :cond_50
    const/16 v1, 0x79

    if-ne p2, v1, :cond_51

    .line 1606
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoInAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1608
    const-string v1, "DELETE FROM video"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1611
    :cond_51
    const/16 v1, 0x7a

    if-ne p2, v1, :cond_52

    .line 1612
    const-string v1, "ALTER TABLE users ADD gifts integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1614
    :cond_52
    const/16 v1, 0x7b

    if-ne p2, v1, :cond_53

    .line 1615
    const-string v1, "ALTER TABLE fave_links ADD link_id text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1617
    :cond_53
    const/16 v1, 0x7c

    if-ne p2, v1, :cond_54

    .line 1620
    :try_start_0
    const-string v1, "ALTER TABLE audio_cache ADD position integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    const-string v1, "UPDATE audio_cache SET position=_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1628
    :cond_54
    const/16 v1, 0x7d

    if-ne p2, v1, :cond_55

    .line 1629
    const-string v1, "ALTER TABLE messages ADD action integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    const-string v1, "ALTER TABLE messages ADD action_mid integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1631
    const-string v1, "ALTER TABLE messages ADD action_text text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1634
    :cond_55
    const/16 v1, 0x7e

    if-ne p2, v1, :cond_56

    .line 1635
    const-string v1, "ALTER TABLE chat ADD unread_count integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1637
    :cond_56
    const/16 v1, 0x7f

    if-ne p2, v1, :cond_57

    .line 1638
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1640
    :cond_57
    const/16 v1, 0x80

    if-ne p2, v1, :cond_58

    .line 1641
    const-string v1, "ALTER TABLE users ADD posts integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    :cond_58
    const/16 v1, 0x81

    if-ne p2, v1, :cond_59

    .line 1644
    const-string v1, "ALTER TABLE groups ADD posts integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1646
    :cond_59
    const/16 v1, 0x82

    if-ne p2, v1, :cond_5a

    .line 1647
    const-string v1, "ALTER TABLE users ADD photo_400_orig text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1649
    :cond_5a
    const/16 v1, 0x83

    if-ne p2, v1, :cond_5b

    .line 1650
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioAlbumsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1652
    :cond_5b
    const/16 v1, 0x84

    if-ne p2, v1, :cond_5c

    .line 1653
    const-string v1, "ALTER TABLE users ADD verified integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1655
    :cond_5c
    const/16 v1, 0x85

    if-ne p2, v1, :cond_5d

    .line 1656
    const-string v1, "ALTER TABLE groups ADD verified integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    :cond_5d
    const/16 v1, 0x86

    if-ne p2, v1, :cond_5e

    .line 1659
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioInListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1661
    :cond_5e
    const/16 v1, 0x87

    if-ne p2, v1, :cond_5f

    .line 1662
    const-string v1, "ALTER TABLE users ADD mutual_friends integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    :cond_5f
    const/16 v1, 0x88

    if-ne p2, v1, :cond_60

    .line 1665
    const-string v1, "ALTER TABLE groups ADD can_message integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    :cond_60
    const/16 v1, 0x89

    if-ne p2, v1, :cond_61

    .line 1668
    const-string v1, "ALTER TABLE groups ADD market_enabled integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1669
    const-string v1, "ALTER TABLE groups ADD market_contact_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1670
    const-string v1, "ALTER TABLE groups ADD market_wiki_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1671
    const-string v1, "ALTER TABLE groups ADD market_wiki_title text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1674
    :cond_61
    const/16 v1, 0x8a

    if-ne p2, v1, :cond_62

    .line 1675
    const-string v1, "ALTER TABLE users ADD photos integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1677
    :cond_62
    const/16 v1, 0x8b

    if-ne p2, v1, :cond_63

    .line 1678
    const-string v1, "ALTER TABLE albums ADD privacy_str text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1680
    :cond_63
    const/16 v1, 0x8c

    if-ne p2, v1, :cond_64

    .line 1681
    const-string v1, "ALTER TABLE messages ADD group_id integer not null default 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1682
    const-string v1, "ALTER TABLE chat ADD group_id integer not null default 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1683
    const-string v1, "DROP INDEX IF EXISTS index_messages_1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1684
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1687
    :cond_64
    const/16 v1, 0x8d

    if-ne p2, v1, :cond_65

    .line 1688
    const-string v1, "ALTER TABLE photos RENAME TO photos_old"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1689
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotosTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1692
    :cond_65
    const/16 v1, 0x8e

    if-ne p2, v1, :cond_66

    .line 1693
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1695
    :cond_66
    const/16 v1, 0x8f

    if-ne p2, v1, :cond_67

    .line 1696
    const-string v1, "ALTER TABLE docs ADD doc_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1702
    :cond_67
    const/16 v1, 0x90

    if-ne p2, v1, :cond_68

    .line 1703
    const-string v1, "ALTER TABLE users ADD crop_photo_rect_x1 real"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1704
    const-string v1, "ALTER TABLE users ADD crop_photo_rect_x2 real"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1705
    const-string v1, "ALTER TABLE users ADD crop_photo_rect_y1 real"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1706
    const-string v1, "ALTER TABLE users ADD crop_photo_rect_y2 real"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1709
    :cond_68
    const/16 v1, 0x91

    if-ne p2, v1, :cond_69

    .line 1713
    const-string v1, "ALTER TABLE news_photo ADD photo_owner_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1714
    const-string v1, "ALTER TABLE news_phototags ADD photo_owner_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1717
    :cond_69
    const/16 v1, 0x92

    if-ne p2, v1, :cond_6a

    .line 1722
    const-string v1, "ALTER TABLE albumphoto ADD photo_owner_id integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1725
    :cond_6a
    const/16 v1, 0x93

    if-ne p2, v1, :cond_6b

    .line 1726
    const-string v1, "ALTER TABLE groups ADD cover_400 text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    const-string v1, "ALTER TABLE groups ADD cover_800 text"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1730
    :cond_6b
    const/16 v1, 0x94

    if-ne p2, v1, :cond_6c

    .line 1731
    const-string v1, "ALTER TABLE wall ADD views integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1732
    const-string v1, "ALTER TABLE news ADD views integer"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1734
    :cond_6c
    return-void

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1623
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 606
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createNewsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 607
    const-string v0, "create table friends(_id integer primary key, owner_id integer, friend_id integer);"

    .line 613
    .local v0, "DATABASE_CREATE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotosTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 615
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPhotoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 616
    const-string v0, "create table news_photo(_id integer primary key, news_id integer, photo_id integer,photo_owner_id integer);"

    .line 623
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string v0, "create table news_phototags(_id integer primary key, news_id integer, photo_id integer,photo_owner_id integer);"

    .line 631
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    const-string v0, "create table news_friend(_id integer primary key, news_id integer, user_id integer);"

    .line 638
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    const-string v0, "create table news_note(_id integer primary key, news_id integer, note_id integer);"

    .line 645
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createCommentsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 648
    const-string v0, "create table albums(_id integer primary key, album_id integer, thumb_id integer, owner_id integer, title text, description text, created integer, updated integer, size integer, privacy_str text, thumb_src text);"

    .line 662
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 663
    const-string v0, "create table notes(_id integer primary key, comments integer, comments_read integer, title text, text text, date integer, from_id integer );"

    .line 673
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 674
    const-string v0, "create table cities(_id integer primary key, name text );"

    .line 679
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    const-string v0, "create table countries(_id integer primary key, name text );"

    .line 685
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 687
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGraffitiTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createUserGroupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 691
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 692
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createWallLikeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 693
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createChatMembersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 694
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createChatTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAttachmentsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createPollTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 697
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createGroupTopicsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 698
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAttachmentsIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 699
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 700
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 701
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createMessagesIndex1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 702
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveUsersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 703
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFaveLinksTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 704
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createFavePostsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 705
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createDocsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 706
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAlbumPhotoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoInAlbumTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createVideoCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioAlbumsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->createAudioInListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 712
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1260
    const-string v2, "Kate.DataHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/16 v2, 0x1c

    if-ge p2, v2, :cond_1

    .line 1263
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->recreateAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 1268
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->update(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->recreateAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1272
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1273
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method setWriteAheadLoggingEnabledWithReflection(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 582
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 601
    :goto_0
    return-void

    .line 585
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 586
    .local v3, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v5, "setWriteAheadLoggingEnabled"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 587
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 588
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    .line 589
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 590
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 594
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 596
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 598
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 599
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
