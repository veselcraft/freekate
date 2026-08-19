.class public Lcom/perm/kate/db/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    iput-object p1, p0, Lcom/perm/kate/db/DataHelper;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private audioCursorToArray(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 12

    const-string v0, "audio_id"

    .line 4346
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "artist"

    .line 4347
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "duration"

    .line 4348
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "owner_id"

    .line 4349
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    .line 4350
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    .line 4351
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "lyrics_id"

    .line 4352
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "genre_id"

    .line 4353
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4354
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4355
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4356
    new-instance v9, Lcom/perm/kate/api/Audio;

    invoke-direct {v9}, Lcom/perm/kate/api/Audio;-><init>()V

    .line 4357
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/perm/kate/api/Audio;->aid:J

    .line 4358
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 4359
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/perm/kate/api/Audio;->duration:J

    .line 4360
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 4361
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 4362
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 4363
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    .line 4364
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4365
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/perm/kate/api/Audio;->track_genre_id:I

    .line 4366
    :cond_0
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method private contentTypeToLikeType(J)I
    .locals 1

    long-to-int p2, p1

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, p1, :cond_1

    if-eq p2, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x7

    return p1

    :cond_1
    return v0

    :cond_2
    return p1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x3

    return p1
.end method

.method private createAttachedObjects(Ljava/util/ArrayList;J)V
    .locals 3

    .line 3614
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 3616
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v1, :cond_1

    .line 3617
    invoke-virtual {p0, v1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 3622
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    if-eqz v1, :cond_2

    .line 3623
    invoke-virtual {p0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateNote(Lcom/perm/kate/api/Note;)V

    .line 3627
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_3

    .line 3628
    invoke-virtual {p0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 3629
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v1, :cond_0

    .line 3631
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 3632
    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    invoke-virtual {p0, v0, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePoll(Lcom/perm/kate/api/VkPoll;J)V

    const-string v0, "dh_createOrUpdatePoll"

    .line 3633
    invoke-static {v1, v2, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3640
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3641
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private createFriendsInternal(JLjava/util/ArrayList;)V
    .locals 5

    .line 2726
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT INTO friends(owner_id, friend_id) VALUES(?,?)"

    .line 2727
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2728
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    const/4 v2, 0x1

    .line 2729
    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    .line 2730
    iget-wide v3, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2731
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 2733
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method private createNewsInternal(Lcom/perm/kate/api/Newsfeed;JI)V
    .locals 11

    .line 2901
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2902
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 2903
    invoke-virtual {p0, v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    goto :goto_0

    .line 2904
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2905
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Group;

    .line 2906
    invoke-virtual {p0, v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    goto :goto_1

    .line 2907
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/NewsItem;

    .line 2908
    invoke-static {v0}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/NewsItem;)V

    .line 2909
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createAttachedObjects(Ljava/util/ArrayList;J)V

    .line 2910
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->createNewsItem(Lcom/perm/kate/api/NewsItem;JI)J

    move-result-wide v9

    .line 2911
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2912
    invoke-virtual {p0, v1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 2913
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    .line 2914
    iget-wide v5, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v2, p0

    move-wide v3, v9

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->createNewsPhoto(JJJ)J

    goto :goto_2

    .line 2916
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2917
    invoke-virtual {p0, v1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 2918
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    .line 2919
    iget-wide v5, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v2, p0

    move-wide v3, v9

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->createNewsPhotoTag(JJJ)J

    goto :goto_3

    .line 2921
    :cond_4
    iget-object v0, v0, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2922
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2923
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v9, v10, v1, v2}, Lcom/perm/kate/db/DataHelper;->createNewsFriend(JJ)J

    goto :goto_4

    :cond_5
    return-void
.end method

.method private createOrUpdateGroupTopic(Lcom/perm/kate/api/GroupTopic;)V
    .locals 1

    .line 5943
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateGroupTopic(Lcom/perm/kate/api/GroupTopic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5944
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J

    :cond_0
    return-void
.end method

.method private cursorToVideoArray(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 13

    .line 5717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "views"

    .line 5718
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "image_big"

    .line 5719
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "likes_count"

    .line 5720
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "like"

    .line 5721
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "platform"

    .line 5722
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 5723
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5724
    new-instance v6, Lcom/perm/kate/api/Video;

    invoke-direct {v6}, Lcom/perm/kate/api/Video;-><init>()V

    const-string v7, "title"

    .line 5725
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    const-string v7, "description"

    .line 5726
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    const-string v7, "duration"

    .line 5727
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Video;->duration:J

    const-string v7, "owner_id"

    .line 5728
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Video;->owner_id:J

    const-string v7, "player_url"

    .line 5729
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const-string v7, "video_id"

    .line 5730
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Video;->vid:J

    const-string v7, "image"

    .line 5731
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 5733
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Lcom/perm/kate/api/Video;->views:I

    .line 5734
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    if-eq v3, v7, :cond_1

    .line 5736
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    :cond_1
    if-eq v4, v7, :cond_3

    .line 5738
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v12, v8, v10

    if-nez v12, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    :cond_3
    if-eq v5, v7, :cond_4

    .line 5742
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    .line 5743
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public static deserializeAttachments([BJ)Ljava/util/ArrayList;
    .locals 13

    .line 5019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 5025
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5026
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5028
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 5029
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1b

    .line 5031
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 5032
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "photo"

    .line 5033
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "posted_photo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 5043
    :cond_1
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "link"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5044
    new-instance v6, Lcom/perm/kate/api/Link;

    invoke-direct {v6}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 5045
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    .line 5046
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    .line 5047
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    .line 5048
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 5049
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5051
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    new-instance v7, Lcom/perm/kate/api/Photo;

    invoke-direct {v7}, Lcom/perm/kate/api/Photo;-><init>()V

    iput-object v7, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    .line 5052
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Photo;->pid:J

    .line 5053
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 5054
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 5055
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 5056
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/Photo;->width:I

    .line 5057
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/Photo;->height:I

    .line 5059
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5060
    :cond_3
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "doc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5061
    new-instance v6, Lcom/perm/kate/api/Document;

    invoke-direct {v6}, Lcom/perm/kate/api/Document;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    .line 5062
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Document;->id:J

    .line 5063
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Document;->owner_id:J

    .line 5064
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    .line 5065
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Document;->size:J

    .line 5066
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    .line 5067
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    .line 5068
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    .line 5069
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    .line 5070
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Document;->thumb_o:Ljava/lang/String;

    .line 5071
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5072
    :cond_4
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x5

    if-eqz v6, :cond_8

    .line 5073
    new-instance v6, Lcom/perm/kate/api/Audio;

    invoke-direct {v6}, Lcom/perm/kate/api/Audio;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 5074
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/perm/kate/api/Audio;->aid:J

    .line 5075
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 5076
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 5077
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 5078
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 5079
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/perm/kate/api/Audio;->duration:J

    .line 5080
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v6, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    .line 5081
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v6, v6, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_5

    .line 5082
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iput-object v1, v6, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    :cond_5
    if-le v2, v7, :cond_6

    .line 5084
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    :cond_6
    if-le v2, v8, :cond_7

    .line 5086
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    .line 5087
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5088
    :cond_8
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v9, "video"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5089
    new-instance v6, Lcom/perm/kate/api/Video;

    invoke-direct {v6}, Lcom/perm/kate/api/Video;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 5090
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/perm/kate/api/Video;->vid:J

    .line 5091
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/perm/kate/api/Video;->owner_id:J

    .line 5092
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    .line 5093
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 5094
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/perm/kate/api/Video;->duration:J

    .line 5095
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    .line 5096
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 5097
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    if-lt v2, v7, :cond_9

    .line 5101
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    .line 5102
    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5112
    :cond_a
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "note"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5113
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 5114
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchNote(J)Lcom/perm/kate/api/Note;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    if-eqz v6, :cond_1a

    .line 5116
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5117
    :cond_b
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "poll"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5118
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 5119
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v6, v7, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v6, :cond_1a

    .line 5121
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5122
    :cond_c
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "geo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5123
    new-instance v6, Lcom/perm/kate/api/Geo;

    invoke-direct {v6}, Lcom/perm/kate/api/Geo;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    .line 5124
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Geo;->type:Ljava/lang/String;

    .line 5125
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    .line 5126
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    .line 5127
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5128
    :cond_d
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "page"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 5129
    new-instance v6, Lcom/perm/kate/api/Page;

    invoke-direct {v6}, Lcom/perm/kate/api/Page;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    .line 5130
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    .line 5131
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Page;->id:J

    .line 5132
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Page;->group_id:J

    .line 5133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5134
    :cond_e
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "album"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 5135
    new-instance v6, Lcom/perm/kate/api/Album;

    invoke-direct {v6}, Lcom/perm/kate/api/Album;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    .line 5136
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Album;->aid:J

    .line 5137
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Album;->owner_id:J

    .line 5138
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 5139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5140
    :cond_f
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "wall_reply"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 5141
    new-instance v6, Lcom/perm/kate/api/Comment;

    invoke-direct {v6}, Lcom/perm/kate/api/Comment;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    .line 5142
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Comment;->cid:J

    .line 5143
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    new-instance v7, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v7}, Lcom/perm/kate/api/WallMessage;-><init>()V

    iput-object v7, v6, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    .line 5144
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v6, v6, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/WallMessage;->id:J

    .line 5145
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v6, v6, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 5146
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 5147
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5148
    :cond_10
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "sticker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-ge v2, v8, :cond_11

    goto/16 :goto_2

    .line 5151
    :cond_11
    new-instance v6, Lcom/perm/kate/api/Sticker;

    invoke-direct {v6}, Lcom/perm/kate/api/Sticker;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    .line 5152
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Sticker;->id:J

    .line 5153
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    .line 5154
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    .line 5155
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 5156
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Sticker;->animation_url:Ljava/lang/String;

    .line 5157
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5158
    :cond_12
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "gift"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    if-ge v2, v8, :cond_13

    goto/16 :goto_2

    .line 5161
    :cond_13
    new-instance v6, Lcom/perm/kate/api/Gift;

    invoke-direct {v6}, Lcom/perm/kate/api/Gift;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    .line 5162
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Gift;->id:J

    .line 5163
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    .line 5164
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5165
    :cond_14
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-ge v2, v8, :cond_15

    goto :goto_2

    .line 5172
    :cond_15
    invoke-static {p0}, Lcom/perm/kate/ForwardedMessagesActivity;->deserialize(Ljava/io/DataInputStream;)Lcom/perm/kate/api/Message;

    move-result-object v6

    if-eqz v6, :cond_16

    const/4 v7, 0x1

    .line 5175
    iput-boolean v7, v6, Lcom/perm/kate/api/Message;->read_state:Z

    .line 5176
    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 5178
    :cond_16
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5179
    :cond_17
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    if-ge v2, v8, :cond_18

    goto :goto_2

    .line 5184
    :cond_18
    invoke-static {p0}, Lcom/perm/kate/WallMessageActivity;->deserialize(Ljava/io/DataInputStream;)Lcom/perm/kate/api/WallMessage;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    .line 5185
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5034
    :cond_19
    :goto_1
    new-instance v6, Lcom/perm/kate/api/Photo;

    invoke-direct {v6}, Lcom/perm/kate/api/Photo;-><init>()V

    iput-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 5035
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perm/kate/api/Photo;->pid:J

    .line 5036
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 5037
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    .line 5038
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 5039
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 5040
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/Photo;->width:I

    .line 5041
    iget-object v6, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/Photo;->height:I

    .line 5042
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 5188
    :cond_1b
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 5193
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5194
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static deserializeStats([B)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3007
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3008
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3010
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 3011
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 3012
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 3014
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 3015
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v3

    const/4 v5, 0x1

    aput-object v6, v7, v5

    .line 3016
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3018
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 3023
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3024
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getSerializationLimit()I
    .locals 2

    .line 5201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const/16 v0, 0xb

    return v0

    :cond_1
    const/16 v1, 0x19

    if-gt v0, v1, :cond_2

    const/16 v0, 0x11

    return v0

    :cond_2
    const/16 v0, 0x16

    return v0
.end method

.method private limitAttachmentsDepth(Lcom/perm/kate/api/Message;I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 5215
    :try_start_0
    iget-object p1, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    goto :goto_1

    .line 5217
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    const-string v1, "message"

    .line 5218
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez p2, :cond_2

    .line 5220
    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->limitAttachmentsDepth(Lcom/perm/kate/api/Message;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5222
    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    const-string v0, "LIMIT_ATT_DEPTH"

    const/4 v2, 0x1

    .line 5223
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportEvent(Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5227
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5228
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static repostCompatibilityHack(Lcom/perm/kate/api/NewsItem;)V
    .locals 6

    .line 4508
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 4511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/WallMessage;

    iget-object v4, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nhttp://vk.com/wall"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4513
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4514
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    .line 4515
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    .line 4516
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 4518
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4520
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4521
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 4523
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4525
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    iput-wide v0, p0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    .line 4526
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->id:J

    iput-wide v0, p0, Lcom/perm/kate/api/NewsItem;->copy_post_id:J

    :cond_3
    const/4 v0, 0x0

    .line 4529
    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method public static repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V
    .locals 6

    if-eqz p0, :cond_4

    .line 4479
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4481
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 4482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/WallMessage;

    iget-object v4, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nhttp://vk.com/wall"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4484
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4485
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 4486
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4488
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 4490
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4492
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4493
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 4495
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4498
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    iput-wide v0, p0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    :cond_3
    const/4 v0, 0x0

    .line 4502
    iput-object v0, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method private serializeAttachments(Ljava/util/List;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 4888
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_11

    .line 4891
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4892
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x6

    .line 4893
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4894
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4895
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Attachment;

    .line 4896
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4897
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-eqz v4, :cond_5

    .line 4898
    :try_start_1
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v6, v4, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4899
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4900
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4901
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4902
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v5, v4

    :cond_4
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4903
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget v4, v4, Lcom/perm/kate/api/Photo;->width:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 4904
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget v3, v3, Lcom/perm/kate/api/Photo;->height:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 4905
    :cond_5
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "link"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4910
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4911
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4912
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    move-object v4, v5

    :goto_5
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4913
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4914
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 4915
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v4, :cond_1

    .line 4916
    iget-wide v6, v4, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4917
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4918
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    move-object v4, v5

    :goto_7
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4919
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object v5, v4

    :cond_b
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4920
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v4, v4, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    iget v4, v4, Lcom/perm/kate/api/Photo;->width:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 4921
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v3, v3, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    iget v3, v3, Lcom/perm/kate/api/Photo;->height:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_0

    .line 4923
    :cond_c
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "doc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4924
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v6, v4, Lcom/perm/kate/api/Document;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4925
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v6, v4, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4926
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v4, v4, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    if-eqz v4, :cond_d

    goto :goto_8

    :cond_d
    move-object v4, v5

    :goto_8
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4927
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v6, v4, Lcom/perm/kate/api/Document;->size:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4928
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v4, v4, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4930
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v4, v4, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4931
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v4, v4, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    if-eqz v4, :cond_e

    goto :goto_9

    :cond_e
    move-object v4, v5

    :goto_9
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4932
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v4, v4, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    if-eqz v4, :cond_f

    goto :goto_a

    :cond_f
    move-object v4, v5

    :goto_a
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4933
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v3, v3, Lcom/perm/kate/api/Document;->thumb_o:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object v5, v3

    :cond_10
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4934
    :cond_11
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "audio"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4935
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v6, v4, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4936
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v6, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4937
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4938
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4939
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4940
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v6, v4, Lcom/perm/kate/api/Audio;->duration:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4941
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_b

    :cond_12
    const-wide/16 v6, -0x1

    :goto_b
    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4942
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    if-eqz v4, :cond_13

    goto :goto_c

    :cond_13
    move-object v4, v5

    :goto_c
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4944
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v3, v3, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    if-eqz v3, :cond_14

    move-object v5, v3

    :cond_14
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4946
    :cond_15
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4947
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v6, v4, Lcom/perm/kate/api/Video;->vid:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4948
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v6, v4, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4949
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v4, v4, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    if-eqz v4, :cond_16

    goto :goto_d

    :cond_16
    move-object v4, v5

    :goto_d
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4950
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v4, v4, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4951
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v6, v4, Lcom/perm/kate/api/Video;->duration:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4953
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v4, v4, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    if-eqz v4, :cond_17

    goto :goto_e

    :cond_17
    move-object v4, v5

    :goto_e
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4954
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v4, v4, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    if-eqz v4, :cond_18

    goto :goto_f

    :cond_18
    move-object v4, v5

    :goto_f
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4955
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v4, v4, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    if-eqz v4, :cond_19

    goto :goto_10

    :cond_19
    move-object v4, v5

    :goto_10
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4956
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v3, v3, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    if-eqz v3, :cond_1a

    move-object v5, v3

    :cond_1a
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4964
    :cond_1b
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "note"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4965
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-wide v3, v3, Lcom/perm/kate/api/Note;->nid:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_0

    .line 4966
    :cond_1c
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "poll"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 4967
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v3, v3, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_0

    .line 4968
    :cond_1d
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "geo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 4969
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v4, v4, Lcom/perm/kate/api/Geo;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4970
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v4, v4, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4971
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v3, v3, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4972
    :cond_1e
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "page"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4973
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    iget-object v4, v4, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4974
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    iget-wide v4, v4, Lcom/perm/kate/api/Page;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4975
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    iget-wide v3, v3, Lcom/perm/kate/api/Page;->group_id:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_0

    .line 4976
    :cond_1f
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "album"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4977
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v4, v4, Lcom/perm/kate/api/Album;->aid:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4978
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v4, v4, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4979
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-object v3, v3, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4980
    :cond_20
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "wall_reply"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4981
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v4, v4, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4982
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v4, v4, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4983
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v4, v4, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4984
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v3, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4985
    :cond_21
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "sticker"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4986
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-wide v6, v4, Lcom/perm/kate/api/Sticker;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4987
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v4, v4, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4988
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v4, v4, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4989
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v4, v4, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 4990
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v3, v3, Lcom/perm/kate/api/Sticker;->animation_url:Ljava/lang/String;

    if-eqz v3, :cond_22

    move-object v5, v3

    :cond_22
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4991
    :cond_23
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "gift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 4992
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    iget-wide v4, v4, Lcom/perm/kate/api/Gift;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 4993
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    iget-object v3, v3, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4994
    :cond_24
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 5000
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    invoke-direct {p0}, Lcom/perm/kate/db/DataHelper;->getSerializationLimit()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->limitAttachmentsDepth(Lcom/perm/kate/api/Message;I)V

    .line 5001
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {p0, v3}, Lcom/perm/kate/db/DataHelper;->serialize(Ljava/io/Serializable;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_0

    .line 5002
    :cond_25
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "wall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5003
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    invoke-static {v4}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 5004
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    invoke-virtual {p0, v3}, Lcom/perm/kate/db/DataHelper;->serialize(Ljava/io/Serializable;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_0

    .line 5007
    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5012
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5013
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_27
    :goto_11
    return-object v0
.end method

.method private serializeStats(Ljava/util/List;)[B
    .locals 5

    .line 2982
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2983
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    .line 2984
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2985
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2986
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2987
    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2988
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 2990
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2995
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2996
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private toArg(J)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2502
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method


# virtual methods
.method public DeleteAndCreateVideos(JJLjava/util/ArrayList;J)V
    .locals 3

    .line 5613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5614
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5615
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5617
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->deleteVideosInAlbum(JJ)V

    .line 5618
    invoke-virtual {p0, p5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideos(Ljava/util/ArrayList;)V

    .line 5619
    invoke-virtual {p0, p5, p6, p7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideoUserLikes(Ljava/util/ArrayList;J)V

    .line 5620
    invoke-virtual/range {p0 .. p5}, Lcom/perm/kate/db/DataHelper;->createVideosInAlbum(JJLjava/util/ArrayList;)V

    .line 5621
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5623
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 5626
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DeleteAndCreateVideos duration "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kate.DataHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 5623
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5624
    throw p1
.end method

.method public adEventExists(III)Z
    .locals 11

    .line 7065
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "type"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    int-to-long v6, p1

    .line 7068
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v10

    int-to-long p1, p2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    const-string v2, "ad_events"

    const-string v4, "type=? AND ads_id1=? AND ads_id2=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 7066
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7069
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7070
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public addVideoToCache(JJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 6849
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->addVideoToCache(JJI)V

    return-void
.end method

.method public addVideoToCache(JJI)V
    .locals 1

    .line 6853
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6854
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6855
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6856
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "status"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6858
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "video_cache"

    const/4 p3, 0x0

    .line 6859
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public addVideosToCache(Ljava/util/ArrayList;)V
    .locals 8

    .line 6864
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6865
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6867
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 6868
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/db/DataHelper;->addVideoToCache(JJI)V

    goto :goto_0

    .line 6869
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6871
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6872
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public cleanAdEvents()V
    .locals 5

    .line 7095
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->millisToEventTime(J)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_events"

    const-string v3, "date<= ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public clearCache()V
    .locals 2

    .line 1672
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1673
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "DELETE FROM users"

    .line 1675
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM news"

    .line 1676
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM friends"

    .line 1677
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM photos"

    .line 1678
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM news_photo"

    .line 1679
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM news_phototags"

    .line 1680
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM news_friend"

    .line 1681
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM news_note"

    .line 1682
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM messages"

    .line 1683
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM comments"

    .line 1684
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM albums"

    .line 1685
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM notes"

    .line 1686
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM cities"

    .line 1687
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM countries"

    .line 1688
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM audio WHERE audio_id in (select au.audio_id from audio as au left join audio_cache as ac on ac.audio_id=au.audio_id where ac._id is NULL)"

    .line 1690
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM wall"

    .line 1691
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM graffiti"

    .line 1692
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM groups"

    .line 1693
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM user_group"

    .line 1694
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM video WHERE _id in (select v._id from video as v left join video_cache as vc on vc.video_id=v.video_id AND vc.owner_id=v.owner_id where vc._id is NULL)"

    .line 1696
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM wall_like"

    .line 1697
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM attachments"

    .line 1698
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM poll"

    .line 1699
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM chat"

    .line 1700
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM group_topics"

    .line 1701
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM chat_members"

    .line 1702
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM fave_users"

    .line 1703
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM fave_links"

    .line 1704
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM fave_posts"

    .line 1705
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM docs"

    .line 1706
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM albumphoto"

    .line 1707
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM video_in_album"

    .line 1708
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM audio_albums"

    .line 1709
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM audio_in_list"

    .line 1710
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM fave_groups"

    .line 1711
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1716
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->vacuum()V

    return-void

    :catchall_0
    move-exception v1

    .line 1714
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1715
    throw v1
.end method

.method public clearVideoCache()V
    .locals 2

    .line 6943
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM video_cache"

    .line 6944
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public createAdEvent(III)V
    .locals 2

    .line 7076
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7077
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7078
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "ads_id1"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7079
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "ads_id2"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7080
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->millisToEventTime(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7082
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "ad_events"

    const/4 p3, 0x0

    .line 7083
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public createAlbum(Lcom/perm/kate/api/Album;)J
    .locals 3

    .line 4058
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4059
    iget-wide v1, p1, Lcom/perm/kate/api/Album;->aid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "album_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4061
    iget-wide v1, p1, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4062
    iget-object v1, p1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    iget-object v1, p1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    iget-wide v1, p1, Lcom/perm/kate/api/Album;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4068
    iget-object v1, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_0

    .line 4069
    invoke-virtual {v1}, Lcom/perm/kate/api/Privacy;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_str"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Album;->comment_privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_1

    .line 4071
    invoke-virtual {v1}, Lcom/perm/kate/api/Privacy;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, "thumb_src"

    .line 4073
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "albums"

    .line 4076
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createAlbumPhoto(JJJJ)J
    .locals 1

    .line 6589
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6590
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "album_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6591
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "album_owner_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6592
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6593
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6595
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "albumphoto"

    const/4 p3, 0x0

    .line 6596
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createAlbumPhotos(Ljava/util/ArrayList;JJ)V
    .locals 12

    move-object v10, p0

    .line 6577
    iget-object v0, v10, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 6578
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6580
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 6581
    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object v1, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createAlbumPhoto(JJJJ)J

    goto :goto_0

    .line 6582
    :cond_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6584
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6585
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public createAlbums(Ljava/util/ArrayList;)V
    .locals 1

    .line 4097
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Album;

    .line 4098
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createAlbum(Lcom/perm/kate/api/Album;)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createAudio(Lcom/perm/kate/api/Audio;)J
    .locals 3

    .line 4392
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4393
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "audio_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4394
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4395
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    const-string v2, "artist"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4396
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4397
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4398
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    const-string v2, "lyrics_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4400
    iget p1, p1, Lcom/perm/kate/api/Audio;->track_genre_id:I

    if-eqz p1, :cond_0

    .line 4401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "genre_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4402
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "audio"

    .line 4403
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createAudioAlbum(Lcom/perm/kate/api/AudioAlbum;)J
    .locals 3

    .line 6949
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6950
    iget-wide v1, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "album_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6951
    iget-wide v1, p1, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6952
    iget-object v1, p1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6953
    iget-object p1, p1, Lcom/perm/kate/api/AudioAlbum;->photo:Ljava/lang/String;

    const-string v1, "photo"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6954
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "audio_albums"

    const/4 v2, 0x0

    .line 6955
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createAudioAlbums(Ljava/util/ArrayList;)V
    .locals 1

    .line 6959
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    .line 6960
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createAudioAlbum(Lcom/perm/kate/api/AudioAlbum;)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createAudioInList(JJJ)J
    .locals 1

    .line 7036
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7037
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "list_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7038
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "list_owner_id"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7039
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "audio_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7041
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "audio_in_list"

    const/4 p3, 0x0

    .line 7042
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createAudiosInList(Ljava/util/ArrayList;JJ)V
    .locals 9

    .line 7024
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7025
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 7027
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 7028
    iget-wide v3, v1, Lcom/perm/kate/api/Audio;->aid:J

    move-object v2, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->createAudioInList(JJJ)J

    goto :goto_0

    .line 7029
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7031
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7032
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 1

    .line 6125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6126
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 6127
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo_100"

    .line 6128
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6129
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "account_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6130
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "unread_count"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6131
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6133
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "chat"

    const/4 p3, 0x0

    .line 6134
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public createChatMember(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 6079
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "chat_id"

    .line 6080
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "user_id"

    .line 6081
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6082
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "chat_members"

    const/4 v1, 0x0

    .line 6083
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public createChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 1

    .line 6074
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 6075
    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/db/DataHelper;->createChatMember(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createCity(JLjava/lang/String;)J
    .locals 1

    .line 4283
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4284
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "name"

    .line 4285
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "cities"

    const/4 p3, 0x0

    .line 4288
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createComment(Lcom/perm/kate/api/Comment;JJJJ)J
    .locals 11

    move-object v9, p0

    move-object v0, p1

    .line 3902
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 3903
    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "comment_id"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3904
    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3905
    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "from_id"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3906
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "content_id"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3908
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3909
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "content_owner_id"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3910
    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    if-eqz v1, :cond_0

    .line 3911
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "like_count"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3912
    :cond_0
    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 3913
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "reply_to_cid"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3914
    :cond_1
    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 3915
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "reply_to_uid"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    move-wide v1, p4

    .line 3916
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->contentTypeToLikeType(J)I

    move-result v8

    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    .line 3918
    iget-wide v3, v0, Lcom/perm/kate/api/Comment;->cid:J

    iget-boolean v7, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    move-object v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v5, p8

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 3920
    :cond_3
    iget-object v0, v9, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "comments"

    .line 3921
    invoke-virtual {v0, v2, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createCountry(JLjava/lang/String;)J
    .locals 2

    .line 4311
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4312
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4313
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "name"

    .line 4314
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "countries"

    const/4 p2, 0x0

    .line 4316
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createCroupTopics(Ljava/util/ArrayList;)V
    .locals 2

    .line 5919
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5920
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5922
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GroupTopic;

    .line 5923
    invoke-virtual {p0, v1}, Lcom/perm/kate/db/DataHelper;->createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J

    goto :goto_0

    .line 5924
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5926
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5927
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createDoc(Lcom/perm/kate/api/Document;)J
    .locals 3

    .line 6469
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6470
    iget-wide v1, p1, Lcom/perm/kate/api/Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "doc_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6471
    iget-wide v1, p1, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6472
    iget-object v1, p1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6473
    iget-wide v1, p1, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6474
    iget-object v1, p1, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    const-string v2, "ext"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6475
    iget-object v1, p1, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6476
    iget-object v1, p1, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    const-string v2, "thumb"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6477
    iget-object v1, p1, Lcom/perm/kate/api/Document;->thumb_o:Ljava/lang/String;

    const-string v2, "thumb_s"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6478
    iget-object p1, p1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title_lower"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6480
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "docs"

    const/4 v2, 0x0

    .line 6481
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createFaveGroup(JJ)J
    .locals 1

    .line 6418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6419
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "account_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6420
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6421
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "fave_groups"

    const/4 p3, 0x0

    .line 6422
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createFaveGroups(Ljava/util/ArrayList;J)V
    .locals 3

    .line 6405
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6406
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroups(Ljava/util/ArrayList;)V

    .line 6409
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    .line 6410
    iget-wide v1, v1, Lcom/perm/kate/api/Group;->gid:J

    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFaveGroup(JJ)J

    goto :goto_0

    .line 6411
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6413
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6414
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createFaveLink(JLcom/perm/kate/api/Link;)J
    .locals 1

    .line 6313
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6314
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "account_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6315
    iget-object p1, p3, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6316
    iget-object p1, p3, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    const-string p2, "title"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6317
    iget-object p1, p3, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    const-string p2, "description"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6318
    iget-object p1, p3, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    const-string p2, "image_src"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6319
    iget-object p1, p3, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    const-string p2, "link_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6320
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "fave_links"

    const/4 p3, 0x0

    .line 6321
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createFaveLinks(Ljava/util/ArrayList;J)V
    .locals 2

    .line 6301
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6302
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6304
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Link;

    .line 6305
    invoke-virtual {p0, p2, p3, v1}, Lcom/perm/kate/db/DataHelper;->createFaveLink(JLcom/perm/kate/api/Link;)J

    goto :goto_0

    .line 6306
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6308
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6309
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createFavePosts(JJJZ)J
    .locals 0

    if-eqz p7, :cond_0

    neg-long p1, p1

    .line 6366
    :cond_0
    new-instance p7, Landroid/content/ContentValues;

    invoke-direct {p7}, Landroid/content/ContentValues;-><init>()V

    .line 6367
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "account_id"

    invoke-virtual {p7, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6368
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {p7, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6369
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {p7, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6370
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "fave_posts"

    .line 6371
    invoke-virtual {p1, p3, p2, p7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createFavePosts(Ljava/util/ArrayList;JZ)V
    .locals 10

    .line 6351
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6352
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6354
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPosts(Ljava/util/ArrayList;J)V

    .line 6355
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .line 6356
    iget-wide v5, v1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v7, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    move-object v2, p0

    move-wide v3, p2

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/db/DataHelper;->createFavePosts(JJJZ)J

    goto :goto_0

    .line 6357
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6360
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createFaveUser(JJ)J
    .locals 1

    .line 6258
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6259
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "account_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6260
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6261
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "fave_users"

    const/4 p3, 0x0

    .line 6262
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createFaveUsers(Ljava/util/ArrayList;J)V
    .locals 3

    .line 6245
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6248
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 6249
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 6250
    iget-wide v1, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFaveUser(JJ)J

    goto :goto_0

    .line 6251
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6253
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6254
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createFriend(JJ)J
    .locals 1

    .line 2737
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2738
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2739
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "friend_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2741
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "friends"

    const/4 p3, 0x0

    .line 2742
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createFriends(Ljava/util/ArrayList;J)V
    .locals 6

    .line 2707
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2708
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2709
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2712
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteAllFriends(J)Z

    .line 2713
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/User;

    const/4 v5, 0x0

    .line 2714
    invoke-virtual {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    goto :goto_0

    .line 2716
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/perm/kate/db/DataHelper;->createFriendsInternal(JLjava/util/ArrayList;)V

    .line 2717
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2719
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2721
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 2722
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFriends duration "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kate.DataHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 2719
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2720
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createGroup(Lcom/perm/kate/api/Group;)J
    .locals 3

    .line 2351
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2352
    iget-wide v1, p1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2353
    iget-object v1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 2354
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    iget-object v1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "photo"

    .line 2358
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "photo_medium"

    .line 2360
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "photo_big"

    .line 2362
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string v2, "is_closed"

    .line 2364
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2365
    :cond_4
    iget-object v1, p1, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "description"

    .line 2366
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    :cond_5
    iget-object v1, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "wiki"

    .line 2368
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    :cond_6
    iget-object v1, p1, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v2, "fixed_post"

    .line 2370
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2371
    :cond_7
    iget-object v1, p1, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string v2, "can_see_all_posts"

    .line 2372
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2373
    :cond_8
    iget-object v1, p1, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v2, "members_count"

    .line 2374
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2375
    :cond_9
    iget-object v1, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const-string v2, "type"

    .line 2376
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2377
    :cond_a
    iget-object v1, p1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v1, :cond_b

    const-string v2, "start_date"

    .line 2378
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2379
    :cond_b
    iget-object v1, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v2, "status"

    .line 2380
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    :cond_c
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const-string v2, "photos"

    .line 2382
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2383
    :cond_d
    iget-object v1, p1, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const-string v2, "albums"

    .line 2384
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2385
    :cond_e
    iget-object v1, p1, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const-string v2, "topics"

    .line 2386
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2387
    :cond_f
    iget-object v1, p1, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    const-string v2, "videos"

    .line 2388
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2389
    :cond_10
    iget-object v1, p1, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    const-string v2, "audios"

    .line 2390
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2391
    :cond_11
    iget-object v1, p1, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const-string v2, "docs"

    .line 2392
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2395
    :cond_12
    iget-object v1, p1, Lcom/perm/kate/api/Group;->podcasts_count:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    const-string v2, "podcasts"

    .line 2396
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2397
    :cond_13
    iget-object v1, p1, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v2, "verified"

    .line 2398
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2399
    :cond_14
    iget-object v1, p1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    const-string v2, "can_message"

    .line 2400
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2401
    :cond_15
    iget-object v1, p1, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    const-string v2, "market_enabled"

    .line 2402
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2403
    :cond_16
    iget-object v1, p1, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz v1, :cond_17

    const-string v2, "market_contact_id"

    .line 2404
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2405
    :cond_17
    iget-object v1, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    if-eqz v1, :cond_18

    .line 2406
    iget-wide v1, v1, Lcom/perm/kate/api/Page;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "market_wiki_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2407
    iget-object v1, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v1, v1, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    const-string v2, "market_wiki_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :cond_18
    iget-object v1, p1, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v2, "cover_400"

    .line 2410
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :cond_19
    iget-object p1, p1, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    if-eqz p1, :cond_1a

    const-string v1, "cover_800"

    .line 2412
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    :cond_1a
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "groups"

    .line 2414
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J
    .locals 3

    .line 5948
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5949
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5950
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->gid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5951
    iget-object v1, p1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5952
    iget-object v1, p1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5953
    iget v1, p1, Lcom/perm/kate/api/GroupTopic;->comments:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5954
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5955
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->created_by:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created_by"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5956
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->updated:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updated"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5957
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updated_by"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5958
    iget v1, p1, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_closed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5959
    iget p1, p1, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "is_fixed"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5960
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "group_topics"

    const/4 v2, 0x0

    .line 5961
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createMessage(Lcom/perm/kate/api/Message;JJ)J
    .locals 3

    .line 3461
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3462
    iget-wide v1, p1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3463
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "account_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3464
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "group_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3465
    iget-wide p2, p1, Lcom/perm/kate/api/Message;->date:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "date"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3466
    iget-wide p2, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "uid"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3467
    iget-object p2, p1, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    const-string p3, "title"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    iget-object p2, p1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    const-string p3, "body"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    iget-boolean p2, p1, Lcom/perm/kate/api/Message;->read_state:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "read_state"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3470
    iget-boolean p2, p1, Lcom/perm/kate/api/Message;->is_out:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "is_out"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3471
    iget-object p2, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "have_attachments"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3472
    iget-object p2, p1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 3473
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "important"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3474
    :cond_1
    iget-object p2, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide p3, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "chat_id"

    .line 3475
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3476
    iget-object p2, p1, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    const-string p3, "action"

    .line 3477
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3478
    :cond_2
    iget-object p2, p1, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    if-eqz p2, :cond_3

    const-string p3, "action_mid"

    .line 3479
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3480
    :cond_3
    iget-object p2, p1, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p3, "action_text"

    .line 3481
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    :cond_4
    iget-wide p2, p1, Lcom/perm/kate/api/Message;->update_time:J

    const-wide/16 p4, 0x0

    cmp-long v1, p2, p4

    if-eqz v1, :cond_5

    .line 3483
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "update_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3484
    :cond_5
    iget-object p1, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper;->serializeAttachments(Ljava/util/List;)[B

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3486
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "messages"

    .line 3487
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNews(Lcom/perm/kate/api/Newsfeed;JI)V
    .locals 3

    .line 2886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2887
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2888
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2890
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->createNewsInternal(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 2891
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2894
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 2897
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "create news duration="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kate.DataHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 2894
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2895
    throw p1
.end method

.method public createNewsFriend(JJ)J
    .locals 1

    .line 3451
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3452
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "news_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3453
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3454
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "news_friend"

    const/4 p3, 0x0

    .line 3455
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNewsItem(Lcom/perm/kate/api/NewsItem;JI)J
    .locals 1

    .line 2928
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2929
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "account_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2930
    iget-boolean p2, p1, Lcom/perm/kate/api/NewsItem;->comment_can_post:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "comment_can_post"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2931
    iget p2, p1, Lcom/perm/kate/api/NewsItem;->comment_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "comment_count"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2932
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "copy_owner_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2933
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->copy_post_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "copy_post_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2934
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    const-string p3, "copy_text"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    iget p2, p1, Lcom/perm/kate/api/NewsItem;->like_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "like_count"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2936
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->post_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "post_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2937
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->source_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "source_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2938
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "from_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2939
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->date:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "date"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2940
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    const-string p3, "text"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string p3, "type"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    iget-boolean p2, p1, Lcom/perm/kate/api/NewsItem;->user_like:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "user_like"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2943
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "is_comments"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2944
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->comments_json:Ljava/lang/String;

    const-string p3, "comments"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    iget-wide p2, p1, Lcom/perm/kate/api/NewsItem;->signer_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "signer_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2946
    iget p2, p1, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "reposts_count"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2947
    iget-boolean p2, p1, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "user_reposted"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2948
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const-string p3, "views"

    .line 2949
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2950
    :cond_0
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->ads_title:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "ads_title"

    .line 2951
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    :cond_1
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->age_restriction:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p3, "age_restriction"

    .line 2953
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    :cond_2
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->ad_data:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string p3, "ad_data"

    .line 2955
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    :cond_3
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->ad_data_impression:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p3, "ad_data_impression"

    .line 2957
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    :cond_4
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->statistics:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 2959
    invoke-direct {p0, p2}, Lcom/perm/kate/db/DataHelper;->serializeStats(Ljava/util/List;)[B

    move-result-object p2

    const-string p3, "statistics"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2960
    :cond_5
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->track_code:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string p3, "track_code"

    .line 2961
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    :cond_6
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->ads_id1:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    const-string p3, "ads_id1"

    .line 2963
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2964
    :cond_7
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->ads_id2:Ljava/lang/Integer;

    if-eqz p2, :cond_8

    const-string p3, "ads_id2"

    .line 2965
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2967
    :cond_8
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/perm/kate/db/DataHelper;->serializeAttachments(Ljava/util/List;)[B

    move-result-object p2

    const-string p3, "attachments"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2969
    iget-object p2, p1, Lcom/perm/kate/api/NewsItem;->copyright_link:Ljava/lang/String;

    if-eqz p2, :cond_9

    const-string p3, "copyright_link"

    .line 2970
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    :cond_9
    iget-object p1, p1, Lcom/perm/kate/api/NewsItem;->copyright_name:Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string p2, "copyright_name"

    .line 2972
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    :cond_a
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "news"

    .line 2975
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNewsPhoto(JJJ)J
    .locals 1

    .line 3415
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3416
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "news_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3417
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3418
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3419
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "news_photo"

    const/4 p3, 0x0

    .line 3420
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNewsPhotoTag(JJJ)J
    .locals 1

    .line 3433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3434
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "news_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3435
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3436
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3437
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "news_phototags"

    const/4 p3, 0x0

    .line 3438
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNote(Lcom/perm/kate/api/Note;)J
    .locals 3

    .line 4171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4172
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->nid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4173
    iget-object v1, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "text"

    .line 4174
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4176
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->ncom:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4178
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4179
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "from_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4181
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "notes"

    .line 4182
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V
    .locals 1

    .line 4419
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateAudio(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4420
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createAudio(Lcom/perm/kate/api/Audio;)J

    :cond_0
    return-void
.end method

.method public createOrUpdateAudios(Ljava/util/ArrayList;)V
    .locals 2

    .line 4407
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4408
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4410
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 4411
    invoke-virtual {p0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 4412
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4414
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4415
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createOrUpdateCroupTopics(Ljava/util/ArrayList;)V
    .locals 2

    .line 5931
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5932
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5934
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GroupTopic;

    .line 5935
    invoke-direct {p0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroupTopic(Lcom/perm/kate/api/GroupTopic;)V

    goto :goto_0

    .line 5936
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5938
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5939
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createOrUpdateDialogs(Ljava/util/ArrayList;JZJLjava/util/Collection;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p7

    .line 3568
    iget-object v1, v11, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 3569
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p4, :cond_1

    :try_start_0
    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3574
    invoke-interface/range {p7 .. p7}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND chat_id not in("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3576
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM chat WHERE account_id=? AND group_id=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3579
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/perm/kate/api/Message;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v9

    move-wide/from16 v3, p2

    move-wide/from16 v6, p5

    .line 3580
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    .line 3582
    iget-object v1, v9, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-object v1, v9, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 3583
    iget-object v2, v9, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v1}, Lcom/perm/kate/db/DataHelper;->recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 3585
    :cond_3
    iget-object v1, v9, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v2, v9, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v13

    move-object v1, p0

    move-object v2, v9

    move-wide v3, v13

    move-wide/from16 v5, p2

    move-wide/from16 v7, p5

    .line 3588
    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->updateChat(Lcom/perm/kate/api/Message;JJJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3590
    iget-object v4, v9, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    iget-object v5, v9, Lcom/perm/kate/api/Message;->photo_100:Ljava/lang/String;

    iget v8, v9, Lcom/perm/kate/api/Message;->unread_count:I

    move-object v1, p0

    move-wide v2, v13

    move-wide/from16 v6, p2

    move-wide/from16 v9, p5

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V

    goto :goto_0

    .line 3592
    :cond_4
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3594
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3595
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V
    .locals 0

    .line 2243
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->updateGroup(Lcom/perm/kate/api/Group;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2244
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createGroup(Lcom/perm/kate/api/Group;)J

    :cond_0
    return-void
.end method

.method public createOrUpdateGroups(Ljava/util/ArrayList;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2526
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2528
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    const/4 v2, 0x0

    .line 2529
    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    goto :goto_0

    .line 2530
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2532
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2533
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z
    .locals 8

    .line 3599
    iget-object v0, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, p3}, Lcom/perm/kate/db/DataHelper;->createAttachedObjects(Ljava/util/ArrayList;J)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p5

    .line 3601
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateMessage(Lcom/perm/kate/api/Message;JJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p5

    .line 3602
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createMessage(Lcom/perm/kate/api/Message;JJ)J

    .line 3603
    iget-object v0, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v1, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    if-eqz p4, :cond_0

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p5

    .line 3605
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->ensureChatExists(JJJ)V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createOrUpdateMessages(Ljava/util/ArrayList;JJ)Z
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    .line 3527
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    move-result p1

    return p1
.end method

.method public createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z
    .locals 11

    move-object v8, p0

    .line 3531
    iget-object v0, v8, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 3532
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 3537
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/perm/kate/api/Message;

    move-object v1, p0

    move-wide v3, p2

    move v5, p4

    move-wide/from16 v6, p5

    .line 3538
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v10, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move v1, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 3540
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3541
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move v10, v1

    .line 3543
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3546
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v10

    :catchall_2
    move-exception v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3547
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public createOrUpdateNote(Lcom/perm/kate/api/Note;)V
    .locals 1

    .line 4245
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateNote(Lcom/perm/kate/api/Note;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4246
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createNote(Lcom/perm/kate/api/Note;)J

    :cond_0
    return-void
.end method

.method public createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V
    .locals 10

    .line 3341
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updatePhoto(Lcom/perm/kate/api/Photo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3342
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createPhoto(Lcom/perm/kate/api/Photo;)J

    .line 3343
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3344
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    move-object v1, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    :cond_1
    return-void
.end method

.method public createOrUpdatePhotos(Ljava/util/ArrayList;J)V
    .locals 2

    .line 3329
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3330
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3332
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 3333
    invoke-virtual {p0, v1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    goto :goto_0

    .line 3334
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3337
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createOrUpdatePoll(Lcom/perm/kate/api/VkPoll;J)V
    .locals 1

    .line 5862
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->updatePoll(Lcom/perm/kate/api/VkPoll;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5863
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createPoll(Lcom/perm/kate/api/VkPoll;J)J

    :cond_0
    return-void
.end method

.method public createOrUpdateUser(Lcom/perm/kate/api/User;Z)V
    .locals 0

    .line 2236
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->updateUser(Lcom/perm/kate/api/User;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2237
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createUser(Lcom/perm/kate/api/User;)J

    :cond_0
    return-void
.end method

.method public createOrUpdateUsers(Ljava/util/ArrayList;)V
    .locals 3

    .line 2181
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2182
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2184
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    const/4 v2, 0x0

    .line 2185
    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    goto :goto_0

    .line 2186
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2189
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createOrUpdateVideo(Lcom/perm/kate/api/Video;)V
    .locals 1

    .line 5797
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateVideo(Lcom/perm/kate/api/Video;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5798
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createVideo(Lcom/perm/kate/api/Video;)J

    :cond_0
    return-void
.end method

.method public createOrUpdateVideoUserLikes(Ljava/util/ArrayList;J)V
    .locals 11

    .line 5807
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 5808
    iget-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5809
    iget-wide v3, v0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v5, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x6

    move-object v2, p0

    move-wide v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createOrUpdateVideos(Ljava/util/ArrayList;)V
    .locals 1

    .line 5802
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 5803
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createOrUpdateWallLike(JJJZI)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 5825
    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZILjava/lang/Boolean;)V

    return-void
.end method

.method public createOrUpdateWallLike(JJJZILjava/lang/Boolean;)V
    .locals 1

    .line 5829
    invoke-virtual/range {p0 .. p9}, Lcom/perm/kate/db/DataHelper;->updateWallLike(JJJZILjava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p7, :cond_0

    .line 5831
    invoke-virtual/range {p0 .. p9}, Lcom/perm/kate/db/DataHelper;->createWallLike(JJJZILjava/lang/Boolean;)J

    :cond_0
    return-void
.end method

.method public createOrUpdateWallPost(Lcom/perm/kate/api/WallMessage;JZ)V
    .locals 6

    .line 4464
    invoke-static {p1}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 4466
    iget-object v0, p1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4467
    invoke-direct {p0, v0, p2, p3}, Lcom/perm/kate/db/DataHelper;->createAttachedObjects(Ljava/util/ArrayList;J)V

    :cond_0
    if-eqz p4, :cond_1

    .line 4469
    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchWallPost(JJ)Ljava/lang/Long;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_2

    .line 4471
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createWallPost(Lcom/perm/kate/api/WallMessage;J)J

    goto :goto_1

    .line 4473
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateWallPost(Lcom/perm/kate/api/WallMessage;JJ)Z

    :goto_1
    return-void
.end method

.method public createOrUpdateWallPosts(Ljava/util/ArrayList;J)V
    .locals 3

    .line 4452
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4453
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4455
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    const/4 v2, 0x1

    .line 4456
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPost(Lcom/perm/kate/api/WallMessage;JZ)V

    goto :goto_0

    .line 4457
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4459
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4460
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createPhoto(Lcom/perm/kate/api/Photo;)J
    .locals 3

    .line 3301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3302
    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "photo_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3303
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->aid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "album_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3305
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const-string v2, "src"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v2, "src_big"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    const-string v2, "src_xbig"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    const-string v2, "src_xxbig"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    const-string v2, "src_xxxbig"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    const-string v2, "phototext"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3313
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v2, "like_count"

    .line 3314
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3315
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "comments_count"

    .line 3316
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3317
    :cond_1
    iget v1, p1, Lcom/perm/kate/api/Photo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3318
    iget v1, p1, Lcom/perm/kate/api/Photo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3319
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->lat:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "lat"

    .line 3320
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    :cond_2
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->lon:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v1, "lon"

    .line 3322
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "photos"

    .line 3325
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createPoll(Lcom/perm/kate/api/VkPoll;J)J
    .locals 3

    .line 5885
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5886
    iget-wide v1, p1, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "poll_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5887
    iget-wide v1, p1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5888
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "account_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5889
    iget-object p2, p1, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    const-string p3, "question"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5890
    iget-boolean p1, p1, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "anonymous"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5891
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "poll"

    .line 5892
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createUser(Lcom/perm/kate/api/User;)J
    .locals 3

    .line 1744
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1745
    iget-wide v1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 1746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_full"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1747
    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "first_name"

    .line 1748
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_name_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_name"

    .line 1752
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-object v1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_name_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "nickname"

    .line 1756
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickname_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const-string v2, "photo_medium_rec"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    const-string v2, "photo_big"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "photo_200"

    .line 1763
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "photo_400_orig"

    .line 1765
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :cond_4
    iget-object v1, p1, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    const-string v2, "domain"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    iget-object v1, p1, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    const-string v2, "sex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1768
    iget-object v1, p1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    const-string v2, "birthdate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v1, p1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1770
    iget-object v1, p1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1771
    iget-object v1, p1, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    const-string v2, "timezone"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1772
    iget-object v1, p1, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    const-string v2, "has_mobile"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1773
    iget-object v1, p1, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    const-string v2, "rate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1774
    iget-object v1, p1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    const-string v2, "mobile_phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v1, p1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    const-string v2, "home_phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v1, p1, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    const-string v2, "university"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1777
    iget-object v1, p1, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v2, "university_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v1, p1, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    const-string v2, "faculty"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1779
    iget-object v1, p1, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    const-string v2, "faculty_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v1, p1, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    const-string v2, "graduation"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1781
    iget-object v1, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 1782
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1783
    :cond_5
    iget-object v1, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 1784
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "online_mobile"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1785
    :cond_6
    iget-object v1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object v1, p1, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v2, "relation"

    .line 1787
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1788
    :cond_7
    iget-wide v1, p1, Lcom/perm/kate/api/User;->last_seen:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_seen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1789
    iget v1, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "albums"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1790
    iget v1, p1, Lcom/perm/kate/api/User;->photo_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "photos"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1791
    iget v1, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videos"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1792
    iget v1, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audios"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1793
    iget v1, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1794
    iget v1, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "friends"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1795
    iget-object v1, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    const-string v2, "online_friends"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1796
    iget-object v1, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v2, "mutual_friends"

    .line 1797
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1798
    :cond_8
    iget v1, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_photos"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1799
    iget v1, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "groups"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1800
    iget v1, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "followers"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1801
    iget v1, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gifts"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1803
    iget-object v1, p1, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v2, "verified"

    .line 1804
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1805
    :cond_9
    iget-object v1, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    if-eqz v1, :cond_a

    .line 1806
    iget-wide v1, v1, Lcom/perm/kate/api/User$Rect;->x1:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "crop_photo_rect_x1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1807
    iget-object v1, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v1, v1, Lcom/perm/kate/api/User$Rect;->x2:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "crop_photo_rect_x2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1808
    iget-object v1, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v1, v1, Lcom/perm/kate/api/User$Rect;->y1:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "crop_photo_rect_y1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1809
    iget-object p1, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v1, p1, Lcom/perm/kate/api/User$Rect;->y2:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "crop_photo_rect_y2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1812
    :cond_a
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "users"

    .line 1813
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createUserDocs(Ljava/util/ArrayList;JZ)V
    .locals 1

    .line 6438
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6439
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p4, :cond_0

    .line 6442
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteDocs(J)Z

    .line 6443
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6446
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/perm/kate/db/DataHelper;->createDoc(Lcom/perm/kate/api/Document;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6448
    :try_start_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    .line 6449
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6451
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6453
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6454
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J
    .locals 1

    .line 2548
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2549
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2550
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_0

    .line 2551
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :cond_0
    if-eqz p6, :cond_1

    const-string p1, "admin_level"

    .line 2554
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2556
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "user_group"

    .line 2557
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createUserGroups(Ljava/util/ArrayList;JZ)V
    .locals 9

    .line 2506
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2507
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p4, :cond_0

    .line 2511
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteUserGroups(J)Z

    .line 2512
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perm/kate/api/Group;

    const/4 v1, 0x0

    .line 2513
    invoke-virtual {p0, p4, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 2514
    iget-wide v5, p4, Lcom/perm/kate/api/Group;->gid:J

    iget-object v7, p4, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    iget-object v8, p4, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    move-object v2, p0

    move-wide v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    goto :goto_0

    .line 2516
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2518
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2519
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createUserNotes(Ljava/util/ArrayList;J)V
    .locals 1

    .line 4251
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4254
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteNotes(J)Z

    .line 4255
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/Note;

    .line 4256
    invoke-virtual {p0, p2}, Lcom/perm/kate/db/DataHelper;->createNote(Lcom/perm/kate/api/Note;)J

    goto :goto_0

    .line 4257
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4259
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4260
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method createVideo(Lcom/perm/kate/api/Video;)J
    .locals 3

    .line 5630
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5631
    iget-wide v1, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "video_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5632
    iget-wide v1, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5633
    iget-object v1, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5634
    iget-object v1, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5635
    iget-wide v1, p1, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5636
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5637
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    const-string v2, "image_big"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5638
    iget-wide v1, p1, Lcom/perm/kate/api/Video;->date:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5639
    iget-object v1, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const-string v2, "player_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5640
    iget v1, p1, Lcom/perm/kate/api/Video;->views:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "views"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5641
    iget-object v1, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v2, "likes_count"

    .line 5642
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5643
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5644
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "video"

    .line 5645
    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createVideoInAlbum(JJJJ)J
    .locals 1

    .line 6826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6827
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6828
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6829
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6830
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6832
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "video_in_album"

    const/4 p3, 0x0

    .line 6833
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createVideosInAlbum(JJLjava/util/ArrayList;)V
    .locals 10

    .line 6821
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 6822
    iget-wide v6, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v8, v0, Lcom/perm/kate/api/Video;->owner_id:J

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createVideoInAlbum(JJJJ)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createWallLike(JJJZILjava/lang/Boolean;)J
    .locals 1

    .line 5847
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5848
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "wall_owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5849
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5850
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "account_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5851
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "like"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p9, :cond_0

    .line 5853
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reposted"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5854
    :cond_0
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5855
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "wall_like"

    .line 5856
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createWallPost(Lcom/perm/kate/api/WallMessage;J)J
    .locals 13

    move-object v10, p0

    move-object v11, p1

    .line 4602
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 4603
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "post_id"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4604
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "from_id"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4605
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "to_id"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4606
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4607
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4608
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->comment_count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "comments_count"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4609
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "copy_owner_id"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4610
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    const-string v1, "copy_text"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4611
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->signer_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "signer_id"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4612
    iget v0, v11, Lcom/perm/kate/api/WallMessage;->post_type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "post_type"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4613
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string v1, "views"

    .line 4614
    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4617
    :cond_0
    iget v0, v11, Lcom/perm/kate/api/WallMessage;->like_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "likes_count"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4618
    iget-wide v1, v11, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v3, v11, Lcom/perm/kate/api/WallMessage;->id:J

    iget-boolean v7, v11, Lcom/perm/kate/api/WallMessage;->user_like:Z

    const/4 v8, 0x0

    iget-boolean v0, v11, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v0, p0

    move-wide v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZILjava/lang/Boolean;)V

    .line 4620
    iget v0, v11, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reposts_count"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4622
    iget-boolean v0, v11, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pinned"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4625
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->copyright_link:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "copyright_link"

    .line 4626
    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4627
    :cond_1
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->copyright_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "copyright_name"

    .line 4628
    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4629
    :cond_2
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->created_by:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "created_by"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4630
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/db/DataHelper;->serializeAttachments(Ljava/util/List;)[B

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 4631
    iget-object v0, v10, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wall"

    .line 4632
    invoke-virtual {v0, v2, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAlbum(J)Z
    .locals 4

    .line 4161
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 4165
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "albums"

    const-string v3, "album_id=?"

    invoke-virtual {v0, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public deleteAlbumPhoto(JJJJ)Z
    .locals 2

    .line 6606
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 6608
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, v1, p4

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    aput-object p1, v1, p4

    const-string p1, "albumphoto"

    const-string p4, "album_id=? AND album_owner_id=? AND photo_id=? AND photo_owner_id=?"

    .line 6607
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteAlbumPhotos(JJ)Z
    .locals 2

    .line 6600
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6602
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "albumphoto"

    const-string p4, "album_id=? AND album_owner_id=?"

    .line 6601
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteAllFriends(J)Z
    .locals 2

    .line 2702
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2703
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "friends"

    const-string v1, "owner_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteAllNews(JI)V
    .locals 2

    .line 2871
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2873
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "news"

    const-string p2, "account_id=? AND is_comments=?"

    .line 2872
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2874
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsFriend()V

    .line 2875
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsPhotos()V

    .line 2876
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsPhotoTags()V

    return-void
.end method

.method public deleteAndCreateNews(Lcom/perm/kate/api/Newsfeed;JI)V
    .locals 3

    .line 2855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2856
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2857
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2859
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->deleteAllNews(JI)V

    .line 2860
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->createNewsInternal(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 2861
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 2867
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "deleteAndCreateNews duration="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kate.DataHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 2864
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2865
    throw p1
.end method

.method public deleteAudioAlbums(J)Z
    .locals 2

    .line 7005
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7006
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio_albums"

    const-string v1, "owner_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteAudioInList(JJJ)Z
    .locals 2

    .line 7018
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 7020
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v1, p4

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    aput-object p3, v1, p5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "audio_in_list"

    const-string p2, "list_id=? AND list_owner_id=? AND audio_id=?"

    .line 7019
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p4, 0x1

    :cond_0
    return p4
.end method

.method public deleteAudiosInList(JJ)Z
    .locals 2

    .line 7012
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 7014
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "audio_in_list"

    const-string p4, "list_id=? AND list_owner_id=?"

    .line 7013
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteChatMember(JJ)Z
    .locals 2

    .line 6167
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6169
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "chat_members"

    const-string p4, "chat_id=? AND user_id=?"

    .line 6168
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteChatMembers(J)Z
    .locals 2

    .line 6087
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6088
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "chat_members"

    const-string v1, "chat_id= ?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteChatMessages(JJJ)V
    .locals 2

    .line 3652
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3654
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "messages"

    const-string p2, "chat_id=? AND account_id=? AND group_id=?"

    .line 3653
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteComment(JJJJ)Z
    .locals 2

    .line 3961
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 3966
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, v1, p4

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    aput-object p1, v1, p4

    const-string p1, "comments"

    const-string p4, "content_id=? AND content_type=? AND content_owner_id=? AND comment_id=?"

    .line 3962
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteComments(JJJ)Z
    .locals 2

    .line 3952
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3957
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, v1, p4

    const-string p1, "comments"

    const-string p4, "content_id=? AND content_type=? AND content_owner_id=?"

    .line 3953
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteDoc(JJ)Z
    .locals 2

    .line 6563
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6564
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "docs"

    const-string p4, "doc_id=? AND owner_id=?"

    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteDocs(J)Z
    .locals 2

    .line 6458
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6459
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "docs"

    const-string v1, "owner_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteFaveGroups(J)Z
    .locals 2

    .line 6399
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6401
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "fave_groups"

    const-string v1, "account_id=?"

    .line 6400
    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteFaveLinks(J)Z
    .locals 2

    .line 6295
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6297
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "fave_links"

    const-string v1, "account_id=?"

    .line 6296
    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteFavePost(JZJJ)Z
    .locals 1

    if-eqz p3, :cond_0

    neg-long p1, p1

    .line 6345
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 6347
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, v0, p4

    const/4 p1, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    aput-object p5, v0, p1

    const-string p1, "fave_posts"

    const-string p5, "account_id=? AND post_id=? AND owner_id=?"

    .line 6346
    invoke-virtual {p3, p1, p5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public deleteFavePosts(JZ)Z
    .locals 1

    if-eqz p3, :cond_0

    neg-long p1, p1

    .line 6337
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 6339
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "fave_posts"

    const-string v0, "account_id=?"

    .line 6338
    invoke-virtual {p3, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteFaveUsers(J)Z
    .locals 2

    .line 6239
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6241
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "fave_users"

    const-string v1, "account_id=?"

    .line 6240
    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteFriend(JJ)Z
    .locals 2

    .line 2838
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2840
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "friends"

    const-string p4, "owner_id=? AND friend_id=?"

    .line 2839
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteGroupTopic(J)Z
    .locals 2

    .line 6030
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6031
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "group_topics"

    const-string v1, "_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteGroupTopics(J)Z
    .locals 2

    .line 6025
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6026
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "group_topics"

    const-string v1, "group_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteMessage(JJJ)Z
    .locals 2

    .line 3646
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3648
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, v1, p4

    const-string p1, "messages"

    const-string p4, "message_id=? AND account_id=? AND group_id=?"

    .line 3647
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteMessageThread(JJJJ)V
    .locals 7

    .line 3659
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p5

    move-wide v5, p7

    .line 3660
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->deleteChatMessages(JJJ)V

    return-void
.end method

.method public deleteNewsFromOwnerId(JJ)V
    .locals 2

    .line 2880
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 2882
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "news"

    const-string p2, "account_id=? AND (source_id=? OR copy_owner_id=?)"

    .line 2881
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteNewsItem(JJ)Z
    .locals 2

    .line 3154
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3156
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "news"

    const-string p4, "_id=? AND account_id=?"

    .line 3155
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteNote(J)Z
    .locals 2

    .line 4240
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4241
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "notes"

    const-string v1, "_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteNotes(J)Z
    .locals 2

    .line 4235
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4236
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "notes"

    const-string v1, "from_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deletePhoto(JJ)Z
    .locals 2

    .line 3400
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3402
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "photos"

    const-string p4, "owner_id=? AND photo_id=?"

    .line 3401
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteUnusedNewsFriend()V
    .locals 2

    .line 3446
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from news_friend where _id in (select nf._id from news_friend as nf left join news as n on nf.news_id=n._id where n._id is null)"

    .line 3447
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteUnusedNewsPhotoTags()V
    .locals 2

    .line 3428
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from news_phototags where _id in (select np._id from news_phototags as np left join news as n on np.news_id=n._id where n._id is null)"

    .line 3429
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteUnusedNewsPhotos()V
    .locals 2

    .line 3410
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from news_photo where _id in (select np._id from news_photo as np left join news as n on np.news_id=n._id where n._id is null)"

    .line 3411
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteUserAlbums(J)Z
    .locals 2

    .line 4053
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4054
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "albums"

    const-string v1, "owner_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteUserGroup(JJ)Z
    .locals 2

    .line 2542
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2544
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "user_group"

    const-string p4, "user_id=? AND group_id=?"

    .line 2543
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteUserGroups(J)Z
    .locals 2

    .line 2537
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2538
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_group"

    const-string v1, "user_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteVideo(JJ)Z
    .locals 2

    .line 5691
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 5693
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "video"

    const-string p4, "video_id=? AND owner_id=?"

    .line 5692
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteVideosInAlbum(JJ)V
    .locals 2

    .line 6815
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6817
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v1, p4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "video_in_album"

    const-string p2, "album_id=? AND album_owner_id=?"

    .line 6816
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteWallPost(JJ)Z
    .locals 2

    .line 4711
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 4713
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "wall"

    const-string p4, "post_id=? AND to_id=?"

    .line 4712
    invoke-virtual {v0, p1, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public deleteWallPosts(J)V
    .locals 2

    .line 4718
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4719
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "wall"

    const-string v1, "to_id=?"

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public doesMessageExist(JLjava/lang/String;J)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3845
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 3846
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "SELECT count(*) FROM messages WHERE account_id=? and group_id=0 and message_id=? AND body=?"

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3847
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3848
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 3849
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public ensureChatExists(JJJ)V
    .locals 11

    move-object v10, p0

    .line 6207
    iget-object v0, v10, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 6208
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "SELECT EXISTS (SELECT _id FROM chat WHERE chat_id=? AND account_id=? AND group_id=?)"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6209
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6210
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v3, 0x1

    .line 6211
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-nez v3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    move-wide/from16 v8, p5

    .line 6213
    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/db/DataHelper;->createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V

    :cond_1
    return-void
.end method

.method public fetchAlbum(J)Lcom/perm/kate/api/Album;
    .locals 3

    .line 4115
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4116
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT a.title, a.description, a.privacy_str, a.privacy_comments FROM albums as a WHERE a.album_id=?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4119
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4120
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 4121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 4124
    :cond_1
    new-instance v1, Lcom/perm/kate/api/Album;

    invoke-direct {v1}, Lcom/perm/kate/api/Album;-><init>()V

    .line 4125
    iput-wide p1, v1, Lcom/perm/kate/api/Album;->aid:J

    const-string p1, "title"

    .line 4126
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string p1, "description"

    .line 4127
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    const-string p1, "privacy_str"

    .line 4128
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Privacy;->parseString(Ljava/lang/String;)Lcom/perm/kate/api/Privacy;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    const-string p1, "privacy_comments"

    .line 4129
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Privacy;->parseString(Ljava/lang/String;)Lcom/perm/kate/api/Privacy;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/Album;->comment_privacy:Lcom/perm/kate/api/Privacy;

    .line 4130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public fetchAlbum(JJ)Lcom/perm/kate/api/Album;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT a.title, a.description FROM albums as a WHERE a.album_id=? AND a.owner_id=? LIMIT 1"

    .line 4140
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 4141
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v3, p3

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4142
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_0

    .line 4155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 4144
    :cond_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4145
    new-instance p4, Lcom/perm/kate/api/Album;

    invoke-direct {p4}, Lcom/perm/kate/api/Album;-><init>()V

    .line 4146
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 4147
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p4

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 4150
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4151
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    .line 4155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4156
    :cond_2
    throw p2
.end method

.method public fetchAlbums(J)Landroid/database/Cursor;
    .locals 1

    .line 4107
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4108
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT a.album_id, a.title, /*a.description,*/ a.thumb_src, a.size FROM albums as a WHERE a.owner_id=? ORDER BY a._id"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchAudio(JJ)Lcom/perm/kate/api/Audio;
    .locals 16

    move-object/from16 v0, p0

    .line 4322
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "artist"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "duration"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const-string v1, "lyrics_id"

    const/4 v13, 0x2

    aput-object v1, v4, v13

    const-string v1, "title"

    const/4 v14, 0x3

    aput-object v1, v4, v14

    const-string v1, "url"

    const/4 v15, 0x4

    aput-object v1, v4, v15

    new-array v6, v13, [Ljava/lang/String;

    .line 4325
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    const-string v3, "audio"

    const-string v5, "audio_id=? AND owner_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    .line 4323
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4328
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4329
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 4330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 4333
    :cond_1
    new-instance v2, Lcom/perm/kate/api/Audio;

    invoke-direct {v2}, Lcom/perm/kate/api/Audio;-><init>()V

    move-wide/from16 v3, p1

    .line 4334
    iput-wide v3, v2, Lcom/perm/kate/api/Audio;->aid:J

    .line 4335
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 4336
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Audio;->duration:J

    .line 4337
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    move-wide/from16 v3, p3

    .line 4338
    iput-wide v3, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 4339
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 4340
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 4341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public fetchAudioAlbum(JJ)Lcom/perm/kate/api/AudioAlbum;
    .locals 5

    .line 6988
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6989
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "SELECT a.title FROM audio_albums as a WHERE a.owner_id=? AND a.album_id=?"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6993
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 6994
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6995
    new-instance v1, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v1}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 6996
    iput-wide p3, v1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 6997
    iput-wide p1, v1, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    .line 6998
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 7000
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public fetchAudioAlbums(J)Ljava/util/ArrayList;
    .locals 5

    .line 6964
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6968
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6969
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "SELECT a.album_id, a.title, a.photo FROM audio_albums as a WHERE a.owner_id=?"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 6972
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6973
    new-instance v2, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v2}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    const/4 v3, 0x0

    .line 6974
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 6975
    iput-wide p1, v2, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    const/4 v3, 0x1

    .line 6976
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    const/4 v3, 0x2

    .line 6977
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/AudioAlbum;->photo:Ljava/lang/String;

    .line 6978
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6980
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public fetchAudioInList(JJ)Ljava/util/ArrayList;
    .locals 0

    .line 7046
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->fetchAudioInListCursor(JJ)Landroid/database/Cursor;

    move-result-object p1

    .line 7047
    invoke-direct {p0, p1}, Lcom/perm/kate/db/DataHelper;->audioCursorToArray(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p2

    .line 7048
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchAudioInListCursor(JJ)Landroid/database/Cursor;
    .locals 2

    .line 7058
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 7059
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "SELECT a.audio_id, a.artist, a.title,a.duration, a.url, a.owner_id, a.lyrics_id, a.genre_id FROM audio_in_list as ail JOIN audio as a on a.audio_id=ail.audio_id AND a.owner_id=ail.list_owner_id WHERE ail.list_id=? AND ail.list_owner_id=? ORDER BY ail._id"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchAudiosFromWall(J)Ljava/util/ArrayList;
    .locals 4

    .line 5555
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5556
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "select w.attachments from wall as w where w.to_id=? order by w._id"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5557
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5558
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 5559
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 5560
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Attachment;

    .line 5561
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5562
    iget-object v1, v1, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5564
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchChatAvatars(J)Ljava/util/ArrayList;
    .locals 1

    .line 6114
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6115
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT u.photo_medium_rec FROM chat_members as a LEFT JOIN users as u ON u._id = a.user_id WHERE a.chat_id=? ORDER by a._id LIMIT 4"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6116
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6117
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6119
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchChatFullMembers(J)Ljava/util/ArrayList;
    .locals 6

    .line 6179
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6180
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT u._id, u.first_name, u.last_name, u.photo, u.photo_medium_rec, u.online, u.domain, a.user_id, g.name, g.photo_medium FROM chat_members as a LEFT JOIN users as u ON u._id=a.user_id AND a.user_id>0 LEFT JOIN groups as g ON g._id=a.user_id*(-1) AND a.user_id<0 WHERE a.chat_id=? ORDER by a._id"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6181
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6182
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "user_id"

    .line 6183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 6185
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    const-string v1, "_id"

    .line 6186
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User;->uid:J

    const-string v1, "first_name"

    .line 6187
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v1, "last_name"

    .line 6188
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v1, "photo_medium_rec"

    .line 6189
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const-string v1, "photo"

    .line 6190
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const-string v1, "online"

    .line 6191
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    const-string v1, "domain"

    .line 6192
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 6193
    new-instance v1, Lcom/perm/kate/api/ChatMember;

    invoke-direct {v1, v0}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/User;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6195
    :cond_1
    new-instance v2, Lcom/perm/kate/api/Group;

    invoke-direct {v2}, Lcom/perm/kate/api/Group;-><init>()V

    const-wide/16 v3, -0x1

    mul-long v0, v0, v3

    .line 6196
    iput-wide v0, v2, Lcom/perm/kate/api/Group;->gid:J

    const-string v0, "name"

    .line 6197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    const-string v0, "photo_medium"

    .line 6198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 6199
    new-instance v0, Lcom/perm/kate/api/ChatMember;

    invoke-direct {v0, v2}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/Group;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6202
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchChatName(JJ)Ljava/lang/CharSequence;
    .locals 10

    .line 6156
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "title"

    const/4 v9, 0x0

    aput-object v2, v3, v9

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 6157
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v9

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v2, "chat"

    const-string v4, "chat_id=? AND account_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6158
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6160
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6161
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6162
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchCity(J)Ljava/lang/String;
    .locals 11

    .line 4266
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v10, "name"

    aput-object v10, v3, v0

    .line 4268
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    const-string v2, "cities"

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 4267
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 4272
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4273
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4274
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 4277
    :cond_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4278
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchCommentList(JJJJ)Ljava/util/ArrayList;
    .locals 5

    .line 3982
    invoke-virtual/range {p0 .. p8}, Lcom/perm/kate/db/DataHelper;->fetchComments(JJJJ)Landroid/database/Cursor;

    move-result-object p1

    .line 3983
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "message"

    .line 3984
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    const-string p4, "from_id"

    .line 3985
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    const-string p5, "like_count"

    .line 3986
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    const-string p6, "like"

    .line 3987
    invoke-interface {p1, p6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p6

    const-string p7, "comment_id"

    .line 3988
    invoke-interface {p1, p7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p7

    const-string p8, "date"

    .line 3989
    invoke-interface {p1, p8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p8

    const-string v0, "reply_to_cid"

    .line 3990
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "reply_to_uid"

    .line 3991
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3992
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3993
    new-instance v2, Lcom/perm/kate/api/Comment;

    invoke-direct {v2}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 3994
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 3995
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Comment;->from_id:J

    .line 3996
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/perm/kate/api/Comment;->like_count:I

    .line 3997
    invoke-interface {p1, p6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v2, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 3998
    invoke-interface {p1, p7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Comment;->cid:J

    .line 3999
    invoke-interface {p1, p8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Comment;->date:J

    .line 4000
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4001
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    .line 4002
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4003
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    .line 4005
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4007
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchComments(JJJJ)Landroid/database/Cursor;
    .locals 5

    .line 3970
    invoke-direct {p0, p3, p4}, Lcom/perm/kate/db/DataHelper;->contentTypeToLikeType(J)I

    move-result v0

    .line 3977
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 3978
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p7

    const/4 p8, 0x1

    aput-object p7, v2, p8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p7

    const/4 p8, 0x2

    aput-object p7, v2, p8

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v2, p2

    const-string p1, "SELECT c._id as _id, c.comment_id as comment_id, c.date as date, c.message as message, c.from_id as from_id, c.content_id, c.like_count as like_count, wl.[like] as [like], c.reply_to_cid, c.reply_to_uid FROM comments as c LEFT JOIN wall_like as wl on wl.post_id=c.comment_id AND wl.wall_owner_id=? AND wl.account_id=? AND wl.type=? WHERE c.content_id=? AND c.content_type=? AND c.content_owner_id=? ORDER BY c.date"

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchCountry(J)Ljava/lang/String;
    .locals 11

    .line 4294
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v10, "name"

    aput-object v10, v3, v0

    .line 4296
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    const-string v2, "countries"

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 4295
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 4300
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4301
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4302
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 4305
    :cond_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4306
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchDialogs(JJLjava/util/Collection;Ljava/util/Collection;Z)Landroid/database/Cursor;
    .locals 4

    const-string v0, ","

    const-string v1, ""

    if-eqz p5, :cond_0

    .line 3698
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND chat_id not in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") "

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, v1

    :goto_0
    if-eqz p6, :cond_1

    .line 3703
    invoke-interface {p6}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ,case when ch.chat_id in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ") then 1 else 0 end as fixed "

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "fixed DESC,"

    goto :goto_1

    :cond_1
    move-object p6, v1

    move-object v0, p6

    .line 3713
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select m2._id as _id, m2.message_id as message_id, m2.date as date, m2.uid as uid, m2.title as title, m2.body as body, m2.is_out as is_out, m2.read_state as read_state, m2.have_attachments as have_attachments, m2.[action] as [action], m2.action_mid as action_mid, m2.action_text as action_text, substr(m2.attachments,1,2087152) as attachments, u.photo_medium_rec as photo_medium_rec, u.first_name as first_name, u.last_name as last_name, u.online as online, u.online_mobile as online_mobile, ch.chat_id as chat_id, ch.title as chat_title, ch.photo_100 as chat_photo_100, ch.unread_count as unread_count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "FROM chat as ch INNER JOIN (SELECT max(m.message_id) as max_message_id, m.chat_id as x_chat_id FROM messages as m WHERE m.account_id=? and m.group_id=?AND m.chat_id in (SELECT DISTINCT chat_id from chat WHERE account_id=? "

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ) GROUP BY m.chat_id) on ch.chat_id=x_chat_id LEFT JOIN messages as m2 on m2.message_id=max_message_id AND m2.account_id=? AND m2.group_id=?LEFT JOIN users as u on m2.uid=u._id WHERE ch.account_id=? AND ch.group_id=? "

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_2

    const-string v1, "AND m2.read_state=0 AND m2.is_out=0 "

    .line 3736
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "ORDER BY "

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "m2.message_id DESC"

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 3738
    iget-object p6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p6

    const/4 p7, 0x7

    new-array p7, p7, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 3739
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p7, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p7, v0

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p7, v0

    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p7, v0

    const/4 v0, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p7, v0

    const/4 v0, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, v0

    const/4 p1, 0x6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p7, p1

    invoke-virtual {p6, p5, p7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchDoc(JJ)Lcom/perm/kate/api/Document;
    .locals 11

    .line 6514
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "title"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 6517
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v0

    const-string v2, "docs"

    const-string v4, "doc_id=? AND owner_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 6515
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return-object p4

    .line 6520
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6521
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6522
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-object p4

    .line 6525
    :cond_1
    new-instance p4, Lcom/perm/kate/api/Document;

    invoke-direct {p4}, Lcom/perm/kate/api/Document;-><init>()V

    .line 6526
    iput-wide p1, p4, Lcom/perm/kate/api/Document;->id:J

    .line 6527
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    .line 6528
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-object p4
.end method

.method public fetchDocFull(JJ)Lcom/perm/kate/api/Document;
    .locals 17

    move-object/from16 v0, p0

    .line 6536
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "owner_id"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const-string v1, "size"

    const/4 v13, 0x2

    aput-object v1, v4, v13

    const-string v1, "url"

    const/4 v14, 0x3

    aput-object v1, v4, v14

    const-string v1, "thumb"

    const/4 v15, 0x4

    aput-object v1, v4, v15

    const-string v1, "ext"

    const/4 v10, 0x5

    aput-object v1, v4, v10

    const-string v1, "thumb_s"

    const/4 v9, 0x6

    aput-object v1, v4, v9

    new-array v6, v13, [Ljava/lang/String;

    .line 6541
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    const-string v3, "docs"

    const-string v5, "doc_id=? AND owner_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string v16, "1"

    move-object v9, v1

    const/4 v1, 0x5

    move-object/from16 v10, v16

    .line 6537
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 6544
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6545
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 6546
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 6549
    :cond_1
    new-instance v3, Lcom/perm/kate/api/Document;

    invoke-direct {v3}, Lcom/perm/kate/api/Document;-><init>()V

    move-wide/from16 v4, p1

    .line 6550
    iput-wide v4, v3, Lcom/perm/kate/api/Document;->id:J

    .line 6551
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    .line 6552
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/Document;->owner_id:J

    .line 6553
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/Document;->size:J

    .line 6554
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    .line 6555
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    .line 6556
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    const/4 v1, 0x6

    .line 6557
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Document;->thumb_o:Ljava/lang/String;

    .line 6558
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public fetchDocs(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 6495
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECT ds._id as _id, ds.doc_id as doc_id, ds.title as title, ds.size as size, ds.url as url, ds.thumb as thumb, ds.ext as ext FROM docs as ds WHERE ds.owner_id=?"

    if-eqz p3, :cond_0

    const-string v2, ""

    .line 6496
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6497
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ds.title_lower LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 6500
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p3, v0, p1

    .line 6507
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by ds.doc_id DESC"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6508
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 6509
    invoke-virtual {p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFaveGroups(J)Landroid/database/Cursor;
    .locals 1

    .line 6431
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6432
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "select g._id as _id, g.name as name, g.photo_medium as photo_medium, g.type as type, g.is_closed as is_closed from fave_groups as fg left join groups as g on g._id=fg.group_id where fg.account_id=?"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFaveLinks(J)Landroid/database/Cursor;
    .locals 1

    .line 6329
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6330
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "select fl._id as _id, fl.url as url, fl.title as title, fl.description as description, fl.image_src as image_src, fl.link_id as link_id from fave_links as fl where fl.account_id=?"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFavePosts(JZ)Landroid/database/Cursor;
    .locals 4

    if-eqz p3, :cond_0

    neg-long v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    .line 6393
    :goto_0
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 6394
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "select w._id as _id, w.post_id as post_id, w.date as date, w.from_id as from_id, w.text as text, w.to_id as to_id, w.likes_count as likes_count, wl.[like] as [like], wl.reposted as reposted, w.reposts_count as reposts_count, w.comments_count as comments_count, w.copy_owner_id as copy_owner_id, w.copy_text as copy_text, w.signer_id as signer_id, w.views as views, w.copyright_name as copyright_name, g.photo_medium as photo_medium, g.name as name, w.attachments as attachments, u.first_name as first_name, u.last_name as last_name, u.photo_medium_rec as photo_medium_rec from fave_posts as fp left join wall as w on fp.post_id=w.post_id AND w.to_id=fp.owner_id left join users as u on w.from_id=u._id left join groups as g on -w.from_id=g._id left join wall_like as wl on wl.wall_owner_id=w.to_id AND wl.post_id=w.post_id AND wl.account_id=? AND wl.type=0 where fp.account_id=? order by fp._id"

    invoke-virtual {p3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFaveUsers(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 6271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6272
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "select u._id as _id, u.first_name as first_name, u.last_name as last_name, u.photo_medium_rec as photo_medium_rec, u.online as online, u.online_mobile as online_mobile from fave_users as fu left join users as u on u._id=fu.user_id where fu.account_id=?"

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 6273
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6274
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 6275
    invoke-static {p2}, Lcom/perm/utils/TranslitTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ? OR u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ?)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6280
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6281
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6282
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6283
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6284
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6285
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6287
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 6288
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6289
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 6290
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFriendBirthdays(J)Landroid/database/Cursor;
    .locals 1

    .line 2847
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    .line 2848
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "select u._id, u.birthdate, u.first_name, u.last_name, u.photo_medium_rec, u.online from users as u join friends as f on u._id=f.friend_id where u.birthdate<>\'\' and f.owner_id=?"

    .line 2849
    invoke-virtual {p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFriendCities(J)Landroid/database/Cursor;
    .locals 1

    .line 2788
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "select u.city, count(*) as x, c.name from friends as f join users as u on u._id=f.friend_id left join cities as c on u.city=c._id where f.owner_id=? AND u.city not null AND u.city!=0 GROUP BY u.city ORDER BY x DESC"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .line 2792
    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZIJ)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchFriends(JLjava/lang/String;ZIJ)Landroid/database/Cursor;
    .locals 3

    .line 2747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "select u._id, u.first_name, u.last_name, u.photo_medium_rec, u.online, u.online_mobile from friends as f join users as u on u._id=f.friend_id where f.owner_id=? "

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 2749
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2750
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2751
    invoke-static {p2}, Lcom/perm/utils/TranslitTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ? OR u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ?)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2756
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    .line 2764
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and u.sex =?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2765
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 p2, 0x0

    cmp-long p5, p6, p2

    if-eqz p5, :cond_2

    .line 2768
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and u.city =?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2769
    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 2772
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 2774
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ORDER BY online DESC, f._id"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2775
    :cond_3
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 2776
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroup(J)Lcom/perm/kate/api/Group;
    .locals 12

    .line 2257
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "name"

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const-string v0, "photo_medium"

    const/4 v11, 0x1

    aput-object v0, v3, v11

    .line 2260
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    const-string v2, "groups"

    const-string v4, "_id= ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 2258
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2264
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2265
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 2269
    :cond_1
    new-instance v1, Lcom/perm/kate/api/Group;

    invoke-direct {v1}, Lcom/perm/kate/api/Group;-><init>()V

    .line 2270
    iput-wide p1, v1, Lcom/perm/kate/api/Group;->gid:J

    .line 2271
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 2272
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 2273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public fetchGroupFull(J)Lcom/perm/kate/api/Group;
    .locals 23

    move-object/from16 v0, p0

    .line 2278
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v1, 0x1c

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "name"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "photo_medium"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const/4 v1, 0x2

    const-string v3, "is_closed"

    aput-object v3, v4, v1

    const/4 v1, 0x3

    const-string v3, "description"

    aput-object v3, v4, v1

    const/4 v1, 0x4

    const-string v3, "wiki"

    aput-object v3, v4, v1

    const-string v1, "fixed_post"

    const/4 v13, 0x5

    aput-object v1, v4, v13

    const/4 v1, 0x6

    const-string v3, "can_see_all_posts"

    aput-object v3, v4, v1

    const-string v1, "members_count"

    const/4 v14, 0x7

    aput-object v1, v4, v14

    const-string v1, "type"

    const/16 v15, 0x8

    aput-object v1, v4, v15

    const-string v1, "start_date"

    const/16 v10, 0x9

    aput-object v1, v4, v10

    const-string v1, "photo_big"

    const/16 v9, 0xa

    aput-object v1, v4, v9

    const-string v1, "status"

    const/16 v8, 0xb

    aput-object v1, v4, v8

    const-string v1, "photos"

    const/16 v7, 0xc

    aput-object v1, v4, v7

    const-string v1, "albums"

    const/16 v6, 0xd

    aput-object v1, v4, v6

    const-string v1, "topics"

    const/16 v5, 0xe

    aput-object v1, v4, v5

    const-string v1, "videos"

    const/16 v3, 0xf

    aput-object v1, v4, v3

    const-string v1, "audios"

    const/16 v15, 0x10

    aput-object v1, v4, v15

    const-string v1, "docs"

    const/16 v15, 0x11

    aput-object v1, v4, v15

    const-string v1, "posts"

    const/16 v15, 0x12

    aput-object v1, v4, v15

    const-string v1, "verified"

    const/16 v15, 0x13

    aput-object v1, v4, v15

    const-string v1, "can_message"

    const/16 v15, 0x14

    aput-object v1, v4, v15

    const-string v1, "market_enabled"

    const/16 v15, 0x15

    aput-object v1, v4, v15

    const-string v1, "market_wiki_id"

    const/16 v15, 0x16

    aput-object v1, v4, v15

    const/16 v1, 0x17

    const-string v16, "market_wiki_title"

    aput-object v16, v4, v1

    const-string v1, "market_contact_id"

    const/16 v15, 0x18

    aput-object v1, v4, v15

    const-string v1, "cover_400"

    const/16 v15, 0x19

    aput-object v1, v4, v15

    const-string v1, "cover_800"

    const/16 v15, 0x1a

    aput-object v1, v4, v15

    const/16 v1, 0x1b

    const-string v17, "podcasts"

    aput-object v17, v4, v1

    .line 2284
    invoke-direct/range {p0 .. p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v1

    const-string v17, "groups"

    const-string v18, "_id= ?"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "1"

    const/16 v15, 0xf

    move-object/from16 v3, v17

    const/16 v15, 0xe

    move-object/from16 v5, v18

    const/16 v15, 0xd

    move-object v6, v1

    const/16 v1, 0xc

    move-object/from16 v7, v19

    const/16 v15, 0xb

    move-object/from16 v8, v20

    const/16 v1, 0xa

    move-object/from16 v9, v21

    const/16 v15, 0x9

    move-object/from16 v10, v22

    .line 2279
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2288
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2289
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2290
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    return-object v1

    .line 2293
    :cond_1
    new-instance v3, Lcom/perm/kate/api/Group;

    invoke-direct {v3}, Lcom/perm/kate/api/Group;-><init>()V

    move-wide/from16 v4, p1

    .line 2294
    iput-wide v4, v3, Lcom/perm/kate/api/Group;->gid:J

    .line 2295
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 2296
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v4, 0x2

    .line 2297
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    const/4 v4, 0x3

    .line 2298
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    const/4 v4, 0x4

    .line 2299
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    .line 2300
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2301
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    :cond_2
    const/4 v4, 0x6

    .line 2302
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    .line 2303
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2304
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    :cond_4
    const/16 v4, 0x8

    .line 2305
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2306
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    .line 2307
    :cond_5
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2308
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    .line 2309
    :cond_6
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2310
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    :cond_7
    const/16 v1, 0xb

    .line 2311
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2312
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    :cond_8
    const/16 v1, 0xc

    .line 2313
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2314
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    :cond_9
    const/16 v1, 0xd

    .line 2315
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2316
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    :cond_a
    const/16 v1, 0xe

    .line 2317
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2318
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    :cond_b
    const/16 v1, 0xf

    .line 2319
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2320
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    :cond_c
    const/16 v1, 0x10

    .line 2321
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2322
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    :cond_d
    const/16 v1, 0x11

    .line 2323
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2324
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    :cond_e
    const/16 v1, 0x12

    .line 2325
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 2326
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->posts_count:Ljava/lang/Integer;

    :cond_f
    const/16 v1, 0x13

    .line 2327
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2328
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    :cond_10
    const/16 v1, 0x14

    .line 2329
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 2330
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_11

    const/4 v1, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    :cond_12
    const/16 v1, 0x15

    .line 2331
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2332
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_13

    const/4 v11, 0x1

    :cond_13
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    :cond_14
    const/16 v1, 0x16

    .line 2333
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 2334
    new-instance v4, Lcom/perm/kate/api/Page;

    invoke-direct {v4}, Lcom/perm/kate/api/Page;-><init>()V

    iput-object v4, v3, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    .line 2335
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/perm/kate/api/Page;->id:J

    .line 2336
    iget-object v1, v3, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    const/16 v4, 0x17

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    :cond_15
    const/16 v1, 0x18

    .line 2338
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 2339
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    :cond_16
    const/16 v1, 0x19

    .line 2340
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 2341
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    :cond_17
    const/16 v1, 0x1a

    .line 2342
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2343
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    :cond_18
    const/16 v1, 0x1b

    .line 2344
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x1b

    .line 2345
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Group;->podcasts_count:Ljava/lang/Integer;

    .line 2346
    :cond_19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public fetchGroupTopics(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 6010
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6012
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    .line 6013
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "group_id=?"

    if-nez v2, :cond_0

    .line 6014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND title_lower LIKE ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    .line 6015
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    move-object p1, v2

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v0, v6

    :goto_0
    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "_id"

    aput-object p3, p2, v5

    const-string p3, "group_id"

    aput-object p3, p2, v4

    const-string p3, "title"

    aput-object p3, p2, v3

    const/4 p3, 0x3

    const-string v2, "comments"

    aput-object v2, p2, p3

    const/4 p3, 0x4

    const-string v2, "created"

    aput-object v2, p2, p3

    const/4 p3, 0x5

    const-string v2, "created_by"

    aput-object v2, p2, p3

    const/4 p3, 0x6

    const-string v2, "updated"

    aput-object v2, p2, p3

    const/4 p3, 0x7

    const-string v2, "updated_by"

    aput-object v2, p2, p3

    const/16 p3, 0x8

    const-string v2, "is_closed"

    aput-object v2, p2, p3

    const/16 p3, 0x9

    const-string v2, "is_fixed"

    aput-object v2, p2, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "group_topics"

    const-string v8, "is_fixed DESC,updated DESC"

    move-object v3, p2

    move-object v4, v0

    move-object v5, p1

    .line 6017
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11

    .line 2588
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2591
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2592
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2594
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2596
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const-string p1, "_id"

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "groups"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 2603
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2604
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2605
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2606
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public fetchLatestDialog(JJ)J
    .locals 2

    .line 3744
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3745
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "SELECT chat_id FROM messages WHERE account_id=? AND group_id=? ORDER BY date DESC limit 0,1"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3746
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    .line 3747
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-wide/16 p1, 0x0

    return-wide p1

    .line 3750
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3751
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 3752
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide p2
.end method

.method public fetchManagedGroups(JLjava/lang/Long;)Ljava/util/ArrayList;
    .locals 11

    .line 2680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2683
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-wide v3, p1

    move-object v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZLjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2685
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2686
    new-instance p1, Lcom/perm/kate/api/Group;

    invoke-direct {p1}, Lcom/perm/kate/api/Group;-><init>()V

    const-string p2, "_id"

    .line 2687
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/perm/kate/api/Group;->gid:J

    const-string p2, "name"

    .line 2688
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 2689
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 2694
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2695
    :cond_2
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public fetchMessage(JJJ)Lcom/perm/kate/api/Message;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT m.date, m.uid, m.body, m.is_out, m.attachments FROM messages as m WHERE m.message_id=? AND m.account_id=? AND m.group_id=?"

    .line 3867
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    .line 3868
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x2

    aput-object p5, v4, p6

    invoke-virtual {v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p5, :cond_2

    .line 3869
    :try_start_1
    invoke-interface {p5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3871
    :cond_0
    invoke-interface {p5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3872
    new-instance v0, Lcom/perm/kate/api/Message;

    invoke-direct {v0}, Lcom/perm/kate/api/Message;-><init>()V

    .line 3873
    iput-wide p3, v0, Lcom/perm/kate/api/Message;->mid:J

    .line 3874
    invoke-interface {p5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    iput-wide p3, v0, Lcom/perm/kate/api/Message;->date:J

    .line 3875
    invoke-interface {p5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    iput-wide p3, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 3876
    invoke-interface {p5, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 3877
    invoke-interface {p5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    const-wide/16 v1, 0x1

    cmp-long p6, p3, v1

    if-nez p6, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, v0, Lcom/perm/kate/api/Message;->is_out:Z

    const/4 p3, 0x4

    .line 3878
    invoke-interface {p5, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3882
    invoke-interface {p5}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, p5

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    invoke-interface {p5}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3883
    :cond_4
    throw p1
.end method

.method public fetchMessagesThread(JJJZJ)Landroid/database/Cursor;
    .locals 0

    .line 3776
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/String;

    .line 3780
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-static {p8, p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p3, p2

    .line 3781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SELECT m.message_id, m.date, m.uid, m.title, m.body, m.is_out, m.read_state, m.have_attachments, m.important, m.action, m.action_mid, m.action_text, m.update_time, substr(m.attachments, 1, 2087152) as attachments FROM messages as m "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "WHERE m.chat_id=? AND m.account_id=? AND m.group_id=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ORDER BY m.message_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p7, :cond_0

    .line 3791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DESC"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3792
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 3793
    invoke-virtual {p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchNote(J)Lcom/perm/kate/api/Note;
    .locals 15

    move-object v0, p0

    .line 4204
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v11, "date"

    aput-object v11, v4, v1

    const/4 v1, 0x2

    const-string v12, "from_id"

    aput-object v12, v4, v1

    const/4 v1, 0x3

    const-string v13, "text"

    aput-object v13, v4, v1

    const/4 v1, 0x4

    const-string v14, "title"

    aput-object v14, v4, v1

    .line 4207
    invoke-direct/range {p0 .. p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v6

    const-string v3, "notes"

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    .line 4205
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4211
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4212
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 4213
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 4216
    :cond_1
    new-instance v2, Lcom/perm/kate/api/Note;

    invoke-direct {v2}, Lcom/perm/kate/api/Note;-><init>()V

    move-wide/from16 v3, p1

    .line 4217
    iput-wide v3, v2, Lcom/perm/kate/api/Note;->nid:J

    .line 4218
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Note;->date:J

    .line 4219
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Note;->owner_id:J

    .line 4220
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    .line 4221
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    .line 4222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public fetchNotes(J)Landroid/database/Cursor;
    .locals 9

    .line 4227
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "date"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const-string v2, "from_id"

    aput-object v2, v3, v0

    const/4 v0, 0x3

    const-string v2, "text"

    aput-object v2, v3, v0

    const/4 v0, 0x4

    const-string v2, "title"

    aput-object v2, v3, v0

    const/4 v0, 0x5

    const-string v2, "comments"

    aput-object v2, v3, v0

    .line 4231
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    const-string v2, "notes"

    const-string v4, "from_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date DESC"

    .line 4228
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchOnlineFriends(J)Landroid/database/Cursor;
    .locals 1

    .line 2815
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    .line 2816
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "select u._id, u.first_name, u.last_name, u.photo_medium_rec, u.online, u.online_mobile from users as u join friends as f on u._id=f.friend_id where f.owner_id=? AND u.online=1"

    .line 2817
    invoke-virtual {p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchPhoto(JJJ)Lcom/perm/kate/api/Photo;
    .locals 2

    .line 3231
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3232
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, v1, p6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "SELECT p.photo_id, p.src, p.src_big, p.src_xbig, p.src_xxbig, p.src_xxxbig, p.owner_id, p.phototext, p.album_id, wl.[like] as [like], p.like_count as like_count, p.comments_count as comments_count ,p.lat as lat, p.lon as lon FROM photos as p LEFT JOIN wall_like as wl on wl.post_id=p.photo_id AND wl.wall_owner_id=p.owner_id AND wl.account_id=? AND wl.type=1 WHERE p.photo_id=? AND p.owner_id=? LIMIT 1"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3235
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_1

    .line 3236
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 3239
    :cond_1
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    return-object p1
.end method

.method public fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;
    .locals 18

    move-object/from16 v1, p0

    .line 3194
    iget-object v0, v1, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v11, 0x0

    :try_start_0
    const-string v3, "photos"

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "src"

    const/4 v12, 0x0

    aput-object v0, v4, v12

    const-string v0, "src_big"

    const/4 v13, 0x1

    aput-object v0, v4, v13

    const-string v0, "phototext"

    const/4 v14, 0x2

    aput-object v0, v4, v14

    const-string v0, "album_id"

    const/4 v15, 0x3

    aput-object v0, v4, v15

    const-string v0, "created"

    const/4 v10, 0x4

    aput-object v0, v4, v10

    const-string v0, "width"

    const/4 v9, 0x5

    aput-object v0, v4, v9

    const-string v0, "height"

    const/4 v8, 0x6

    aput-object v0, v4, v8

    const-string v5, "photo_id=? AND owner_id=?"

    new-array v6, v14, [Ljava/lang/String;

    .line 3199
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v13

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string v17, "1"

    move-object v8, v0

    const/4 v0, 0x5

    move-object/from16 v9, v16

    const/4 v0, 0x4

    move-object/from16 v10, v17

    .line 3197
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 3220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v11

    .line 3202
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 3220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v11

    .line 3204
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3205
    new-instance v3, Lcom/perm/kate/api/Photo;

    invoke-direct {v3}, Lcom/perm/kate/api/Photo;-><init>()V

    move-wide/from16 v4, p1

    .line 3206
    iput-wide v4, v3, Lcom/perm/kate/api/Photo;->pid:J

    .line 3207
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 3208
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 3209
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 3210
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 3211
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/Photo;->aid:J

    .line 3212
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/Photo;->created:J

    const/4 v0, 0x5

    .line 3213
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/perm/kate/api/Photo;->width:I

    const/4 v0, 0x6

    .line 3214
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/perm/kate/api/Photo;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v11, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3221
    :cond_3
    throw v0
.end method

.method public fetchPhotos(JJJ)Landroid/database/Cursor;
    .locals 2

    .line 3356
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3357
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, v1, p6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "SELECT p.photo_id, p.src, p.src_big, p.src_xbig, p.src_xxbig, p.src_xxxbig, p.owner_id, p.phototext, p.album_id, wl.[like] as [like], p.like_count as like_count, p.comments_count as comments_count ,p.lat as lat, p.lon as lon FROM albumphoto as ap JOIN photos as p on p.photo_id=ap.photo_id AND p.owner_id=ap.photo_owner_id LEFT JOIN wall_like as wl on wl.post_id=p.photo_id AND wl.wall_owner_id=p.owner_id AND wl.account_id=? AND wl.type=1 WHERE ap.album_id=? AND ap.album_owner_id=? ORDER BY ap._id"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;
    .locals 11

    .line 5896
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 5899
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v5, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v5, p4

    const-string v2, "poll"

    const/4 v3, 0x0

    const-string v4, "poll_id=? AND account_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 5897
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 5902
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5903
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5904
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 5907
    :cond_1
    new-instance v0, Lcom/perm/kate/api/VkPoll;

    invoke-direct {v0}, Lcom/perm/kate/api/VkPoll;-><init>()V

    .line 5908
    iput-wide p1, v0, Lcom/perm/kate/api/VkPoll;->id:J

    const-string p1, "question"

    .line 5909
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    const-string p1, "owner_id"

    .line 5910
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/perm/kate/api/VkPoll;->owner_id:J

    const-string p1, "votes"

    .line 5911
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    const-string p1, "answers"

    .line 5912
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    const-wide/16 p1, 0x1

    const-string v1, "anonymous"

    .line 5913
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    const/4 v10, 0x1

    :cond_2
    iput-boolean v10, v0, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    .line 5914
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public fetchPostNews(JI)Landroid/database/Cursor;
    .locals 2

    .line 3067
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3068
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "SELECT n._id as _id, n.type as type, n.post_id as post_id, n.source_id as source_id, n.text as text, n.date as date, n.comment_count as comment_count, n.comment_can_post as comment_can_post, n.like_count as like_count, n.user_like as user_like, n.from_id as from_id, n.comments as comments_json, n.is_comments as is_comments, n.reposts_count as reposts_count, n.copy_owner_id as copy_owner_id, n.copy_text as copy_text, n.signer_id as signer_id, n.views as views, n.user_reposted as user_reposted, n.attachments as attachments, n.copyright_name as copyright_name, group_concat(p.photo_id) as photo_ids, group_concat(p.src) as photo_srcs, group_concat(p.src_big) as photo_srcs_big, group_concat(p.album_id) as album_ids, group_concat(p2.photo_id) as photo_ids_tag, group_concat(p.width) as photo_widths, group_concat(p.height) as photo_heights, group_concat(p2.src) as photo_srcs_tag, group_concat(p2.src_big) as phototag_srcs_big, group_concat(p2.album_id) as album_ids_tag, u.first_name as first_name, u.last_name as last_name, group_concat(p2.width) as photo_tag_widths, group_concat(p2.height) as photo_tag_heights, u.photo as photo, u.photo_big as photo_big, u.online as online, g.photo_medium as photo_medium, g.name as name, group_concat(p.owner_id) as owner_ids, group_concat(p2.owner_id) as owner_ids_tag, group_concat(f.first_name) as friend_first_names, group_concat(f.last_name) as friend_last_names, group_concat(f._id) as friend_ids, n.ads_title as ads_title, n.age_restriction as age_restriction, n.ad_data as ad_data, n.ad_data_impression as ad_data_impression, n.statistics as statistics, n.track_code as track_code, n.ads_id1 as ads_id1, n.ads_id2 as ads_id2 FROM news as n left join news_photo as np on n._id=np.news_id left join photos as p on np.photo_id=p.photo_id AND np.photo_owner_id=p.owner_id left join news_phototags as npt on n._id=npt.news_id left join photos as p2 on npt.photo_id=p2.photo_id AND npt.photo_owner_id=p2.owner_id left join news_friend as nf on n._id=nf.news_id left join users as f on nf.user_id=f._id left join users as u on n.source_id=u._id left join groups as g on -n.source_id=g._id where n.account_id=? AND n.is_comments=? group by n._id order by n._id"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchTopFriends(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 2797
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "select u._id, u.first_name, u.last_name, u.photo_medium_rec, u.online from users as u join friends as f on u._id=f.friend_id where f.owner_id=?"

    if-eqz p3, :cond_0

    const-string v2, ""

    .line 2798
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2799
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND (u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ?) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2802
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    .line 2803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ORDER BY online DESC, f._id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIMIT 0,20"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    move-object v1, p1

    .line 2806
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2807
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchTopicTitle(J)Ljava/lang/String;
    .locals 10

    .line 6036
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "title"

    const/4 v9, 0x0

    aput-object v2, v3, v9

    new-array v5, v0, [Ljava/lang/String;

    .line 6037
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v9

    const-string v2, "group_topics"

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6038
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6040
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6041
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6042
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchUser(J)Lcom/perm/kate/api/User;
    .locals 18

    move-object/from16 v0, p0

    .line 1831
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const/4 v1, 0x1

    const-string v12, "first_name"

    aput-object v12, v4, v1

    const/4 v3, 0x2

    const-string v13, "last_name"

    aput-object v13, v4, v3

    const/4 v3, 0x3

    const-string v14, "photo_medium_rec"

    aput-object v14, v4, v3

    const/4 v3, 0x4

    const-string v15, "photo"

    aput-object v15, v4, v3

    const/4 v3, 0x5

    const-string v10, "online"

    aput-object v10, v4, v3

    const/4 v3, 0x6

    const-string v9, "online_mobile"

    aput-object v9, v4, v3

    .line 1834
    invoke-direct/range {p0 .. p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v6

    const-string v3, "users"

    const-string v5, "_id= ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const-string v17, "1"

    move-object v1, v9

    move-object/from16 v9, v16

    move-object v11, v10

    move-object/from16 v10, v17

    .line 1832
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1838
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1839
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1840
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 1843
    :cond_1
    new-instance v3, Lcom/perm/kate/api/User;

    invoke-direct {v3}, Lcom/perm/kate/api/User;-><init>()V

    move-wide/from16 v4, p1

    .line 1844
    iput-wide v4, v3, Lcom/perm/kate/api/User;->uid:J

    .line 1845
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 1846
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 1847
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1848
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1849
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 1850
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    .line 1851
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public fetchUserByDomain(Ljava/lang/String;)Lcom/perm/kate/api/User;
    .locals 19

    move-object/from16 v0, p0

    .line 1856
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v11, "_id"

    aput-object v11, v4, v1

    const/4 v12, 0x1

    const-string v13, "first_name"

    aput-object v13, v4, v12

    const/4 v3, 0x2

    const-string v14, "last_name"

    aput-object v14, v4, v3

    const/4 v3, 0x3

    const-string v15, "photo_medium_rec"

    aput-object v15, v4, v3

    const/4 v3, 0x4

    const-string v10, "photo"

    aput-object v10, v4, v3

    const/4 v3, 0x5

    const-string v9, "online"

    aput-object v9, v4, v3

    const/4 v3, 0x6

    const-string v8, "domain"

    aput-object v8, v4, v3

    new-array v6, v12, [Ljava/lang/String;

    aput-object p1, v6, v1

    const-string v3, "users"

    const-string v5, "domain= ?"

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "1"

    move-object v1, v8

    move-object/from16 v8, v16

    move-object v12, v9

    move-object/from16 v9, v17

    move-object v0, v10

    move-object/from16 v10, v18

    .line 1857
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1863
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1864
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1865
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 1868
    :cond_1
    new-instance v3, Lcom/perm/kate/api/User;

    invoke-direct {v3}, Lcom/perm/kate/api/User;-><init>()V

    .line 1869
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/User;->uid:J

    .line 1870
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 1871
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 1872
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1873
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1874
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 1875
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 1876
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public fetchUserFull(J)Lcom/perm/kate/api/User;
    .locals 31

    const-string v0, "domain"

    const-string v1, "photo_200"

    const-string v2, "photo_big"

    const-string v3, "photo"

    const-string v4, "nickname"

    const-string v5, "photo_medium_rec"

    const-string v6, "last_name"

    const-string v7, "first_name"

    const-string v8, "crop_photo_rect_y2"

    const-string v9, "crop_photo_rect_y1"

    const-string v10, "crop_photo_rect_x2"

    const-string v11, "crop_photo_rect_x1"

    const-string v12, "mutual_friends"

    const-string v13, "verified"

    const-string v14, "posts"

    const-string v15, "gifts"

    move-object/from16 v16, v8

    const-string v8, "online_friends"

    move-object/from16 v17, v9

    const-string v9, "sex"

    const/16 v18, 0x0

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v10, p0

    .line 1884
    :try_start_0
    iget-object v11, v10, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    const-string v22, "users"

    const/16 v11, 0x2f

    new-array v11, v11, [Ljava/lang/String;

    const-string v23, "_id"

    const/16 v30, 0x0

    aput-object v23, v11, v30

    const/4 v10, 0x1

    aput-object v7, v11, v10

    const/16 v23, 0x2

    aput-object v6, v11, v23

    const/16 v23, 0x3

    aput-object v5, v11, v23

    const/16 v23, 0x4

    aput-object v4, v11, v23

    const/16 v23, 0x5

    aput-object v3, v11, v23

    const/16 v23, 0x6

    aput-object v2, v11, v23

    const/16 v23, 0x7

    aput-object v1, v11, v23

    const/16 v23, 0x8

    aput-object v0, v11, v23

    const/16 v23, 0x9

    aput-object v9, v11, v23

    const/16 v23, 0xa

    const-string v24, "birthdate"

    aput-object v24, v11, v23

    const/16 v23, 0xb

    const-string v24, "city"

    aput-object v24, v11, v23

    const/16 v23, 0xc

    const-string v24, "country"

    aput-object v24, v11, v23

    const/16 v23, 0xd

    const-string v24, "timezone"

    aput-object v24, v11, v23

    const/16 v23, 0xe

    const-string v24, "has_mobile"

    aput-object v24, v11, v23

    const/16 v23, 0xf

    const-string v24, "rate"

    aput-object v24, v11, v23

    const/16 v23, 0x10

    const-string v24, "mobile_phone"

    aput-object v24, v11, v23

    const/16 v23, 0x11

    const-string v24, "home_phone"

    aput-object v24, v11, v23

    const/16 v23, 0x12

    const-string v24, "university"

    aput-object v24, v11, v23

    const/16 v23, 0x13

    const-string v24, "university_name"

    aput-object v24, v11, v23

    const/16 v23, 0x14

    const-string v24, "faculty"

    aput-object v24, v11, v23

    const/16 v23, 0x15

    const-string v24, "faculty_name"

    aput-object v24, v11, v23

    const/16 v23, 0x16

    const-string v24, "graduation"

    aput-object v24, v11, v23

    const/16 v23, 0x17

    const-string v24, "online"

    aput-object v24, v11, v23

    const/16 v23, 0x18

    const-string v24, "online_mobile"

    aput-object v24, v11, v23

    const/16 v23, 0x19

    const-string v24, "status"

    aput-object v24, v11, v23

    const/16 v23, 0x1a

    const-string v24, "relation"

    aput-object v24, v11, v23

    const/16 v23, 0x1b

    const-string v24, "last_seen"

    aput-object v24, v11, v23

    const/16 v23, 0x1c

    const-string v24, "albums"

    aput-object v24, v11, v23

    const/16 v23, 0x1d

    const-string v24, "photos"

    aput-object v24, v11, v23

    const/16 v23, 0x1e

    const-string v24, "audios"

    aput-object v24, v11, v23

    const/16 v23, 0x1f

    const-string v24, "videos"

    aput-object v24, v11, v23

    const/16 v23, 0x20

    const-string v24, "notes"

    aput-object v24, v11, v23

    const/16 v23, 0x21

    const-string v24, "friends"

    aput-object v24, v11, v23

    const/16 v23, 0x22

    aput-object v8, v11, v23

    const/16 v23, 0x23

    const-string v24, "user_photos"

    aput-object v24, v11, v23

    const/16 v23, 0x24

    const-string v24, "groups"

    aput-object v24, v11, v23

    const/16 v23, 0x25

    const-string v24, "followers"

    aput-object v24, v11, v23

    const/16 v23, 0x26

    aput-object v15, v11, v23

    const/16 v23, 0x27

    aput-object v14, v11, v23

    const/16 v23, 0x28

    const-string v24, "photo_400_orig"

    aput-object v24, v11, v23

    const/16 v23, 0x29

    aput-object v13, v11, v23

    const/16 v23, 0x2a

    aput-object v12, v11, v23

    const/16 v23, 0x2b

    aput-object v20, v11, v23

    const/16 v23, 0x2c

    aput-object v19, v11, v23

    const/16 v23, 0x2d

    aput-object v17, v11, v23

    const/16 v23, 0x2e

    aput-object v16, v11, v23

    const-string v24, "_id= ?"

    .line 1896
    invoke-direct/range {p0 .. p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, "1"

    move-object/from16 v23, v11

    .line 1885
    invoke-virtual/range {v21 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_1

    if-eqz v11, :cond_0

    .line 1968
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v18

    .line 1900
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1901
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v21, :cond_2

    .line 1968
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v18

    .line 1903
    :cond_2
    :try_start_2
    new-instance v10, Lcom/perm/kate/api/User;

    invoke-direct {v10}, Lcom/perm/kate/api/User;-><init>()V

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-wide/from16 v12, p1

    .line 1904
    iput-wide v12, v10, Lcom/perm/kate/api/User;->uid:J

    .line 1905
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 1906
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v10, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 1907
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    .line 1908
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1909
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1910
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 1911
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    const-string v1, "photo_400_orig"

    .line 1912
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 1913
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 1914
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1915
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    :cond_3
    const-string v0, "birthdate"

    .line 1916
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    const-string v0, "city"

    .line 1917
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    const-string v0, "country"

    .line 1918
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    const-string v0, "timezone"

    .line 1919
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    const-string v0, "has_mobile"

    .line 1920
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    const-string v0, "rate"

    .line 1921
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    const-string v0, "mobile_phone"

    .line 1922
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    const-string v0, "home_phone"

    .line 1923
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    const-string v0, "university"

    .line 1924
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    const-string v0, "university_name"

    .line 1925
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v0, "faculty"

    .line 1926
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    const-string v0, "faculty_name"

    .line 1927
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    const-string v0, "graduation"

    .line 1928
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    const-string v0, "online"

    .line 1929
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    const-string v0, "online_mobile"

    .line 1930
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/16 v30, 0x1

    :cond_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    const-string v0, "status"

    .line 1931
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v0, "relation"

    .line 1932
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    const-string v0, "last_seen"

    .line 1933
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/perm/kate/api/User;->last_seen:J

    const-string v0, "albums"

    .line 1934
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->albums_count:I

    const-string v0, "photos"

    .line 1935
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->photo_count:I

    const-string v0, "videos"

    .line 1936
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->videos_count:I

    const-string v0, "audios"

    .line 1937
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->audios_count:I

    const-string v0, "notes"

    .line 1938
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->notes_count:I

    const-string v0, "friends"

    .line 1939
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->friends_count:I

    .line 1940
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1941
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    :cond_7
    const-string v0, "user_photos"

    .line 1942
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->user_photos_count:I

    const-string v0, "groups"

    .line 1943
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->groups_count:I

    const-string v0, "followers"

    .line 1944
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->followers_count:I

    .line 1945
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1946
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/perm/kate/api/User;->gifts_count:I

    .line 1947
    :cond_8
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1948
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->posts_count:Ljava/lang/Integer;

    :cond_9
    move-object/from16 v0, v23

    .line 1949
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1950
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    :cond_a
    move-object/from16 v0, v22

    .line 1951
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1952
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    .line 1954
    :cond_b
    new-instance v0, Lcom/perm/kate/api/User$Rect;

    invoke-direct {v0}, Lcom/perm/kate/api/User$Rect;-><init>()V

    move-object/from16 v1, v20

    .line 1955
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1956
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User$Rect;->x1:D

    :cond_c
    move-object/from16 v1, v19

    .line 1957
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1958
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User$Rect;->x2:D

    :cond_d
    move-object/from16 v1, v17

    .line 1959
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1960
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User$Rect;->y1:D

    :cond_e
    move-object/from16 v1, v16

    .line 1961
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1962
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User$Rect;->y2:D

    .line 1963
    :cond_f
    iget-wide v1, v0, Lcom/perm/kate/api/User$Rect;->x1:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_10

    iget-wide v1, v0, Lcom/perm/kate/api/User$Rect;->x2:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_10

    iget-wide v1, v0, Lcom/perm/kate/api/User$Rect;->y1:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_10

    iget-wide v1, v0, Lcom/perm/kate/api/User$Rect;->y2:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_11

    .line 1964
    :cond_10
    iput-object v0, v10, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1968
    :cond_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v10

    :catchall_0
    move-exception v0

    move-object/from16 v18, v11

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v18, :cond_12

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1969
    :cond_12
    throw v0
.end method

.method public fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZLjava/lang/Long;)Landroid/database/Cursor;
    .locals 4

    .line 2562
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "select g._id as _id, g.name as name, g.photo_medium as photo_medium, g.type as type, g.is_closed as is_closed, g.start_date as start_date from groups as g join user_group as ug on g._id=ug.group_id where ug.user_id=?"

    if-eqz p4, :cond_0

    const-string v2, ""

    .line 2563
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2564
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 2566
    invoke-static {p4}, Lcom/perm/utils/TranslitTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND (g.name_lower LIKE ? OR g.name_lower LIKE ?) "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2570
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p4, v2, p1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    move-object v0, v2

    :cond_0
    const-string p1, " "

    if-eqz p3, :cond_1

    .line 2573
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " AND g.type="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p5, :cond_2

    .line 2575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AND (ug.admin_level=2 OR ug.admin_level=3) "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    .line 2577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AND (ug.admin_level=1 OR ug.admin_level=2 OR ug.admin_level=3) "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz p8, :cond_4

    .line 2579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AND g.members_count>="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz p7, :cond_5

    .line 2581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ORDER BY g.start_date "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2582
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2583
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public fetchUserTargetingParams(J)Lcom/perm/kate/api/User;
    .locals 13

    const/4 v0, 0x0

    .line 1977
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "users"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "sex"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "birthdate"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const-string v5, "_id= ?"

    .line 1979
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    .line 1978
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 1992
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1983
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1984
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    .line 1992
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 1986
    :cond_2
    :try_start_2
    new-instance p2, Lcom/perm/kate/api/User;

    invoke-direct {p2}, Lcom/perm/kate/api/User;-><init>()V

    .line 1987
    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1988
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    .line 1989
    :cond_3
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1992
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1993
    :cond_4
    throw p2
.end method

.method public fetchUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11

    .line 2157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2160
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2161
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2163
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2166
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const-string p1, "_id"

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "photo_medium_rec"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not NULL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "users"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 2173
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2176
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public fetchVideo(JJ)Lcom/perm/kate/api/Video;
    .locals 17

    move-object/from16 v0, p0

    .line 5749
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v1, 0x8

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "owner_id"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const-string v1, "link"

    const/4 v3, 0x2

    aput-object v1, v4, v3

    const-string v1, "player_url"

    const/4 v13, 0x3

    aput-object v1, v4, v13

    const-string v1, "duration"

    const/4 v14, 0x4

    aput-object v1, v4, v14

    const-string v1, "image"

    const/4 v15, 0x5

    aput-object v1, v4, v15

    const-string v1, "image_big"

    const/4 v10, 0x6

    aput-object v1, v4, v10

    const-string v1, "platform"

    const/4 v9, 0x7

    aput-object v1, v4, v9

    new-array v6, v3, [Ljava/lang/String;

    .line 5753
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    const-string v3, "video"

    const-string v5, "video_id=? AND owner_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string v16, "1"

    move-object v9, v1

    const/4 v1, 0x6

    move-object/from16 v10, v16

    .line 5750
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 5756
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5757
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 5758
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 5761
    :cond_1
    new-instance v3, Lcom/perm/kate/api/Video;

    invoke-direct {v3}, Lcom/perm/kate/api/Video;-><init>()V

    move-wide/from16 v4, p1

    .line 5762
    iput-wide v4, v3, Lcom/perm/kate/api/Video;->vid:J

    .line 5763
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 5764
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/Video;->owner_id:J

    .line 5765
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    .line 5766
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/Video;->duration:J

    .line 5767
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 5768
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    const/4 v1, 0x7

    .line 5769
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    .line 5770
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;
    .locals 15

    move-object v0, p0

    .line 5775
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "owner_id"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const-string v1, "description"

    const/4 v13, 0x2

    aput-object v1, v4, v13

    const-string v1, "date"

    const/4 v14, 0x3

    aput-object v1, v4, v14

    new-array v6, v13, [Ljava/lang/String;

    .line 5778
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    const-string v3, "video"

    const-string v5, "video_id=? AND owner_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    .line 5776
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 5781
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5782
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 5783
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 5786
    :cond_1
    new-instance v2, Lcom/perm/kate/api/Video;

    invoke-direct {v2}, Lcom/perm/kate/api/Video;-><init>()V

    move-wide/from16 v3, p1

    .line 5787
    iput-wide v3, v2, Lcom/perm/kate/api/Video;->vid:J

    .line 5788
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 5789
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Video;->owner_id:J

    .line 5790
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 5791
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Video;->date:J

    .line 5792
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public fetchVideos(JJJ)Ljava/util/ArrayList;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT v._id as _id, v.video_id as video_id, v.owner_id as owner_id, v.title as title, v.description as description, v.duration as duration, v.platform as platform, v.link as link, v.image as image, v.image_big as image_big, v.player_url as player_url, v.views as views, v.likes_count as likes_count, wl.[like] as [like] FROM video_in_album as va JOIN video as v on v.video_id=va.video_id AND v.owner_id=va.video_owner_id LEFT JOIN wall_like as wl on wl.post_id=v.video_id AND wl.wall_owner_id=v.owner_id AND wl.account_id=? AND wl.type=6 WHERE va.album_owner_id=? AND va.album_id=? ORDER BY va._id"

    .line 5707
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 5708
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v4

    const/4 p3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p3

    const/4 p1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5709
    invoke-direct {p0, v0}, Lcom/perm/kate/db/DataHelper;->cursorToVideoArray(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5712
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5713
    :cond_1
    throw p1
.end method

.method public fetchWallPost(JJ)Ljava/lang/Long;
    .locals 11

    .line 4535
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 4538
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v2, "wall"

    const-string v4, "post_id=? AND to_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 4536
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 4542
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4543
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_1

    .line 4544
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 4547
    :cond_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 4548
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public fetchWallPostFromNews(JJ)Lcom/perm/kate/api/WallMessage;
    .locals 22

    move-object/from16 v0, p0

    .line 3072
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v1, 0x14

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "text"

    const/4 v11, 0x0

    aput-object v1, v4, v11

    const-string v1, "source_id"

    const/4 v12, 0x1

    aput-object v1, v4, v12

    const-string v1, "copy_owner_id"

    const/4 v13, 0x2

    aput-object v1, v4, v13

    const-string v1, "copy_text"

    const/4 v14, 0x3

    aput-object v1, v4, v14

    const-string v1, "date"

    const/4 v15, 0x4

    aput-object v1, v4, v15

    const-string v1, "comment_count"

    const/4 v10, 0x5

    aput-object v1, v4, v10

    const-string v1, "like_count"

    const/4 v9, 0x6

    aput-object v1, v4, v9

    const-string v1, "signer_id"

    const/4 v8, 0x7

    aput-object v1, v4, v8

    const-string v1, "post_id"

    const/16 v7, 0x8

    aput-object v1, v4, v7

    const-string v1, "user_like"

    const/16 v6, 0x9

    aput-object v1, v4, v6

    const-string v1, "reposts_count"

    const/16 v5, 0xa

    aput-object v1, v4, v5

    const-string v1, "user_reposted"

    const/16 v3, 0xb

    aput-object v1, v4, v3

    const-string v1, "comment_can_post"

    const/16 v15, 0xc

    aput-object v1, v4, v15

    const-string v1, "views"

    const/16 v15, 0xd

    aput-object v1, v4, v15

    const-string v1, "statistics"

    const/16 v15, 0xe

    aput-object v1, v4, v15

    const-string v1, "ad_data"

    const/16 v15, 0xf

    aput-object v1, v4, v15

    const-string v1, "track_code"

    const/16 v15, 0x10

    aput-object v1, v4, v15

    const-string v1, "attachments"

    const/16 v15, 0x11

    aput-object v1, v4, v15

    const-string v1, "copyright_link"

    const/16 v15, 0x12

    aput-object v1, v4, v15

    const-string v1, "copyright_name"

    const/16 v15, 0x13

    aput-object v1, v4, v15

    .line 3085
    invoke-direct/range {p0 .. p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v1

    const-string v16, "news"

    const-string v17, "_id=?"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "1"

    const/16 v15, 0xb

    move-object/from16 v3, v16

    const/16 v15, 0xa

    move-object/from16 v5, v17

    const/16 v15, 0x9

    move-object v6, v1

    const/16 v1, 0x8

    move-object/from16 v7, v18

    const/4 v15, 0x7

    move-object/from16 v8, v19

    const/4 v15, 0x6

    move-object/from16 v9, v20

    const/4 v15, 0x5

    move-object/from16 v10, v21

    .line 3073
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3087
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 3088
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    return-object v1

    .line 3091
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3092
    new-instance v3, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v3}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 3093
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->id:J

    .line 3094
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 3095
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 3096
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->from_id:J

    .line 3097
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    .line 3098
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    const/4 v1, 0x4

    .line 3099
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->date:J

    .line 3100
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->comment_count:J

    const/4 v1, 0x6

    .line 3101
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/perm/kate/api/WallMessage;->like_count:I

    const/4 v1, 0x7

    .line 3102
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->signer_id:J

    const/16 v1, 0x9

    .line 3103
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v3, Lcom/perm/kate/api/WallMessage;->user_like:Z

    const/16 v1, 0xa

    .line 3104
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    const/16 v1, 0xb

    .line 3105
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v3, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    const/16 v1, 0xc

    .line 3106
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v12, :cond_3

    const/4 v11, 0x1

    :cond_3
    iput-boolean v11, v3, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    const/16 v1, 0xd

    .line 3107
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3108
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    :cond_4
    const/16 v1, 0xe

    .line 3111
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/db/DataHelper;->deserializeStats([B)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->statistics:Ljava/util/List;

    const/16 v1, 0xf

    .line 3112
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    const/16 v1, 0x10

    .line 3113
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    const/16 v1, 0x11

    .line 3115
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    move-wide/from16 v4, p3

    invoke-static {v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    const/16 v1, 0x12

    .line 3116
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->copyright_link:Ljava/lang/String;

    const/16 v1, 0x13

    .line 3117
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/WallMessage;->copyright_name:Ljava/lang/String;

    .line 3118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public fetchWallPostFull(JJJ)Lcom/perm/kate/api/WallMessage;
    .locals 6

    .line 4553
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 4567
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "select w.post_id as post_id, w.date as date, w.from_id as from_id, w.text as text, w.to_id as to_id, w.likes_count as likes_count, wl.[like] as [like], wl.reposted as reposted, w.signer_id as signer_id, w.reposts_count as reposts_count,w.comments_count as comments_count, w.copy_owner_id as copy_owner_id, w.copy_text as copy_text, w.post_type as post_type, w.views as views, w.attachments as attachments, w.copyright_link as copyright_link, w.copyright_name as copyright_name, w.created_by as created_by from wall as w left join wall_like as wl on wl.wall_owner_id=? AND wl.post_id=? AND wl.account_id=? AND wl.type=0 where w.to_id=? AND w.post_id=?limit 0,1"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4568
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4569
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    return-object p1

    .line 4572
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4573
    new-instance v1, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v1}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 4574
    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->id:J

    .line 4575
    iput-wide p3, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const-string p1, "text"

    .line 4576
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    const-string p1, "from_id"

    .line 4577
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-string p1, "copy_owner_id"

    .line 4578
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    const-string p1, "copy_text"

    .line 4579
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    const-string p1, "date"

    .line 4580
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->date:J

    const-string p1, "comments_count"

    .line 4581
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->comment_count:J

    const-string p1, "likes_count"

    .line 4582
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/perm/kate/api/WallMessage;->like_count:I

    const-string p1, "like"

    .line 4583
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    const-string p1, "signer_id"

    .line 4584
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    const-string p1, "reposts_count"

    .line 4585
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    const-string p1, "post_type"

    .line 4586
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/perm/kate/api/WallMessage;->post_type:I

    const-string p1, "views"

    .line 4587
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 4588
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4589
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    :cond_2
    const-string p1, "reposted"

    .line 4590
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 4591
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4592
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, v1, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    :cond_4
    const-string p1, "copyright_link"

    .line 4593
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/WallMessage;->copyright_link:Ljava/lang/String;

    const-string p1, "copyright_name"

    .line 4594
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/WallMessage;->copyright_name:Ljava/lang/String;

    const-string p1, "created_by"

    .line 4595
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/perm/kate/api/WallMessage;->created_by:J

    const-string p1, "attachments"

    .line 4596
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-static {p1, p5, p6}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 4597
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public fetchWallPosts(JJ)Landroid/database/Cursor;
    .locals 4

    .line 4706
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 4707
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v1, p4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "select w._id as _id, w.post_id as post_id, w.date as date, w.from_id as from_id, w.text as text, w.to_id as to_id, w.likes_count as likes_count, wl.[like] as [like], wl.reposted as reposted, w.signer_id as signer_id, w.reposts_count as reposts_count,w.comments_count as comments_count, w.copy_owner_id as copy_owner_id, w.copy_text as copy_text, w.post_type as post_type, w.is_pinned as is_pinned, w.copyright_name as copyright_name, w.copyright_link as copyright_link, g.photo_medium as photo_medium, g.name as name, w.attachments as attachments, u.first_name as first_name, u.last_name as last_name, u.photo_medium_rec as photo_medium_rec, w.views as views from wall as w left join users as u on w.from_id=u._id left join groups as g on -w.from_id=g._id left join wall_like as wl on wl.wall_owner_id=? AND wl.post_id=w.post_id AND wl.account_id=? AND wl.type=0 where w.to_id=? order by w._id"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadStates()Ljava/util/HashMap;
    .locals 5

    .line 6791
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select audio_id, status, owner_id from audio_cache;"

    const/4 v2, 0x0

    .line 6792
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6793
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6794
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 6796
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6798
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getDownloadVideoStates()Ljava/util/HashMap;
    .locals 5

    .line 6931
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select video_id, owner_id, status from video_cache;"

    const/4 v2, 0x0

    .line 6932
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6933
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6934
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 6936
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6938
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getDownloadVideoStatus(JJ)I
    .locals 10

    .line 6906
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 6908
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const-string v2, "video_cache"

    const/4 v3, 0x0

    const-string v4, "video_id=? AND owner_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6907
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6909
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 6910
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "status"

    .line 6911
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 6913
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method

.method public getFirstVideoCacheJob(I)Lcom/perm/kate/api/Video;
    .locals 10

    .line 6883
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    int-to-long v2, p1

    .line 6885
    invoke-direct {p0, v2, v3}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    const-string v2, "video_cache"

    const/4 v3, 0x0

    const-string v4, "status=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    const-string v9, "1"

    .line 6884
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6886
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6887
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6888
    new-instance v0, Lcom/perm/kate/api/Video;

    invoke-direct {v0}, Lcom/perm/kate/api/Video;-><init>()V

    const-string v1, "video_id"

    .line 6889
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->vid:J

    const-string v1, "owner_id"

    .line 6890
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->owner_id:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6892
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getFullMentionForBot(J)Ljava/lang/String;
    .locals 3

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@club"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, -0x1

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastNewsDate(J)J
    .locals 2

    .line 3125
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3126
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT MAX(date) FROM news WHERE account_id=? AND is_comments=0"

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 3129
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3130
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 3131
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_1
    const/4 p2, 0x0

    .line 3134
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3135
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method public getLastNewsDate2(JI)J
    .locals 4

    .line 3142
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3143
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "SELECT date FROM news WHERE account_id=? AND is_comments=? ORDER BY _id LIMIT 1"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3145
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-eqz p3, :cond_0

    .line 3146
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3147
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    .line 3149
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide p2
.end method

.method public getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 9

    :try_start_0
    const-string v0, "album_id"

    .line 3362
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3364
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3365
    new-instance v2, Lcom/perm/kate/api/Photo;

    invoke-direct {v2}, Lcom/perm/kate/api/Photo;-><init>()V

    const-string v3, "photo_id"

    .line 3366
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3367
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 3368
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/Photo;->pid:J

    :cond_0
    const-string v3, "src"

    .line 3369
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const-string v3, "src_big"

    .line 3370
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v3, "src_xbig"

    .line 3371
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    const-string v3, "src_xxbig"

    .line 3372
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    const-string v3, "src_xxxbig"

    .line 3373
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    const-string v3, "owner_id"

    .line 3374
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v3, "phototext"

    .line 3375
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 3377
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Photo;->aid:J

    :cond_1
    const-string v4, "like"

    .line 3378
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3380
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    :cond_3
    const-string v4, "like_count"

    .line 3381
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 3383
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    :cond_4
    const-string v4, "comments_count"

    .line 3384
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 3386
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    :cond_5
    const-string v3, "lat"

    .line 3387
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->lat:Ljava/lang/String;

    const-string v3, "lon"

    .line 3388
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->lon:Ljava/lang/String;

    .line 3389
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3395
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3396
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getUsersInMessages(JJ)Ljava/util/ArrayList;
    .locals 2

    .line 3764
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3765
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "SELECT DISTINCT uid FROM messages as m WHERE account_id=? AND group_id=?ORDER BY date DESC LIMIT 0,30"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3766
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p3

    .line 3769
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 3770
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3771
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p3
.end method

.method public getVideoDownloads()Ljava/util/ArrayList;
    .locals 3

    .line 6918
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "select vc.video_id as video_id, vc.owner_id as owner_id, v.title as title, v.duration as duration, v.image as image, v.image_big as image_big, v.player_url as player_url, v.description as description from video_cache as vc left join video as v on vc.video_id=v.video_id AND vc.owner_id=v.owner_id ORDER BY vc._id DESC"

    const/4 v2, 0x0

    .line 6924
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6925
    invoke-direct {p0, v0}, Lcom/perm/kate/db/DataHelper;->cursorToVideoArray(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6926
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public increaseUnreadCountInChat(JJIJ)V
    .locals 3

    .line 6225
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 6227
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "UPDATE chat SET unread_count=unread_count+? WHERE chat_id=? AND account_id=? AND group_id=?"

    .line 6226
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isAdminInGroup(Ljava/lang/Long;J)Z
    .locals 11

    const/4 v0, 0x0

    .line 2666
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_group"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "group_id=? AND user_id=? AND admin_level=3"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 2669
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2667
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2671
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2674
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2675
    :cond_1
    throw p1
.end method

.method public isAdminOrEditorInGroup(Ljava/lang/Long;J)Z
    .locals 11

    const/4 v0, 0x0

    .line 2649
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_group"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "group_id=? AND user_id=? AND admin_level in (2,3)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 2652
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2650
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2654
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2657
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2658
    :cond_1
    throw p1
.end method

.method public isAudioCached(JJ)Z
    .locals 11

    .line 6640
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 6643
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v2, "audio_cache"

    const-string v4, "audio_id=? AND owner_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 6641
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6644
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6645
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public isFriend(JJ)Z
    .locals 11

    .line 2822
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 2825
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v2, "friends"

    const-string v4, "owner_id=? AND friend_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 2823
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return v10

    .line 2829
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 2830
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v10

    .line 2833
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public isJoinGroup(JJ)Z
    .locals 13

    move-object v0, p0

    .line 2611
    iget-object v1, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v3, "group_id"

    const/4 v11, 0x0

    aput-object v3, v4, v11

    const-string v3, "user_id"

    const/4 v12, 0x1

    aput-object v3, v4, v12

    new-array v6, v1, [Ljava/lang/String;

    .line 2614
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    const-string v3, "user_group"

    const-string v5, "group_id=? AND user_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2612
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return v11

    .line 2618
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2619
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v11

    .line 2622
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v12
.end method

.method public isModerInGroup(Ljava/lang/Long;J)Z
    .locals 11

    const/4 v0, 0x0

    .line 2631
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_group"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "group_id=? AND user_id=? AND admin_level in (1,2,3)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 2634
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v10

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2632
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2636
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2639
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2640
    :cond_1
    throw p1
.end method

.method public isVideoCached(JJ)Z
    .locals 11

    .line 6839
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 6842
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v2, "video_cache"

    const-string v4, "video_id=? AND owner_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    .line 6840
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6843
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6844
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method millisToEventTime(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 7089
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    div-long/2addr p1, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public open()V
    .locals 2

    .line 1724
    new-instance v0, Lcom/perm/kate/db/DataHelper$OpenHelper;

    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    const/4 v1, 0x1

    .line 1735
    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->setWriteAheadLoggingEnabledWithReflection(Z)V

    return-void
.end method

.method public recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 2

    .line 6069
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteChatMembers(J)Z

    .line 6070
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->createChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.method public recreateComments(Ljava/util/ArrayList;JIJJ)V
    .locals 16

    move-object/from16 v1, p0

    .line 3889
    iget-object v0, v1, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3890
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3892
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move/from16 v0, p4

    int-to-long v14, v0

    move-wide/from16 v4, p2

    move-wide v6, v14

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteComments(JJJ)Z

    .line 3893
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/perm/kate/api/Comment;

    .line 3894
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v6, p2

    move-wide v8, v14

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    invoke-virtual/range {v4 .. v13}, Lcom/perm/kate/db/DataHelper;->createComment(Lcom/perm/kate/api/Comment;JJJJ)J

    goto :goto_0

    .line 3895
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3897
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3898
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public recreateMessages(Ljava/util/ArrayList;JJJJ)V
    .locals 12

    move-object v1, p0

    .line 3556
    iget-object v0, v1, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3557
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3559
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->deleteMessageThread(JJJJ)V

    .line 3560
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object v5, p1

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JJ)Z

    .line 3561
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3564
    throw v0
.end method

.method public recreateWallPosts(JLjava/util/ArrayList;J)V
    .locals 2

    .line 4436
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4437
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4440
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1, p2}, Lcom/perm/kate/db/DataHelper;->deleteWallPosts(J)V

    .line 4443
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/WallMessage;

    const/4 p3, 0x0

    .line 4444
    invoke-virtual {p0, p2, p4, p5, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPost(Lcom/perm/kate/api/WallMessage;JZ)V

    goto :goto_0

    .line 4445
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4447
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4448
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeVideoFromCache(JJ)V
    .locals 2

    .line 6876
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6878
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "video_cache"

    const-string p2, "video_id=? AND owner_id=?"

    .line 6877
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method serialize(Ljava/io/Serializable;)[B
    .locals 2

    .line 5234
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5235
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5236
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5239
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5240
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setMessageImportant(JZJJ)J
    .locals 3

    .line 3854
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3855
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "important"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3856
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3858
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "messages"

    const-string p2, "message_id=? AND account_id=? AND group_id=?"

    .line 3857
    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setMessageReadState(Ljava/util/ArrayList;ZJJ)J
    .locals 4

    .line 3816
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3817
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3819
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3821
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3823
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3824
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "read_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3825
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 3826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message_id in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND account_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND group_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string p4, "messages"

    invoke-virtual {p2, p4, v0, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setMessagesReadState(JJJ)J
    .locals 4

    .line 3830
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 3831
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "read_state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3832
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 3835
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "messages"

    const-string p2, "chat_id=? AND account_id=? AND group_id=? AND read_state=0 AND is_out=1"

    .line 3836
    invoke-virtual {v2, p1, v0, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public setPragmaSync()V
    .locals 2

    .line 7106
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA synchronous=OFF"

    .line 7107
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7111
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUnreadCountInChat(JJIJ)V
    .locals 3

    .line 6231
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 6233
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "UPDATE chat SET unread_count=? WHERE chat_id=? AND account_id=? AND group_id=?"

    .line 6232
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoInCacheStatus(JJI)V
    .locals 2

    .line 6897
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6898
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v1, "status"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6899
    iget-object p5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6901
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "video_cache"

    const-string p2, "video_id=? AND owner_id=?"

    .line 6900
    invoke-virtual {p5, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateAlbum(Lcom/perm/kate/api/Album;)Z
    .locals 4

    .line 4080
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4081
    iget-object v1, p1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    iget-object v1, p1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    iget-object v1, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_0

    .line 4084
    invoke-virtual {v1}, Lcom/perm/kate/api/Privacy;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_str"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4085
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Album;->comment_privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_1

    .line 4086
    invoke-virtual {v1}, Lcom/perm/kate/api/Privacy;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy_comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "thumb_src"

    .line 4088
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4093
    iget-wide v2, p1, Lcom/perm/kate/api/Album;->aid:J

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string v2, "albums"

    const-string v3, "album_id=?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateAudio(Lcom/perm/kate/api/Audio;)Z
    .locals 7

    .line 4372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4373
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 4374
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4375
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "artist"

    .line 4376
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "title"

    .line 4378
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    :cond_2
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4380
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "url"

    .line 4381
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4382
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const-string v2, "lyrics_id"

    .line 4383
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4386
    :cond_4
    iget v1, p1, Lcom/perm/kate/api/Audio;->track_genre_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "genre_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4387
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 4388
    iget-wide v3, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "audio"

    const-string v5, "audio_id=? AND owner_id=?"

    invoke-virtual {v1, p1, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    const/4 v4, 0x1

    :cond_5
    return v4
.end method

.method public updateChat(Lcom/perm/kate/api/Message;JJJ)Z
    .locals 3

    .line 6138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6139
    iget-object v1, p1, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6140
    iget-object v1, p1, Lcom/perm/kate/api/Message;->photo_100:Ljava/lang/String;

    const-string v2, "photo_100"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6141
    iget p1, p1, Lcom/perm/kate/api/Message;->unread_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unread_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6143
    iget-object p1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 6144
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, v1, p4

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p5, 0x2

    aput-object p2, v1, p5

    const-string p2, "chat"

    const-string p5, "chat_id=? AND account_id=? AND group_id=?"

    invoke-virtual {p1, p2, v0, p5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public updateChatPhoto(JLjava/lang/String;J)V
    .locals 2

    .line 6217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "photo_100"

    .line 6218
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6220
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6221
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "chat"

    const-string p2, "chat_id=? AND account_id=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateChatTitle(JLjava/lang/String;J)V
    .locals 2

    .line 6148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 6149
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6151
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6152
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "chat"

    const-string p2, "chat_id=? AND account_id=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateCommentLikes(JJJJLjava/lang/Long;ZJ)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p9

    .line 4034
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4035
    iget-object v2, v9, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v3, "like_count"

    .line 4037
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 4043
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "comments"

    const-string v4, "content_id=? AND content_type=? AND content_owner_id=? AND comment_id=?"

    .line 4038
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    move-wide/from16 v0, p7

    .line 4045
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->contentTypeToLikeType(J)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    move-object v0, p0

    move-wide v1, p5

    move-wide v3, p1

    move-wide/from16 v5, p11

    move/from16 v7, p10

    .line 4047
    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    :cond_1
    return-void
.end method

.method public updateDocTitle(JJLjava/lang/String;)V
    .locals 2

    .line 6568
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 6569
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6570
    iget-object p5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6571
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "docs"

    const-string p2, "doc_id=? AND owner_id=?"

    invoke-virtual {p5, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateGroup(Lcom/perm/kate/api/Group;Z)Z
    .locals 3

    .line 2418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2419
    iget-object v1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 2420
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    iget-object v1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "photo"

    .line 2424
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "photo_medium"

    .line 2426
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "photo_big"

    .line 2428
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string v2, "is_closed"

    .line 2430
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2431
    :cond_4
    iget-object v1, p1, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "description"

    .line 2432
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    :cond_5
    iget-object v1, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "wiki"

    .line 2434
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    :cond_6
    iget-object v1, p1, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v2, "fixed_post"

    .line 2436
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2437
    :cond_7
    iget-object v1, p1, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string v2, "can_see_all_posts"

    .line 2438
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2439
    :cond_8
    iget-object v1, p1, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v2, "members_count"

    .line 2440
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2441
    :cond_9
    iget-object v1, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const-string v2, "type"

    .line 2442
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2443
    :cond_a
    iget-object v1, p1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v1, :cond_b

    const-string v2, "start_date"

    .line 2444
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2445
    :cond_b
    iget-object v1, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v2, "status"

    .line 2446
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_13

    .line 2448
    iget-object p2, p1, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    if-eqz p2, :cond_d

    const-string v1, "photos"

    .line 2449
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2450
    :cond_d
    iget-object p2, p1, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    if-eqz p2, :cond_e

    const-string v1, "albums"

    .line 2451
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2452
    :cond_e
    iget-object p2, p1, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    if-eqz p2, :cond_f

    const-string v1, "topics"

    .line 2453
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2454
    :cond_f
    iget-object p2, p1, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    if-eqz p2, :cond_10

    const-string v1, "videos"

    .line 2455
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2456
    :cond_10
    iget-object p2, p1, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    if-eqz p2, :cond_11

    const-string v1, "audios"

    .line 2457
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2458
    :cond_11
    iget-object p2, p1, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    if-eqz p2, :cond_12

    const-string v1, "docs"

    .line 2459
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2462
    :cond_12
    iget-object p2, p1, Lcom/perm/kate/api/Group;->podcasts_count:Ljava/lang/Integer;

    if-eqz p2, :cond_13

    const-string v1, "podcasts"

    .line 2463
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2465
    :cond_13
    iget-object p2, p1, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    if-eqz p2, :cond_14

    const-string v1, "verified"

    .line 2466
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2467
    :cond_14
    iget-object p2, p1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz p2, :cond_15

    const-string v1, "can_message"

    .line 2468
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2469
    :cond_15
    iget-object p2, p1, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    if-eqz p2, :cond_16

    const-string v1, "market_enabled"

    .line 2470
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2471
    :cond_16
    iget-object p2, p1, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz p2, :cond_17

    const-string v1, "market_contact_id"

    .line 2472
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2473
    :cond_17
    iget-object p2, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    if-eqz p2, :cond_18

    .line 2474
    iget-wide v1, p2, Lcom/perm/kate/api/Page;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "market_wiki_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2475
    iget-object p2, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object p2, p2, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    const-string v1, "market_wiki_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    :cond_18
    iget-object p2, p1, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    if-eqz p2, :cond_19

    const-string v1, "cover_400"

    .line 2478
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    :cond_19
    iget-object p2, p1, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    if-eqz p2, :cond_1a

    const-string v1, "cover_800"

    .line 2480
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    :cond_1a
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 2482
    iget-wide v1, p1, Lcom/perm/kate/api/Group;->gid:J

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "groups"

    const-string v2, "_id=?"

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_0

    :cond_1b
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateGroupStatus(JLjava/lang/String;)V
    .locals 2

    .line 2495
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    .line 2496
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 2498
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "groups"

    const-string v1, "_id= ?"

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateGroupTopic(Lcom/perm/kate/api/GroupTopic;)Z
    .locals 4

    .line 5965
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5966
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->gid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5967
    iget-object v1, p1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5968
    iget-object v1, p1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5969
    iget v1, p1, Lcom/perm/kate/api/GroupTopic;->comments:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5970
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5971
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->created_by:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created_by"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5972
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->updated:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updated"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5973
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updated_by"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5974
    iget v1, p1, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_closed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5975
    iget v1, p1, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_fixed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5976
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5977
    iget-wide v2, p1, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string v2, "group_topics"

    const-string v3, "_id=?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateGroupWallCount(JLjava/lang/Integer;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 2488
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "posts"

    .line 2489
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2490
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 2491
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "groups"

    const-string v1, "_id= ?"

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateMessage(Lcom/perm/kate/api/Message;JJ)Z
    .locals 6

    .line 3492
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3505
    iget-boolean v1, p1, Lcom/perm/kate/api/Message;->read_state:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3507
    iget-wide v1, p1, Lcom/perm/kate/api/Message;->update_time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3508
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "update_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3509
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 3510
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "important"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3512
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 3513
    iget-wide v3, p1, Lcom/perm/kate/api/Message;->mid:J

    .line 3514
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p1

    const-string p1, "messages"

    const-string p3, "message_id=? AND account_id=? AND group_id=?"

    .line 3513
    invoke-virtual {v1, p1, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public updateMessageText(JJJLjava/lang/String;)Z
    .locals 5

    .line 3518
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "body"

    .line 3519
    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    const-string v1, "update_time"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3521
    iget-object p7, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p7

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3523
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x2

    aput-object p1, v1, p4

    const-string p1, "messages"

    const-string p4, "message_id=? AND account_id=? AND group_id=?"

    .line 3522
    invoke-virtual {p7, p1, v0, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public updateNote(Lcom/perm/kate/api/Note;)Z
    .locals 6

    .line 4186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4187
    iget-object v1, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "text"

    .line 4188
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->ncom:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 4191
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4194
    :cond_1
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->date:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 4195
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4196
    :cond_2
    iget-wide v1, p1, Lcom/perm/kate/api/Note;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "from_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4198
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4199
    iget-wide v2, p1, Lcom/perm/kate/api/Note;->nid:J

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string v2, "notes"

    const-string v3, "_id=?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updatePhoto(Lcom/perm/kate/api/Photo;)Z
    .locals 7

    .line 3243
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3244
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3245
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const-string v3, "src"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3249
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v3, "src_big"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3251
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    const-string v3, "src_xbig"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3253
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    const-string v3, "src_xxbig"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3255
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    const-string v3, "src_xxxbig"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    :cond_4
    iget-wide v3, p1, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    .line 3257
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "album_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3258
    :cond_5
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3259
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    const-string v2, "phototext"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :cond_6
    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->created:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_7

    .line 3261
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3262
    :cond_7
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v2, "like_count"

    .line 3263
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3264
    :cond_8
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v2, "comments_count"

    .line 3265
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3266
    :cond_9
    iget v1, p1, Lcom/perm/kate/api/Photo;->width:I

    if-eqz v1, :cond_a

    .line 3267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3268
    :cond_a
    iget v1, p1, Lcom/perm/kate/api/Photo;->height:I

    if-eqz v1, :cond_b

    .line 3269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3270
    :cond_b
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->lat:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v2, "lat"

    .line 3271
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    :cond_c
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->lon:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, "lon"

    .line 3273
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    :cond_d
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3276
    iget-wide v3, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "photos"

    const-string v5, "photo_id=? AND owner_id=?"

    invoke-virtual {v1, p1, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_e

    const/4 v4, 0x1

    :cond_e
    return v4
.end method

.method public updatePhotoAlbumId(JJJ)Z
    .locals 1

    .line 3280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3281
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "album_id"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3282
    iget-object p5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 p6, 0x2

    new-array p6, p6, [Ljava/lang/String;

    .line 3283
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p6, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p6, p3

    const-string p1, "photos"

    const-string p4, "photo_id=? AND owner_id=?"

    invoke-virtual {p5, p1, v0, p4, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public updatePhotoLikes(JJJ)Z
    .locals 1

    .line 3294
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3295
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "like_count"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3296
    iget-object p5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 p6, 0x2

    new-array p6, p6, [Ljava/lang/String;

    .line 3297
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p6, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p6, p3

    const-string p1, "photos"

    const-string p4, "photo_id=? AND owner_id=?"

    invoke-virtual {p5, p1, v0, p4, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public updatePhotoText(JJLjava/lang/String;)Z
    .locals 2

    .line 3287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "phototext"

    .line 3288
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    iget-object p5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 3290
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "photos"

    const-string p4, "photo_id=? AND owner_id=?"

    invoke-virtual {p5, p1, v0, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public updatePoll(Lcom/perm/kate/api/VkPoll;J)Z
    .locals 6

    .line 5867
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5869
    iget-object v1, p1, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    const-string v2, "question"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5870
    iget-wide v1, p1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 5871
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5872
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/VkPoll;->created:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v2, "created"

    .line 5873
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5874
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v2, "votes"

    .line 5875
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5876
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "answers"

    .line 5877
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5878
    :cond_3
    iget-boolean v1, p1, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anonymous"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5879
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 5880
    iget-wide v3, p1, Lcom/perm/kate/api/VkPoll;->id:J

    .line 5881
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "poll"

    const-string p3, "poll_id=? AND account_id=?"

    .line 5880
    invoke-virtual {v1, p1, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 14

    move-object/from16 v0, p5

    move-object/from16 v1, p9

    .line 4661
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v13, p0

    .line 4662
    iget-object v3, v13, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string v4, "likes_count"

    .line 4664
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v4, "reposts_count"

    if-eqz v1, :cond_1

    .line 4666
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4667
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-lez v5, :cond_2

    new-array v5, v8, [Ljava/lang/String;

    .line 4670
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const-string v9, "wall"

    const-string v10, "post_id=? AND to_id=?"

    .line 4668
    invoke-virtual {v3, v9, v2, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4672
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    if-eqz v0, :cond_3

    const-string v5, "like_count"

    .line 4674
    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 4676
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    if-eqz p6, :cond_5

    .line 4678
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "user_like"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    if-eqz p10, :cond_6

    .line 4680
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "user_reposted"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4681
    :cond_6
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 4684
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "news"

    const-string v4, "post_id=? AND source_id=? AND account_id=?"

    .line 4682
    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    if-eqz p6, :cond_8

    .line 4687
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    move-object v3, p0

    move-wide/from16 v4, p3

    move-wide v6, p1

    move-wide/from16 v8, p7

    move-object/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZILjava/lang/Boolean;)V

    :cond_8
    return-void
.end method

.method public updateStatus(JLjava/lang/String;)V
    .locals 2

    .line 1998
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    .line 1999
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 2001
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "users"

    const-string v1, "_id= ?"

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateTopicCloseFlag(JZ)V
    .locals 3

    .line 6054
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    .line 6055
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v2, "is_closed"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6056
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 6057
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "group_topics"

    const-string p2, "_id=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateTopicFixedFlag(JZ)V
    .locals 3

    .line 6061
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6062
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "is_fixed"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6063
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 6064
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "group_topics"

    const-string p2, "_id=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateTopicTitle(JLjava/lang/String;)V
    .locals 2

    .line 6047
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 6048
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6049
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 6050
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "group_topics"

    const-string p2, "_id=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateUser(Lcom/perm/kate/api/User;Z)Z
    .locals 7

    .line 2005
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2006
    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "first_name"

    .line 2007
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_name_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "last_name"

    .line 2011
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_name_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "nickname"

    .line 2015
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickname_lower"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "photo"

    .line 2019
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "photo_medium_rec"

    .line 2021
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    :cond_4
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "photo_big"

    .line 2023
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    :cond_5
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "photo_200"

    .line 2025
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    :cond_6
    iget-object v1, p1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "photo_400_orig"

    .line 2027
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    :cond_7
    iget-object v1, p1, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "domain"

    .line 2029
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    :cond_8
    iget-object v1, p1, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v2, "sex"

    .line 2031
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2032
    :cond_9
    iget-object v1, p1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, "birthdate"

    .line 2033
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    :cond_a
    iget-object v1, p1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const-string v2, "city"

    .line 2035
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2036
    :cond_b
    iget-object v1, p1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const-string v2, "country"

    .line 2037
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2038
    :cond_c
    iget-object v1, p1, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const-string v2, "timezone"

    .line 2039
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2040
    :cond_d
    iget-object v1, p1, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const-string v2, "has_mobile"

    .line 2041
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2042
    :cond_e
    iget-object v1, p1, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const-string v2, "rate"

    .line 2043
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2044
    :cond_f
    iget-object v1, p1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v2, "mobile_phone"

    .line 2045
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    :cond_10
    iget-object v1, p1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v2, "home_phone"

    .line 2047
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    :cond_11
    iget-object v1, p1, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const-string v2, "university"

    .line 2049
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2050
    :cond_12
    iget-object v1, p1, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    if-eqz v1, :cond_13

    const-string v2, "university_name"

    .line 2051
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    :cond_13
    iget-object v1, p1, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v2, "faculty"

    .line 2053
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2054
    :cond_14
    iget-object v1, p1, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v2, "faculty_name"

    .line 2055
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    :cond_15
    iget-object v1, p1, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    const-string v2, "graduation"

    .line 2057
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2058
    :cond_16
    iget-object v1, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    .line 2059
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2060
    :cond_17
    iget-object v1, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    const-string v2, "online_mobile"

    if-eqz v1, :cond_18

    .line 2061
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2062
    :cond_18
    iget-object v1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v3, "status"

    .line 2063
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    :cond_19
    iget-object v1, p1, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    const-string v3, "relation"

    .line 2065
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2066
    :cond_1a
    iget-wide v3, p1, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1b

    .line 2067
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "last_seen"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2070
    :cond_1b
    iget-object v1, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1d

    iget v1, p1, Lcom/perm/kate/api/User;->last_seen_platform:I

    if-eqz v1, :cond_1d

    const/4 v5, 0x7

    if-ge v1, v5, :cond_1c

    const/4 v1, 0x1

    goto :goto_0

    :cond_1c
    const/4 v1, 0x0

    .line 2071
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1d
    if-eqz p2, :cond_20

    .line 2073
    iget p2, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "albums"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2074
    iget p2, p1, Lcom/perm/kate/api/User;->photo_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "photos"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2075
    iget p2, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "videos"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2076
    iget p2, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "audios"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2077
    iget p2, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "notes"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2078
    iget p2, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "friends"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2079
    iget-object p2, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    if-eqz p2, :cond_1e

    const-string v1, "online_friends"

    .line 2080
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2081
    :cond_1e
    iget-object p2, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    if-eqz p2, :cond_1f

    const-string v1, "mutual_friends"

    .line 2082
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2083
    :cond_1f
    iget p2, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "user_photos"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2084
    iget p2, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "groups"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2085
    iget p2, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "followers"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2086
    iget p2, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "gifts"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2090
    :cond_20
    iget-object p2, p1, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    if-eqz p2, :cond_21

    const-string v1, "verified"

    .line 2091
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2092
    :cond_21
    iget-object p2, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    if-eqz p2, :cond_22

    .line 2093
    iget-wide v1, p2, Lcom/perm/kate/api/User$Rect;->x1:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "crop_photo_rect_x1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2094
    iget-object p2, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v1, p2, Lcom/perm/kate/api/User$Rect;->x2:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "crop_photo_rect_x2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2095
    iget-object p2, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v1, p2, Lcom/perm/kate/api/User$Rect;->y1:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "crop_photo_rect_y1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2096
    iget-object p2, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v1, p2, Lcom/perm/kate/api/User$Rect;->y2:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v1, "crop_photo_rect_y2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2098
    :cond_22
    iget-object p2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 2099
    iget-wide v1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "users"

    const-string v2, "_id= ?"

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_23

    goto :goto_1

    :cond_23
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public updateUserOnlineStatus(JZ)Z
    .locals 2

    .line 2115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "online"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2117
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 2118
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "users"

    const-string v1, "_id= ?"

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateUserWallCount(J[Ljava/lang/Integer;)V
    .locals 3

    .line 2103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 2104
    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    .line 2105
    aget-object v1, p3, v1

    const-string v2, "posts"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const/4 v1, 0x1

    .line 2106
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    .line 2107
    aget-object p3, p3, v1

    const-string v1, "notes"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2108
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 2110
    :cond_2
    iget-object p3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 2111
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "users"

    const-string v1, "_id= ?"

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateUsersOnlineStatus(Ljava/util/ArrayList;J)V
    .locals 6

    .line 2122
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "update users set online=0 where _id in (select friend_id from friends where owner_id=?)"

    .line 2128
    invoke-direct {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ""

    .line 2133
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2136
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2138
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2139
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "online"

    const/4 v4, 0x1

    .line 2140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "users"

    const/4 v4, 0x0

    .line 2141
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2145
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2146
    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2147
    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J

    goto :goto_1

    .line 2149
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2152
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public updateVideo(Lcom/perm/kate/api/Video;)Z
    .locals 7

    .line 5649
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5650
    iget-object v1, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "title"

    .line 5651
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5652
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "description"

    .line 5653
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5654
    :cond_1
    iget-wide v1, p1, Lcom/perm/kate/api/Video;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 5655
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5656
    :cond_2
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5657
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5658
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5659
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    const-string v5, "image_big"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5660
    :cond_4
    iget-wide v5, p1, Lcom/perm/kate/api/Video;->date:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    .line 5661
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "date"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5662
    :cond_5
    iget-object v1, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5663
    iget-object v1, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const-string v2, "player_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5664
    :cond_6
    iget v1, p1, Lcom/perm/kate/api/Video;->views:I

    if-eqz v1, :cond_7

    .line 5665
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "views"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5666
    :cond_7
    iget-object v1, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v2, "likes_count"

    .line 5667
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5668
    :cond_8
    iget-object v1, p1, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "platform"

    .line 5669
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5670
    :cond_9
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 5671
    iget-wide v3, p1, Lcom/perm/kate/api/Video;->vid:J

    .line 5672
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "video"

    const-string v5, "video_id=? AND owner_id=?"

    .line 5671
    invoke-virtual {v1, p1, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_a

    const/4 v4, 0x1

    :cond_a
    return v4
.end method

.method public updateVideoLikeCount(JJI)Z
    .locals 2

    .line 5676
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5677
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v1, "likes_count"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5678
    iget-object p5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 5680
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "video"

    const-string p4, "video_id=? AND owner_id=?"

    .line 5679
    invoke-virtual {p5, p1, v0, p4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public updateWallLike(JJJZILjava/lang/Boolean;)I
    .locals 2

    .line 5835
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5836
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string v1, "like"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p9, :cond_0

    .line 5838
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string p9, "reposted"

    invoke-virtual {v0, p9, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5840
    :cond_0
    iget-object p7, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {p7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p7

    const/4 p9, 0x4

    new-array p9, p9, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 5842
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p9, v1

    const/4 p1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p9, p1

    const/4 p1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p9, p1

    const/4 p1, 0x3

    int-to-long p2, p8

    .line 5843
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p9, p1

    const-string p1, "wall_like"

    const-string p2, "wall_owner_id=? AND post_id=? AND account_id=? AND type=?"

    .line 5841
    invoke-virtual {p7, p1, v0, p2, p9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateWallPost(Lcom/perm/kate/api/WallMessage;JJ)Z
    .locals 13

    move-object v10, p0

    move-object v11, p1

    .line 4638
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 4639
    iget-wide v0, v11, Lcom/perm/kate/api/WallMessage;->comment_count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "comments_count"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4640
    iget v0, v11, Lcom/perm/kate/api/WallMessage;->post_type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "post_type"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4643
    iget v0, v11, Lcom/perm/kate/api/WallMessage;->like_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "likes_count"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4644
    iget-wide v1, v11, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v3, v11, Lcom/perm/kate/api/WallMessage;->id:J

    iget-boolean v7, v11, Lcom/perm/kate/api/WallMessage;->user_like:Z

    iget-boolean v0, v11, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZILjava/lang/Boolean;)V

    .line 4646
    iget v0, v11, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reposts_count"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4648
    iget-boolean v0, v11, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pinned"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4649
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string v1, "views"

    .line 4650
    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4651
    :cond_0
    iget-object v0, v11, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/db/DataHelper;->serializeAttachments(Ljava/util/List;)[B

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 4652
    iget-object v0, v10, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4653
    iget-wide v3, v11, Lcom/perm/kate/api/WallMessage;->id:J

    .line 4655
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-wide v2, v11, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "wall"

    const-string v4, "post_id=? AND to_id=?"

    .line 4653
    invoke-virtual {v0, v2, v12, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v3
.end method

.method public vacuum()V
    .locals 2

    .line 6808
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "VACUUM;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public videoExists(JJ)Z
    .locals 2

    .line 5813
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 5814
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const-string p1, "select count(*) from video where video_id=? AND owner_id=?;"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5816
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 5817
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 5818
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method
