.class public Lcom/perm/kate/api/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public album:Lcom/perm/kate/api/Album;

.field public app:Lcom/perm/kate/api/VkApp;

.field public audio:Lcom/perm/kate/api/Audio;

.field public comment:Lcom/perm/kate/api/Comment;

.field public document:Lcom/perm/kate/api/Document;

.field public geo:Lcom/perm/kate/api/Geo;

.field public gift:Lcom/perm/kate/api/Gift;

.field public graffiti:Lcom/perm/kate/api/Graffiti;

.field public id:J

.field public link:Lcom/perm/kate/api/Link;

.field public message:Lcom/perm/kate/api/Message;

.field public note:Lcom/perm/kate/api/Note;

.field public page:Lcom/perm/kate/api/Page;

.field public photo:Lcom/perm/kate/api/Photo;

.field public poll:Lcom/perm/kate/api/VkPoll;

.field public sticker:Lcom/perm/kate/api/Sticker;

.field public type:Ljava/lang/String;

.field public video:Lcom/perm/kate/api/Video;

.field public wallMessage:Lcom/perm/kate/api/WallMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFakeLinkPreviewPhoto(Ljava/util/ArrayList;Lcom/perm/kate/api/Attachment;)V
    .locals 4
    .param p1, "attachment"    # Lcom/perm/kate/api/Attachment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;",
            "Lcom/perm/kate/api/Attachment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    iget-object v2, p1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v2, v2, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    if-nez v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 137
    .local v0, "a":Lcom/perm/kate/api/Attachment;
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 151
    .end local v0    # "a":Lcom/perm/kate/api/Attachment;
    :cond_2
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 152
    .local v1, "link_photo":Lcom/perm/kate/api/Attachment;
    const-string v2, "photo"

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 153
    iget-object v2, p1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v2, v2, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 154
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "attachments"    # Lorg/json/JSONArray;
    .param p1, "from_id"    # J
    .param p3, "copy_owner_id"    # J
    .param p5, "geo_json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "JJ",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v6, "attachments_arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-eqz p0, :cond_12

    .line 36
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 37
    .local v10, "size":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v10, :cond_12

    .line 38
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 39
    .local v4, "att":Ljava/lang/Object;
    instance-of v12, v4, Lorg/json/JSONObject;

    if-nez v12, :cond_0

    .line 37
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v4

    .line 41
    check-cast v9, Lorg/json/JSONObject;

    .line 42
    .local v9, "json_attachment":Lorg/json/JSONObject;
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 43
    .local v5, "attachment":Lcom/perm/kate/api/Attachment;
    const-string v12, "type"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 44
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "photo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "posted_photo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 45
    :cond_1
    const-string v12, "photo"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 46
    .local v11, "x":Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 47
    invoke-static {v11}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 115
    .end local v11    # "x":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_3
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "graffiti"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 50
    const-string v12, "graffiti"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Graffiti;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Graffiti;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    goto :goto_2

    .line 51
    :cond_4
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "link"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 52
    const-string v12, "link"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Link;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 54
    invoke-static {v6, v5}, Lcom/perm/kate/api/Attachment;->addFakeLinkPreviewPhoto(Ljava/util/ArrayList;Lcom/perm/kate/api/Attachment;)V

    goto :goto_2

    .line 55
    :cond_5
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "audio"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 56
    const-string v12, "audio"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    goto :goto_2

    .line 57
    :cond_6
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "note"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 58
    const-string v12, "note"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Note;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Note;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    goto :goto_2

    .line 59
    :cond_7
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "video"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 60
    const-string v12, "video"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Video;->parseForAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    goto :goto_2

    .line 61
    :cond_8
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "poll"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 62
    const-string v12, "poll"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    .line 63
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v12, v12, Lcom/perm/kate/api/VkPoll;->owner_id:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 68
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/perm/kate/api/VkPoll;->owner_id:J

    goto/16 :goto_2

    .line 71
    :cond_9
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "doc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 72
    const-string v12, "doc"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Document;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    .line 74
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v12, v12, Lcom/perm/kate/api/Document;->audio_msg_link:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 75
    const-string v12, "audio"

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 76
    new-instance v12, Lcom/perm/kate/api/Audio;

    invoke-direct {v12}, Lcom/perm/kate/api/Audio;-><init>()V

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 77
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v13, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v14, v13, Lcom/perm/kate/api/Document;->id:J

    neg-long v14, v14

    iput-wide v14, v12, Lcom/perm/kate/api/Audio;->aid:J

    .line 78
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v13, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v14, v13, Lcom/perm/kate/api/Document;->owner_id:J

    iput-wide v14, v12, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 80
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    const-string v13, "\u0413\u043e\u043b\u043e\u0441\u043e\u0432\u043e\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    iput-object v13, v12, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 81
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    const-string v13, "\u0413\u043e\u043b\u043e\u0441\u043e\u0432\u043e\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    iput-object v13, v12, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 82
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v13, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v14, v13, Lcom/perm/kate/api/Document;->audio_msg_duration:J

    iput-wide v14, v12, Lcom/perm/kate/api/Audio;->duration:J

    .line 83
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v13, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v13, v13, Lcom/perm/kate/api/Document;->audio_msg_link:Ljava/lang/String;

    iput-object v13, v12, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 85
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    goto/16 :goto_2

    .line 87
    :cond_a
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "wall"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 88
    const-string v12, "wall"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    goto/16 :goto_2

    .line 89
    :cond_b
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "page"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 90
    const-string v12, "page"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Page;->parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Page;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    goto/16 :goto_2

    .line 91
    :cond_c
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "gift"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 92
    const-string v12, "gift"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Gift;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Gift;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    goto/16 :goto_2

    .line 93
    :cond_d
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "album"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 94
    const-string v12, "album"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Album;->parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    goto/16 :goto_2

    .line 95
    :cond_e
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "sticker"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 96
    const-string v12, "sticker"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Sticker;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Sticker;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    goto/16 :goto_2

    .line 97
    :cond_f
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "wall_reply"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 98
    const-string v12, "wall_reply"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/Comment;->parseFromAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v12

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    goto/16 :goto_2

    .line 99
    :cond_10
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "market_album"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 100
    const-string v12, "market_album"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/MarketAlbum;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketAlbum;

    move-result-object v3

    .line 102
    .local v3, "album":Lcom/perm/kate/api/MarketAlbum;
    const-string v12, "link"

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 103
    new-instance v12, Lcom/perm/kate/api/Link;

    invoke-direct {v12}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 104
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "https://m.vk.com/market"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v3, Lcom/perm/kate/api/MarketAlbum;->owner_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?section=album_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v3, Lcom/perm/kate/api/MarketAlbum;->id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 105
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v13, v3, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    iput-object v13, v12, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 106
    .end local v3    # "album":Lcom/perm/kate/api/MarketAlbum;
    :cond_11
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v13, "market"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 107
    const-string v12, "market"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/api/MarketItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketItem;

    move-result-object v7

    .line 110
    .local v7, "item":Lcom/perm/kate/api/MarketItem;
    const-string v12, "link"

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 111
    new-instance v12, Lcom/perm/kate/api/Link;

    invoke-direct {v12}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 112
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://m.vk.com/product"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v7, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v7, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 113
    iget-object v12, v5, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v13, v7, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    iput-object v13, v12, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 120
    .end local v4    # "att":Ljava/lang/Object;
    .end local v5    # "attachment":Lcom/perm/kate/api/Attachment;
    .end local v7    # "item":Lcom/perm/kate/api/MarketItem;
    .end local v8    # "j":I
    .end local v9    # "json_attachment":Lorg/json/JSONObject;
    .end local v10    # "size":I
    :cond_12
    if-eqz p5, :cond_13

    .line 121
    new-instance v2, Lcom/perm/kate/api/Attachment;

    invoke-direct {v2}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 122
    .local v2, "a":Lcom/perm/kate/api/Attachment;
    const-string v12, "geo"

    iput-object v12, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 123
    invoke-static/range {p5 .. p5}, Lcom/perm/kate/api/Geo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Geo;

    move-result-object v12

    iput-object v12, v2, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    .line 124
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v2    # "a":Lcom/perm/kate/api/Attachment;
    :cond_13
    return-object v6
.end method
