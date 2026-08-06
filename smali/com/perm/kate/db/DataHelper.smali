.class public Lcom/perm/kate/db/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/db/DataHelper$OpenHelper;
    }
.end annotation


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1833
    iput-object p1, p0, Lcom/perm/kate/db/DataHelper;->mCtx:Landroid/content/Context;

    .line 1834
    return-void
.end method

.method private audioCursorToArray(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "mCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4286
    const-string v9, "audio_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4287
    .local v2, "columnIndexAid":I
    const-string v9, "artist"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4288
    .local v3, "columnIndexArtist":I
    const-string v9, "duration"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4289
    .local v4, "columnIndexDuration":I
    const-string v9, "owner_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4290
    .local v6, "columnIndexOwnerId":I
    const-string v9, "title"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4291
    .local v7, "columnIndexTitle":I
    const-string v9, "url"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4292
    .local v8, "columnIndexUrl":I
    const-string v9, "lyrics_id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4293
    .local v5, "columnIndexLyricsId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4294
    .local v1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4295
    new-instance v0, Lcom/perm/kate/api/Audio;

    invoke-direct {v0}, Lcom/perm/kate/api/Audio;-><init>()V

    .line 4296
    .local v0, "a":Lcom/perm/kate/api/Audio;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Audio;->aid:J

    .line 4297
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 4298
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Audio;->duration:J

    .line 4299
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 4300
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 4301
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 4302
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    .line 4303
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4305
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :cond_0
    return-object v1
.end method

.method private contentTypeToLikeType(J)I
    .locals 1
    .param p1, "content_type"    # J

    .prologue
    .line 3860
    long-to-int v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3873
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3862
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3864
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 3866
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 3868
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 3870
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 3860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private createAttachedObjects(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3605
    .local p1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 3606
    .local v0, "attachment":Lcom/perm/kate/api/Attachment;
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v2, :cond_1

    .line 3607
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {p0, v2, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 3608
    :cond_1
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_2

    .line 3609
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    invoke-virtual {p0, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 3610
    :cond_2
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    if-eqz v2, :cond_3

    .line 3611
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    invoke-virtual {p0, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateNote(Lcom/perm/kate/api/Note;)V

    .line 3612
    :cond_3
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v2, :cond_4

    .line 3613
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {p0, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 3614
    :cond_4
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v2, :cond_5

    .line 3615
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    invoke-virtual {p0, v2, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePoll(Lcom/perm/kate/api/VkPoll;J)V

    .line 3616
    :cond_5
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    if-eqz v2, :cond_0

    .line 3617
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {p0, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateDoc(Lcom/perm/kate/api/Document;)V

    goto :goto_0

    .line 3619
    .end local v0    # "attachment":Lcom/perm/kate/api/Attachment;
    :cond_6
    return-void
.end method

.method private createAttachment(IJLcom/perm/kate/api/Attachment;)V
    .locals 6
    .param p1, "content_type"    # I
    .param p2, "content_id"    # J
    .param p4, "attachment"    # Lcom/perm/kate/api/Attachment;

    .prologue
    .line 4690
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4692
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "content_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4693
    const-string v2, "content_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4695
    const-string v2, "type"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4697
    const-string v2, "photo_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v4, v3, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4698
    const-string v2, "video_owner_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4699
    const-string v2, "video_access_key"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4773
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4774
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "attachments"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4775
    return-void

    .line 4701
    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "graffiti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4702
    const-string v2, "graffiti_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    iget-wide v4, v3, Lcom/perm/kate/api/Graffiti;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4703
    const-string v2, "graffiti_owner_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    iget-wide v4, v3, Lcom/perm/kate/api/Graffiti;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4704
    const-string v2, "graffiti_src"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    iget-object v3, v3, Lcom/perm/kate/api/Graffiti;->src:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4705
    const-string v2, "graffiti_src_big"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    iget-object v3, v3, Lcom/perm/kate/api/Graffiti;->src_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4707
    :cond_2
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4708
    const-string v2, "link_desc"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v3, v3, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4709
    const-string v2, "link_img"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v3, v3, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    const-string v2, "link_title"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v3, v3, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4711
    const-string v2, "link_url"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v3, v3, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4713
    :cond_3
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4714
    const-string v2, "audio_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4715
    const-string v2, "video_owner_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 4716
    :cond_4
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4717
    const-string v2, "note_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-wide v4, v3, Lcom/perm/kate/api/Note;->nid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 4718
    :cond_5
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4719
    const-string v2, "video_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v4, v3, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4720
    const-string v2, "video_owner_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v4, v3, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4721
    const-string v2, "video_access_key"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v3, v3, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4723
    :cond_6
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "poll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4724
    const-string v2, "poll_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v4, v3, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 4725
    :cond_7
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "geo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4726
    const-string v2, "geo_type"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v3, v3, Lcom/perm/kate/api/Geo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4727
    const-string v2, "geo_lat"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v3, v3, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4728
    const-string v2, "geo_lon"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v3, v3, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4730
    :cond_8
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4731
    const-string v2, "doc_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v4, v3, Lcom/perm/kate/api/Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4732
    const-string v2, "video_owner_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v4, v3, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4733
    const-string v2, "video_access_key"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v3, v3, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4735
    :cond_9
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4741
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    invoke-direct {p0}, Lcom/perm/kate/db/DataHelper;->getSerializationLimit()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/db/DataHelper;->limitAttachmentsDepth(Lcom/perm/kate/api/Message;I)V

    .line 4742
    const-string v2, "message"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {p0, v3}, Lcom/perm/kate/db/DataHelper;->serialize(Ljava/io/Serializable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 4743
    :cond_a
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "wall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4744
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    invoke-static {v2}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 4745
    const-string v2, "message"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    invoke-virtual {p0, v3}, Lcom/perm/kate/db/DataHelper;->serialize(Ljava/io/Serializable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 4746
    :cond_b
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "page"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4747
    const-string v2, "page_title"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    iget-object v3, v3, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    const-string v2, "page_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    iget-wide v4, v3, Lcom/perm/kate/api/Page;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4749
    const-string v2, "page_group_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    iget-wide v4, v3, Lcom/perm/kate/api/Page;->group_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 4751
    :cond_c
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "gift"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4752
    const-string v2, "page_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    iget-wide v4, v3, Lcom/perm/kate/api/Gift;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4753
    const-string v2, "page_title"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    iget-object v3, v3, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4755
    :cond_d
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4756
    const-string v2, "page_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v4, v3, Lcom/perm/kate/api/Album;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4757
    const-string v2, "page_group_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v4, v3, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4758
    const-string v2, "page_title"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-object v3, v3, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4760
    :cond_e
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "sticker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4761
    const-string v2, "page_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-wide v4, v3, Lcom/perm/kate/api/Sticker;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4762
    const-string v2, "link_url"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v3, v3, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4763
    const-string v2, "link_title"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v3, v3, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4764
    const-string v2, "page_title"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    iget-object v3, v3, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4766
    :cond_f
    iget-object v2, p4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "wall_reply"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4767
    const-string v2, "photo_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v4, v3, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4768
    const-string v2, "video_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v3, v3, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v3, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4769
    const-string v2, "audio_id"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v3, v3, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v3, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4770
    const-string v2, "video_access_key"

    iget-object v3, p4, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v3, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createFriendsInternal(JLjava/util/ArrayList;)V
    .locals 9
    .param p1, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2817
    .local p3, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2818
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "INSERT INTO friends(owner_id, friend_id) VALUES(?,?)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2819
    .local v2, "stmt1":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 2820
    .local v0, "friend":Lcom/perm/kate/api/User;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2821
    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2822
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 2824
    .end local v0    # "friend":Lcom/perm/kate/api/User;
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2825
    return-void
.end method

.method private createNewsInternal(Lcom/perm/kate/api/Newsfeed;JI)V
    .locals 18
    .param p1, "feed"    # Lcom/perm/kate/api/Newsfeed;
    .param p2, "account_id"    # J
    .param p4, "type"    # I

    .prologue
    .line 2978
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 2979
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/api/User;

    .line 2980
    .local v14, "p":Lcom/perm/kate/api/User;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    goto :goto_0

    .line 2981
    .end local v14    # "p":Lcom/perm/kate/api/User;
    :cond_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 2982
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/api/Group;

    .line 2983
    .local v14, "p":Lcom/perm/kate/api/Group;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    goto :goto_1

    .line 2984
    .end local v14    # "p":Lcom/perm/kate/api/Group;
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perm/kate/api/NewsItem;

    .line 2985
    .local v12, "i":Lcom/perm/kate/api/NewsItem;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->newsItemExists(Lcom/perm/kate/api/NewsItem;JI)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2987
    invoke-static {v12}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/NewsItem;)V

    .line 2988
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/perm/kate/db/DataHelper;->createAttachedObjects(Ljava/util/ArrayList;J)V

    .line 2989
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createNewsItem(Lcom/perm/kate/api/NewsItem;JI)J

    move-result-wide v6

    .line 2990
    .local v6, "news_id":J
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 2991
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 2992
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/api/Photo;

    .line 2993
    .local v14, "p":Lcom/perm/kate/api/Photo;
    iget-wide v8, v14, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v5, v14, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/db/DataHelper;->createNewsPhoto(JJJ)J

    goto :goto_2

    .line 2995
    .end local v14    # "p":Lcom/perm/kate/api/Photo;
    :cond_3
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 2996
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 2997
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/api/Photo;

    .line 2998
    .restart local v14    # "p":Lcom/perm/kate/api/Photo;
    iget-wide v8, v14, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v5, v14, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/db/DataHelper;->createNewsPhotoTag(JJJ)J

    goto :goto_3

    .line 3000
    .end local v14    # "p":Lcom/perm/kate/api/Photo;
    :cond_4
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 3001
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3002
    .local v4, "f":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->createNewsFriend(JJ)J

    goto :goto_4

    .line 3003
    .end local v4    # "f":Ljava/lang/String;
    :cond_5
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->notes:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 3004
    iget-object v5, v12, Lcom/perm/kate/api/NewsItem;->notes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/Note;

    .line 3005
    .local v13, "n":Lcom/perm/kate/api/Note;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/perm/kate/db/DataHelper;->createOrUpdateNote(Lcom/perm/kate/api/Note;)V

    .line 3006
    iget-wide v8, v13, Lcom/perm/kate/api/Note;->nid:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->createNewsNote(JJ)J

    goto :goto_5

    .line 3009
    .end local v6    # "news_id":J
    .end local v12    # "i":Lcom/perm/kate/api/NewsItem;
    .end local v13    # "n":Lcom/perm/kate/api/Note;
    :cond_6
    return-void
.end method

.method private createOrUpdateGroupTopic(Lcom/perm/kate/api/GroupTopic;)V
    .locals 1
    .param p1, "t"    # Lcom/perm/kate/api/GroupTopic;

    .prologue
    .line 5459
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateGroupTopic(Lcom/perm/kate/api/GroupTopic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5460
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J

    .line 5461
    :cond_0
    return-void
.end method

.method private cursorToVideoArray(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 5244
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5245
    .local v4, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    const-string v6, "views"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 5246
    .local v5, "views_index":I
    const-string v6, "image_big"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 5247
    .local v0, "image_big_index":I
    const-string v6, "likes_count"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 5248
    .local v1, "like_count_index":I
    const-string v6, "like"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 5249
    .local v2, "user_likes_index":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5250
    new-instance v3, Lcom/perm/kate/api/Video;

    invoke-direct {v3}, Lcom/perm/kate/api/Video;-><init>()V

    .line 5251
    .local v3, "video":Lcom/perm/kate/api/Video;
    const-string v6, "title"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 5252
    const-string v6, "description"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 5253
    const-string v6, "duration"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perm/kate/api/Video;->duration:J

    .line 5254
    const-string v6, "owner_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perm/kate/api/Video;->owner_id:J

    .line 5255
    const-string v6, "player_url"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    .line 5256
    const-string v6, "video_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perm/kate/api/Video;->vid:J

    .line 5257
    const-string v6, "image"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 5258
    if-eq v5, v10, :cond_0

    .line 5259
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/perm/kate/api/Video;->views:I

    .line 5260
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    .line 5261
    if-eq v1, v10, :cond_1

    .line 5262
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    .line 5263
    :cond_1
    if-eq v2, v10, :cond_2

    .line 5264
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 5265
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5264
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 5267
    .end local v3    # "video":Lcom/perm/kate/api/Video;
    :cond_4
    return-object v4
.end method

.method private getNewsFilterString(ZZZZZ)Ljava/lang/String;
    .locals 3
    .param p1, "show_posts"    # Z
    .param p2, "show_photos"    # Z
    .param p3, "show_photo_tags"    # Z
    .param p4, "show_friends"    # Z
    .param p5, "show_notes"    # Z

    .prologue
    .line 3124
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 3125
    const/4 v1, 0x0

    .line 3140
    :goto_0
    return-object v1

    .line 3127
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 3128
    const-string v1, "\'fake\'"

    goto :goto_0

    .line 3129
    :cond_1
    const-string v0, ""

    .line 3130
    .local v0, "filter":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 3131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'post\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3132
    :cond_2
    if-eqz p2, :cond_3

    .line 3133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'photo\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3134
    :cond_3
    if-eqz p3, :cond_4

    .line 3135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'photo_tag\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3136
    :cond_4
    if-eqz p4, :cond_5

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'friend\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3138
    :cond_5
    if-eqz p5, :cond_6

    .line 3139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'note\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3140
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSerializationLimit()I
    .locals 2

    .prologue
    .line 4778
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 4779
    const/4 v0, 0x4

    .line 4782
    :goto_0
    return v0

    .line 4780
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 4781
    const/4 v0, 0x5

    goto :goto_0

    .line 4782
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private limitAttachmentsDepth(Lcom/perm/kate/api/Message;I)V
    .locals 6
    .param p1, "message"    # Lcom/perm/kate/api/Message;
    .param p2, "i"    # I

    .prologue
    .line 4787
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 4802
    :cond_0
    :goto_0
    return-void

    .line 4789
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 4790
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    const-string v3, "message"

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4791
    if-lez p2, :cond_3

    .line 4792
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v3, v4}, Lcom/perm/kate/db/DataHelper;->limitAttachmentsDepth(Lcom/perm/kate/api/Message;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4798
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :catch_0
    move-exception v1

    .line 4799
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4800
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4794
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 4795
    const-string v3, "LIMIT_ATT_DEPTH"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/perm/kate/Helper;->reportEvent(Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static repostCompatibilityHack(Lcom/perm/kate/api/NewsItem;)V
    .locals 8
    .param p0, "m"    # Lcom/perm/kate/api/NewsItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4439
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 4441
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_0

    .line 4442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v3, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nhttp://vk.com/wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v2, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4444
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4445
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    .line 4446
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    .line 4447
    iget-object v0, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 4449
    .local v0, "repost_comment_attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 4451
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4452
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 4454
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4456
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    iput-wide v2, p0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    .line 4457
    iget-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    iput-wide v2, p0, Lcom/perm/kate/api/NewsItem;->copy_post_id:J

    .line 4460
    .end local v0    # "repost_comment_attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    .line 4462
    :cond_4
    return-void
.end method

.method public static repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V
    .locals 8
    .param p0, "m"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4411
    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 4413
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_0

    .line 4414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v3, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nhttp://vk.com/wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v2, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4416
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4417
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 4418
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4420
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 4422
    .local v0, "repost_comment_attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 4424
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4425
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 4427
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4429
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    iput-wide v2, p0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    .line 4430
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    iput-wide v2, p0, Lcom/perm/kate/api/WallMessage;->copy_post_id:J

    .line 4433
    .end local v0    # "repost_comment_attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    .line 4435
    :cond_4
    return-void
.end method

.method private toArg(J)[Ljava/lang/String;
    .locals 3
    .param p1, "arg"    # J

    .prologue
    .line 2595
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public DeleteAndCreateVideos(JJLjava/util/ArrayList;J)V
    .locals 15
    .param p1, "ownerId"    # J
    .param p3, "album_id"    # J
    .param p6, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 5145
    .local p5, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5146
    .local v6, "t1":J
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5147
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5149
    :try_start_0
    invoke-virtual/range {p0 .. p4}, Lcom/perm/kate/db/DataHelper;->deleteVideosInAlbum(JJ)V

    .line 5150
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideos(Ljava/util/ArrayList;)V

    .line 5151
    move-object/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-virtual {p0, v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideoUserLikes(Ljava/util/ArrayList;J)V

    .line 5152
    invoke-virtual/range {p0 .. p5}, Lcom/perm/kate/db/DataHelper;->createVideosInAlbum(JJLjava/util/ArrayList;)V

    .line 5153
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5155
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5158
    .local v8, "t2":J
    const-string v5, "Kate.DataHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeleteAndCreateVideos duration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v8, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    return-void

    .line 5155
    .end local v8    # "t2":J
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public addAudioToCache(JJILjava/lang/Long;)V
    .locals 5
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "status"    # I
    .param p6, "position"    # Ljava/lang/Long;

    .prologue
    .line 6020
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6021
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6022
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6023
    const-string v2, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6024
    if-nez p6, :cond_0

    .line 6025
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->getNextAudioCachePos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    .line 6026
    :cond_0
    const-string v2, "position"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6028
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6029
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "audio_cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6030
    return-void
.end method

.method public addAudioToCache(JJLjava/lang/Long;)V
    .locals 9
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "position"    # Ljava/lang/Long;

    .prologue
    .line 6016
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->addAudioToCache(JJILjava/lang/Long;)V

    .line 6017
    return-void
.end method

.method public addAudiosToCache(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6052
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 6053
    .local v10, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6055
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/db/DataHelper;->getNextAudioCachePos()J

    move-result-wide v12

    .line 6056
    .local v12, "position":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v14, v12

    .end local v12    # "position":J
    .local v14, "position":J
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    .line 6057
    .local v2, "id":[Ljava/lang/Long;
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x2

    const-wide/16 v16, 0x1

    add-long v12, v14, v16

    .end local v14    # "position":J
    .restart local v12    # "position":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/db/DataHelper;->addAudioToCache(JJILjava/lang/Long;)V

    move-wide v14, v12

    .end local v12    # "position":J
    .restart local v14    # "position":J
    goto :goto_0

    .line 6058
    .end local v2    # "id":[Ljava/lang/Long;
    :cond_0
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6060
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6062
    return-void

    .line 6060
    .end local v14    # "position":J
    :catchall_0
    move-exception v3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public addNewAudiosToCache(Ljava/util/ArrayList;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6065
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    const/4 v9, 0x1

    .line 6066
    .local v9, "all_cached":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 6067
    .local v10, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6069
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/db/DataHelper;->getNextAudioCachePos()J

    move-result-wide v12

    .line 6073
    .local v12, "position":J
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6074
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v14, v12

    .end local v12    # "position":J
    .local v14, "position":J
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    .line 6075
    .local v2, "a":Lcom/perm/kate/api/Audio;
    invoke-static {v2}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6077
    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAudioCached(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6078
    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    const-wide/16 v16, 0x1

    add-long v12, v14, v16

    .end local v14    # "position":J
    .restart local v12    # "position":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/perm/kate/db/DataHelper;->addAudioToCache(JJLjava/lang/Long;)V

    .line 6079
    const/4 v9, 0x0

    :goto_1
    move-wide v14, v12

    .line 6084
    .end local v12    # "position":J
    .restart local v14    # "position":J
    goto :goto_0

    .line 6080
    :cond_1
    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->getDownloadStatus(JJ)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 6081
    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->setAudioInCacheStatus(Ljava/lang/Long;JI)V

    .line 6082
    const/4 v9, 0x0

    move-wide v12, v14

    .end local v14    # "position":J
    .restart local v12    # "position":J
    goto :goto_1

    .line 6085
    .end local v2    # "a":Lcom/perm/kate/api/Audio;
    .end local v12    # "position":J
    .restart local v14    # "position":J
    :cond_2
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6087
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6089
    return v9

    .line 6087
    .end local v14    # "position":J
    :catchall_0
    move-exception v3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .restart local v2    # "a":Lcom/perm/kate/api/Audio;
    .restart local v14    # "position":J
    :cond_3
    move-wide v12, v14

    .end local v14    # "position":J
    .restart local v12    # "position":J
    goto :goto_1
.end method

.method public addVideoToCache(JJ)V
    .locals 7
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 6215
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->addVideoToCache(JJI)V

    .line 6216
    return-void
.end method

.method public addVideoToCache(JJI)V
    .locals 5
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "status"    # I

    .prologue
    .line 6219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6220
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "video_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6221
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6222
    const-string v2, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6224
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6225
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "video_cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6226
    return-void
.end method

.method public addVideosToCache(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6230
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 6231
    .local v7, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6233
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 6234
    .local v0, "id":[Ljava/lang/Long;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->addVideoToCache(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6237
    .end local v0    # "id":[Ljava/lang/Long;
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 6235
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6237
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6239
    return-void
.end method

.method public audioExists(JJ)Z
    .locals 9
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4357
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4358
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "select count(*) from audio where audio_id=? and owner_id=?;"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4359
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 4360
    .local v2, "res":Z
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4361
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 4362
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4363
    return v2

    :cond_1
    move v2, v4

    .line 4361
    goto :goto_0
.end method

.method public clearAudioCache()V
    .locals 2

    .prologue
    .line 6169
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6170
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM audio_cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6171
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 1786
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1787
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1789
    :try_start_0
    const-string v1, "DELETE FROM users"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1790
    const-string v1, "DELETE FROM news"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1791
    const-string v1, "DELETE FROM friends"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1792
    const-string v1, "DELETE FROM photos"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1793
    const-string v1, "DELETE FROM news_photo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1794
    const-string v1, "DELETE FROM news_phototags"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1795
    const-string v1, "DELETE FROM news_friend"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1796
    const-string v1, "DELETE FROM news_note"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1797
    const-string v1, "DELETE FROM messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1798
    const-string v1, "DELETE FROM comments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1799
    const-string v1, "DELETE FROM albums"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1800
    const-string v1, "DELETE FROM notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1801
    const-string v1, "DELETE FROM cities"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1802
    const-string v1, "DELETE FROM countries"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1804
    const-string v1, "DELETE FROM audio WHERE audio_id in (select au.audio_id from audio as au left join audio_cache as ac on ac.audio_id=au.audio_id where ac._id is NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1805
    const-string v1, "DELETE FROM wall"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1806
    const-string v1, "DELETE FROM graffiti"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1807
    const-string v1, "DELETE FROM groups"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1808
    const-string v1, "DELETE FROM user_group"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1810
    const-string v1, "DELETE FROM video WHERE _id in (select v._id from video as v left join video_cache as vc on vc.video_id=v.video_id AND vc.owner_id=v.owner_id where vc._id is NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1811
    const-string v1, "DELETE FROM wall_like"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1812
    const-string v1, "DELETE FROM attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1813
    const-string v1, "DELETE FROM poll"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1814
    const-string v1, "DELETE FROM chat"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1815
    const-string v1, "DELETE FROM group_topics"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1816
    const-string v1, "DELETE FROM chat_members"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1817
    const-string v1, "DELETE FROM fave_users"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1818
    const-string v1, "DELETE FROM fave_links"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1819
    const-string v1, "DELETE FROM fave_posts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1820
    const-string v1, "DELETE FROM docs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1821
    const-string v1, "DELETE FROM albumphoto"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1822
    const-string v1, "DELETE FROM video_in_album"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1823
    const-string v1, "DELETE FROM audio_albums"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1824
    const-string v1, "DELETE FROM audio_in_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1829
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->vacuum()V

    .line 1830
    return-void

    .line 1827
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public clearVideoCache()V
    .locals 2

    .prologue
    .line 6309
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6310
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM video_cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6311
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper$OpenHelper;->close()V

    .line 1851
    return-void
.end method

.method public createAlbum(Lcom/perm/kate/api/Album;)J
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/api/Album;

    .prologue
    .line 3976
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3977
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "album_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Album;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3978
    const-string v2, "thumb_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Album;->thumb_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3979
    const-string v2, "owner_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3980
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    const-string v2, "description"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    const-string v2, "size"

    iget-wide v4, p1, Lcom/perm/kate/api/Album;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3986
    iget-object v2, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v2, :cond_0

    .line 3987
    const-string v2, "privacy_str"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    invoke-virtual {v3}, Lcom/perm/kate/api/Privacy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3989
    const-string v2, "thumb_src"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3992
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "albums"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createAlbumPhoto(JJJJ)J
    .locals 5
    .param p1, "photo_id"    # J
    .param p3, "album_id"    # J
    .param p5, "album_owner_id"    # J
    .param p7, "photo_owner_id"    # J

    .prologue
    .line 5955
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5956
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5957
    const-string v2, "album_owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5958
    const-string v2, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5959
    const-string v2, "photo_owner_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5961
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5962
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "albumphoto"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createAlbumPhotos(Ljava/util/ArrayList;JJ)V
    .locals 12
    .param p2, "album_id"    # J
    .param p4, "album_owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 5943
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5944
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5946
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Photo;

    .line 5947
    .local v10, "p":Lcom/perm/kate/api/Photo;
    iget-wide v2, v10, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v10, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object v1, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createAlbumPhoto(JJJJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5950
    .end local v10    # "p":Lcom/perm/kate/api/Photo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 5948
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5950
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5952
    return-void
.end method

.method public createAlbums(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4011
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Album;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Album;

    .line 4012
    .local v0, "a":Lcom/perm/kate/api/Album;
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createAlbum(Lcom/perm/kate/api/Album;)J

    goto :goto_0

    .line 4013
    .end local v0    # "a":Lcom/perm/kate/api/Album;
    :cond_0
    return-void
.end method

.method public createAttachments(Ljava/util/ArrayList;IJ)V
    .locals 3
    .param p2, "content_type"    # I
    .param p3, "content_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 4683
    .local p1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-nez p1, :cond_1

    .line 4687
    :cond_0
    return-void

    .line 4685
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 4686
    .local v0, "attachment":Lcom/perm/kate/api/Attachment;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/perm/kate/db/DataHelper;->createAttachment(IJLcom/perm/kate/api/Attachment;)V

    goto :goto_0
.end method

.method public createAudio(Lcom/perm/kate/api/Audio;)J
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 4326
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4327
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "audio_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4328
    const-string v2, "owner_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4329
    const-string v2, "artist"

    iget-object v3, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4330
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    const-string v2, "duration"

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4332
    const-string v2, "url"

    iget-object v3, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    const-string v2, "lyrics_id"

    iget-object v3, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4334
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4335
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "audio"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createAudioAlbum(Lcom/perm/kate/api/AudioAlbum;)J
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/api/AudioAlbum;

    .prologue
    .line 6315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6316
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "album_id"

    iget-wide v4, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6317
    const-string v2, "owner_id"

    iget-wide v4, p1, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6318
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6319
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6320
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "audio_albums"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createAudioAlbums(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6324
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    .line 6325
    .local v0, "a":Lcom/perm/kate/api/AudioAlbum;
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createAudioAlbum(Lcom/perm/kate/api/AudioAlbum;)J

    goto :goto_0

    .line 6326
    .end local v0    # "a":Lcom/perm/kate/api/AudioAlbum;
    :cond_0
    return-void
.end method

.method public createAudioInList(JJJ)J
    .locals 5
    .param p1, "audio_id"    # J
    .param p3, "list_id"    # J
    .param p5, "list_owner_id"    # J

    .prologue
    .line 6380
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6381
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "list_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6382
    const-string v2, "list_owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6383
    const-string v2, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6385
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6386
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "audio_in_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createAudiosInList(Ljava/util/ArrayList;JJ)V
    .locals 10
    .param p2, "list_id"    # J
    .param p4, "list_owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 6368
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 6369
    .local v8, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6371
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 6372
    .local v0, "a":Lcom/perm/kate/api/Audio;
    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createAudioInList(JJJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6375
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 6373
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6375
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6377
    return-void
.end method

.method public createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 5
    .param p1, "thread_id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "photo_100"    # Ljava/lang/String;
    .param p5, "account_id"    # J
    .param p7, "unread_count"    # I
    .param p8, "group_id"    # J

    .prologue
    .line 5596
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5597
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5598
    const-string v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5599
    const-string v2, "photo_100"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    const-string v2, "account_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5601
    const-string v2, "unread_count"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5602
    const-string v2, "group_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5604
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5605
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "chat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5606
    return-void
.end method

.method public createChatMember(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4
    .param p1, "chat_id"    # Ljava/lang/Long;
    .param p2, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 5554
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5555
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "chat_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5556
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5557
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5558
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "chat_members"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5559
    return-void
.end method

.method public createChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "chat_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5549
    .local p2, "chat_members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5550
    .local v0, "user_id":Ljava/lang/Long;
    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/db/DataHelper;->createChatMember(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 5551
    .end local v0    # "user_id":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public createCity(JLjava/lang/String;)J
    .locals 5
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4198
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4199
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4202
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cities"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createComment(Lcom/perm/kate/api/Comment;JJJJ)J
    .locals 14
    .param p1, "m"    # Lcom/perm/kate/api/Comment;
    .param p2, "content_id"    # J
    .param p4, "content_type"    # J
    .param p6, "content_owner_id"    # J
    .param p8, "account_id"    # J

    .prologue
    .line 3841
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3842
    .local v2, "initialValues":Landroid/content/ContentValues;
    const-string v3, "comment_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3843
    const-string v3, "date"

    iget-wide v4, p1, Lcom/perm/kate/api/Comment;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3844
    const-string v3, "from_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3845
    const-string v3, "message"

    iget-object v4, p1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    const-string v3, "content_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3847
    const-string v3, "content_type"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3848
    const-string v3, "content_owner_id"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3849
    iget v3, p1, Lcom/perm/kate/api/Comment;->like_count:I

    if-eqz v3, :cond_0

    .line 3850
    const-string v3, "like_count"

    iget v4, p1, Lcom/perm/kate/api/Comment;->like_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3851
    :cond_0
    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->contentTypeToLikeType(J)I

    move-result v11

    .line 3852
    .local v11, "like_type":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_1

    .line 3853
    iget-wide v6, p1, Lcom/perm/kate/api/Comment;->cid:J

    iget-boolean v10, p1, Lcom/perm/kate/api/Comment;->user_like:Z

    move-object v3, p0

    move-wide/from16 v4, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 3855
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 3856
    .local v12, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "comments"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    return-wide v4
.end method

.method public createCountry(JLjava/lang/String;)J
    .locals 5
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4225
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4226
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4227
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4228
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4230
    const-string v2, "countries"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createCroupTopics(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5435
    .local p1, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupTopic;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5436
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5438
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GroupTopic;

    .line 5439
    .local v1, "t":Lcom/perm/kate/api/GroupTopic;
    invoke-virtual {p0, v1}, Lcom/perm/kate/db/DataHelper;->createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5442
    .end local v1    # "t":Lcom/perm/kate/api/GroupTopic;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 5440
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5444
    return-void
.end method

.method public createDoc(Lcom/perm/kate/api/Document;)J
    .locals 6
    .param p1, "doc"    # Lcom/perm/kate/api/Document;

    .prologue
    .line 5844
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5845
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "doc_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5846
    const-string v2, "owner_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5847
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5848
    const-string v2, "size"

    iget-wide v4, p1, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5849
    const-string v2, "ext"

    iget-object v3, p1, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5850
    const-string v2, "url"

    iget-object v3, p1, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5851
    const-string v2, "thumb"

    iget-object v3, p1, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5852
    const-string v2, "thumb_s"

    iget-object v3, p1, Lcom/perm/kate/api/Document;->thumb_s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5853
    const-string v2, "title_lower"

    iget-object v3, p1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5855
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5856
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "docs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createFaveLink(JLcom/perm/kate/api/Link;)J
    .locals 5
    .param p1, "account_id"    # J
    .param p3, "link"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 5745
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5746
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "account_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5747
    const-string v2, "url"

    iget-object v3, p3, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5748
    const-string v2, "title"

    iget-object v3, p3, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5749
    const-string v2, "description"

    iget-object v3, p3, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5750
    const-string v2, "image_src"

    iget-object v3, p3, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5751
    const-string v2, "link_id"

    iget-object v3, p3, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5752
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5753
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "fave_links"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createFaveLinks(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Link;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 5733
    .local p1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Link;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5734
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5736
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Link;

    .line 5737
    .local v0, "l":Lcom/perm/kate/api/Link;
    invoke-virtual {p0, p2, p3, v0}, Lcom/perm/kate/db/DataHelper;->createFaveLink(JLcom/perm/kate/api/Link;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5740
    .end local v0    # "l":Lcom/perm/kate/api/Link;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 5738
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5740
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5742
    return-void
.end method

.method public createFavePosts(JJJ)J
    .locals 5
    .param p1, "account_id"    # J
    .param p3, "post_id"    # J
    .param p5, "owner_id"    # J

    .prologue
    .line 5786
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5787
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "account_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5788
    const-string v2, "post_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5789
    const-string v2, "owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5790
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5791
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "fave_posts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createFavePosts(Ljava/util/ArrayList;J)V
    .locals 10
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 5773
    .local p1, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5774
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5776
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPosts(Ljava/util/ArrayList;J)V

    .line 5777
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/WallMessage;

    .line 5778
    .local v8, "p":Lcom/perm/kate/api/WallMessage;
    iget-wide v4, v8, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v6, v8, Lcom/perm/kate/api/WallMessage;->to_id:J

    move-object v1, p0

    move-wide v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createFavePosts(JJJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5781
    .end local v8    # "p":Lcom/perm/kate/api/WallMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 5779
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5781
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5783
    return-void
.end method

.method public createFaveUser(JJ)J
    .locals 5
    .param p1, "account_id"    # J
    .param p3, "user_id"    # J

    .prologue
    .line 5708
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5709
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "account_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5710
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5711
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5712
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "fave_users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createFaveUsers(Ljava/util/ArrayList;J)V
    .locals 6
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 5695
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5696
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5698
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 5699
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 5700
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/perm/kate/db/DataHelper;->createFaveUser(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5703
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 5701
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5703
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5705
    return-void
.end method

.method public createFriend(JJ)J
    .locals 5
    .param p1, "owner_id"    # J
    .param p3, "friend_id"    # J

    .prologue
    .line 2828
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2829
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2830
    const-string v2, "friend_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2832
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2833
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createFriends(Ljava/util/ArrayList;J)V
    .locals 12
    .param p2, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2798
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2799
    .local v2, "t1":J
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2800
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2803
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteAllFriends(J)Z

    .line 2804
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 2805
    .local v1, "u":Lcom/perm/kate/api/User;
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2810
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 2807
    :cond_0
    :try_start_1
    invoke-direct {p0, p2, p3, p1}, Lcom/perm/kate/db/DataHelper;->createFriendsInternal(JLjava/util/ArrayList;)V

    .line 2808
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2810
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2812
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2813
    .local v4, "t2":J
    const-string v6, "Kate.DataHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFriends duration "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    return-void
.end method

.method public createGroup(Lcom/perm/kate/api/Group;)J
    .locals 6
    .param p1, "u"    # Lcom/perm/kate/api/Group;

    .prologue
    .line 2448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2449
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2450
    iget-object v2, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2451
    const-string v2, "name"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    const-string v2, "name_lower"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2455
    const-string v2, "photo"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2457
    const-string v2, "photo_medium"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2459
    const-string v2, "photo_big"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    :cond_3
    iget-object v2, p1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 2461
    const-string v2, "is_closed"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2462
    :cond_4
    iget-object v2, p1, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2463
    const-string v2, "description"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    :cond_5
    iget-object v2, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2465
    const-string v2, "wiki"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    :cond_6
    iget-object v2, p1, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 2467
    const-string v2, "fixed_post"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2468
    :cond_7
    iget-object v2, p1, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 2469
    const-string v2, "can_see_all_posts"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2470
    :cond_8
    iget-object v2, p1, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 2471
    const-string v2, "members_count"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2472
    :cond_9
    iget-object v2, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 2473
    const-string v2, "type"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2474
    :cond_a
    iget-object v2, p1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v2, :cond_b

    .line 2475
    const-string v2, "start_date"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2476
    :cond_b
    iget-object v2, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2477
    const-string v2, "status"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    :cond_c
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 2479
    const-string v2, "photos"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2480
    :cond_d
    iget-object v2, p1, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 2481
    const-string v2, "albums"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2482
    :cond_e
    iget-object v2, p1, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    .line 2483
    const-string v2, "topics"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2484
    :cond_f
    iget-object v2, p1, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 2485
    const-string v2, "videos"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2486
    :cond_10
    iget-object v2, p1, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 2487
    const-string v2, "audios"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2488
    :cond_11
    iget-object v2, p1, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 2489
    const-string v2, "docs"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2492
    :cond_12
    iget-object v2, p1, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    .line 2493
    const-string v2, "verified"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2494
    :cond_13
    iget-object v2, p1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v2, :cond_14

    .line 2495
    const-string v2, "can_message"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2496
    :cond_14
    iget-object v2, p1, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    .line 2497
    const-string v2, "market_enabled"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2498
    :cond_15
    iget-object v2, p1, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz v2, :cond_16

    .line 2499
    const-string v2, "market_contact_id"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2500
    :cond_16
    iget-object v2, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    if-eqz v2, :cond_17

    .line 2501
    const-string v2, "market_wiki_id"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-wide v4, v3, Lcom/perm/kate/api/Page;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2502
    const-string v2, "market_wiki_title"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v3, v3, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    :cond_17
    iget-object v2, p1, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 2505
    const-string v2, "cover_400"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    :cond_18
    iget-object v2, p1, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2507
    const-string v2, "cover_800"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    :cond_19
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2509
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "groups"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J
    .locals 6
    .param p1, "t"    # Lcom/perm/kate/api/GroupTopic;

    .prologue
    .line 5464
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5465
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5466
    const-string v2, "group_id"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5467
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5468
    const-string v2, "comments"

    iget v3, p1, Lcom/perm/kate/api/GroupTopic;->comments:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5469
    const-string v2, "created"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->created:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5470
    const-string v2, "created_by"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->created_by:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5471
    const-string v2, "updated"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->updated:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5472
    const-string v2, "updated_by"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5473
    const-string v2, "is_closed"

    iget v3, p1, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5474
    const-string v2, "is_fixed"

    iget v3, p1, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5475
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5476
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "group_topics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createMessage(Lcom/perm/kate/api/Message;JJ)J
    .locals 10
    .param p1, "m"    # Lcom/perm/kate/api/Message;
    .param p2, "account_id"    # J
    .param p4, "group_id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3499
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3500
    .local v2, "initialValues":Landroid/content/ContentValues;
    const-string v5, "message_id"

    iget-wide v8, p1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3501
    const-string v5, "account_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3502
    const-string v5, "group_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3503
    const-string v5, "date"

    iget-wide v8, p1, Lcom/perm/kate/api/Message;->date:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3504
    const-string v5, "uid"

    iget-wide v8, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3505
    const-string v5, "title"

    iget-object v8, p1, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    const-string v5, "body"

    iget-object v8, p1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    const-string v8, "read_state"

    iget-boolean v5, p1, Lcom/perm/kate/api/Message;->read_state:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3508
    const-string v5, "is_out"

    iget-boolean v8, p1, Lcom/perm/kate/api/Message;->is_out:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3509
    const-string v8, "have_attachments"

    iget-object v5, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3510
    iget-object v5, p1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 3511
    const-string v5, "important"

    iget-object v8, p1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3512
    :cond_0
    iget-object v5, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v6, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v5, v6, v7}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3513
    .local v4, "thread_id":Ljava/lang/Long;
    const-string v5, "chat_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3514
    iget-object v5, p1, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 3515
    const-string v5, "action"

    iget-object v6, p1, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3516
    :cond_1
    iget-object v5, p1, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 3517
    const-string v5, "action_mid"

    iget-object v6, p1, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3518
    :cond_2
    iget-object v5, p1, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 3519
    const-string v5, "action_text"

    iget-object v6, p1, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    :cond_3
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3522
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "messages"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3523
    .local v0, "id":J
    iget-object v5, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/perm/kate/db/DataHelper;->createAttachments(Ljava/util/ArrayList;IJ)V

    .line 3524
    return-wide v0

    .end local v0    # "id":J
    .end local v3    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "thread_id":Ljava/lang/Long;
    :cond_4
    move v5, v7

    .line 3507
    goto :goto_0

    :cond_5
    move v5, v7

    .line 3509
    goto :goto_1

    :cond_6
    move v6, v7

    .line 3511
    goto :goto_2
.end method

.method public createNews(Lcom/perm/kate/api/Newsfeed;JI)V
    .locals 10
    .param p1, "feed"    # Lcom/perm/kate/api/Newsfeed;
    .param p2, "account_id"    # J
    .param p4, "type"    # I

    .prologue
    .line 2963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2964
    .local v4, "start":J
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2965
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2967
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->createNewsInternal(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 2968
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2971
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2974
    .local v0, "end":J
    const-string v3, "Kate.DataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create news duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    return-void

    .line 2971
    .end local v0    # "end":J
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public createNewsFriend(JJ)J
    .locals 5
    .param p1, "news_id"    # J
    .param p3, "user_id"    # J

    .prologue
    .line 3472
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3473
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "news_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3474
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3475
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3476
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "news_friend"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createNewsItem(Lcom/perm/kate/api/NewsItem;JI)J
    .locals 8
    .param p1, "i"    # Lcom/perm/kate/api/NewsItem;
    .param p2, "account_id"    # J
    .param p4, "type"    # I

    .prologue
    .line 3012
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3013
    .local v2, "initialValues":Landroid/content/ContentValues;
    const-string v4, "account_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3014
    const-string v4, "comment_can_post"

    iget-boolean v5, p1, Lcom/perm/kate/api/NewsItem;->comment_can_post:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3015
    const-string v4, "comment_count"

    iget v5, p1, Lcom/perm/kate/api/NewsItem;->comment_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3016
    const-string v4, "copy_owner_id"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3017
    const-string v4, "copy_post_id"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->copy_post_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3018
    const-string v4, "copy_text"

    iget-object v5, p1, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    const-string v4, "like_count"

    iget v5, p1, Lcom/perm/kate/api/NewsItem;->like_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3020
    const-string v4, "post_id"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->post_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3021
    const-string v4, "source_id"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->source_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3022
    const-string v4, "from_id"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3023
    const-string v4, "date"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->date:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3024
    const-string v4, "text"

    iget-object v5, p1, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    const-string v4, "type"

    iget-object v5, p1, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    const-string v4, "user_like"

    iget-boolean v5, p1, Lcom/perm/kate/api/NewsItem;->user_like:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3027
    const-string v4, "is_comments"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3028
    const-string v4, "comments"

    iget-object v5, p1, Lcom/perm/kate/api/NewsItem;->comments_json:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    const-string v4, "signer_id"

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->signer_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3030
    const-string v4, "reposts_count"

    iget v5, p1, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3031
    const-string v4, "user_reposted"

    iget-boolean v5, p1, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3032
    iget-object v4, p1, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 3033
    const-string v4, "views"

    iget-object v5, p1, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3035
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3036
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "news"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3037
    .local v0, "id":J
    iget-object v4, p1, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/perm/kate/db/DataHelper;->createAttachments(Ljava/util/ArrayList;IJ)V

    .line 3038
    return-wide v0
.end method

.method public createNewsNote(JJ)J
    .locals 5
    .param p1, "news_id"    # J
    .param p3, "note_id"    # J

    .prologue
    .line 3489
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3490
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "news_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3491
    const-string v2, "note_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3492
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3493
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "news_note"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createNewsPhoto(JJJ)J
    .locals 5
    .param p1, "news_id"    # J
    .param p3, "photo_id"    # J
    .param p5, "photo_owner_id"    # J

    .prologue
    .line 3436
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3437
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "news_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3438
    const-string v2, "photo_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3439
    const-string v2, "photo_owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3440
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3441
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "news_photo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createNewsPhotoTag(JJJ)J
    .locals 5
    .param p1, "news_id"    # J
    .param p3, "photo_id"    # J
    .param p5, "photo_owner_id"    # J

    .prologue
    .line 3454
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3455
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "news_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3456
    const-string v2, "photo_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3457
    const-string v2, "photo_owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3458
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3459
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "news_phototags"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createNote(Lcom/perm/kate/api/Note;)J
    .locals 6
    .param p1, "n"    # Lcom/perm/kate/api/Note;

    .prologue
    .line 4085
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4086
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->nid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4087
    iget-object v2, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4088
    const-string v2, "text"

    iget-object v3, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    :cond_0
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    const-string v2, "comments"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->ncom:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4092
    const-string v2, "date"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4093
    const-string v2, "from_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4095
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4096
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "notes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V
    .locals 1
    .param p1, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 4351
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateAudio(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4352
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createAudio(Lcom/perm/kate/api/Audio;)J

    .line 4354
    :cond_0
    return-void
.end method

.method public createOrUpdateAudios(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4339
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4340
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4342
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 4343
    .local v0, "a":Lcom/perm/kate/api/Audio;
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4346
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 4344
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4346
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4348
    return-void
.end method

.method public createOrUpdateCroupTopics(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5447
    .local p1, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupTopic;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5448
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5450
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GroupTopic;

    .line 5451
    .local v1, "t":Lcom/perm/kate/api/GroupTopic;
    invoke-direct {p0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroupTopic(Lcom/perm/kate/api/GroupTopic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5454
    .end local v1    # "t":Lcom/perm/kate/api/GroupTopic;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 5452
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5454
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5456
    return-void
.end method

.method public createOrUpdateDialogs(Ljava/util/ArrayList;JZJ)V
    .locals 15
    .param p2, "account_id"    # J
    .param p4, "remove_dialogs"    # Z
    .param p5, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;JZJ)V"
        }
    .end annotation

    .prologue
    .line 3570
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 3571
    .local v13, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3573
    if-eqz p4, :cond_0

    .line 3574
    :try_start_0
    const-string v0, "DELETE FROM chat WHERE account_id=? AND group_id=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v13, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3576
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 3577
    .local v1, "m":Lcom/perm/kate/api/Message;
    const/4 v4, 0x0

    move-object v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    .line 3579
    iget-object v0, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    iget-object v0, v1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3580
    iget-object v0, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-object v2, v1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/db/DataHelper;->recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 3582
    :cond_1
    iget-object v0, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v2, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3583
    .local v4, "thread_id":J
    iget-object v6, v1, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    iget-object v7, v1, Lcom/perm/kate/api/Message;->photo_100:Ljava/lang/String;

    iget v10, v1, Lcom/perm/kate/api/Message;->unread_count:I

    move-object v3, p0

    move-wide/from16 v8, p2

    move-wide/from16 v11, p5

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/db/DataHelper;->createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3587
    .end local v1    # "m":Lcom/perm/kate/api/Message;
    .end local v4    # "thread_id":J
    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3585
    :cond_2
    :try_start_1
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3587
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3589
    return-void
.end method

.method public createOrUpdateDoc(Lcom/perm/kate/api/Document;)V
    .locals 4
    .param p1, "doc"    # Lcom/perm/kate/api/Document;

    .prologue
    .line 5839
    iget-wide v0, p1, Lcom/perm/kate/api/Document;->id:J

    iget-wide v2, p1, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchDoc(JJ)Lcom/perm/kate/api/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5840
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createDoc(Lcom/perm/kate/api/Document;)J

    .line 5841
    :cond_0
    return-void
.end method

.method public createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V
    .locals 1
    .param p1, "g"    # Lcom/perm/kate/api/Group;
    .param p2, "update_counters"    # Z

    .prologue
    .line 2350
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->updateGroup(Lcom/perm/kate/api/Group;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2351
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createGroup(Lcom/perm/kate/api/Group;)J

    .line 2352
    :cond_0
    return-void
.end method

.method public createOrUpdateGroups(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2616
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    if-nez p1, :cond_0

    .line 2627
    :goto_0
    return-void

    .line 2618
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2619
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2621
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 2622
    .local v0, "g":Lcom/perm/kate/api/Group;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2625
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 2623
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2625
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z
    .locals 10
    .param p1, "m"    # Lcom/perm/kate/api/Message;
    .param p2, "account_id"    # J
    .param p4, "ensure_chat_exists"    # Z
    .param p5, "group_id"    # J

    .prologue
    .line 3592
    iget-object v0, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, p3}, Lcom/perm/kate/db/DataHelper;->createAttachedObjects(Ljava/util/ArrayList;J)V

    .line 3593
    const/4 v8, 0x0

    .local v8, "created":Z
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p5

    .line 3594
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateMessage(Lcom/perm/kate/api/Message;JJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p5

    .line 3595
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createMessage(Lcom/perm/kate/api/Message;JJ)J

    .line 3596
    iget-object v0, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v4, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v0, v4, v5}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3597
    .local v2, "thread_id":J
    if-eqz p4, :cond_0

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p5

    .line 3598
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->ensureChatExists(JJJ)V

    .line 3599
    :cond_0
    const/4 v8, 0x1

    .line 3601
    .end local v2    # "thread_id":J
    :cond_1
    return v8
.end method

.method public createOrUpdateMessages(Ljava/util/ArrayList;JJ)Z
    .locals 8
    .param p2, "account_id"    # J
    .param p4, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 3552
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    move-result v0

    return v0
.end method

.method public createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z
    .locals 10
    .param p2, "account_id"    # J
    .param p4, "ensure_chat_exists"    # Z
    .param p5, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;JZJ)Z"
        }
    .end annotation

    .prologue
    .line 3556
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 3557
    .local v8, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3559
    const/4 v7, 0x0

    .line 3560
    .local v7, "created":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .local v1, "m":Lcom/perm/kate/api/Message;
    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    .line 3561
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    move-result v0

    or-int/2addr v7, v0

    goto :goto_0

    .line 3562
    .end local v1    # "m":Lcom/perm/kate/api/Message;
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3565
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3563
    return v7

    .line 3565
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public createOrUpdateNote(Lcom/perm/kate/api/Note;)V
    .locals 1
    .param p1, "n"    # Lcom/perm/kate/api/Note;

    .prologue
    .line 4159
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateNote(Lcom/perm/kate/api/Note;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4160
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createNote(Lcom/perm/kate/api/Note;)J

    .line 4162
    :cond_0
    return-void
.end method

.method public createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V
    .locals 10
    .param p1, "p"    # Lcom/perm/kate/api/Photo;
    .param p2, "account_id"    # J

    .prologue
    .line 3366
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updatePhoto(Lcom/perm/kate/api/Photo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3367
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createPhoto(Lcom/perm/kate/api/Photo;)J

    .line 3368
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3369
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v0, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    move-object v1, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 3370
    :cond_1
    return-void
.end method

.method public createOrUpdatePhotos(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3354
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3355
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3357
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 3358
    .local v1, "p":Lcom/perm/kate/api/Photo;
    invoke-virtual {p0, v1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3361
    .end local v1    # "p":Lcom/perm/kate/api/Photo;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 3359
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3361
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3363
    return-void
.end method

.method public createOrUpdatePoll(Lcom/perm/kate/api/VkPoll;J)V
    .locals 2
    .param p1, "poll"    # Lcom/perm/kate/api/VkPoll;
    .param p2, "account_id"    # J

    .prologue
    .line 5375
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->updatePoll(Lcom/perm/kate/api/VkPoll;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5376
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createPoll(Lcom/perm/kate/api/VkPoll;J)J

    .line 5377
    :cond_0
    return-void
.end method

.method public createOrUpdateUser(Lcom/perm/kate/api/User;Z)V
    .locals 1
    .param p1, "u"    # Lcom/perm/kate/api/User;
    .param p2, "update_counters"    # Z

    .prologue
    .line 2343
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->updateUser(Lcom/perm/kate/api/User;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2344
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createUser(Lcom/perm/kate/api/User;)J

    .line 2345
    :cond_0
    return-void
.end method

.method public createOrUpdateUsers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2288
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2289
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2291
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 2292
    .local v1, "u":Lcom/perm/kate/api/User;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2295
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 2293
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2295
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2297
    return-void
.end method

.method public createOrUpdateVideo(Lcom/perm/kate/api/Video;)V
    .locals 1
    .param p1, "v"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 5318
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->updateVideo(Lcom/perm/kate/api/Video;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5319
    invoke-virtual {p0, p1}, Lcom/perm/kate/db/DataHelper;->createVideo(Lcom/perm/kate/api/Video;)J

    .line 5320
    :cond_0
    return-void
.end method

.method public createOrUpdateVideoUserLikes(Ljava/util/ArrayList;J)V
    .locals 12
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 5328
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 5329
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5330
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x6

    move-object v1, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    goto :goto_0

    .line 5331
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_1
    return-void
.end method

.method public createOrUpdateVideos(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5323
    .local p1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 5324
    .local v0, "v":Lcom/perm/kate/api/Video;
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    goto :goto_0

    .line 5325
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_0
    return-void
.end method

.method public createOrUpdateWallLike(JJJZI)V
    .locals 1
    .param p1, "wall_owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "account_id"    # J
    .param p7, "like"    # Z
    .param p8, "type"    # I

    .prologue
    .line 5346
    invoke-virtual/range {p0 .. p8}, Lcom/perm/kate/db/DataHelper;->updateWallLike(JJJZI)I

    move-result v0

    if-nez v0, :cond_0

    .line 5347
    if-eqz p7, :cond_0

    .line 5348
    invoke-virtual/range {p0 .. p8}, Lcom/perm/kate/db/DataHelper;->createWallLike(JJJZI)J

    .line 5349
    :cond_0
    return-void
.end method

.method public createOrUpdateWallPost(Lcom/perm/kate/api/WallMessage;J)V
    .locals 8
    .param p1, "m"    # Lcom/perm/kate/api/WallMessage;
    .param p2, "account_id"    # J

    .prologue
    .line 4396
    invoke-static {p1}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 4398
    iget-object v0, p1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4399
    iget-object v0, p1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, p3}, Lcom/perm/kate/db/DataHelper;->createAttachedObjects(Ljava/util/ArrayList;J)V

    .line 4401
    :cond_0
    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchWallPost(JJ)Ljava/lang/Long;

    move-result-object v6

    .line 4402
    .local v6, "row_id":Ljava/lang/Long;
    if-nez v6, :cond_1

    .line 4403
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->createWallPost(Lcom/perm/kate/api/WallMessage;J)J

    .line 4406
    :goto_0
    return-void

    .line 4405
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateWallPost(Lcom/perm/kate/api/WallMessage;JJ)Z

    goto :goto_0
.end method

.method public createOrUpdateWallPosts(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 4384
    .local p1, "wall":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4385
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4387
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 4388
    .local v0, "m":Lcom/perm/kate/api/WallMessage;
    invoke-virtual {p0, v0, p2, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPost(Lcom/perm/kate/api/WallMessage;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4391
    .end local v0    # "m":Lcom/perm/kate/api/WallMessage;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 4389
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4391
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4393
    return-void
.end method

.method public createPhoto(Lcom/perm/kate/api/Photo;)J
    .locals 6
    .param p1, "p"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 3330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3331
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "photo_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3332
    const-string v2, "owner_id"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    const-string v2, "album_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3334
    const-string v2, "src"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    const-string v2, "src_big"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    const-string v2, "src_xbig"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    const-string v2, "src_xxbig"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    const-string v2, "src_xxxbig"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    const-string v2, "src_small"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->src_small:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const-string v2, "phototext"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    const-string v2, "created"

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->created:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3342
    iget-object v2, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 3343
    const-string v2, "like_count"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3344
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 3345
    const-string v2, "comments_count"

    iget-object v3, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3346
    :cond_1
    const-string v2, "width"

    iget v3, p1, Lcom/perm/kate/api/Photo;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3347
    const-string v2, "height"

    iget v3, p1, Lcom/perm/kate/api/Photo;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3349
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3350
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "photos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method createPoll(Lcom/perm/kate/api/VkPoll;J)J
    .locals 6
    .param p1, "poll"    # Lcom/perm/kate/api/VkPoll;
    .param p2, "account_id"    # J

    .prologue
    .line 5400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5401
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "poll_id"

    iget-wide v4, p1, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5402
    const-string v2, "owner_id"

    iget-wide v4, p1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5403
    const-string v2, "account_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5404
    const-string v2, "question"

    iget-object v3, p1, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5405
    const-string v3, "anonymous"

    iget-boolean v2, p1, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5406
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5407
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "poll"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    .line 5405
    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createUser(Lcom/perm/kate/api/User;)J
    .locals 8
    .param p1, "u"    # Lcom/perm/kate/api/User;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1855
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1856
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget-wide v6, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1857
    const-string v2, "is_full"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1858
    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1859
    const-string v2, "first_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v2, "first_name_lower"

    iget-object v5, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1863
    const-string v2, "last_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v2, "last_name_lower"

    iget-object v5, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1867
    const-string v2, "nickname"

    iget-object v5, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v2, "nickname_lower"

    iget-object v5, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_2
    const-string v2, "photo"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v2, "photo_medium_rec"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v2, "photo_big"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1874
    const-string v2, "photo_200"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :cond_3
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1876
    const-string v2, "photo_400_orig"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    :cond_4
    const-string v2, "domain"

    iget-object v5, p1, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v2, "sex"

    iget-object v5, p1, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1879
    const-string v2, "birthdate"

    iget-object v5, p1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v2, "city"

    iget-object v5, p1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1881
    const-string v2, "country"

    iget-object v5, p1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1882
    const-string v2, "timezone"

    iget-object v5, p1, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1883
    const-string v2, "has_mobile"

    iget-object v5, p1, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1884
    const-string v2, "rate"

    iget-object v5, p1, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1885
    const-string v2, "mobile_phone"

    iget-object v5, p1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string v2, "home_phone"

    iget-object v5, p1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const-string v2, "university"

    iget-object v5, p1, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1888
    const-string v2, "university_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    const-string v2, "faculty"

    iget-object v5, p1, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1890
    const-string v2, "faculty_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v2, "graduation"

    iget-object v5, p1, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1892
    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 1893
    const-string v5, "online"

    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1894
    :cond_5
    iget-object v2, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 1895
    const-string v2, "online_mobile"

    iget-object v5, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1896
    :cond_6
    const-string v2, "status"

    iget-object v3, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v2, p1, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 1898
    const-string v2, "relation"

    iget-object v3, p1, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1899
    :cond_7
    const-string v2, "last_seen"

    iget-wide v4, p1, Lcom/perm/kate/api/User;->last_seen:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1900
    const-string v2, "albums"

    iget v3, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1901
    const-string v2, "photos"

    iget v3, p1, Lcom/perm/kate/api/User;->photo_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1902
    const-string v2, "videos"

    iget v3, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1903
    const-string v2, "audios"

    iget v3, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1904
    const-string v2, "notes"

    iget v3, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1905
    const-string v2, "friends"

    iget v3, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1906
    const-string v2, "online_friends"

    iget-object v3, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1907
    iget-object v2, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 1908
    const-string v2, "mutual_friends"

    iget-object v3, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1909
    :cond_8
    const-string v2, "user_photos"

    iget v3, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1910
    const-string v2, "user_videos"

    iget v3, p1, Lcom/perm/kate/api/User;->user_videos_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1911
    const-string v2, "groups"

    iget v3, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1912
    const-string v2, "followers"

    iget v3, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1913
    const-string v2, "gifts"

    iget v3, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1915
    iget-object v2, p1, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 1916
    const-string v2, "verified"

    iget-object v3, p1, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1917
    :cond_9
    iget-object v2, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    if-eqz v2, :cond_a

    .line 1918
    const-string v2, "crop_photo_rect_x1"

    iget-object v3, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v4, v3, Lcom/perm/kate/api/User$Rect;->x1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1919
    const-string v2, "crop_photo_rect_x2"

    iget-object v3, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v4, v3, Lcom/perm/kate/api/User$Rect;->x2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1920
    const-string v2, "crop_photo_rect_y1"

    iget-object v3, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v4, v3, Lcom/perm/kate/api/User$Rect;->y1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1921
    const-string v2, "crop_photo_rect_y2"

    iget-object v3, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v4, v3, Lcom/perm/kate/api/User$Rect;->y2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1924
    :cond_a
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1925
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_b
    move v2, v4

    .line 1893
    goto/16 :goto_0

    :cond_c
    move v3, v4

    .line 1895
    goto/16 :goto_1
.end method

.method public createUserDocs(Ljava/util/ArrayList;J)V
    .locals 6
    .param p2, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 5814
    .local p1, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5815
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5817
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteDocs(J)Z

    .line 5818
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5821
    .local v0, "doc":Lcom/perm/kate/api/Document;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createDoc(Lcom/perm/kate/api/Document;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5822
    :catch_0
    move-exception v1

    .line 5823
    .local v1, "ex":Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    .line 5824
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5828
    .end local v0    # "doc":Lcom/perm/kate/api/Document;
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteConstraintException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 5826
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5828
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5830
    return-void
.end method

.method public createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J
    .locals 5
    .param p1, "owner_id"    # J
    .param p3, "group_id"    # J
    .param p5, "is_admin"    # Ljava/lang/Boolean;
    .param p6, "admin_level"    # Ljava/lang/Integer;

    .prologue
    .line 2641
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2642
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2643
    const-string v2, "group_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2644
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2645
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 2646
    :cond_0
    if-eqz p6, :cond_1

    .line 2647
    const-string v2, "admin_level"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2649
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2650
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "user_group"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createUserGroups(Ljava/util/ArrayList;JZ)V
    .locals 10
    .param p2, "owner_id"    # J
    .param p4, "delete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 2599
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 2600
    .local v8, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2603
    if-eqz p4, :cond_0

    .line 2604
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteUserGroups(J)Z

    .line 2605
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 2606
    .local v0, "g":Lcom/perm/kate/api/Group;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 2607
    iget-wide v4, v0, Lcom/perm/kate/api/Group;->gid:J

    iget-object v6, v0, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    move-object v1, p0

    move-wide v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2611
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2609
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2611
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2613
    return-void
.end method

.method public createUserNotes(Ljava/util/ArrayList;J)V
    .locals 4
    .param p2, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Note;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 4165
    .local p1, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Note;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4166
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4168
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->deleteNotes(J)Z

    .line 4169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Note;

    .line 4170
    .local v1, "n":Lcom/perm/kate/api/Note;
    invoke-virtual {p0, v1}, Lcom/perm/kate/db/DataHelper;->createNote(Lcom/perm/kate/api/Note;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4173
    .end local v1    # "n":Lcom/perm/kate/api/Note;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 4171
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4175
    return-void
.end method

.method createVideo(Lcom/perm/kate/api/Video;)J
    .locals 6
    .param p1, "v"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 5162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5163
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "video_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5164
    const-string v2, "owner_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5165
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5166
    const-string v2, "description"

    iget-object v3, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5167
    const-string v2, "duration"

    iget-wide v4, p1, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5168
    const-string v2, "image"

    iget-object v3, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5169
    const-string v2, "image_big"

    iget-object v3, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5170
    const-string v2, "date"

    iget-wide v4, p1, Lcom/perm/kate/api/Video;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5171
    const-string v2, "player_url"

    iget-object v3, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5172
    const-string v2, "views"

    iget v3, p1, Lcom/perm/kate/api/Video;->views:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5173
    iget-object v2, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 5174
    const-string v2, "likes_count"

    iget-object v3, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5175
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5176
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "video"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createVideoInAlbum(JJJJ)J
    .locals 5
    .param p1, "album_id"    # J
    .param p3, "album_owner_id"    # J
    .param p5, "video_id"    # J
    .param p7, "video_owner_id"    # J

    .prologue
    .line 6192
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6193
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6194
    const-string v2, "album_owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6195
    const-string v2, "video_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6196
    const-string v2, "video_owner_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6198
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6199
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "video_in_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createVideosInAlbum(JJLjava/util/ArrayList;)V
    .locals 11
    .param p1, "album_owner_id"    # J
    .param p3, "album_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6187
    .local p5, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 6188
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-wide v6, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v8, v0, Lcom/perm/kate/api/Video;->owner_id:J

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createVideoInAlbum(JJJJ)J

    goto :goto_0

    .line 6189
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_0
    return-void
.end method

.method public createWallLike(JJJZI)J
    .locals 5
    .param p1, "wall_owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "account_id"    # J
    .param p7, "like"    # Z
    .param p8, "type"    # I

    .prologue
    .line 5362
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5363
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "wall_owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5364
    const-string v2, "post_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5365
    const-string v2, "account_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5366
    const-string v3, "like"

    if-eqz p7, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5367
    const-string v2, "type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5368
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5369
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "wall_like"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    .line 5366
    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createWallPost(Lcom/perm/kate/api/WallMessage;J)J
    .locals 14
    .param p1, "u"    # Lcom/perm/kate/api/WallMessage;
    .param p2, "account_id"    # J

    .prologue
    .line 4526
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4527
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "post_id"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4528
    const-string v1, "from_id"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4529
    const-string v1, "to_id"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4530
    const-string v1, "date"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4531
    const-string v1, "text"

    iget-object v2, p1, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4532
    const-string v1, "comments_count"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->comment_count:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4533
    const-string v1, "copy_owner_id"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4534
    const-string v1, "copy_text"

    iget-object v2, p1, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    const-string v1, "signer_id"

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4536
    const-string v1, "post_type"

    iget v2, p1, Lcom/perm/kate/api/WallMessage;->post_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4537
    iget-object v1, p1, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4538
    const-string v1, "views"

    iget-object v2, p1, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4541
    :cond_0
    const-string v1, "likes_count"

    iget v2, p1, Lcom/perm/kate/api/WallMessage;->like_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4542
    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v4, p1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-boolean v8, p1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    const/4 v9, 0x0

    move-object v1, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 4544
    const-string v1, "reposts_count"

    iget v2, p1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4546
    const-string v2, "is_pinned"

    iget-boolean v1, p1, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4548
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 4549
    .local v12, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "wall"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 4551
    .local v10, "id":J
    iget-object v1, p1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v10, v11}, Lcom/perm/kate/db/DataHelper;->createAttachments(Ljava/util/ArrayList;IJ)V

    .line 4553
    return-wide v10

    .line 4546
    .end local v10    # "id":J
    .end local v12    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAlbum(J)Z
    .locals 7
    .param p1, "aid"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4075
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4079
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "albums"

    const-string v4, "album_id=?"

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteAlbumPhoto(JJJJ)Z
    .locals 7
    .param p1, "album_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "photo_id"    # J
    .param p7, "photo_owner_id"    # J

    .prologue
    .line 5972
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5973
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "albumphoto"

    const-string v2, "album_id=? AND album_owner_id=? AND photo_id=? AND photo_owner_id=?"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 5974
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5973
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAlbumPhotos(JJ)Z
    .locals 7
    .param p1, "album_id"    # J
    .param p3, "photo_owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5966
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5967
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "albumphoto"

    const-string v4, "album_id=? AND album_owner_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 5968
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 5967
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteAllFriends(J)Z
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 2793
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2794
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "friends"

    const-string v2, "owner_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAllNews(JI)V
    .locals 7
    .param p1, "account_id"    # J
    .param p3, "type"    # I

    .prologue
    .line 2946
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2947
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "news"

    const-string v2, "account_id=? AND is_comments=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2948
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2947
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2949
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsFriend()V

    .line 2950
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsNote()V

    .line 2951
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsPhotos()V

    .line 2952
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsPhotoTags()V

    .line 2953
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedNewsAttachments()V

    .line 2954
    return-void
.end method

.method public deleteAndCreateNews(Lcom/perm/kate/api/Newsfeed;JI)V
    .locals 10
    .param p1, "feed"    # Lcom/perm/kate/api/Newsfeed;
    .param p2, "account_id"    # J
    .param p4, "type"    # I

    .prologue
    .line 2930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2931
    .local v4, "start":J
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2932
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2934
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->deleteAllNews(JI)V

    .line 2935
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->createNewsInternal(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 2936
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2942
    .local v0, "end":J
    const-string v3, "Kate.DataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAndCreateNews duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    return-void

    .line 2939
    .end local v0    # "end":J
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public deleteAudioAlbums(J)Z
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 6349
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6350
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio_albums"

    const-string v2, "owner_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAudioInList(JJJ)Z
    .locals 9
    .param p1, "audio_id"    # J
    .param p3, "list_id"    # J
    .param p5, "list_owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6362
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6363
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "audio_in_list"

    const-string v4, "list_id=? AND list_owner_id=? AND audio_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 6364
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 6363
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteAudiosInList(JJ)Z
    .locals 7
    .param p1, "list_id"    # J
    .param p3, "list_owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6356
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6357
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "audio_in_list"

    const-string v4, "list_id=? AND list_owner_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 6358
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 6357
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteChatMember(JJ)Z
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "user_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5628
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5629
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "chat_members"

    const-string v4, "chat_id=? AND user_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 5630
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 5629
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteChatMembers(J)Z
    .locals 5
    .param p1, "chat_id"    # J

    .prologue
    .line 5562
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5563
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "chat_members"

    const-string v2, "chat_id= ?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteChatMessages(JJJ)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "account_id"    # J
    .param p5, "group_id"    # J

    .prologue
    .line 3628
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3629
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "messages"

    const-string v2, "chat_id=? AND account_id=? AND group_id=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3630
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3629
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3631
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedMessageAttachments()V

    .line 3632
    return-void
.end method

.method public deleteComment(JJJJ)Z
    .locals 7
    .param p1, "content_id"    # J
    .param p3, "content_type"    # J
    .param p5, "content_owner_id"    # J
    .param p7, "comment_id"    # J

    .prologue
    .line 3894
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3895
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "comments"

    const-string v2, "content_id=? AND content_type=? AND content_owner_id=? AND comment_id=?"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3899
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3895
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteComments(JJJ)Z
    .locals 9
    .param p1, "content_id"    # J
    .param p3, "content_type"    # J
    .param p5, "content_owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3885
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3886
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "comments"

    const-string v4, "content_id=? AND content_type=? AND content_owner_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 3890
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3886
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteDoc(JJ)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5929
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5930
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "docs"

    const-string v4, "doc_id=? AND owner_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteDocs(J)Z
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 5833
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5834
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "docs"

    const-string v2, "owner_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteFaveLinks(J)Z
    .locals 5
    .param p1, "account_id"    # J

    .prologue
    .line 5727
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5728
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "fave_links"

    const-string v2, "account_id=?"

    .line 5729
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    .line 5728
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteFavePosts(J)Z
    .locals 5
    .param p1, "account_id"    # J

    .prologue
    .line 5767
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5768
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "fave_posts"

    const-string v2, "account_id=?"

    .line 5769
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    .line 5768
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteFaveUsers(J)Z
    .locals 5
    .param p1, "account_id"    # J

    .prologue
    .line 5689
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5690
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "fave_users"

    const-string v2, "account_id=?"

    .line 5691
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    .line 5690
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteFriend(JJ)Z
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "friend_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2913
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2914
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "friends"

    const-string v4, "owner_id=? AND friend_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 2915
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2914
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteGroupTopic(J)Z
    .locals 5
    .param p1, "topic_id"    # J

    .prologue
    .line 5538
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5539
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "group_topics"

    const-string v2, "_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteGroupTopics(J)Z
    .locals 5
    .param p1, "group_id"    # J

    .prologue
    .line 5533
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5534
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "group_topics"

    const-string v2, "group_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteMessage(JJJ)Z
    .locals 9
    .param p1, "rowId"    # J
    .param p3, "account_id"    # J
    .param p5, "group_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3622
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3623
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "messages"

    const-string v4, "message_id=? AND account_id=? AND group_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 3624
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3623
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteMessageThread(JJJJ)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "account_id"    # J
    .param p7, "group_id"    # J

    .prologue
    .line 3636
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v2

    .local v2, "thread_id":J
    move-object v1, p0

    move-wide v4, p5

    move-wide/from16 v6, p7

    .line 3637
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->deleteChatMessages(JJJ)V

    .line 3638
    return-void
.end method

.method public deleteNewsFromOwnerId(JJ)V
    .locals 7
    .param p1, "account_id"    # J
    .param p3, "post_owner_id"    # J

    .prologue
    .line 2957
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2958
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "news"

    const-string v2, "account_id=? AND (source_id=? OR copy_owner_id=?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2959
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2958
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2960
    return-void
.end method

.method public deleteNewsItem(JJ)Z
    .locals 7
    .param p1, "_id"    # J
    .param p3, "account_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3191
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3192
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "news"

    const-string v4, "_id=? AND account_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 3193
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 3192
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteNote(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 4154
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4155
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notes"

    const-string v2, "_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteNotes(J)Z
    .locals 5
    .param p1, "user_id"    # J

    .prologue
    .line 4149
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4150
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notes"

    const-string v2, "from_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deletePhoto(JJ)Z
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "photo_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3421
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3422
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "photos"

    const-string v4, "owner_id=? AND photo_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 3423
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 3422
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteUnusedMessageAttachments()V
    .locals 10

    .prologue
    .line 4671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4672
    .local v4, "start":J
    const-string v3, "delete from attachments where _id in (select np._id from attachments as np left join messages as n on np.content_id=n._id where np.content_type=2 AND n._id is null)"

    .line 4676
    .local v3, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4677
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4679
    .local v0, "end":J
    const-string v6, "Kate.DataHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteUnusedMessageAttachments duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    return-void
.end method

.method public deleteUnusedNewsAttachments()V
    .locals 10

    .prologue
    .line 4659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4660
    .local v4, "start":J
    const-string v3, "delete from attachments where _id in (select np._id from attachments as np left join news as n on np.content_id=n._id where np.content_type=1 AND n._id is null)"

    .line 4664
    .local v3, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4665
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4667
    .local v0, "end":J
    const-string v6, "Kate.DataHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteUnusedNewsAttachments duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    return-void
.end method

.method public deleteUnusedNewsFriend()V
    .locals 3

    .prologue
    .line 3465
    const-string v1, "delete from news_friend where _id in (select nf._id from news_friend as nf left join news as n on nf.news_id=n._id where n._id is null)"

    .line 3467
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3468
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3469
    return-void
.end method

.method public deleteUnusedNewsNote()V
    .locals 3

    .prologue
    .line 3482
    const-string v1, "delete from news_note where _id in (select nn._id from news_note as nn left join news as n on nn.news_id=n._id where n._id is null)"

    .line 3484
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3485
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3486
    return-void
.end method

.method public deleteUnusedNewsPhotoTags()V
    .locals 3

    .prologue
    .line 3447
    const-string v1, "delete from news_phototags where _id in (select np._id from news_phototags as np left join news as n on np.news_id=n._id where n._id is null)"

    .line 3449
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3450
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3451
    return-void
.end method

.method public deleteUnusedNewsPhotos()V
    .locals 3

    .prologue
    .line 3429
    const-string v1, "delete from news_photo where _id in (select np._id from news_photo as np left join news as n on np.news_id=n._id where n._id is null)"

    .line 3431
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3432
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3433
    return-void
.end method

.method public deleteUnusedWallAttachments()V
    .locals 10

    .prologue
    .line 4647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4648
    .local v4, "start":J
    const-string v3, "delete from attachments where _id in (select np._id from attachments as np left join wall as n on np.content_id=n._id where np.content_type=0 AND n._id is null)"

    .line 4652
    .local v3, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4653
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4655
    .local v0, "end":J
    const-string v6, "Kate.DataHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteUnusedWallAttachments duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    return-void
.end method

.method public deleteUserAlbums(J)Z
    .locals 5
    .param p1, "user_id"    # J

    .prologue
    .line 3971
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3972
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "albums"

    const-string v2, "owner_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteUserGroup(JJ)Z
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "group_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2635
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2636
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "user_group"

    const-string v4, "user_id=? AND group_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 2637
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 2636
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteUserGroups(J)Z
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 2630
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2631
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user_group"

    const-string v2, "user_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteVideo(JJ)Z
    .locals 7
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5218
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5219
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "video"

    const-string v4, "video_id=? AND owner_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 5220
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 5219
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteVideosInAlbum(JJ)V
    .locals 7
    .param p1, "album_owner_id"    # J
    .param p3, "album_id"    # J

    .prologue
    .line 6181
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6182
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video_in_album"

    const-string v2, "album_id=? AND album_owner_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 6183
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6182
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6184
    return-void
.end method

.method public deleteWallPost(JJ)Z
    .locals 7
    .param p1, "post_id"    # J
    .param p3, "wall_owner_id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4630
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4631
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "wall"

    const-string v4, "post_id=? AND to_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 4632
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 4631
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteWallPosts(J)V
    .locals 5
    .param p1, "wall_owner_id"    # J

    .prologue
    .line 4637
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4638
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "wall"

    const-string v2, "to_id=?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4639
    invoke-virtual {p0}, Lcom/perm/kate/db/DataHelper;->deleteUnusedWallAttachments()V

    .line 4640
    return-void
.end method

.method public doesMessageExist(JLjava/lang/String;)Z
    .locals 11
    .param p1, "message_id"    # J
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3792
    if-nez p3, :cond_0

    .line 3800
    :goto_0
    return v6

    .line 3794
    :cond_0
    const-string v4, "SELECT count(*) FROM messages WHERE message_id=? AND body=?"

    .line 3795
    .local v4, "sql":Ljava/lang/String;
    iget-object v7, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v7}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3796
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    aput-object p3, v7, v5

    invoke-virtual {v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3797
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3798
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3799
    .local v0, "count":J
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3800
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method public ensureChatExists(JJJ)V
    .locals 13
    .param p1, "thread_id"    # J
    .param p3, "account_id"    # J
    .param p5, "group_id"    # J

    .prologue
    .line 5657
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 5658
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT EXISTS (SELECT _id FROM chat WHERE chat_id=? AND account_id=? AND group_id=?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5659
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5660
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v12, 0x1

    .line 5661
    .local v12, "exists":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5662
    if-nez v12, :cond_0

    .line 5663
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->createChat(JLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 5664
    :cond_0
    return-void

    .line 5660
    .end local v12    # "exists":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public fetchAlbum(J)Lcom/perm/kate/api/Album;
    .locals 5
    .param p1, "aid"    # J

    .prologue
    const/4 v0, 0x0

    .line 4026
    const-string v3, "SELECT a.title, a.description, a.privacy_str FROM albums as a WHERE a.album_id=?"

    .line 4029
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4030
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4031
    .local v1, "mCursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 4045
    :goto_0
    return-object v0

    .line 4033
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4034
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 4035
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4038
    :cond_1
    new-instance v0, Lcom/perm/kate/api/Album;

    invoke-direct {v0}, Lcom/perm/kate/api/Album;-><init>()V

    .line 4039
    .local v0, "a":Lcom/perm/kate/api/Album;
    iput-wide p1, v0, Lcom/perm/kate/api/Album;->aid:J

    .line 4040
    const-string v4, "title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 4041
    const-string v4, "description"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    .line 4042
    const-string v4, "privacy_str"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Privacy;->parseString(Ljava/lang/String;)Lcom/perm/kate/api/Privacy;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    .line 4044
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchAlbum(JJ)Lcom/perm/kate/api/Album;
    .locals 9
    .param p1, "aid"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v5, 0x0

    .line 4049
    const/4 v1, 0x0

    .line 4051
    .local v1, "mCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT a.title, a.description FROM albums as a WHERE a.album_id=? AND a.owner_id=? LIMIT 1"

    .line 4054
    .local v3, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4055
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4056
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 4068
    if-eqz v1, :cond_0

    .line 4069
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v5

    .line 4066
    .end local v2    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 4058
    .restart local v2    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4059
    new-instance v0, Lcom/perm/kate/api/Album;

    invoke-direct {v0}, Lcom/perm/kate/api/Album;-><init>()V

    .line 4060
    .local v0, "a":Lcom/perm/kate/api/Album;
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 4061
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4068
    if-eqz v1, :cond_1

    .line 4069
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4063
    .end local v0    # "a":Lcom/perm/kate/api/Album;
    .end local v2    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 4064
    .local v4, "th":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4065
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4068
    if-eqz v1, :cond_3

    .line 4069
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v5

    .line 4066
    goto :goto_0

    .line 4068
    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    .line 4069
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method

.method public fetchAlbums(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 4016
    const-string v1, "SELECT a.album_id, a.title, a.description, a.thumb_src, a.size FROM albums as a WHERE a.owner_id=? ORDER BY a._id"

    .line 4021
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4022
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchAttachmentBinary(J)[B
    .locals 13
    .param p1, "attachment_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 5048
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5049
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "message"

    aput-object v3, v2, v11

    const-string v3, "_id=?"

    .line 5051
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 5049
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5053
    .local v9, "mCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 5058
    :goto_0
    return-object v5

    .line 5055
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 5056
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 5057
    .local v10, "message_serialized":[B
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 5058
    goto :goto_0
.end method

.method public fetchAttachments(IJJZ)Ljava/util/ArrayList;
    .locals 56
    .param p1, "content_type"    # I
    .param p2, "content_id"    # J
    .param p4, "account_id"    # J
    .param p6, "only_types"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4843
    const-wide/16 v34, 0x0

    .local v34, "photo_duration":J
    const-wide/16 v16, 0x0

    .local v16, "audio_duration":J
    const-wide/16 v50, 0x0

    .local v50, "video_duration":J
    const-wide/16 v30, 0x0

    .local v30, "note_duration":J
    const-wide/16 v40, 0x0

    .local v40, "poll_duration":J
    const-wide/16 v28, 0x0

    .local v28, "message_duration":J
    const-wide/16 v20, 0x0

    .local v20, "doc_duration":J
    const-wide/16 v54, 0x0

    .line 4844
    .local v54, "wall_duration":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v44

    .line 4845
    .local v44, "start":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v7}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4846
    .local v6, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "attachments"

    const/16 v8, 0x15

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "type"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "photo_id"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "audio_id"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "video_id"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "video_owner_id"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "link_url"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "link_title"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "graffiti_src"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "graffiti_src_big"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "note_id"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "poll_id"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "geo_type"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, "geo_lat"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    const-string v10, "geo_lon"

    aput-object v10, v8, v9

    const/16 v9, 0xe

    const-string v10, "doc_id"

    aput-object v10, v8, v9

    const/16 v9, 0xf

    const-string v10, "message"

    aput-object v10, v8, v9

    const/16 v9, 0x10

    const-string v10, "_id"

    aput-object v10, v8, v9

    const/16 v9, 0x11

    const-string v10, "video_access_key"

    aput-object v10, v8, v9

    const/16 v9, 0x12

    const-string v10, "page_title"

    aput-object v10, v8, v9

    const/16 v9, 0x13

    const-string v10, "page_id"

    aput-object v10, v8, v9

    const/16 v9, 0x14

    const-string v10, "page_group_id"

    aput-object v10, v8, v9

    const-string v9, "content_type=? AND content_id=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 4855
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4846
    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 4856
    .local v19, "mCursor":Landroid/database/Cursor;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 4857
    .local v42, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-nez v19, :cond_0

    .line 5044
    :goto_0
    return-object v42

    .line 4859
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 4860
    new-instance v15, Lcom/perm/kate/api/Attachment;

    invoke-direct {v15}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 4861
    .local v15, "att":Lcom/perm/kate/api/Attachment;
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 4862
    if-eqz p6, :cond_1

    .line 4863
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4866
    :cond_1
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "posted_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4867
    :cond_2
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 4868
    .local v36, "photo_id":Ljava/lang/Long;
    const-wide/16 v38, 0x0

    .line 4870
    .local v38, "photo_owner_id":J
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4871
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 4873
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 4874
    .local v46, "t1":J
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchPhoto(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 4875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 4876
    .local v48, "t2":J
    sub-long v8, v48, v46

    add-long v34, v34, v8

    .line 4877
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v7, :cond_4

    .line 4878
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    const/16 v8, 0x11

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    .line 4879
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4882
    .end local v36    # "photo_id":Ljava/lang/Long;
    .end local v38    # "photo_owner_id":J
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_4
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4883
    const/4 v7, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 4884
    .local v18, "audio_id":Ljava/lang/Long;
    const-wide/16 v32, 0x0

    .line 4886
    .local v32, "owner_id":J
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 4887
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 4888
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 4889
    .restart local v46    # "t1":J
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 4890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 4891
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    add-long v16, v16, v8

    .line 4892
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v7, :cond_6

    .line 4893
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4895
    .end local v18    # "audio_id":Ljava/lang/Long;
    .end local v32    # "owner_id":J
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_6
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4896
    const/4 v7, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    .line 4897
    .local v52, "video_id":Ljava/lang/Long;
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    .line 4898
    .local v53, "video_owner_id":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 4899
    .restart local v46    # "t1":J
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchVideo(JJ)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 4900
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v7, :cond_7

    .line 4901
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    const/16 v8, 0x11

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    .line 4902
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4904
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 4905
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    add-long v50, v50, v8

    .line 4907
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    .end local v52    # "video_id":Ljava/lang/Long;
    .end local v53    # "video_owner_id":Ljava/lang/Long;
    :cond_8
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "link"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4908
    new-instance v7, Lcom/perm/kate/api/Link;

    invoke-direct {v7}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 4909
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    const/4 v8, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 4910
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    const/4 v8, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    .line 4911
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4913
    :cond_9
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "graffiti"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4914
    new-instance v7, Lcom/perm/kate/api/Graffiti;

    invoke-direct {v7}, Lcom/perm/kate/api/Graffiti;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    .line 4915
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    const/4 v8, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Graffiti;->src:Ljava/lang/String;

    .line 4916
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    const/16 v8, 0x8

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Graffiti;->src_big:Ljava/lang/String;

    .line 4917
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4919
    :cond_a
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "note"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4920
    const/16 v7, 0x9

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 4921
    .local v27, "note_id":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 4922
    .restart local v46    # "t1":J
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchNote(J)Lcom/perm/kate/api/Note;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    .line 4923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 4924
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    add-long v30, v30, v8

    .line 4925
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    if-eqz v7, :cond_b

    .line 4926
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4928
    .end local v27    # "note_id":Ljava/lang/Long;
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_b
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "poll"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4929
    const/16 v7, 0xa

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 4930
    .local v37, "poll_id":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 4931
    .restart local v46    # "t1":J
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    .line 4932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 4933
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    add-long v40, v40, v8

    .line 4934
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v7, :cond_c

    .line 4935
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4937
    .end local v37    # "poll_id":Ljava/lang/Long;
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_c
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "geo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4938
    new-instance v7, Lcom/perm/kate/api/Geo;

    invoke-direct {v7}, Lcom/perm/kate/api/Geo;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    .line 4939
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    const/16 v8, 0xb

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Geo;->type:Ljava/lang/String;

    .line 4940
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    const/16 v8, 0xc

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    .line 4941
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    const/16 v8, 0xd

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    .line 4942
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4944
    :cond_d
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "doc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4945
    const/16 v7, 0xe

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 4946
    .local v22, "doc_id":J
    const-wide/16 v32, 0x0

    .line 4948
    .restart local v32    # "owner_id":J
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 4949
    const/4 v7, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 4950
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 4951
    .restart local v46    # "t1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchDocFull(JJ)Lcom/perm/kate/api/Document;

    move-result-object v7

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    .line 4952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 4953
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    add-long v20, v20, v8

    .line 4954
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    if-eqz v7, :cond_f

    .line 4955
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    const/16 v8, 0x11

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    .line 4956
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4959
    .end local v22    # "doc_id":J
    .end local v32    # "owner_id":J
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_f
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4965
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v46

    .line 4966
    .restart local v46    # "t1":J
    const/16 v7, 0xf

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/ForwardedMessagesActivity;->deserialize([B)Lcom/perm/kate/api/Message;

    move-result-object v26

    .line 4968
    .local v26, "message":Lcom/perm/kate/api/Message;
    if-eqz v26, :cond_10

    .line 4969
    const/4 v7, 0x1

    move-object/from16 v0, v26

    iput-boolean v7, v0, Lcom/perm/kate/api/Message;->read_state:Z

    .line 4970
    move-object/from16 v0, v26

    iput-object v0, v15, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 4972
    :cond_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v48

    .line 4973
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    const-wide/32 v10, 0xf4240

    div-long v28, v8, v10

    .line 4975
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4976
    const/16 v7, 0x10

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v15, Lcom/perm/kate/api/Attachment;->id:J

    .line 4978
    .end local v26    # "message":Lcom/perm/kate/api/Message;
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_11
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "wall"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4979
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4980
    const/16 v7, 0x10

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v15, Lcom/perm/kate/api/Attachment;->id:J

    .line 4984
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v46

    .line 4985
    .restart local v46    # "t1":J
    const/16 v7, 0xf

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/WallMessageActivity;->deserialize([B)Lcom/perm/kate/api/WallMessage;

    move-result-object v26

    .line 4986
    .local v26, "message":Lcom/perm/kate/api/WallMessage;
    move-object/from16 v0, v26

    iput-object v0, v15, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    .line 4987
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v48

    .line 4988
    .restart local v48    # "t2":J
    sub-long v8, v48, v46

    const-wide/32 v10, 0xf4240

    div-long v54, v8, v10

    .line 4990
    .end local v26    # "message":Lcom/perm/kate/api/WallMessage;
    .end local v46    # "t1":J
    .end local v48    # "t2":J
    :cond_12
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "page"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 4991
    new-instance v7, Lcom/perm/kate/api/Page;

    invoke-direct {v7}, Lcom/perm/kate/api/Page;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    .line 4992
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    const/16 v8, 0x12

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    .line 4993
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    const/16 v8, 0x13

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Page;->id:J

    .line 4994
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    const/16 v8, 0x14

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Page;->group_id:J

    .line 4995
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4997
    :cond_13
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "gift"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 4998
    new-instance v7, Lcom/perm/kate/api/Gift;

    invoke-direct {v7}, Lcom/perm/kate/api/Gift;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    .line 4999
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    const/16 v8, 0x12

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    .line 5000
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    const/16 v8, 0x13

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Gift;->id:J

    .line 5001
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5003
    :cond_14
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "album"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 5004
    new-instance v7, Lcom/perm/kate/api/Album;

    invoke-direct {v7}, Lcom/perm/kate/api/Album;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    .line 5005
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    const/16 v8, 0x12

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 5006
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    const/16 v8, 0x13

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Album;->aid:J

    .line 5007
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    const/16 v8, 0x14

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Album;->owner_id:J

    .line 5008
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5010
    :cond_15
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "sticker"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 5011
    new-instance v7, Lcom/perm/kate/api/Sticker;

    invoke-direct {v7}, Lcom/perm/kate/api/Sticker;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    .line 5012
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    const/16 v8, 0x13

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Sticker;->id:J

    .line 5014
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    const/4 v8, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    .line 5015
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    const/4 v8, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    .line 5016
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    const/16 v8, 0x12

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 5017
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5019
    :cond_16
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v8, "wall_reply"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5020
    new-instance v7, Lcom/perm/kate/api/Comment;

    invoke-direct {v7}, Lcom/perm/kate/api/Comment;-><init>()V

    iput-object v7, v15, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    .line 5021
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/Comment;->cid:J

    .line 5022
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    new-instance v8, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v8}, Lcom/perm/kate/api/WallMessage;-><init>()V

    iput-object v8, v7, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    .line 5023
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v7, v7, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    const/4 v8, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/WallMessage;->id:J

    .line 5024
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v7, v7, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    const/4 v8, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 5025
    iget-object v7, v15, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    const/16 v8, 0x11

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 5026
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5029
    .end local v15    # "att":Lcom/perm/kate/api/Attachment;
    :cond_17
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 5030
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    .line 5032
    .local v24, "end":J
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    .line 5033
    .local v43, "sb":Ljava/lang/StringBuilder;
    const-string v7, "fetchAttachments="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v24, v44

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5035
    const-string v7, " photo="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5036
    const-string v7, " audio="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5037
    const-string v7, " video="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v50

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5038
    const-string v7, " note="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5039
    const-string v7, " poll="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v40

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5040
    const-string v7, " message="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5041
    const-string v7, " doc="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5042
    const-string v7, " wall="

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5043
    const-string v7, "Kate.DataHelper"

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public fetchAttachmentsBinaries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "attachment_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 5062
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5063
    .local v10, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v3, ""

    .line 5064
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 5065
    .local v12, "user":J
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5067
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5068
    goto :goto_0

    .line 5069
    .end local v12    # "user":J
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5070
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5071
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "message"

    aput-object v5, v2, v11

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5074
    .local v9, "mCursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5075
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5076
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5077
    return-object v10
.end method

.method public fetchAudio(J)Lcom/perm/kate/api/Audio;
    .locals 11
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4238
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4239
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "lyrics_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "owner_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "url"

    aput-object v4, v2, v3

    const-string v3, "audio_id=?"

    .line 4241
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    .line 4239
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4242
    .local v10, "mCursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 4258
    :goto_0
    return-object v5

    .line 4244
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4245
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4246
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4249
    :cond_1
    new-instance v9, Lcom/perm/kate/api/Audio;

    invoke-direct {v9}, Lcom/perm/kate/api/Audio;-><init>()V

    .line 4250
    .local v9, "a":Lcom/perm/kate/api/Audio;
    iput-wide p1, v9, Lcom/perm/kate/api/Audio;->aid:J

    .line 4251
    const-string v1, "artist"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 4252
    const-string v1, "duration"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Audio;->duration:J

    .line 4253
    const-string v1, "lyrics_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    .line 4254
    const-string v1, "owner_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 4255
    const-string v1, "title"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 4256
    const-string v1, "url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 4257
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    .line 4258
    goto :goto_0
.end method

.method public fetchAudio(JJ)Lcom/perm/kate/api/Audio;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4262
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4263
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "lyrics_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "url"

    aput-object v4, v2, v3

    const-string v3, "audio_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 4265
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 4263
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4266
    .local v10, "mCursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 4267
    const/4 v9, 0x0

    .line 4282
    :goto_0
    return-object v9

    .line 4268
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4269
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4270
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4271
    const/4 v9, 0x0

    goto :goto_0

    .line 4273
    :cond_1
    new-instance v9, Lcom/perm/kate/api/Audio;

    invoke-direct {v9}, Lcom/perm/kate/api/Audio;-><init>()V

    .line 4274
    .local v9, "a":Lcom/perm/kate/api/Audio;
    iput-wide p1, v9, Lcom/perm/kate/api/Audio;->aid:J

    .line 4275
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 4276
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Audio;->duration:J

    .line 4277
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    .line 4278
    iput-wide p3, v9, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 4279
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 4280
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 4281
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchAudioAlbums(J)Ljava/util/ArrayList;
    .locals 9
    .param p1, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6330
    .local v1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    const-string v4, "SELECT a.album_id, a.title FROM audio_albums as a WHERE a.owner_id=?"

    .line 6333
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 6334
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6335
    .local v2, "mCursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 6345
    :goto_0
    return-object v1

    .line 6337
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6338
    new-instance v0, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    .line 6339
    .local v0, "a":Lcom/perm/kate/api/AudioAlbum;
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    .line 6340
    iput-wide p1, v0, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    .line 6341
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    .line 6342
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6344
    .end local v0    # "a":Lcom/perm/kate/api/AudioAlbum;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchAudioInList(JJ)Ljava/util/ArrayList;
    .locals 3
    .param p1, "list_id"    # J
    .param p3, "list_owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->fetchAudioInListCursor(JJ)Landroid/database/Cursor;

    move-result-object v1

    .line 6391
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/perm/kate/db/DataHelper;->audioCursorToArray(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6392
    .local v0, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6393
    return-object v0
.end method

.method public fetchAudioInListCursor(JJ)Landroid/database/Cursor;
    .locals 5
    .param p1, "list_id"    # J
    .param p3, "list_owner_id"    # J

    .prologue
    .line 6397
    const-string v1, "SELECT a.audio_id, a.artist, a.title,a.duration, a.url, a.owner_id, a.lyrics_id FROM audio_in_list as ail JOIN audio as a on a.audio_id=ail.audio_id AND a.owner_id=ail.list_owner_id WHERE ail.list_id=? AND ail.list_owner_id=? ORDER BY ail._id"

    .line 6402
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6403
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchAudiosFromWall(J)Ljava/util/ArrayList;
    .locals 9
    .param p1, "wall_owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5081
    const-string v4, "select a.audio_id, a.owner_id from wall as w join attachments as att on att.content_id=w._id and att.content_type=0 AND att.type=\"audio\" join audio as a on att.audio_id=a.audio_id AND att.video_owner_id=a.owner_id where w.to_id=? order by w._id"

    .line 5087
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5088
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5089
    .local v2, "mCursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5090
    .local v1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5091
    new-instance v0, Lcom/perm/kate/api/Audio;

    invoke-direct {v0}, Lcom/perm/kate/api/Audio;-><init>()V

    .line 5092
    .local v0, "a":Lcom/perm/kate/api/Audio;
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/perm/kate/api/Audio;->aid:J

    .line 5093
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 5094
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5096
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5097
    return-object v1
.end method

.method public fetchChatAvatars(J)Ljava/util/ArrayList;
    .locals 5
    .param p1, "chat_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5580
    const-string v2, "SELECT u.photo_medium_rec FROM chat_members as a LEFT JOIN users as u ON u._id = a.user_id WHERE a.chat_id=? ORDER by a._id"

    .line 5585
    .local v2, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5586
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5587
    .local v0, "mCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5588
    .local v3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5589
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5590
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5591
    return-object v3
.end method

.method public fetchChatFullMembers(J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "chat_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5634
    const-string v2, "SELECT u._id, u.first_name, u.last_name, u.photo, u.photo_medium_rec, u.online FROM chat_members as a LEFT JOIN users as u ON u._id = a.user_id WHERE a.chat_id=? ORDER by a._id"

    .line 5639
    .local v2, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5640
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5641
    .local v0, "mCursor":Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5642
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5643
    new-instance v3, Lcom/perm/kate/api/User;

    invoke-direct {v3}, Lcom/perm/kate/api/User;-><init>()V

    .line 5644
    .local v3, "u":Lcom/perm/kate/api/User;
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perm/kate/api/User;->uid:J

    .line 5645
    const-string v5, "first_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 5646
    const-string v5, "last_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 5647
    const-string v5, "photo_medium_rec"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 5648
    const-string v5, "photo"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 5649
    const-string v5, "online"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 5650
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5649
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 5652
    .end local v3    # "u":Lcom/perm/kate/api/User;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5653
    return-object v4
.end method

.method public fetchChatName(JJ)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "chat_id"    # J
    .param p3, "account_id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 5617
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5618
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "chat"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v10

    const-string v3, "chat_id=? AND account_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5619
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 5624
    :goto_0
    return-object v5

    .line 5621
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5622
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5623
    .local v9, "title":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    .line 5624
    goto :goto_0
.end method

.method public fetchCity(J)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4180
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4181
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "cities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 4182
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    .line 4181
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4184
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 4193
    :goto_0
    return-object v5

    .line 4186
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4187
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4191
    :cond_1
    const-string v1, "name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4192
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 4193
    goto :goto_0
.end method

.method public fetchCommentList(JJJJ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "content_id"    # J
    .param p3, "content_type"    # J
    .param p5, "content_owner_id"    # J
    .param p7, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3915
    invoke-virtual/range {p0 .. p8}, Lcom/perm/kate/db/DataHelper;->fetchComments(JJJJ)Landroid/database/Cursor;

    move-result-object v1

    .line 3916
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3917
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3918
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 3919
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v3, "message"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 3920
    const-string v3, "from_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->from_id:J

    .line 3921
    const-string v3, "like_count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/perm/kate/api/Comment;->like_count:I

    .line 3922
    const-string v3, "like"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 3923
    const-string v3, "comment_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 3924
    const-string v3, "date"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->date:J

    .line 3925
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3922
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 3927
    .end local v0    # "comment":Lcom/perm/kate/api/Comment;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3928
    return-object v2
.end method

.method public fetchComments(JJJJ)Landroid/database/Cursor;
    .locals 7
    .param p1, "content_id"    # J
    .param p3, "content_type"    # J
    .param p5, "content_owner_id"    # J
    .param p7, "account_id"    # J

    .prologue
    .line 3903
    invoke-direct {p0, p3, p4}, Lcom/perm/kate/db/DataHelper;->contentTypeToLikeType(J)I

    move-result v0

    .line 3904
    .local v0, "like_type":I
    const-string v2, "SELECT c._id as _id, c.comment_id as comment_id, c.date as date, c.message as message, c.from_id as from_id, c.content_id, c.like_count as like_count, wl.like as like FROM comments as c LEFT JOIN wall_like as wl on wl.post_id=c.comment_id AND wl.wall_owner_id=? AND wl.account_id=? AND wl.type=? WHERE c.content_id=? AND c.content_type=? AND c.content_owner_id=? ORDER BY c.date"

    .line 3910
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3911
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public fetchCountry(J)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4208
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4209
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "countries"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 4210
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    .line 4209
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4212
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 4221
    :goto_0
    return-object v5

    .line 4214
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4215
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4216
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4219
    :cond_1
    const-string v1, "name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4220
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 4221
    goto :goto_0
.end method

.method public fetchDialogs(JJLjava/util/Collection;)Landroid/database/Cursor;
    .locals 7
    .param p1, "account_id"    # J
    .param p3, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 3671
    .local p5, "hidden_chats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, ""

    .line 3672
    .local v0, "hidden_query":Ljava/lang/String;
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND chat_id not in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3676
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select m2._id as _id, m2.message_id as message_id, m2.date as date, m2.uid as uid, m2.title as title, m2.body as body, m2.is_out as is_out, m2.read_state as read_state, m2.have_attachments as have_attachments, m2.action as action, m2.action_mid as action_mid, m2.action_text as action_text, u.photo_medium_rec as photo_medium_rec, u.first_name as first_name, u.last_name as last_name, u.online as online, u.online_mobile as online_mobile, ch.chat_id as chat_id, ch.title as chat_title, ch.photo_100 as chat_photo_100, ch.unread_count as unread_count FROM chat as ch INNER JOIN (SELECT max(m.message_id) as max_message_id, m.chat_id as x_chat_id FROM messages as m WHERE m.account_id=? and m.group_id=?AND m.chat_id in (SELECT DISTINCT chat_id from chat WHERE account_id=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) GROUP BY m.chat_id) on ch.chat_id=x_chat_id LEFT JOIN messages as m2 on m2.message_id=max_message_id AND m2.account_id=? AND m2.group_id=?LEFT JOIN users as u on m2.uid=u._id WHERE ch.account_id=? AND ch.group_id=?ORDER BY m2.message_id DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3694
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3695
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public fetchDoc(JJ)Lcom/perm/kate/api/Document;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 5881
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5882
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "docs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "doc_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5884
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 5882
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5885
    .local v10, "mCursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 5886
    const/4 v9, 0x0

    .line 5896
    :goto_0
    return-object v9

    .line 5887
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5888
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5889
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5890
    const/4 v9, 0x0

    goto :goto_0

    .line 5892
    :cond_1
    new-instance v9, Lcom/perm/kate/api/Document;

    invoke-direct {v9}, Lcom/perm/kate/api/Document;-><init>()V

    .line 5893
    .local v9, "doc":Lcom/perm/kate/api/Document;
    iput-wide p1, v9, Lcom/perm/kate/api/Document;->id:J

    .line 5894
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    .line 5895
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchDocFull(JJ)Lcom/perm/kate/api/Document;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 5903
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5904
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "docs"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "owner_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "thumb"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ext"

    aput-object v4, v2, v3

    const-string v3, "doc_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5908
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 5904
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5909
    .local v10, "mCursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 5910
    const/4 v9, 0x0

    .line 5925
    :goto_0
    return-object v9

    .line 5911
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5912
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5913
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5914
    const/4 v9, 0x0

    goto :goto_0

    .line 5916
    :cond_1
    new-instance v9, Lcom/perm/kate/api/Document;

    invoke-direct {v9}, Lcom/perm/kate/api/Document;-><init>()V

    .line 5917
    .local v9, "doc":Lcom/perm/kate/api/Document;
    iput-wide p1, v9, Lcom/perm/kate/api/Document;->id:J

    .line 5918
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    .line 5919
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Document;->owner_id:J

    .line 5920
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Document;->size:J

    .line 5921
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    .line 5922
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    .line 5923
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    .line 5924
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchDocs(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 5861
    const-string v3, "SELECT ds._id as _id, ds.doc_id as doc_id, ds.title as title, ds.size as size, ds.url as url, ds.thumb as thumb, ds.ext as ext FROM docs as ds WHERE ds.owner_id=?"

    .line 5862
    .local v3, "sql":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    .line 5863
    .local v0, "args":[Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5864
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 5865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ds.title_lower LIKE ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5867
    .local v1, "filter_arg":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .end local v0    # "args":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 5874
    .end local v1    # "filter_arg":Ljava/lang/String;
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order by ds.doc_id DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5875
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5876
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method public fetchFaveLinks(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "account_id"    # J

    .prologue
    .line 5757
    const-string v1, "select fl._id as _id, fl.url as url, fl.title as title, fl.description as description, fl.image_src as image_src, fl.link_id as link_id from fave_links as fl where fl.account_id=?"

    .line 5761
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5762
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchFavePosts(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "account_id"    # J

    .prologue
    .line 5795
    const-string v1, "select w._id as _id, w.post_id as post_id, w.date as date, w.from_id as from_id, w.text as text, w.to_id as to_id, w.likes_count as likes_count, wl.like as like, w.reposts_count as reposts_count, w.comments_count as comments_count, w.copy_owner_id as copy_owner_id, w.copy_text as copy_text, w.signer_id as signer_id, u.first_name as first_name, u.last_name as last_name, u.photo_medium_rec as photo_medium_rec from fave_posts as fp left join wall as w on fp.post_id=w.post_id AND w.to_id=fp.owner_id left join users as u on w.from_id=u._id left join wall_like as wl on wl.wall_owner_id=w.to_id AND wl.post_id=w.post_id AND wl.account_id=? AND wl.type=0 where fp.account_id=? order by fp._id"

    .line 5807
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5808
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchFaveUsers(J)Landroid/database/Cursor;
    .locals 3
    .param p1, "account_id"    # J

    .prologue
    .line 5716
    const-string v1, "select u._id as _id, u.first_name as first_name, u.last_name as last_name, u.photo_medium_rec as photo_medium_rec, u.online as online, u.online_mobile as online_mobile from fave_users as fu left join users as u on u._id=fu.user_id where fu.account_id=?"

    .line 5721
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5722
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchFriendBirthdays(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 2921
    const-string v2, "select u._id, u.birthdate, u.first_name, u.last_name, u.photo_medium_rec, u.online from users as u join friends as f on u._id=f.friend_id where u.birthdate<>\'\' and f.owner_id=?"

    .line 2922
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    .line 2923
    .local v0, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2924
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "online_first"    # Z

    .prologue
    .line 2867
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZI)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchFriends(JLjava/lang/String;ZI)Landroid/database/Cursor;
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "online_first"    # Z
    .param p5, "sex"    # I

    .prologue
    .line 2837
    const-string v6, "select u._id, u.first_name, u.last_name, u.photo_medium_rec, u.online, u.online_mobile from friends as f join users as u on u._id=f.friend_id where f.owner_id=? "

    .line 2838
    .local v6, "sql":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2839
    .local v1, "args_tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    if-eqz p3, :cond_0

    const-string v7, ""

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2841
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 2842
    invoke-static {p3}, Lcom/perm/utils/TranslitTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2844
    .local v3, "filter_translit":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND (u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ? OR u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2846
    .local v2, "filter_arg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2847
    .local v4, "filter_translit_arg":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2848
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2850
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2851
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    .end local v2    # "filter_arg":Ljava/lang/String;
    .end local v3    # "filter_translit":Ljava/lang/String;
    .end local v4    # "filter_translit_arg":Ljava/lang/String;
    :cond_0
    if-eqz p5, :cond_1

    .line 2855
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and u.sex =?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2856
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2858
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 2859
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2860
    if-eqz p4, :cond_2

    .line 2861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ORDER BY online DESC, f._id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2862
    :cond_2
    iget-object v7, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v7}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2863
    .local v5, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7
.end method

.method public fetchGroup(J)Lcom/perm/kate/api/Group;
    .locals 13
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 2356
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2357
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "groups"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v11

    const-string v3, "photo_medium"

    aput-object v3, v2, v12

    const-string v3, "_id= ?"

    .line 2359
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    .line 2357
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2361
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 2373
    :goto_0
    return-object v5

    .line 2363
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2364
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2365
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2368
    :cond_1
    new-instance v10, Lcom/perm/kate/api/Group;

    invoke-direct {v10}, Lcom/perm/kate/api/Group;-><init>()V

    .line 2369
    .local v10, "u":Lcom/perm/kate/api/Group;
    iput-wide p1, v10, Lcom/perm/kate/api/Group;->gid:J

    .line 2370
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 2371
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 2372
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 2373
    goto :goto_0
.end method

.method public fetchGroupFull(J)Lcom/perm/kate/api/Group;
    .locals 11
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2377
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2378
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "groups"

    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "photo_medium"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "is_closed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "wiki"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "fixed_post"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "can_see_all_posts"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "members_count"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "type"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "start_date"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "photo_big"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "status"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "photos"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "albums"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "topics"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "videos"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "audios"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "docs"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "posts"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "verified"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "can_message"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "market_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "market_wiki_id"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "market_wiki_title"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "market_contact_id"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "cover_400"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "cover_800"

    aput-object v4, v2, v3

    const-string v3, "_id= ?"

    .line 2383
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 2378
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2385
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 2386
    const/4 v10, 0x0

    .line 2444
    :goto_0
    return-object v10

    .line 2387
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2388
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2389
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2390
    const/4 v10, 0x0

    goto :goto_0

    .line 2392
    :cond_1
    new-instance v10, Lcom/perm/kate/api/Group;

    invoke-direct {v10}, Lcom/perm/kate/api/Group;-><init>()V

    .line 2393
    .local v10, "u":Lcom/perm/kate/api/Group;
    iput-wide p1, v10, Lcom/perm/kate/api/Group;->gid:J

    .line 2394
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 2395
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 2396
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    .line 2397
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    .line 2398
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    .line 2399
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2400
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    .line 2401
    :cond_2
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    .line 2402
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2403
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    .line 2404
    :cond_3
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2405
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    .line 2406
    :cond_4
    const/16 v1, 0x9

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2407
    const/16 v1, 0x9

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    .line 2408
    :cond_5
    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2409
    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    .line 2410
    :cond_6
    const/16 v1, 0xb

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2411
    const/16 v1, 0xb

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    .line 2412
    :cond_7
    const/16 v1, 0xc

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2413
    const/16 v1, 0xc

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    .line 2414
    :cond_8
    const/16 v1, 0xd

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2415
    const/16 v1, 0xd

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    .line 2416
    :cond_9
    const/16 v1, 0xe

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2417
    const/16 v1, 0xe

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    .line 2418
    :cond_a
    const/16 v1, 0xf

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2419
    const/16 v1, 0xf

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    .line 2420
    :cond_b
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2421
    const/16 v1, 0x10

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    .line 2422
    :cond_c
    const/16 v1, 0x11

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2423
    const/16 v1, 0x11

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    .line 2424
    :cond_d
    const/16 v1, 0x12

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2425
    const/16 v1, 0x12

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->posts_count:Ljava/lang/Integer;

    .line 2426
    :cond_e
    const/16 v1, 0x13

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2427
    const/16 v1, 0x13

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    .line 2428
    :cond_f
    const/16 v1, 0x14

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2429
    const/16 v1, 0x14

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    .line 2430
    :cond_10
    const/16 v1, 0x15

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2431
    const/16 v1, 0x15

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    .line 2432
    :cond_11
    const/16 v1, 0x16

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2433
    new-instance v1, Lcom/perm/kate/api/Page;

    invoke-direct {v1}, Lcom/perm/kate/api/Page;-><init>()V

    iput-object v1, v10, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    .line 2434
    iget-object v1, v10, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    const/16 v2, 0x16

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/Page;->id:J

    .line 2435
    iget-object v1, v10, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    const/16 v2, 0x17

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    .line 2437
    :cond_12
    const/16 v1, 0x18

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2438
    const/16 v1, 0x18

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    .line 2439
    :cond_13
    const/16 v1, 0x19

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2440
    const/16 v1, 0x19

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    .line 2441
    :cond_14
    const/16 v1, 0x1a

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2442
    const/16 v1, 0x1a

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    .line 2443
    :cond_15
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2401
    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2429
    :cond_17
    const/4 v1, 0x0

    goto :goto_2

    .line 2431
    :cond_18
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public fetchGroupTopics(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "group_id"    # J

    .prologue
    const/4 v5, 0x0

    .line 5524
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5525
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "group_topics"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "comments"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "created"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "created_by"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "updated"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "updated_by"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "is_closed"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "is_fixed"

    aput-object v4, v2, v3

    const-string v3, "group_id=?"

    .line 5529
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v7, "updated DESC"

    move-object v6, v5

    .line 5525
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 2679
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2698
    :cond_0
    :goto_0
    return-object v4

    .line 2681
    :cond_1
    const-string v10, ""

    .line 2682
    .local v10, "query":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 2683
    .local v9, "id":Ljava/lang/Long;
    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2685
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2686
    goto :goto_1

    .line 2687
    .end local v9    # "id":Ljava/lang/Long;
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2688
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2692
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2694
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2695
    .local v11, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2696
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2697
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v4, v11

    .line 2698
    goto/16 :goto_0
.end method

.method public fetchLatestDialog(JJ)J
    .locals 9
    .param p1, "account_id"    # J
    .param p3, "group_id"    # J

    .prologue
    const/4 v8, 0x0

    .line 3699
    const-string v4, "SELECT chat_id FROM messages WHERE account_id=? AND group_id=? ORDER BY date DESC limit 0,1"

    .line 3700
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3701
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3702
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 3703
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3704
    const-wide/16 v0, 0x0

    .line 3709
    :goto_0
    return-wide v0

    .line 3706
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3707
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3708
    .local v0, "chat_id":J
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchManagedGroups(J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2771
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2772
    .local v9, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    const/4 v10, 0x0

    .line 2774
    .local v10, "mCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v10

    .line 2775
    if-eqz v10, :cond_1

    .line 2776
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2777
    new-instance v0, Lcom/perm/kate/api/Group;

    invoke-direct {v0}, Lcom/perm/kate/api/Group;-><init>()V

    .line 2778
    .local v0, "g":Lcom/perm/kate/api/Group;
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Group;->gid:J

    .line 2779
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 2780
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2784
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_0

    .line 2785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 2784
    :cond_1
    if-eqz v10, :cond_2

    .line 2785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2787
    :cond_2
    return-object v9
.end method

.method public fetchMessage(JJ)Lcom/perm/kate/api/Message;
    .locals 11
    .param p1, "account_id"    # J
    .param p3, "message_id"    # J

    .prologue
    .line 3812
    const/4 v7, 0x0

    .line 3814
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v10, "SELECT m.date, m.uid, m.body, m.is_out, m._id FROM messages as m WHERE m.message_id=? AND m.account_id=? AND m.group_id=0"

    .line 3817
    .local v10, "sql":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 3818
    .local v9, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v9, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3819
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 3820
    :cond_0
    const/4 v8, 0x0

    .line 3833
    if-eqz v7, :cond_1

    .line 3834
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3831
    :cond_1
    :goto_0
    return-object v8

    .line 3821
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3822
    new-instance v8, Lcom/perm/kate/api/Message;

    invoke-direct {v8}, Lcom/perm/kate/api/Message;-><init>()V

    .line 3823
    .local v8, "m":Lcom/perm/kate/api/Message;
    iput-wide p3, v8, Lcom/perm/kate/api/Message;->mid:J

    .line 3824
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/perm/kate/api/Message;->date:J

    .line 3825
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/perm/kate/api/Message;->uid:J

    .line 3826
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 3827
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/perm/kate/api/Message;->is_out:Z

    .line 3828
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3830
    .local v2, "_id":J
    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3833
    if-eqz v7, :cond_1

    .line 3834
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3827
    .end local v2    # "_id":J
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3833
    .end local v8    # "m":Lcom/perm/kate/api/Message;
    .end local v9    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 3834
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public fetchMessagesThread(JJJZJ)Landroid/database/Cursor;
    .locals 9
    .param p1, "uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "account_id"    # J
    .param p7, "reverse"    # Z
    .param p8, "group_id"    # J

    .prologue
    .line 3733
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3734
    .local v4, "thread_id":J
    const-string v3, ""

    .line 3736
    .local v3, "where":Ljava/lang/String;
    const-string v3, "WHERE m.chat_id=? AND m.account_id=? AND m.group_id=?"

    .line 3737
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 3738
    .local v0, "args":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT m._id, m.message_id, m.date, m.uid, m.title, m.body, m.is_out, m.read_state, m.have_attachments, m.important, m.action, m.action_mid, m.action_text FROM messages as m "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ORDER BY m.message_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3742
    .local v2, "sql":Ljava/lang/String;
    if-nez p7, :cond_0

    .line 3743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DESC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3744
    :cond_0
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3745
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public fetchNote(J)Lcom/perm/kate/api/Note;
    .locals 11
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4118
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4119
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notes"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "from_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "text"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 4121
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    .line 4119
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4123
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 4137
    :goto_0
    return-object v5

    .line 4125
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4126
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4127
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4130
    :cond_1
    new-instance v10, Lcom/perm/kate/api/Note;

    invoke-direct {v10}, Lcom/perm/kate/api/Note;-><init>()V

    .line 4131
    .local v10, "u":Lcom/perm/kate/api/Note;
    iput-wide p1, v10, Lcom/perm/kate/api/Note;->nid:J

    .line 4132
    const-string v1, "date"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Note;->date:J

    .line 4133
    const-string v1, "from_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Note;->owner_id:J

    .line 4134
    const-string v1, "text"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    .line 4135
    const-string v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    .line 4136
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 4137
    goto :goto_0
.end method

.method public fetchNotes(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "uid"    # J

    .prologue
    const/4 v5, 0x0

    .line 4141
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4142
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notes"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "from_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "text"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "comments"

    aput-object v4, v2, v3

    const-string v3, "from_id=?"

    .line 4145
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v7, "date DESC"

    move-object v6, v5

    .line 4142
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchOnlineFriends(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 2886
    const-string v2, "select u._id, u.first_name, u.last_name, u.photo_medium_rec, u.online, u.online_mobile from users as u join friends as f on u._id=f.friend_id where f.owner_id=? AND u.online=1"

    .line 2890
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    .line 2891
    .local v0, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2892
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public fetchPhoto(JJ)Lcom/perm/kate/api/Photo;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3200
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3201
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 3203
    .local v9, "mCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "photos"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "src"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "src_big"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "width"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "height"

    aput-object v4, v2, v3

    const-string v3, "photo_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3206
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 3203
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3207
    if-nez v9, :cond_1

    .line 3223
    if-eqz v9, :cond_0

    .line 3224
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3219
    :cond_0
    :goto_0
    return-object v10

    .line 3209
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 3223
    if-eqz v9, :cond_0

    .line 3224
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3211
    :cond_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3212
    new-instance v10, Lcom/perm/kate/api/Photo;

    invoke-direct {v10}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 3213
    .local v10, "p":Lcom/perm/kate/api/Photo;
    iput-wide p1, v10, Lcom/perm/kate/api/Photo;->pid:J

    .line 3214
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 3215
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 3216
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 3217
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/perm/kate/api/Photo;->width:I

    .line 3218
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/perm/kate/api/Photo;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3223
    if-eqz v9, :cond_0

    .line 3224
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3223
    .end local v10    # "p":Lcom/perm/kate/api/Photo;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 3224
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public fetchPhoto(JJJ)Lcom/perm/kate/api/Photo;
    .locals 9
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .param p5, "account_id"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 3260
    const-string v2, "SELECT p.photo_id, p.src, p.src_big, p.src_xbig, p.src_xxbig, p.src_xxxbig, p.owner_id, p.phototext, p.album_id, wl.like as like, p.like_count as like_count, p.comments_count as comments_count FROM photos as p LEFT JOIN wall_like as wl on wl.post_id=p.photo_id AND wl.wall_owner_id=p.owner_id AND wl.account_id=? AND wl.type=1 WHERE p.photo_id=? AND p.owner_id=? LIMIT 1"

    .line 3264
    .local v2, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3265
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3266
    .local v0, "mCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3272
    :goto_0
    return-object v3

    .line 3268
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 3269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3272
    :cond_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    goto :goto_0
.end method

.method public fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3229
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3230
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 3232
    .local v9, "mCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "photos"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "src"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "src_big"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "phototext"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "album_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "created"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "width"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "height"

    aput-object v4, v2, v3

    const-string v3, "photo_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3234
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 3232
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3235
    if-nez v9, :cond_1

    .line 3254
    if-eqz v9, :cond_0

    .line 3255
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3250
    :cond_0
    :goto_0
    return-object v10

    .line 3237
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 3254
    if-eqz v9, :cond_0

    .line 3255
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3239
    :cond_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3240
    new-instance v10, Lcom/perm/kate/api/Photo;

    invoke-direct {v10}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 3241
    .local v10, "p":Lcom/perm/kate/api/Photo;
    iput-wide p1, v10, Lcom/perm/kate/api/Photo;->pid:J

    .line 3242
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 3243
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 3244
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 3245
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 3246
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Photo;->aid:J

    .line 3247
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Photo;->created:J

    .line 3248
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/perm/kate/api/Photo;->width:I

    .line 3249
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/perm/kate/api/Photo;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3254
    if-eqz v9, :cond_0

    .line 3255
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3254
    .end local v10    # "p":Lcom/perm/kate/api/Photo;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 3255
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public fetchPhotos(JJJ)Landroid/database/Cursor;
    .locals 5
    .param p1, "aid"    # J
    .param p3, "album_owner_id"    # J
    .param p5, "account_id"    # J

    .prologue
    .line 3373
    const-string v1, "SELECT p.photo_id, p.src, p.src_big, p.src_xbig, p.src_xxbig, p.src_xxxbig, p.owner_id, p.phototext, p.album_id, wl.like as like, p.like_count as like_count, p.comments_count as comments_count FROM albumphoto as ap JOIN photos as p on p.photo_id=ap.photo_id AND p.owner_id=ap.photo_owner_id LEFT JOIN wall_like as wl on wl.post_id=p.photo_id AND wl.wall_owner_id=p.owner_id AND wl.account_id=? AND wl.type=1 WHERE ap.album_id=? AND ap.album_owner_id=? ORDER BY ap._id"

    .line 3379
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3380
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;
    .locals 11
    .param p1, "id"    # J
    .param p3, "account_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 5411
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5412
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "poll"

    const/4 v2, 0x0

    const-string v3, "poll_id=? AND account_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5414
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 5412
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5415
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 5416
    const/4 v10, 0x0

    .line 5431
    :goto_0
    return-object v10

    .line 5417
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5418
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5419
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5420
    const/4 v10, 0x0

    goto :goto_0

    .line 5422
    :cond_1
    new-instance v10, Lcom/perm/kate/api/VkPoll;

    invoke-direct {v10}, Lcom/perm/kate/api/VkPoll;-><init>()V

    .line 5423
    .local v10, "v":Lcom/perm/kate/api/VkPoll;
    iput-wide p1, v10, Lcom/perm/kate/api/VkPoll;->id:J

    .line 5424
    const-string v1, "question"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    .line 5425
    const-string v1, "owner_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/VkPoll;->owner_id:J

    .line 5426
    const-string v1, "votes"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    .line 5427
    const-string v1, "answer_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/VkPoll;->answer_id:Ljava/lang/Long;

    .line 5428
    const-string v1, "answers"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    .line 5429
    const-wide/16 v2, 0x1

    const-string v1, "anonymous"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v10, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    .line 5430
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5429
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fetchPostNews(ZZZZZJI)Landroid/database/Cursor;
    .locals 6
    .param p1, "show_posts"    # Z
    .param p2, "show_photos"    # Z
    .param p3, "show_photo_tags"    # Z
    .param p4, "show_friends"    # Z
    .param p5, "show_notes"    # Z
    .param p6, "account_id"    # J
    .param p8, "type"    # I

    .prologue
    .line 3045
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/db/DataHelper;->getNewsFilterString(ZZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 3046
    .local v0, "filter":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT n._id as _id, n.type as type, n.post_id as post_id, n.source_id as source_id, n.text as text, n.date as date, n.comment_count as comment_count, n.comment_can_post as comment_can_post, n.like_count as like_count, n.user_like as user_like, n.from_id as from_id, n.comments as comments_json, n.is_comments as is_comments, n.reposts_count as reposts_count, n.copy_owner_id as copy_owner_id, n.copy_text as copy_text, n.signer_id as signer_id, n.views as views, group_concat(p.photo_id) as photo_ids, group_concat(p.src) as photo_srcs, group_concat(p.src_big) as photo_srcs_big, group_concat(p.album_id) as album_ids, group_concat(p2.photo_id) as photo_ids_tag, group_concat(p.width) as photo_widths, group_concat(p.height) as photo_heights, group_concat(p2.src) as photo_srcs_tag, group_concat(p2.src_big) as phototag_srcs_big, group_concat(p2.album_id) as album_ids_tag, u.first_name as first_name, u.last_name as last_name, group_concat(p2.width) as photo_tag_widths, group_concat(p2.height) as photo_tag_heights, u.photo as photo, u.photo_big as photo_big, u.online as online, group_concat(p.owner_id) as owner_ids, group_concat(p2.owner_id) as owner_ids_tag, group_concat(f.first_name) as friend_first_names, group_concat(f.last_name) as friend_last_names, group_concat(f._id) as friend_ids, group_concat(no._id) as note_ids, group_concat(no.title) as note_titles FROM news as n left join news_photo as np on n._id=np.news_id left join photos as p on np.photo_id=p.photo_id AND np.photo_owner_id=p.owner_id left join news_phototags as npt on n._id=npt.news_id left join photos as p2 on npt.photo_id=p2.photo_id AND npt.photo_owner_id=p2.owner_id left join news_friend as nf on n._id=nf.news_id left join users as f on nf.user_id=f._id left join news_note as nn on n._id=nn.news_id left join notes as no on nn.note_id=no._id left join users as u on n.source_id=u._id where n.account_id=? AND n.is_comments=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AND n.type in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "group by n._id order by n._id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3078
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3079
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 3046
    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public fetchTopFriends(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 2871
    const-string v3, "select u._id, u.first_name, u.last_name, u.photo_medium_rec, u.online from users as u join friends as f on u._id=f.friend_id where f.owner_id=?"

    .line 2872
    .local v3, "sql":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    .line 2873
    .local v0, "args":[Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2874
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 2875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (u.first_name_lower LIKE ? OR u.last_name_lower LIKE ? OR u.nickname_lower LIKE ?) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2877
    .local v1, "filter_arg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    .end local v0    # "args":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 2878
    .restart local v0    # "args":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ORDER BY online DESC, f._id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 0,20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2881
    .end local v1    # "filter_arg":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2882
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method public fetchUser(J)Lcom/perm/kate/api/User;
    .locals 11
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1939
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1940
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "users"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "first_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "last_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "photo_medium_rec"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "photo"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "online"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "online_mobile"

    aput-object v4, v2, v3

    const-string v3, "_id= ?"

    .line 1942
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 1940
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1944
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1945
    const/4 v10, 0x0

    .line 1960
    :goto_0
    return-object v10

    .line 1946
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1947
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1948
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1949
    const/4 v10, 0x0

    goto :goto_0

    .line 1951
    :cond_1
    new-instance v10, Lcom/perm/kate/api/User;

    invoke-direct {v10}, Lcom/perm/kate/api/User;-><init>()V

    .line 1952
    .local v10, "u":Lcom/perm/kate/api/User;
    iput-wide p1, v10, Lcom/perm/kate/api/User;->uid:J

    .line 1953
    const-string v1, "first_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 1954
    const-string v1, "last_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 1955
    const-string v1, "photo_medium_rec"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1956
    const-string v1, "photo"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1957
    const-string v1, "online"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 1958
    const-string v1, "online_mobile"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    .line 1959
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1957
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1958
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public fetchUserByDomain(Ljava/lang/String;)Lcom/perm/kate/api/User;
    .locals 13
    .param p1, "domain_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 1964
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1965
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "users"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "first_name"

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, "last_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "photo_medium_rec"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "photo"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "online"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "domain"

    aput-object v4, v2, v3

    const-string v3, "domain= ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v12

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1969
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1985
    :goto_0
    return-object v5

    .line 1971
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1972
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1973
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1976
    :cond_1
    new-instance v10, Lcom/perm/kate/api/User;

    invoke-direct {v10}, Lcom/perm/kate/api/User;-><init>()V

    .line 1977
    .local v10, "u":Lcom/perm/kate/api/User;
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/User;->uid:J

    .line 1978
    const-string v1, "first_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 1979
    const-string v1, "last_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 1980
    const-string v1, "photo_medium_rec"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1981
    const-string v1, "photo"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1982
    const-string v1, "online"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    move v1, v11

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 1983
    const-string v1, "domain"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 1984
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 1985
    goto :goto_0

    :cond_2
    move v1, v12

    .line 1982
    goto :goto_1
.end method

.method public fetchUserFull(J)Lcom/perm/kate/api/User;
    .locals 13
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1989
    const/4 v9, 0x0

    .line 1990
    .local v9, "mCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1992
    .local v11, "u":Lcom/perm/kate/api/User;
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1993
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "users"

    const/16 v2, 0x30

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "first_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "last_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "photo_medium_rec"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "photo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "photo_big"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "photo_200"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "domain"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "sex"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "birthdate"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "city"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "country"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "timezone"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "has_mobile"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "rate"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "mobile_phone"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "home_phone"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "university"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "university_name"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "faculty"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "faculty_name"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "graduation"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "online"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "online_mobile"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "status"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "relation"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "last_seen"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "albums"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "photos"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "audios"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "videos"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "notes"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "friends"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "online_friends"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "user_photos"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "user_videos"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "groups"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "followers"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "gifts"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "posts"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "photo_400_orig"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "verified"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "mutual_friends"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "crop_photo_rect_x1"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "crop_photo_rect_x2"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "crop_photo_rect_y1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "crop_photo_rect_y2"

    aput-object v4, v2, v3

    const-string v3, "_id= ?"

    .line 2004
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 1993
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2006
    if-nez v9, :cond_1

    .line 2007
    const/4 v12, 0x0

    .line 2076
    if-eqz v9, :cond_0

    .line 2077
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2079
    :cond_0
    :goto_0
    return-object v12

    .line 2008
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2009
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 2010
    const/4 v12, 0x0

    .line 2076
    if-eqz v9, :cond_0

    .line 2077
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2011
    :cond_2
    :try_start_2
    new-instance v12, Lcom/perm/kate/api/User;

    invoke-direct {v12}, Lcom/perm/kate/api/User;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2012
    .end local v11    # "u":Lcom/perm/kate/api/User;
    .local v12, "u":Lcom/perm/kate/api/User;
    :try_start_3
    iput-wide p1, v12, Lcom/perm/kate/api/User;->uid:J

    .line 2013
    const-string v1, "first_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 2014
    const-string v1, "last_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 2015
    const-string v1, "nickname"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    .line 2016
    const-string v1, "photo"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 2017
    const-string v1, "photo_medium_rec"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 2018
    const-string v1, "photo_big"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 2019
    const-string v1, "photo_200"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 2020
    const-string v1, "photo_400_orig"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 2021
    const-string v1, "domain"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 2022
    const-string v1, "sex"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2023
    const-string v1, "sex"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    .line 2024
    :cond_3
    const-string v1, "birthdate"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    .line 2025
    const-string v1, "city"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    .line 2026
    const-string v1, "country"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    .line 2027
    const-string v1, "timezone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    .line 2028
    const-string v1, "has_mobile"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    .line 2029
    const-string v1, "rate"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    .line 2030
    const-string v1, "mobile_phone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    .line 2031
    const-string v1, "home_phone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    .line 2032
    const-string v1, "university"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    .line 2033
    const-string v1, "university_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    .line 2034
    const-string v1, "faculty"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    .line 2035
    const-string v1, "faculty_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    .line 2036
    const-string v1, "graduation"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    .line 2037
    const-string v1, "online"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 2038
    const-string v1, "online_mobile"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    .line 2039
    const-string v1, "status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    .line 2040
    const-string v1, "relation"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    .line 2041
    const-string v1, "last_seen"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/User;->last_seen:J

    .line 2042
    const-string v1, "albums"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->albums_count:I

    .line 2043
    const-string v1, "photos"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->photo_count:I

    .line 2044
    const-string v1, "videos"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->videos_count:I

    .line 2045
    const-string v1, "audios"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->audios_count:I

    .line 2046
    const-string v1, "notes"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->notes_count:I

    .line 2047
    const-string v1, "friends"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->friends_count:I

    .line 2048
    const-string v1, "online_friends"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2049
    const-string v1, "online_friends"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    .line 2050
    :cond_4
    const-string v1, "user_photos"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->user_photos_count:I

    .line 2051
    const-string v1, "user_videos"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->user_videos_count:I

    .line 2052
    const-string v1, "groups"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->groups_count:I

    .line 2053
    const-string v1, "followers"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->followers_count:I

    .line 2054
    const-string v1, "gifts"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2055
    const-string v1, "gifts"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/perm/kate/api/User;->gifts_count:I

    .line 2056
    :cond_5
    const-string v1, "posts"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2057
    const-string v1, "posts"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->posts_count:Ljava/lang/Integer;

    .line 2058
    :cond_6
    const-string v1, "verified"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2059
    const-string v1, "verified"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    .line 2060
    :cond_7
    const-string v1, "mutual_friends"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2061
    const-string v1, "mutual_friends"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    .line 2063
    :cond_8
    new-instance v10, Lcom/perm/kate/api/User$Rect;

    invoke-direct {v10}, Lcom/perm/kate/api/User$Rect;-><init>()V

    .line 2064
    .local v10, "rect":Lcom/perm/kate/api/User$Rect;
    const-string v1, "crop_photo_rect_x1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2065
    const-string v1, "crop_photo_rect_x1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/User$Rect;->x1:D

    .line 2066
    :cond_9
    const-string v1, "crop_photo_rect_x2"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2067
    const-string v1, "crop_photo_rect_x2"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/User$Rect;->x2:D

    .line 2068
    :cond_a
    const-string v1, "crop_photo_rect_y1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2069
    const-string v1, "crop_photo_rect_y1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/User$Rect;->y1:D

    .line 2070
    :cond_b
    const-string v1, "crop_photo_rect_y2"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2071
    const-string v1, "crop_photo_rect_y2"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/User$Rect;->y2:D

    .line 2072
    :cond_c
    iget-wide v2, v10, Lcom/perm/kate/api/User$Rect;->x1:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_d

    iget-wide v2, v10, Lcom/perm/kate/api/User$Rect;->x2:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_d

    iget-wide v2, v10, Lcom/perm/kate/api/User$Rect;->y1:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_d

    iget-wide v2, v10, Lcom/perm/kate/api/User$Rect;->y2:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_e

    .line 2073
    :cond_d
    iput-object v10, v12, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2076
    :cond_e
    if-eqz v9, :cond_f

    .line 2077
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object v11, v12

    .line 2079
    .end local v12    # "u":Lcom/perm/kate/api/User;
    .restart local v11    # "u":Lcom/perm/kate/api/User;
    goto/16 :goto_0

    .line 2028
    .end local v10    # "rect":Lcom/perm/kate/api/User$Rect;
    .end local v11    # "u":Lcom/perm/kate/api/User;
    .restart local v12    # "u":Lcom/perm/kate/api/User;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2037
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 2038
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2076
    .end local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "u":Lcom/perm/kate/api/User;
    .restart local v11    # "u":Lcom/perm/kate/api/User;
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v9, :cond_13

    .line 2077
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v1

    .line 2076
    .end local v11    # "u":Lcom/perm/kate/api/User;
    .restart local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "u":Lcom/perm/kate/api/User;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12    # "u":Lcom/perm/kate/api/User;
    .restart local v11    # "u":Lcom/perm/kate/api/User;
    goto :goto_4
.end method

.method public fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZ)Landroid/database/Cursor;
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "type"    # Ljava/lang/Integer;
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "is_admin"    # Z
    .param p6, "is_my_group"    # Z
    .param p7, "sort_by_date"    # Z

    .prologue
    .line 2654
    const-string v5, "select g._id as _id, g.name as name, g.photo_medium as photo_medium, g.type as type, g.is_closed as is_closed, g.start_date as start_date from groups as g join user_group as ug on g._id=ug.group_id where ug.user_id=?"

    .line 2655
    .local v5, "sql":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v0

    .line 2656
    .local v0, "args":[Ljava/lang/String;
    if-eqz p4, :cond_0

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2657
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 2659
    invoke-static {p4}, Lcom/perm/utils/TranslitTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2660
    .local v2, "filter_translit":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND (g.name_lower LIKE ? OR g.name_lower LIKE ?) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2662
    .local v1, "filter_arg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2663
    .local v3, "filter_translit_arg":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .end local v0    # "args":[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    aput-object v1, v0, v6

    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 2665
    .end local v1    # "filter_arg":Ljava/lang/String;
    .end local v2    # "filter_translit":Ljava/lang/String;
    .end local v3    # "filter_translit_arg":Ljava/lang/String;
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 2666
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND g.type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2667
    :cond_1
    if-eqz p5, :cond_4

    .line 2668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND (ug.admin_level=2 OR ug.admin_level=3) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2671
    :cond_2
    :goto_0
    if-eqz p7, :cond_3

    .line 2672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY g.start_date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2673
    :cond_3
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2674
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 2669
    .end local v4    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    if-eqz p6, :cond_2

    .line 2670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND (ug.admin_level=1 OR ug.admin_level=2 OR ug.admin_level=3) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public fetchUserTargetingParams(J)Lcom/perm/kate/api/User;
    .locals 13
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 2083
    const/4 v9, 0x0

    .line 2084
    .local v9, "mCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2086
    .local v10, "u":Lcom/perm/kate/api/User;
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2087
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "users"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sex"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "birthdate"

    aput-object v4, v2, v3

    const-string v3, "_id= ?"

    .line 2088
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 2087
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2090
    if-nez v9, :cond_1

    .line 2100
    if-eqz v9, :cond_0

    .line 2101
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2103
    :cond_0
    :goto_0
    return-object v11

    .line 2092
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2093
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 2100
    if-eqz v9, :cond_0

    .line 2101
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2095
    :cond_2
    :try_start_2
    new-instance v11, Lcom/perm/kate/api/User;

    invoke-direct {v11}, Lcom/perm/kate/api/User;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2096
    .end local v10    # "u":Lcom/perm/kate/api/User;
    .local v11, "u":Lcom/perm/kate/api/User;
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2097
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v11, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    .line 2098
    :cond_3
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2100
    if-eqz v9, :cond_4

    .line 2101
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    .line 2103
    .end local v11    # "u":Lcom/perm/kate/api/User;
    .restart local v10    # "u":Lcom/perm/kate/api/User;
    goto :goto_0

    .line 2100
    .end local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v9, :cond_5

    .line 2101
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 2100
    .end local v10    # "u":Lcom/perm/kate/api/User;
    .restart local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "u":Lcom/perm/kate/api/User;
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11    # "u":Lcom/perm/kate/api/User;
    .restart local v10    # "u":Lcom/perm/kate/api/User;
    goto :goto_1
.end method

.method public fetchUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 2264
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return-object v4

    .line 2266
    :cond_1
    const-string v10, ""

    .line 2267
    .local v10, "query":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 2268
    .local v9, "id":Ljava/lang/Long;
    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2270
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2271
    goto :goto_1

    .line 2273
    .end local v9    # "id":Ljava/lang/Long;
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2274
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "users"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "photo_medium_rec"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not NULL"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2278
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2280
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2281
    .local v11, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2282
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2283
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v4, v11

    .line 2284
    goto/16 :goto_0
.end method

.method public fetchVideo(JJ)Lcom/perm/kate/api/Video;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 5271
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5272
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "owner_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "link"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "player_url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "image"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "image_big"

    aput-object v4, v2, v3

    const-string v3, "video_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5275
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 5272
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5276
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 5277
    const/4 v10, 0x0

    .line 5292
    :goto_0
    return-object v10

    .line 5278
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5279
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5280
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5281
    const/4 v10, 0x0

    goto :goto_0

    .line 5283
    :cond_1
    new-instance v10, Lcom/perm/kate/api/Video;

    invoke-direct {v10}, Lcom/perm/kate/api/Video;-><init>()V

    .line 5284
    .local v10, "v":Lcom/perm/kate/api/Video;
    iput-wide p1, v10, Lcom/perm/kate/api/Video;->vid:J

    .line 5285
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 5286
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Video;->owner_id:J

    .line 5287
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    .line 5288
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Video;->duration:J

    .line 5289
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 5290
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    .line 5291
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;
    .locals 11
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 5296
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5297
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "owner_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "video_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5299
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 5297
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5300
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 5301
    const/4 v10, 0x0

    .line 5314
    :goto_0
    return-object v10

    .line 5302
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5303
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5305
    const/4 v10, 0x0

    goto :goto_0

    .line 5307
    :cond_1
    new-instance v10, Lcom/perm/kate/api/Video;

    invoke-direct {v10}, Lcom/perm/kate/api/Video;-><init>()V

    .line 5308
    .local v10, "v":Lcom/perm/kate/api/Video;
    iput-wide p1, v10, Lcom/perm/kate/api/Video;->vid:J

    .line 5309
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 5310
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Video;->owner_id:J

    .line 5311
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 5312
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Video;->date:J

    .line 5313
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public fetchVideos(JJJ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "account_id"    # J
    .param p5, "album_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5224
    const/4 v0, 0x0

    .line 5226
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "SELECT v._id as _id, v.video_id as video_id, v.owner_id as owner_id, v.title as title, v.description as description, v.duration as duration, v.link as link, v.image as image, v.image_big as image_big, v.player_url as player_url, v.views as views, v.likes_count as likes_count, wl.like as like FROM video_in_album as va JOIN video as v on v.video_id=va.video_id AND v.owner_id=va.video_owner_id LEFT JOIN wall_like as wl on wl.post_id=v.video_id AND wl.wall_owner_id=v.owner_id AND wl.account_id=? AND wl.type=6 WHERE va.album_owner_id=? AND va.album_id=? ORDER BY va._id"

    .line 5234
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5235
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5236
    invoke-direct {p0, v0}, Lcom/perm/kate/db/DataHelper;->cursorToVideoArray(Landroid/database/Cursor;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 5238
    if-eqz v0, :cond_0

    .line 5239
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5236
    :cond_0
    return-object v3

    .line 5238
    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 5239
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method public fetchWallPost(JJ)Ljava/lang/Long;
    .locals 11
    .param p1, "id"    # J
    .param p3, "to_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4465
    const/4 v10, 0x0

    .line 4466
    .local v10, "row_id":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4467
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "wall"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "post_id=? AND to_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 4469
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 4467
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4471
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 4472
    const/4 v1, 0x0

    .line 4480
    :goto_0
    return-object v1

    .line 4473
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4474
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4475
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4476
    const/4 v1, 0x0

    goto :goto_0

    .line 4478
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 4479
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v1, v10

    .line 4480
    goto :goto_0
.end method

.method public fetchWallPostFromNews(JJ)Lcom/perm/kate/api/WallMessage;
    .locals 11
    .param p1, "news_id"    # J
    .param p3, "account_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 3083
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3084
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "news"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "text"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "source_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "copy_owner_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "copy_text"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "comment_count"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "like_count"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "signer_id"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "post_id"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "user_like"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "reposts_count"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "user_reposted"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "comment_can_post"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "views"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 3093
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 3084
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3095
    .local v9, "mCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3096
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3097
    const/4 v10, 0x0

    .line 3119
    :goto_0
    return-object v10

    .line 3099
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3100
    new-instance v10, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v10}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 3101
    .local v10, "u":Lcom/perm/kate/api/WallMessage;
    const/16 v1, 0x8

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->id:J

    .line 3102
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 3103
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 3104
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->from_id:J

    .line 3105
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    .line 3106
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 3107
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->date:J

    .line 3108
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->comment_count:J

    .line 3109
    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 3110
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/WallMessage;->signer_id:J

    .line 3111
    const/16 v1, 0x9

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v10, Lcom/perm/kate/api/WallMessage;->user_like:Z

    .line 3112
    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    .line 3113
    const/16 v1, 0xb

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v10, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    .line 3114
    const/16 v1, 0xc

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v10, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    .line 3115
    const/16 v1, 0xd

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3116
    const/16 v1, 0xd

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    .line 3117
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3118
    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v10, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 3111
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3113
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 3114
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public fetchWallPostFull(JJJ)Lcom/perm/kate/api/WallMessage;
    .locals 15
    .param p1, "id"    # J
    .param p3, "to_id"    # J
    .param p5, "account_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 4484
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 4485
    .local v10, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, "select w._id as _id, w.post_id as post_id, w.date as date, w.from_id as from_id, w.text as text, w.to_id as to_id, w.likes_count as likes_count, wl.like as like, w.signer_id as signer_id, w.reposts_count as reposts_count,w.comments_count as comments_count, w.copy_owner_id as copy_owner_id, w.copy_text as copy_text, w.post_type as post_type, w.views as views from wall as w left join wall_like as wl on wl.wall_owner_id=? AND wl.post_id=? AND wl.account_id=? AND wl.type=0 where w.to_id=? AND w.post_id=?limit 0,1"

    .line 4496
    .local v11, "sql":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4497
    .local v9, "mCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 4498
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4499
    const/4 v12, 0x0

    .line 4522
    :goto_0
    return-object v12

    .line 4501
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4502
    new-instance v12, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v12}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 4503
    .local v12, "u":Lcom/perm/kate/api/WallMessage;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/perm/kate/api/WallMessage;->id:J

    .line 4504
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 4505
    const-string v2, "text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 4506
    const-string v2, "from_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->from_id:J

    .line 4507
    const-string v2, "copy_owner_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    .line 4508
    const-string v2, "copy_text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 4509
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->date:J

    .line 4510
    const-string v2, "comments_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->comment_count:J

    .line 4511
    const-string v2, "likes_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 4512
    const-string v2, "like"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->user_like:Z

    .line 4513
    const-string v2, "signer_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->signer_id:J

    .line 4514
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 4515
    .local v4, "post_internal_id":J
    const-string v2, "reposts_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    .line 4516
    const-string v2, "post_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/perm/kate/api/WallMessage;->post_type:I

    .line 4517
    const-string v2, "views"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4518
    .local v13, "views_index":I
    invoke-interface {v9, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4519
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    .line 4520
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4521
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 4512
    .end local v4    # "post_internal_id":J
    .end local v13    # "views_index":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fetchWallPosts(JJ)Landroid/database/Cursor;
    .locals 5
    .param p1, "owner_id"    # J
    .param p3, "account_id"    # J

    .prologue
    .line 4615
    const-string v1, "select w._id as _id, w.post_id as post_id, w.date as date, w.from_id as from_id, w.text as text, w.to_id as to_id, w.likes_count as likes_count, wl.like as like, w.signer_id as signer_id, w.reposts_count as reposts_count,w.comments_count as comments_count, w.copy_owner_id as copy_owner_id, w.copy_text as copy_text, w.post_type as post_type, w.is_pinned as is_pinned, u.first_name as first_name, u.last_name as last_name, u.photo_medium_rec as photo_medium_rec, u.online as online, w.views as views from wall as w left join users as u on w.from_id=u._id left join wall_like as wl on wl.wall_owner_id=? AND wl.post_id=w.post_id AND wl.account_id=? AND wl.type=0 where w.to_id=? order by w._id"

    .line 4625
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4626
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public getDownloadStates()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6157
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6158
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select audio_id, status, owner_id from audio_cache;"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6159
    .local v2, "mCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6160
    .local v3, "states":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6162
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6164
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6165
    return-object v3
.end method

.method public getDownloadStatus(JJ)I
    .locals 11
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v2, 0x0

    .line 6130
    const/4 v10, -0x1

    .line 6131
    .local v10, "result":I
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio_cache"

    const-string v3, "audio_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6133
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 6132
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6134
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6135
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6136
    const-string v1, "status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 6138
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6139
    return v10
.end method

.method public getDownloadVideoStates()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6297
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6298
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select video_id, owner_id, status from video_cache;"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6299
    .local v1, "mCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6300
    .local v3, "states":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6302
    .local v2, "pair_id":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6304
    .end local v2    # "pair_id":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6305
    return-object v3
.end method

.method public getDownloadVideoStatus(JJ)I
    .locals 11
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v2, 0x0

    .line 6271
    const/4 v10, -0x1

    .line 6272
    .local v10, "result":I
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6273
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video_cache"

    const-string v3, "video_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6274
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 6273
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6275
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6276
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6277
    const-string v1, "status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 6279
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6280
    return v10
.end method

.method public getDownloads()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6144
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6145
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select ac.audio_id as audio_id, ac.owner_id as owner_id, a.artist as artist, a.duration as duration, a.title as title, a.url as url, a.lyrics_id as lyrics_id from audio_cache as ac left join audio as a on ac.audio_id=a.audio_id AND ac.owner_id=a.owner_id ORDER BY ac.position DESC"

    .line 6150
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6151
    .local v2, "mCursor":Landroid/database/Cursor;
    invoke-direct {p0, v2}, Lcom/perm/kate/db/DataHelper;->audioCursorToArray(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6152
    .local v0, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6153
    return-object v0
.end method

.method public getFirstAudioCacheJob(I)Lcom/perm/kate/api/Audio;
    .locals 12
    .param p1, "status"    # I

    .prologue
    const/4 v2, 0x0

    .line 6099
    const/4 v9, 0x0

    .line 6100
    .local v9, "audio":Lcom/perm/kate/api/Audio;
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6101
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio_cache"

    const-string v3, "status=?"

    int-to-long v4, p1

    .line 6102
    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v7, "position"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    .line 6101
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6103
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6104
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6105
    new-instance v9, Lcom/perm/kate/api/Audio;

    .end local v9    # "audio":Lcom/perm/kate/api/Audio;
    invoke-direct {v9}, Lcom/perm/kate/api/Audio;-><init>()V

    .line 6106
    .restart local v9    # "audio":Lcom/perm/kate/api/Audio;
    const-string v1, "audio_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Audio;->aid:J

    .line 6107
    const-string v1, "owner_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 6109
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6110
    if-eqz v9, :cond_1

    .line 6111
    iget-wide v2, v9, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v4, v9, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v11

    .line 6112
    .local v11, "temp":Lcom/perm/kate/api/Audio;
    if-eqz v11, :cond_1

    .line 6113
    iget-object v1, v11, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    .line 6114
    iget-object v1, v11, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 6115
    iget-object v1, v11, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    iput-object v1, v9, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 6118
    .end local v11    # "temp":Lcom/perm/kate/api/Audio;
    :cond_1
    return-object v9
.end method

.method public getFirstVideoCacheJob(I)Lcom/perm/kate/api/Video;
    .locals 11
    .param p1, "status"    # I

    .prologue
    const/4 v2, 0x0

    .line 6248
    const/4 v10, 0x0

    .line 6249
    .local v10, "video":Lcom/perm/kate/api/Video;
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6250
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video_cache"

    const-string v3, "status=?"

    int-to-long v4, p1

    .line 6251
    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    const-string v7, "_id"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    .line 6250
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6252
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6253
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6254
    new-instance v10, Lcom/perm/kate/api/Video;

    .end local v10    # "video":Lcom/perm/kate/api/Video;
    invoke-direct {v10}, Lcom/perm/kate/api/Video;-><init>()V

    .line 6255
    .restart local v10    # "video":Lcom/perm/kate/api/Video;
    const-string v1, "video_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Video;->vid:J

    .line 6256
    const-string v1, "owner_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/perm/kate/api/Video;->owner_id:J

    .line 6258
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6259
    return-object v10
.end method

.method public getLastIncomingMessageDate(J)J
    .locals 7
    .param p1, "account_id"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 3749
    const-string v4, "SELECT MAX(date) FROM messages WHERE is_out=0 AND account_id=? AND group_id=0"

    .line 3750
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3751
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3752
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3761
    :goto_0
    return-wide v2

    .line 3754
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3755
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 3756
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3759
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3760
    .local v2, "date":J
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getLastNewsDate(J)J
    .locals 7
    .param p1, "account_id"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 3145
    const-string v4, "SELECT MAX(date) FROM news WHERE account_id=? AND is_comments=0"

    .line 3146
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3147
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3148
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3157
    :goto_0
    return-wide v2

    .line 3150
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3151
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 3152
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3155
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3156
    .local v2, "date":J
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getLastNewsDate2(JI)J
    .locals 11
    .param p1, "account_id"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v10, 0x0

    .line 3162
    const-string v4, "SELECT date FROM news WHERE account_id=? AND is_comments=? ORDER BY _id LIMIT 1"

    .line 3163
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3164
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x1

    int-to-long v8, p3

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3165
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 3166
    .local v2, "date":J
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3167
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3168
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3170
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3171
    return-wide v2
.end method

.method public getNextAudioCachePos()J
    .locals 8

    .prologue
    .line 6033
    const/4 v0, 0x0

    .line 6035
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6036
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "select max(position) from audio_cache"

    .line 6037
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6038
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 6039
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6040
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 6043
    if-eqz v0, :cond_0

    .line 6044
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6046
    :cond_0
    :goto_0
    return-wide v4

    .line 6043
    :cond_1
    if-eqz v0, :cond_2

    .line 6044
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6046
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 6043
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 6044
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 3385
    :try_start_0
    const-string v5, "album_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3386
    .local v0, "album_index":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3387
    .local v4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3388
    new-instance v2, Lcom/perm/kate/api/Photo;

    invoke-direct {v2}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 3389
    .local v2, "p":Lcom/perm/kate/api/Photo;
    const-string v5, "photo_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3390
    .local v3, "photo_id_str":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 3391
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/perm/kate/api/Photo;->pid:J

    .line 3392
    :cond_0
    const-string v5, "src"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 3393
    const-string v5, "src_big"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 3394
    const-string v5, "src_xbig"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 3395
    const-string v5, "src_xxbig"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 3396
    const-string v5, "src_xxxbig"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    .line 3397
    const-string v5, "owner_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 3398
    const-string v5, "phototext"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 3399
    if-eq v0, v10, :cond_1

    .line 3400
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/perm/kate/api/Photo;->aid:J

    .line 3401
    :cond_1
    const-string v5, "like"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3402
    .local v1, "index":I
    if-eq v1, v10, :cond_2

    .line 3403
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 3404
    :cond_2
    const-string v5, "like_count"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3405
    if-eq v1, v10, :cond_3

    .line 3406
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 3407
    :cond_3
    const-string v5, "comments_count"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3408
    if-eq v1, v10, :cond_4

    .line 3409
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    .line 3410
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 3416
    .end local v0    # "album_index":I
    .end local v1    # "index":I
    .end local v2    # "p":Lcom/perm/kate/api/Photo;
    .end local v3    # "photo_id_str":Ljava/lang/String;
    .end local v4    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :catchall_0
    move-exception v5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 3403
    .restart local v0    # "album_index":I
    .restart local v1    # "index":I
    .restart local v2    # "p":Lcom/perm/kate/api/Photo;
    .restart local v3    # "photo_id_str":Ljava/lang/String;
    .restart local v4    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 3416
    .end local v1    # "index":I
    .end local v2    # "p":Lcom/perm/kate/api/Photo;
    .end local v3    # "photo_id_str":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3412
    return-object v4
.end method

.method public getUnreadMessages(JJJJ)Ljava/util/ArrayList;
    .locals 11
    .param p1, "uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "account_id"    # J
    .param p7, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3651
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, p1, p2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 3652
    .local v6, "thread_id":J
    const-string v5, ""

    .line 3654
    .local v5, "where":Ljava/lang/String;
    const-string v5, "WHERE m.chat_id=? AND m.read_state=0 AND m.is_out=0 AND m.account_id=? AND m.group_id=?"

    .line 3655
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 3656
    .local v0, "args":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT DISTINCT m.message_id FROM messages as m "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3659
    .local v4, "sql":Ljava/lang/String;
    iget-object v8, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v8}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3660
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3661
    .local v2, "mCursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 3662
    const/4 v1, 0x0

    .line 3667
    :goto_0
    return-object v1

    .line 3663
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3664
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3665
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3666
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getUsersInMessages(JJ)Ljava/util/ArrayList;
    .locals 9
    .param p1, "account_id"    # J
    .param p3, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3715
    const-string v3, "SELECT DISTINCT uid FROM messages as m WHERE account_id=? AND group_id=?ORDER BY date DESC LIMIT 0,30"

    .line 3720
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3721
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3722
    .local v1, "mCursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3723
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 3728
    :goto_0
    return-object v0

    .line 3725
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3726
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3727
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getVideoDownloads()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6284
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6285
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "select vc.video_id as video_id, vc.owner_id as owner_id, v.title as title, v.duration as duration, v.image as image, v.image_big as image_big, v.player_url as player_url, v.description as description from video_cache as vc left join video as v on vc.video_id=v.video_id AND vc.owner_id=v.owner_id ORDER BY vc._id DESC"

    .line 6290
    .local v2, "sql":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6291
    .local v1, "mCursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/perm/kate/db/DataHelper;->cursorToVideoArray(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6292
    .local v3, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6293
    return-object v3
.end method

.method public increaseUnreadCountInChat(JJIJ)V
    .locals 5
    .param p1, "thread_id"    # J
    .param p3, "account_id"    # J
    .param p5, "count"    # I
    .param p6, "group_id"    # J

    .prologue
    .line 5675
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5676
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "UPDATE chat SET unread_count=unread_count+? WHERE chat_id=? AND account_id=? AND group_id=?"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 5677
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5676
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5678
    return-void
.end method

.method public isAdminInGroup(Ljava/lang/Long;J)Z
    .locals 12
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "group_id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2754
    const/4 v8, 0x0

    .line 2755
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2757
    .local v9, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2758
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user_group"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "group_id=? AND user_id=? AND admin_level=3"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2760
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2758
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2762
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v9, v10

    .line 2764
    :goto_0
    if-eqz v8, :cond_0

    .line 2765
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2767
    :cond_0
    return v9

    :cond_1
    move v9, v11

    .line 2762
    goto :goto_0

    .line 2764
    .end local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 2765
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public isAdminOrEditorInGroup(Ljava/lang/Long;J)Z
    .locals 12
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "group_id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2737
    const/4 v8, 0x0

    .line 2738
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2740
    .local v9, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2741
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user_group"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "group_id=? AND user_id=? AND admin_level in (2,3)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2743
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2741
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2745
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v9, v10

    .line 2747
    :goto_0
    if-eqz v8, :cond_0

    .line 2748
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2750
    :cond_0
    return v9

    :cond_1
    move v9, v11

    .line 2745
    goto :goto_0

    .line 2747
    .end local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 2748
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public isAudioCached(JJ)Z
    .locals 11
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 6006
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6007
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio_cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "audio_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6009
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 6007
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6010
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    .line 6011
    .local v9, "cached":Z
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6012
    return v9

    .line 6010
    .end local v9    # "cached":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public isFriend(JJ)Z
    .locals 11
    .param p1, "owner_id"    # J
    .param p3, "friend_id"    # J

    .prologue
    .line 2897
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2898
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "friends"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "owner_id=? AND friend_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2900
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 2898
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2902
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 2903
    const/4 v1, 0x0

    .line 2909
    :goto_0
    return v1

    .line 2904
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2905
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2906
    const/4 v1, 0x0

    goto :goto_0

    .line 2908
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2909
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isJoinGroup(JJ)Z
    .locals 11
    .param p1, "group_id"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2702
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2703
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user_group"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "user_id"

    aput-object v4, v2, v3

    const-string v3, "group_id=? AND user_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2705
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2703
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2707
    .local v9, "mCursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 2708
    const/4 v1, 0x0

    .line 2714
    :goto_0
    return v1

    .line 2709
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2710
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2711
    const/4 v1, 0x0

    goto :goto_0

    .line 2713
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2714
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isModerInGroup(Ljava/lang/Long;J)Z
    .locals 12
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "group_id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2719
    const/4 v8, 0x0

    .line 2720
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2722
    .local v9, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2723
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user_group"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "group_id=? AND user_id=? AND admin_level in (1,2,3)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2725
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2723
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2727
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    move v9, v10

    .line 2729
    :goto_0
    if-eqz v8, :cond_0

    .line 2730
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2732
    :cond_0
    return v9

    :cond_1
    move v9, v11

    .line 2727
    goto :goto_0

    .line 2729
    .end local v0    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 2730
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public isVideoCached(JJ)Z
    .locals 11
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 6205
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6206
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video_cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "video_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6208
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    .line 6206
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6209
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    .line 6210
    .local v9, "cached":Z
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6211
    return v9

    .line 6209
    .end local v9    # "cached":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public newsItemExists(Lcom/perm/kate/api/NewsItem;JI)Z
    .locals 8
    .param p1, "ni"    # Lcom/perm/kate/api/NewsItem;
    .param p2, "account_id"    # J
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3175
    const-string v2, "select _id from news where date=? AND source_id=? AND type=? AND account_id=? AND is_comments=?"

    .line 3176
    .local v2, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3177
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->date:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-wide v6, p1, Lcom/perm/kate/api/NewsItem;->source_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 3178
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3177
    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3179
    .local v0, "mCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3187
    :goto_0
    return v3

    .line 3181
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3182
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 3183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3186
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v3, v4

    .line 3187
    goto :goto_0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1837
    new-instance v0, Lcom/perm/kate/db/DataHelper$OpenHelper;

    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    .line 1846
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->setWriteAheadLoggingEnabledWithReflection(Z)V

    .line 1847
    return-void
.end method

.method public recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "chat_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5544
    .local p2, "chat_members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteChatMembers(J)Z

    .line 5545
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->createChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 5546
    return-void
.end method

.method public recreateWallPosts(JLjava/util/ArrayList;J)V
    .locals 4
    .param p1, "owner_id"    # J
    .param p4, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 4368
    .local p3, "wall":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4369
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4372
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, p1, p2}, Lcom/perm/kate/db/DataHelper;->deleteWallPosts(J)V

    .line 4375
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 4376
    .local v0, "m":Lcom/perm/kate/api/WallMessage;
    invoke-virtual {p0, v0, p4, p5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPost(Lcom/perm/kate/api/WallMessage;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4379
    .end local v0    # "m":Lcom/perm/kate/api/WallMessage;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 4377
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4379
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4381
    return-void
.end method

.method public removeAudioFromCache(JJ)V
    .locals 7
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 6093
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6094
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "audio_cache"

    const-string v2, "audio_id=? AND owner_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 6095
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6094
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6096
    return-void
.end method

.method public removeVideoFromCache(JJ)V
    .locals 7
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 6242
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6243
    .local v0, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "video_cache"

    const-string v2, "video_id=? AND owner_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 6244
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6243
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6245
    return-void
.end method

.method serialize(Ljava/io/Serializable;)[B
    .locals 4
    .param p1, "data"    # Ljava/io/Serializable;

    .prologue
    .line 4806
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4807
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4808
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4809
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4814
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v3

    .line 4810
    :catch_0
    move-exception v1

    .line 4811
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4812
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 4814
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAudioInCacheStatus(Ljava/lang/Long;JI)V
    .locals 8
    .param p1, "audio_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # J
    .param p4, "status"    # I

    .prologue
    .line 6122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6123
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6124
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6125
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "audio_cache"

    const-string v3, "audio_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6126
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 6125
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6127
    return-void
.end method

.method public setMessageImportant(JZJJ)J
    .locals 8
    .param p1, "message_id"    # J
    .param p3, "important"    # Z
    .param p4, "account_id"    # J
    .param p6, "group_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3804
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3805
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v5, "important"

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3806
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3807
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "messages"

    const-string v5, "message_id=? AND account_id=? AND group_id=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 3808
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 3807
    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v2, v4

    .line 3805
    goto :goto_0
.end method

.method public setMessageReadState(Ljava/util/ArrayList;ZJJ)J
    .locals 7
    .param p2, "read_state"    # Z
    .param p3, "account_id"    # J
    .param p5, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZJJ)J"
        }
    .end annotation

    .prologue
    .line 3766
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, ""

    .line 3767
    .local v1, "in":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3768
    .local v0, "id":Ljava/lang/Long;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3770
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3771
    goto :goto_0

    .line 3772
    .end local v0    # "id":Ljava/lang/Long;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3774
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3775
    .local v2, "initialValues":Landroid/content/ContentValues;
    const-string v5, "read_state"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3776
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3777
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "messages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message_id in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND account_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND group_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4

    .line 3775
    .end local v3    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setMessagesReadState(JJJ)J
    .locals 7
    .param p1, "thread_id"    # J
    .param p3, "account_id"    # J
    .param p5, "group_id"    # J

    .prologue
    const/4 v6, 0x1

    .line 3781
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3782
    .local v1, "initialValues":Landroid/content/ContentValues;
    const-string v4, "read_state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3783
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3785
    .local v2, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "chat_id=? AND account_id=? AND group_id=? AND read_state=0 AND is_out=1"

    .line 3786
    .local v3, "query":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const/4 v4, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 3787
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "messages"

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method public setUnreadCountInChat(JJIJ)V
    .locals 5
    .param p1, "thread_id"    # J
    .param p3, "account_id"    # J
    .param p5, "count"    # I
    .param p6, "group_id"    # J

    .prologue
    .line 5681
    iget-object v1, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5682
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "UPDATE chat SET unread_count=? WHERE chat_id=? AND account_id=? AND group_id=?"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 5683
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5682
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5684
    return-void
.end method

.method public setVideoInCacheStatus(JJI)V
    .locals 7
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "status"    # I

    .prologue
    .line 6263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6264
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6265
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6266
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "video_cache"

    const-string v3, "video_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6267
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 6266
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6268
    return-void
.end method

.method public updateAlbum(Lcom/perm/kate/api/Album;)Z
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/api/Album;

    .prologue
    .line 3996
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3997
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    const-string v2, "description"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    iget-object v2, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v2, :cond_0

    .line 4000
    const-string v2, "privacy_str"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    invoke-virtual {v3}, Lcom/perm/kate/api/Privacy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4002
    const-string v2, "thumb_src"

    iget-object v3, p1, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4003
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4007
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "albums"

    const-string v3, "album_id=?"

    iget-wide v4, p1, Lcom/perm/kate/api/Album;->aid:J

    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateAudio(Lcom/perm/kate/api/Audio;)Z
    .locals 10
    .param p1, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4309
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4310
    .local v0, "args":Landroid/content/ContentValues;
    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 4311
    const-string v4, "owner_id"

    iget-wide v6, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4312
    :cond_0
    iget-object v4, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 4313
    const-string v4, "artist"

    iget-object v5, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    :cond_1
    iget-object v4, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 4315
    const-string v4, "title"

    iget-object v5, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    :cond_2
    const-string v4, "duration"

    iget-wide v6, p1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4317
    iget-object v4, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 4318
    const-string v4, "url"

    iget-object v5, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4319
    :cond_3
    iget-object v4, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 4320
    const-string v4, "lyrics_id"

    iget-object v5, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4321
    :cond_4
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4322
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "audio"

    const-string v5, "audio_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-wide v8, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    :goto_0
    return v2

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public updateChatPhoto(JLjava/lang/String;J)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "photo_100"    # Ljava/lang/String;
    .param p4, "account_id"    # J

    .prologue
    .line 5667
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5668
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "photo_100"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5670
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5671
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "chat"

    const-string v3, "chat_id=? AND account_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5672
    return-void
.end method

.method public updateChatTitle(JLjava/lang/String;J)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "account_id"    # J

    .prologue
    .line 5609
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5610
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5612
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5613
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "chat"

    const-string v3, "chat_id=? AND account_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5614
    return-void
.end method

.method public updateCommentLikes(JJJJLjava/lang/Long;ZJ)V
    .locals 13
    .param p1, "comment_id"    # J
    .param p3, "content_id"    # J
    .param p5, "content_owner_id"    # J
    .param p7, "content_type"    # J
    .param p9, "likes_count"    # Ljava/lang/Long;
    .param p10, "user_likes"    # Z
    .param p11, "account_id"    # J

    .prologue
    .line 3952
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3953
    .local v2, "args":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 3954
    .local v12, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p9, :cond_0

    .line 3955
    const-string v3, "like_count"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3956
    const-string v3, "comments"

    const-string v4, "content_id=? AND content_type=? AND content_owner_id=? AND comment_id=?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3961
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3956
    invoke-virtual {v12, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3963
    :cond_0
    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->contentTypeToLikeType(J)I

    move-result v11

    .line 3964
    .local v11, "like_type":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_1

    move-object v3, p0

    move-wide/from16 v4, p5

    move-wide v6, p1

    move-wide/from16 v8, p11

    move/from16 v10, p10

    .line 3965
    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 3966
    :cond_1
    return-void
.end method

.method public updateDocTitle(JJLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "owner_id"    # J
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 5934
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5935
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5936
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5937
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "docs"

    const-string v3, "doc_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5938
    return-void
.end method

.method public updateGroup(Lcom/perm/kate/api/Group;Z)Z
    .locals 6
    .param p1, "u"    # Lcom/perm/kate/api/Group;
    .param p2, "update_counters"    # Z

    .prologue
    .line 2513
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2514
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2515
    const-string v2, "name"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    const-string v2, "name_lower"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2519
    const-string v2, "photo"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2521
    const-string v2, "photo_medium"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2523
    const-string v2, "photo_big"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    :cond_3
    iget-object v2, p1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 2525
    const-string v2, "is_closed"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2526
    :cond_4
    iget-object v2, p1, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2527
    const-string v2, "description"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    :cond_5
    iget-object v2, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2529
    const-string v2, "wiki"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    :cond_6
    iget-object v2, p1, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 2531
    const-string v2, "fixed_post"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2532
    :cond_7
    iget-object v2, p1, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 2533
    const-string v2, "can_see_all_posts"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2534
    :cond_8
    iget-object v2, p1, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 2535
    const-string v2, "members_count"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2536
    :cond_9
    iget-object v2, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 2537
    const-string v2, "type"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2538
    :cond_a
    iget-object v2, p1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v2, :cond_b

    .line 2539
    const-string v2, "start_date"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2540
    :cond_b
    iget-object v2, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 2541
    const-string v2, "status"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    :cond_c
    if-eqz p2, :cond_12

    .line 2543
    iget-object v2, p1, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 2544
    const-string v2, "photos"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2545
    :cond_d
    iget-object v2, p1, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 2546
    const-string v2, "albums"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2547
    :cond_e
    iget-object v2, p1, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    .line 2548
    const-string v2, "topics"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2549
    :cond_f
    iget-object v2, p1, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 2550
    const-string v2, "videos"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2551
    :cond_10
    iget-object v2, p1, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 2552
    const-string v2, "audios"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2553
    :cond_11
    iget-object v2, p1, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 2554
    const-string v2, "docs"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2558
    :cond_12
    iget-object v2, p1, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    .line 2559
    const-string v2, "verified"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2560
    :cond_13
    iget-object v2, p1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v2, :cond_14

    .line 2561
    const-string v2, "can_message"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2562
    :cond_14
    iget-object v2, p1, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    .line 2563
    const-string v2, "market_enabled"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2564
    :cond_15
    iget-object v2, p1, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz v2, :cond_16

    .line 2565
    const-string v2, "market_contact_id"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2566
    :cond_16
    iget-object v2, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    if-eqz v2, :cond_17

    .line 2567
    const-string v2, "market_wiki_id"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-wide v4, v3, Lcom/perm/kate/api/Page;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2568
    const-string v2, "market_wiki_title"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v3, v3, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    :cond_17
    iget-object v2, p1, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 2571
    const-string v2, "cover_400"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    :cond_18
    iget-object v2, p1, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2573
    const-string v2, "cover_800"

    iget-object v3, p1, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    :cond_19
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2575
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "groups"

    const-string v3, "_id=?"

    iget-wide v4, p1, Lcom/perm/kate/api/Group;->gid:J

    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1a

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateGroupStatus(JLjava/lang/String;)V
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 2588
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2589
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2591
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "groups"

    const-string v3, "_id= ?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2592
    return-void
.end method

.method public updateGroupTopic(Lcom/perm/kate/api/GroupTopic;)Z
    .locals 6
    .param p1, "t"    # Lcom/perm/kate/api/GroupTopic;

    .prologue
    .line 5480
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5481
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v2, "group_id"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5482
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    const-string v2, "comments"

    iget v3, p1, Lcom/perm/kate/api/GroupTopic;->comments:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5484
    const-string v2, "created"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->created:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5485
    const-string v2, "created_by"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->created_by:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5486
    const-string v2, "updated"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->updated:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5487
    const-string v2, "updated_by"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5488
    const-string v2, "is_closed"

    iget v3, p1, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5489
    const-string v2, "is_fixed"

    iget v3, p1, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5490
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5491
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "group_topics"

    const-string v3, "_id=?"

    iget-wide v4, p1, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateGroupWallCount(JLjava/lang/Integer;)V
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "posts_count"    # Ljava/lang/Integer;

    .prologue
    .line 2579
    if-nez p3, :cond_0

    .line 2585
    :goto_0
    return-void

    .line 2581
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2582
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "posts"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2583
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2584
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "groups"

    const-string v3, "_id= ?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessage(Lcom/perm/kate/api/Message;JJ)Z
    .locals 10
    .param p1, "m"    # Lcom/perm/kate/api/Message;
    .param p2, "account_id"    # J
    .param p4, "group_id"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3528
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3539
    .local v0, "initialValues":Landroid/content/ContentValues;
    iget-object v3, p1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v6, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v6, v7}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3540
    .local v2, "thread_id":Ljava/lang/Long;
    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3541
    const-string v6, "read_state"

    iget-boolean v3, p1, Lcom/perm/kate/api/Message;->read_state:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3542
    const-string v3, "is_out"

    iget-boolean v6, p1, Lcom/perm/kate/api/Message;->is_out:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3543
    iget-object v3, p1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 3544
    const-string v6, "important"

    iget-object v3, p1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3546
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3547
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "messages"

    const-string v6, "message_id=? AND account_id=? AND group_id=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/perm/kate/api/Message;->mid:J

    .line 3548
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3547
    invoke-virtual {v1, v3, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    :goto_2
    return v4

    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move v3, v5

    .line 3541
    goto :goto_0

    :cond_2
    move v3, v5

    .line 3544
    goto :goto_1

    .restart local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    move v4, v5

    .line 3547
    goto :goto_2
.end method

.method public updateNote(Lcom/perm/kate/api/Note;)Z
    .locals 6
    .param p1, "n"    # Lcom/perm/kate/api/Note;

    .prologue
    .line 4100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4101
    .local v0, "initialValues":Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4102
    const-string v2, "text"

    iget-object v3, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    :cond_0
    const-string v2, "title"

    iget-object v3, p1, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    iget-wide v2, p1, Lcom/perm/kate/api/Note;->ncom:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 4105
    const-string v2, "comments"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->ncom:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4108
    :cond_1
    iget-wide v2, p1, Lcom/perm/kate/api/Note;->date:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 4109
    const-string v2, "date"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4110
    :cond_2
    const-string v2, "from_id"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4112
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4113
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "notes"

    const-string v3, "_id=?"

    iget-wide v4, p1, Lcom/perm/kate/api/Note;->nid:J

    invoke-direct {p0, v4, v5}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateOrder(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5981
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5982
    .local v2, "pos":I
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5983
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5985
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 5986
    .local v0, "a":Lcom/perm/kate/api/Audio;
    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/db/DataHelper;->updatePos(Lcom/perm/kate/api/Audio;I)V

    .line 5987
    add-int/lit8 v2, v2, -0x1

    .line 5988
    goto :goto_0

    .line 5989
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5991
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5993
    return-void

    .line 5991
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public updatePhoto(Lcom/perm/kate/api/Photo;)Z
    .locals 10
    .param p1, "p"    # Lcom/perm/kate/api/Photo;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3276
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3277
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3278
    const-string v4, "src"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    :cond_0
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_small:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_small:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3280
    const-string v4, "src_small"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_small:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    :cond_1
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3282
    const-string v4, "src_big"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    :cond_2
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3284
    const-string v4, "src_xbig"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    :cond_3
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3286
    const-string v4, "src_xxbig"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    :cond_4
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3288
    const-string v4, "src_xxxbig"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    :cond_5
    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->aid:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    .line 3290
    const-string v4, "album_id"

    iget-wide v6, p1, Lcom/perm/kate/api/Photo;->aid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3291
    :cond_6
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3292
    const-string v4, "phototext"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    :cond_7
    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->created:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_8

    .line 3294
    const-string v4, "created"

    iget-wide v6, p1, Lcom/perm/kate/api/Photo;->created:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3295
    :cond_8
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v4, :cond_9

    .line 3296
    const-string v4, "like_count"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3297
    :cond_9
    iget-object v4, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 3298
    const-string v4, "comments_count"

    iget-object v5, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3299
    :cond_a
    iget v4, p1, Lcom/perm/kate/api/Photo;->width:I

    if-eqz v4, :cond_b

    .line 3300
    const-string v4, "width"

    iget v5, p1, Lcom/perm/kate/api/Photo;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3301
    :cond_b
    iget v4, p1, Lcom/perm/kate/api/Photo;->height:I

    if-eqz v4, :cond_c

    .line 3302
    const-string v4, "height"

    iget v5, p1, Lcom/perm/kate/api/Photo;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3304
    :cond_c
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3305
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "photos"

    const-string v5, "photo_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    :goto_0
    return v2

    :cond_d
    move v2, v3

    goto :goto_0
.end method

.method public updatePhotoAlbumId(JJJ)Z
    .locals 9
    .param p1, "pid"    # J
    .param p3, "photo_owner_id"    # J
    .param p5, "aid"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3309
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3310
    .local v0, "args":Landroid/content/ContentValues;
    const-string v4, "album_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3311
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3312
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "photos"

    const-string v5, "photo_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updatePhotoLikes(JJJ)Z
    .locals 9
    .param p1, "photo_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "like_count"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3323
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3324
    .local v0, "args":Landroid/content/ContentValues;
    const-string v4, "like_count"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3325
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3326
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "photos"

    const-string v5, "photo_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updatePhotoText(JJLjava/lang/String;)Z
    .locals 9
    .param p1, "pid"    # J
    .param p3, "owner_id"    # J
    .param p5, "caption"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3316
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3317
    .local v0, "args":Landroid/content/ContentValues;
    const-string v4, "phototext"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3319
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "photos"

    const-string v5, "photo_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updatePoll(Lcom/perm/kate/api/VkPoll;J)Z
    .locals 10
    .param p1, "poll"    # Lcom/perm/kate/api/VkPoll;
    .param p2, "account_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5380
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5382
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "question"

    iget-object v5, p1, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5383
    iget-wide v6, p1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    .line 5384
    const-string v2, "owner_id"

    iget-wide v6, p1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5385
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/VkPoll;->created:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 5386
    const-string v2, "created"

    iget-object v5, p1, Lcom/perm/kate/api/VkPoll;->created:Ljava/lang/Long;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5387
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 5388
    const-string v2, "votes"

    iget-object v5, p1, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5389
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/VkPoll;->answer_id:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 5390
    const-string v2, "answer_id"

    iget-object v5, p1, Lcom/perm/kate/api/VkPoll;->answer_id:Ljava/lang/Long;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5391
    :cond_3
    iget-object v2, p1, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 5392
    const-string v2, "answers"

    iget-object v5, p1, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5393
    :cond_4
    const-string v5, "anonymous"

    iget-boolean v2, p1, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5394
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5395
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "poll"

    const-string v5, "poll_id=? AND account_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/perm/kate/api/VkPoll;->id:J

    .line 5396
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 5395
    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    :goto_1
    return v3

    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    move v2, v4

    .line 5393
    goto :goto_0

    .restart local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    move v3, v4

    .line 5395
    goto :goto_1
.end method

.method public updatePos(Lcom/perm/kate/api/Audio;I)V
    .locals 8
    .param p1, "audio"    # Lcom/perm/kate/api/Audio;
    .param p2, "pos"    # I

    .prologue
    .line 5996
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5997
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5998
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5999
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "audio_cache"

    const-string v3, "audio_id=? AND owner_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/perm/kate/api/Audio;->aid:J

    .line 6000
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5999
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6001
    return-void
.end method

.method public updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;)V
    .locals 13
    .param p1, "post_id"    # J
    .param p3, "to_id"    # J
    .param p5, "likes_count"    # Ljava/lang/Long;
    .param p6, "user_likes"    # Ljava/lang/Boolean;
    .param p7, "account_id"    # J
    .param p9, "repost_count"    # Ljava/lang/Integer;

    .prologue
    .line 4587
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4588
    .local v2, "args":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 4589
    .local v12, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_0

    .line 4590
    const-string v3, "likes_count"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4591
    :cond_0
    if-eqz p9, :cond_1

    .line 4592
    const-string v3, "reposts_count"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4593
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 4594
    const-string v3, "wall"

    const-string v4, "post_id=? AND to_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 4596
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4594
    invoke-virtual {v12, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4598
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4599
    if-eqz p5, :cond_3

    .line 4600
    const-string v3, "like_count"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4601
    :cond_3
    if-eqz p9, :cond_4

    .line 4602
    const-string v3, "reposts_count"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4603
    :cond_4
    if-eqz p6, :cond_5

    .line 4604
    const-string v4, "user_like"

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4605
    :cond_5
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 4606
    const-string v3, "news"

    const-string v4, "post_id=? AND source_id=? AND account_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 4608
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4606
    invoke-virtual {v12, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4610
    :cond_6
    if-eqz p6, :cond_7

    .line 4611
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    move-object v3, p0

    move-wide/from16 v4, p3

    move-wide v6, p1

    move-wide/from16 v8, p7

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 4612
    :cond_7
    return-void

    .line 4604
    :cond_8
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateStatus(JLjava/lang/String;)V
    .locals 5
    .param p1, "user_id"    # J
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 2107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2108
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2110
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "users"

    const-string v3, "_id= ?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2111
    return-void
.end method

.method public updateUser(Lcom/perm/kate/api/User;Z)Z
    .locals 10
    .param p1, "u"    # Lcom/perm/kate/api/User;
    .param p2, "update_counters"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2115
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2116
    const-string v2, "first_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    const-string v2, "first_name_lower"

    iget-object v5, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    :cond_0
    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2120
    const-string v2, "last_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v2, "last_name_lower"

    iget-object v5, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2124
    const-string v2, "nickname"

    iget-object v5, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    const-string v2, "nickname_lower"

    iget-object v5, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2128
    const-string v2, "photo"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_3
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2130
    const-string v2, "photo_medium_rec"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :cond_4
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2132
    const-string v2, "photo_big"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    :cond_5
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2134
    const-string v2, "photo_200"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    :cond_6
    iget-object v2, p1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2136
    const-string v2, "photo_400_orig"

    iget-object v5, p1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :cond_7
    iget-object v2, p1, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2138
    const-string v2, "domain"

    iget-object v5, p1, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    :cond_8
    iget-object v2, p1, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 2140
    const-string v2, "sex"

    iget-object v5, p1, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2141
    :cond_9
    iget-object v2, p1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2142
    const-string v2, "birthdate"

    iget-object v5, p1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    :cond_a
    iget-object v2, p1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 2144
    const-string v2, "city"

    iget-object v5, p1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    :cond_b
    iget-object v2, p1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 2146
    const-string v2, "country"

    iget-object v5, p1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2147
    :cond_c
    iget-object v2, p1, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 2148
    const-string v2, "timezone"

    iget-object v5, p1, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2149
    :cond_d
    iget-object v2, p1, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    .line 2150
    const-string v2, "has_mobile"

    iget-object v5, p1, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2151
    :cond_e
    iget-object v2, p1, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    .line 2152
    const-string v2, "rate"

    iget-object v5, p1, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2153
    :cond_f
    iget-object v2, p1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2154
    const-string v2, "mobile_phone"

    iget-object v5, p1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    :cond_10
    iget-object v2, p1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 2156
    const-string v2, "home_phone"

    iget-object v5, p1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :cond_11
    iget-object v2, p1, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 2158
    const-string v2, "university"

    iget-object v5, p1, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2159
    :cond_12
    iget-object v2, p1, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 2160
    const-string v2, "university_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    :cond_13
    iget-object v2, p1, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    .line 2162
    const-string v2, "faculty"

    iget-object v5, p1, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2163
    :cond_14
    iget-object v2, p1, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 2164
    const-string v2, "faculty_name"

    iget-object v5, p1, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :cond_15
    iget-object v2, p1, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    .line 2166
    const-string v2, "graduation"

    iget-object v5, p1, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2167
    :cond_16
    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v2, :cond_17

    .line 2168
    const-string v5, "online"

    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2169
    :cond_17
    iget-object v2, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    if-eqz v2, :cond_18

    .line 2170
    const-string v5, "online_mobile"

    iget-object v2, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2171
    :cond_18
    iget-object v2, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2172
    const-string v2, "status"

    iget-object v5, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    :cond_19
    iget-object v2, p1, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    .line 2174
    const-string v2, "relation"

    iget-object v5, p1, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2175
    :cond_1a
    iget-wide v6, p1, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1b

    .line 2176
    const-string v2, "last_seen"

    iget-wide v6, p1, Lcom/perm/kate/api/User;->last_seen:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2179
    :cond_1b
    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v2, :cond_1c

    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    iget v2, p1, Lcom/perm/kate/api/User;->last_seen_platform:I

    if-eqz v2, :cond_1c

    .line 2180
    const-string v5, "online_mobile"

    iget v2, p1, Lcom/perm/kate/api/User;->last_seen_platform:I

    const/4 v6, 0x7

    if-ge v2, v6, :cond_24

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2181
    :cond_1c
    if-eqz p2, :cond_1f

    .line 2182
    const-string v2, "albums"

    iget v5, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2183
    const-string v2, "photos"

    iget v5, p1, Lcom/perm/kate/api/User;->photo_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2184
    const-string v2, "videos"

    iget v5, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2185
    const-string v2, "audios"

    iget v5, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2186
    const-string v2, "notes"

    iget v5, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2187
    const-string v2, "friends"

    iget v5, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2188
    iget-object v2, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    .line 2189
    const-string v2, "online_friends"

    iget-object v5, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2190
    :cond_1d
    iget-object v2, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 2191
    const-string v2, "mutual_friends"

    iget-object v5, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2192
    :cond_1e
    const-string v2, "user_photos"

    iget v5, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2193
    const-string v2, "user_videos"

    iget v5, p1, Lcom/perm/kate/api/User;->user_videos_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2194
    const-string v2, "groups"

    iget v5, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2195
    const-string v2, "followers"

    iget v5, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2196
    const-string v2, "gifts"

    iget v5, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2200
    :cond_1f
    iget-object v2, p1, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_20

    .line 2201
    const-string v2, "verified"

    iget-object v5, p1, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2202
    :cond_20
    iget-object v2, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    if-eqz v2, :cond_21

    .line 2203
    const-string v2, "crop_photo_rect_x1"

    iget-object v5, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v6, v5, Lcom/perm/kate/api/User$Rect;->x1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2204
    const-string v2, "crop_photo_rect_x2"

    iget-object v5, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v6, v5, Lcom/perm/kate/api/User$Rect;->x2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2205
    const-string v2, "crop_photo_rect_y1"

    iget-object v5, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v6, v5, Lcom/perm/kate/api/User$Rect;->y1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2206
    const-string v2, "crop_photo_rect_y2"

    iget-object v5, p1, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    iget-wide v6, v5, Lcom/perm/kate/api/User$Rect;->y2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2208
    :cond_21
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2209
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "users"

    const-string v5, "_id= ?"

    iget-wide v6, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-direct {p0, v6, v7}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_25

    :goto_3
    return v3

    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_22
    move v2, v4

    .line 2168
    goto/16 :goto_0

    :cond_23
    move v2, v4

    .line 2170
    goto/16 :goto_1

    :cond_24
    move v2, v4

    .line 2180
    goto/16 :goto_2

    .restart local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_25
    move v3, v4

    .line 2209
    goto :goto_3
.end method

.method public updateUserOnlineStatus(JZ)Z
    .locals 7
    .param p1, "user_id"    # J
    .param p3, "online_status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2222
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2223
    .local v0, "args":Landroid/content/ContentValues;
    const-string v5, "online"

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2224
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2225
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "users"

    const-string v5, "_id= ?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    return v3

    .end local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v2, v4

    .line 2223
    goto :goto_0

    .restart local v1    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move v3, v4

    .line 2225
    goto :goto_1
.end method

.method public updateUserWallCount(JLjava/lang/Integer;)V
    .locals 5
    .param p1, "user_id"    # J
    .param p3, "posts_count"    # Ljava/lang/Integer;

    .prologue
    .line 2213
    if-nez p3, :cond_0

    .line 2219
    :goto_0
    return-void

    .line 2215
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2216
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "posts"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2217
    iget-object v2, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2218
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "users"

    const-string v3, "_id= ?"

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUsersOnlineStatus(Ljava/util/ArrayList;J)V
    .locals 10
    .param p2, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2229
    .local p1, "online_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v6}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2230
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2233
    :try_start_0
    const-string v2, "update users set online=0 where _id in (select friend_id from friends where owner_id=?)"

    .line 2235
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2238
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2239
    const-string v3, ""

    .line 2240
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2241
    .local v4, "user":J
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 2242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2243
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2244
    goto :goto_0

    .line 2245
    .end local v4    # "user":J
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2247
    .local v0, "args":Landroid/content/ContentValues;
    const-string v6, "online"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2248
    const-string v6, "users"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2252
    .end local v0    # "args":Landroid/content/ContentValues;
    .end local v3    # "where":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2253
    .restart local v4    # "user":J
    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2254
    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2258
    .end local v2    # "sql":Ljava/lang/String;
    .end local v4    # "user":J
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 2256
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2258
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2260
    return-void
.end method

.method public updateVideo(Lcom/perm/kate/api/Video;)Z
    .locals 10
    .param p1, "v"    # Lcom/perm/kate/api/Video;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5181
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v4, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5182
    const-string v4, "title"

    iget-object v5, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    :cond_0
    iget-object v4, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5184
    const-string v4, "description"

    iget-object v5, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5185
    :cond_1
    iget-wide v4, p1, Lcom/perm/kate/api/Video;->duration:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 5186
    const-string v4, "duration"

    iget-wide v6, p1, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5187
    :cond_2
    iget-object v4, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5188
    const-string v4, "image"

    iget-object v5, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    :cond_3
    iget-object v4, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5190
    const-string v4, "image_big"

    iget-object v5, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    :cond_4
    iget-wide v4, p1, Lcom/perm/kate/api/Video;->date:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 5192
    const-string v4, "date"

    iget-wide v6, p1, Lcom/perm/kate/api/Video;->date:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5193
    :cond_5
    iget-object v4, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5194
    const-string v4, "player_url"

    iget-object v5, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5195
    :cond_6
    iget v4, p1, Lcom/perm/kate/api/Video;->views:I

    if-eqz v4, :cond_7

    .line 5196
    const-string v4, "views"

    iget v5, p1, Lcom/perm/kate/api/Video;->views:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5197
    :cond_7
    iget-object v4, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 5198
    const-string v4, "likes_count"

    iget-object v5, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5199
    :cond_8
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5200
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "video"

    const-string v5, "video_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/perm/kate/api/Video;->vid:J

    .line 5201
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-wide v8, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 5200
    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    :goto_0
    return v2

    :cond_9
    move v2, v3

    goto :goto_0
.end method

.method public updateVideoLikeCount(JJI)Z
    .locals 9
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "like_count"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5206
    .local v0, "args":Landroid/content/ContentValues;
    const-string v4, "likes_count"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5207
    iget-object v4, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v4}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5208
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "video"

    const-string v5, "video_id=? AND owner_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 5209
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 5208
    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateWallLike(JJJZI)I
    .locals 11
    .param p1, "wall_owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "account_id"    # J
    .param p7, "like"    # Z
    .param p8, "type"    # I

    .prologue
    .line 5352
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5353
    .local v2, "args":Landroid/content/ContentValues;
    const-string v6, "like"

    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5354
    const-string v4, "wall_owner_id=? AND post_id=? AND account_id=? AND type=?"

    .line 5355
    .local v4, "where":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5356
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "wall_like"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 5357
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    move/from16 v0, p8

    int-to-long v8, v0

    .line 5358
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 5356
    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 5353
    .end local v3    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "where":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateWallPost(Lcom/perm/kate/api/WallMessage;JJ)Z
    .locals 14
    .param p1, "u"    # Lcom/perm/kate/api/WallMessage;
    .param p2, "account_id"    # J
    .param p4, "row_id"    # J

    .prologue
    .line 4557
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4558
    .local v2, "args":Landroid/content/ContentValues;
    const-string v3, "comments_count"

    iget-wide v4, p1, Lcom/perm/kate/api/WallMessage;->comment_count:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4559
    const-string v3, "post_type"

    iget v4, p1, Lcom/perm/kate/api/WallMessage;->post_type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4562
    const-string v3, "likes_count"

    iget v4, p1, Lcom/perm/kate/api/WallMessage;->like_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4563
    iget-wide v4, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v6, p1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-boolean v10, p1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    const/4 v11, 0x0

    move-object v3, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallLike(JJJZI)V

    .line 4565
    const-string v3, "reposts_count"

    iget v4, p1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4567
    const-string v4, "is_pinned"

    iget-boolean v3, p1, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4568
    iget-object v3, p1, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 4569
    const-string v3, "views"

    iget-object v4, p1, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4571
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 4572
    .local v12, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "wall"

    const-string v4, "post_id=? AND to_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v8, p1, Lcom/perm/kate/api/WallMessage;->id:J

    .line 4574
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4572
    invoke-virtual {v12, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4579
    const-string v13, "DELETE FROM attachments WHERE content_type=0 AND content_id=?"

    .line 4580
    .local v13, "sql":Ljava/lang/String;
    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/db/DataHelper;->toArg(J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4581
    iget-object v3, p1, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-wide/from16 v0, p4

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->createAttachments(Ljava/util/ArrayList;IJ)V

    .line 4583
    const/4 v3, 0x1

    return v3

    .line 4567
    .end local v12    # "mDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v13    # "sql":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public vacuum()V
    .locals 2

    .prologue
    .line 6174
    iget-object v0, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "VACUUM;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6175
    return-void
.end method

.method public videoExists(JJ)Z
    .locals 9
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5334
    iget-object v5, p0, Lcom/perm/kate/db/DataHelper;->mDbHelper:Lcom/perm/kate/db/DataHelper$OpenHelper;

    invoke-virtual {v5}, Lcom/perm/kate/db/DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5335
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "select count(*) from video where video_id=? AND owner_id=?;"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5336
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 5337
    .local v2, "res":Z
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5338
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 5339
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5340
    return v2

    :cond_1
    move v2, v4

    .line 5338
    goto :goto_0
.end method
