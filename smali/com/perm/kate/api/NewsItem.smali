.class public Lcom/perm/kate/api/NewsItem;
.super Ljava/lang/Object;
.source "NewsItem.java"


# instance fields
.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public comment_can_post:Z

.field public comment_count:I

.field public comment_id:J

.field public comments_json:Ljava/lang/String;

.field public copy_history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation
.end field

.field public copy_owner_id:J

.field public copy_post_id:J

.field public copy_text:Ljava/lang/String;

.field public date:J

.field public friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public from_id:J

.field public is_explicit:Z

.field public like_count:I

.field public notes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Note;",
            ">;"
        }
    .end annotation
.end field

.field public photo_tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public post_id:J

.field public reposts_count:I

.field public signer_id:J

.field public source_id:J

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_like:Z

.field public user_reposted:Z

.field public views:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/api/NewsItem;->signer_id:J

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/NewsItem;
    .locals 31
    .param p0, "jitem"    # Lorg/json/JSONObject;
    .param p1, "is_comments"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v23, Lcom/perm/kate/api/NewsItem;

    invoke-direct/range {v23 .. v23}, Lcom/perm/kate/api/NewsItem;-><init>()V

    .line 53
    .local v23, "newsitem":Lcom/perm/kate/api/NewsItem;
    const-string v4, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    .line 54
    const-string v4, "source_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    .line 55
    const-string v4, "from_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "from_id":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v4, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    .line 58
    :cond_0
    const-string v4, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/perm/kate/api/NewsItem;->date:J

    .line 59
    const-string v4, "post_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    .line 60
    const-string v4, "text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    .line 62
    const-string v4, "copy_history"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 63
    .local v9, "copy_history_json":Lorg/json/JSONArray;
    if-eqz v9, :cond_1

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    .line 65
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 67
    :try_start_0
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v27

    .line 69
    .local v27, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    const-string v4, "NewsItem"

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    .end local v11    # "i":I
    .end local v27    # "th":Ljava/lang/Throwable;
    :cond_1
    const-string v4, "signer_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/perm/kate/api/NewsItem;->signer_id:J

    .line 78
    const-string v4, "attachments"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 79
    .local v3, "attachments":Lorg/json/JSONArray;
    const-string v4, "geo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 80
    .local v8, "geo_json":Lorg/json/JSONObject;
    move-object/from16 v0, v23

    iget-wide v4, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static/range {v3 .. v8}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 81
    const-string v4, "comments"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    const-string v4, "comments"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 83
    .local v13, "jcomments":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/perm/kate/api/NewsItem;->comment_count:I

    .line 84
    const-string v4, "can_post"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/perm/kate/api/NewsItem;->comment_can_post:Z

    .line 85
    const-string v4, "list"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 86
    .local v30, "x":Lorg/json/JSONArray;
    if-eqz v30, :cond_2

    .line 87
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->comments_json:Ljava/lang/String;

    .line 89
    .end local v13    # "jcomments":Lorg/json/JSONObject;
    .end local v30    # "x":Lorg/json/JSONArray;
    :cond_2
    const-string v4, "likes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    const-string v4, "likes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 91
    .local v16, "jlikes":Lorg/json/JSONObject;
    const-string v4, "count"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/perm/kate/api/NewsItem;->like_count:I

    .line 92
    const-string v4, "user_likes"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/perm/kate/api/NewsItem;->user_like:Z

    .line 94
    .end local v16    # "jlikes":Lorg/json/JSONObject;
    :cond_3
    const-string v4, "reposts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    const-string v4, "reposts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 96
    .restart local v16    # "jlikes":Lorg/json/JSONObject;
    const-string v4, "count"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    .line 97
    const-string v4, "user_reposted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    .line 99
    .end local v16    # "jlikes":Lorg/json/JSONObject;
    :cond_4
    const-string v4, "is_explicit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_explicit

    const-string v4, "is_explicit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_explicit_end

    :cond_explicit
    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput-boolean v4, v0, Lcom/perm/kate/api/NewsItem;->is_explicit:Z

    :cond_explicit_end
    const-string v4, "photo_tags"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 100
    const-string v4, "photo_tags"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 101
    .local v26, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 102
    .local v21, "jphoto_tags":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    .line 103
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v12, v4, :cond_8

    .line 104
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/json/JSONObject;

    .line 105
    .local v20, "jphoto_tag":Lorg/json/JSONObject;
    invoke-static/range {v20 .. v20}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v25

    .line 106
    .local v25, "photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 84
    .end local v12    # "j":I
    .end local v20    # "jphoto_tag":Lorg/json/JSONObject;
    .end local v21    # "jphoto_tags":Lorg/json/JSONArray;
    .end local v25    # "photo":Lcom/perm/kate/api/Photo;
    .end local v26    # "response":Lorg/json/JSONObject;
    .restart local v13    # "jcomments":Lorg/json/JSONObject;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 92
    .end local v13    # "jcomments":Lorg/json/JSONObject;
    .restart local v16    # "jlikes":Lorg/json/JSONObject;
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 97
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 110
    .end local v16    # "jlikes":Lorg/json/JSONObject;
    :cond_8
    const-string v4, "photos"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 111
    const-string v4, "photos"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 112
    .restart local v26    # "response":Lorg/json/JSONObject;
    const-string v4, "items"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 113
    .local v22, "jphotos":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    .line 114
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_6
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v12, v4, :cond_9

    .line 115
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 116
    .local v19, "jphoto":Lorg/json/JSONObject;
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v25

    .line 117
    .restart local v25    # "photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 122
    .end local v12    # "j":I
    .end local v19    # "jphoto":Lorg/json/JSONObject;
    .end local v22    # "jphotos":Lorg/json/JSONArray;
    .end local v25    # "photo":Lcom/perm/kate/api/Photo;
    .end local v26    # "response":Lorg/json/JSONObject;
    :cond_9
    const-string v4, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 123
    const-string v4, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 124
    .restart local v26    # "response":Lorg/json/JSONObject;
    const-string v4, "items"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 125
    .restart local v22    # "jphotos":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_7
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v12, v4, :cond_b

    .line 126
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 128
    .restart local v19    # "jphoto":Lorg/json/JSONObject;
    if-nez v19, :cond_a

    .line 125
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 130
    :cond_a
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v25

    .line 131
    .local v25, "photo":Lcom/perm/kate/api/Audio;
    new-instance v2, Lcom/perm/kate/api/Attachment;

    invoke-direct {v2}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 132
    .local v2, "att":Lcom/perm/kate/api/Attachment;
    const-string v4, "audio"

    iput-object v4, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 133
    move-object/from16 v0, v25

    iput-object v0, v2, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 134
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 139
    .end local v2    # "att":Lcom/perm/kate/api/Attachment;
    .end local v12    # "j":I
    .end local v19    # "jphoto":Lorg/json/JSONObject;
    .end local v22    # "jphotos":Lorg/json/JSONArray;
    .end local v25    # "photo":Lcom/perm/kate/api/Audio;
    .end local v26    # "response":Lorg/json/JSONObject;
    :cond_b
    const-string v4, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 140
    const-string v4, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 141
    .restart local v26    # "response":Lorg/json/JSONObject;
    const-string v4, "items"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 142
    .restart local v22    # "jphotos":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_9
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v12, v4, :cond_d

    .line 143
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 144
    .restart local v19    # "jphoto":Lorg/json/JSONObject;
    if-nez v19, :cond_c

    .line 142
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 146
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v28

    .line 147
    .local v28, "video":Lcom/perm/kate/api/Video;
    new-instance v2, Lcom/perm/kate/api/Attachment;

    invoke-direct {v2}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 148
    .restart local v2    # "att":Lcom/perm/kate/api/Attachment;
    const-string v4, "video"

    iput-object v4, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 149
    move-object/from16 v0, v28

    iput-object v0, v2, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 150
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 154
    .end local v2    # "att":Lcom/perm/kate/api/Attachment;
    .end local v12    # "j":I
    .end local v19    # "jphoto":Lorg/json/JSONObject;
    .end local v22    # "jphotos":Lorg/json/JSONArray;
    .end local v26    # "response":Lorg/json/JSONObject;
    .end local v28    # "video":Lcom/perm/kate/api/Video;
    :cond_d
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v25

    .line 157
    .local v25, "photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v25    # "photo":Lcom/perm/kate/api/Photo;
    :cond_e
    const-string v4, "friends"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 161
    const-string v4, "friends"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 162
    .restart local v26    # "response":Lorg/json/JSONObject;
    const-string v4, "items"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 163
    .local v15, "jfriends":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    .line 164
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_b
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v12, v4, :cond_f

    .line 165
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 166
    .local v14, "jfriend":Lorg/json/JSONObject;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    const-string v5, "user_id"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 169
    .end local v12    # "j":I
    .end local v14    # "jfriend":Lorg/json/JSONObject;
    .end local v15    # "jfriends":Lorg/json/JSONArray;
    .end local v26    # "response":Lorg/json/JSONObject;
    :cond_f
    const-string v4, "notes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 171
    const-string v4, "notes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 172
    .restart local v26    # "response":Lorg/json/JSONObject;
    const-string v4, "items"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 173
    .local v18, "jnotes":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->notes:Ljava/util/ArrayList;

    .line 174
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_c
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v12, v4, :cond_10

    .line 175
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 176
    .local v17, "jnote":Lorg/json/JSONObject;
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/api/Note;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Note;

    move-result-object v24

    .line 177
    .local v24, "note":Lcom/perm/kate/api/Note;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/perm/kate/api/NewsItem;->notes:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 181
    .end local v12    # "j":I
    .end local v17    # "jnote":Lorg/json/JSONObject;
    .end local v18    # "jnotes":Lorg/json/JSONArray;
    .end local v24    # "note":Lcom/perm/kate/api/Note;
    .end local v26    # "response":Lorg/json/JSONObject;
    :cond_10
    const-string v4, "views"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 182
    .local v29, "views":Lorg/json/JSONObject;
    if-eqz v29, :cond_11

    .line 183
    const-string v4, "count"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    .line 185
    :cond_11
    return-object v23
.end method

.method public static parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/NewsItem;
    .locals 13
    .param p0, "jitem"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 189
    new-instance v9, Lcom/perm/kate/api/NewsItem;

    invoke-direct {v9}, Lcom/perm/kate/api/NewsItem;-><init>()V

    .line 190
    .local v9, "newsitem":Lcom/perm/kate/api/NewsItem;
    const-string v2, "post_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    .line 191
    const-string v2, "owner_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->source_id:J

    .line 192
    const-string v2, "from_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "from_id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->from_id:J

    .line 195
    :cond_0
    const-string v2, "date"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->date:J

    .line 196
    const-string v2, "post"

    iget-object v3, v9, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "copy"

    iget-object v3, v9, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    :cond_1
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->post_id:J

    .line 202
    :goto_0
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    .line 203
    const-string v2, "copy_owner_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    .line 204
    const-string v2, "copy_text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    .line 209
    const-string v2, "attachments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 210
    .local v1, "attachments":Lorg/json/JSONArray;
    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 211
    .local v6, "geo_json":Lorg/json/JSONObject;
    iget-wide v2, v9, Lcom/perm/kate/api/NewsItem;->source_id:J

    iget-wide v4, v9, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v9, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 212
    const-string v2, "comments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const-string v2, "comments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 214
    .local v7, "jcomments":Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/perm/kate/api/NewsItem;->comment_count:I

    .line 215
    const-string v2, "can_post"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v11, :cond_6

    move v2, v11

    :goto_1
    iput-boolean v2, v9, Lcom/perm/kate/api/NewsItem;->comment_can_post:Z

    .line 216
    const-string v2, "list"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 217
    .local v10, "x":Lorg/json/JSONArray;
    if-eqz v10, :cond_2

    .line 218
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/perm/kate/api/NewsItem;->comments_json:Ljava/lang/String;

    .line 220
    .end local v7    # "jcomments":Lorg/json/JSONObject;
    .end local v10    # "x":Lorg/json/JSONArray;
    :cond_2
    const-string v2, "likes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    const-string v2, "likes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 222
    .local v8, "jlikes":Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/perm/kate/api/NewsItem;->like_count:I

    .line 223
    const-string v2, "user_likes"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v11, :cond_7

    move v2, v11

    :goto_2
    iput-boolean v2, v9, Lcom/perm/kate/api/NewsItem;->user_like:Z

    .line 225
    .end local v8    # "jlikes":Lorg/json/JSONObject;
    :cond_3
    const-string v2, "reposts"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    const-string v2, "reposts"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 227
    .restart local v8    # "jlikes":Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    .line 228
    const-string v2, "user_reposted"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v11, :cond_8

    :goto_3
    iput-boolean v11, v9, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    .line 230
    .end local v8    # "jlikes":Lorg/json/JSONObject;
    :cond_4
    return-object v9

    .line 199
    .end local v1    # "attachments":Lorg/json/JSONArray;
    .end local v6    # "geo_json":Lorg/json/JSONObject;
    :cond_5
    const-string v2, "post_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->post_id:J

    .line 200
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/perm/kate/api/NewsItem;->comment_id:J

    goto/16 :goto_0

    .restart local v1    # "attachments":Lorg/json/JSONArray;
    .restart local v6    # "geo_json":Lorg/json/JSONObject;
    .restart local v7    # "jcomments":Lorg/json/JSONObject;
    :cond_6
    move v2, v12

    .line 215
    goto :goto_1

    .end local v7    # "jcomments":Lorg/json/JSONObject;
    .restart local v8    # "jlikes":Lorg/json/JSONObject;
    :cond_7
    move v2, v12

    .line 223
    goto :goto_2

    :cond_8
    move v11, v12

    .line 228
    goto :goto_3
.end method
