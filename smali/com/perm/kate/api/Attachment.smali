.class public Lcom/perm/kate/api/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public album:Lcom/perm/kate/api/Album;

.field public audio:Lcom/perm/kate/api/Audio;

.field public comment:Lcom/perm/kate/api/Comment;

.field public document:Lcom/perm/kate/api/Document;

.field public geo:Lcom/perm/kate/api/Geo;

.field public gift:Lcom/perm/kate/api/Gift;

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 27

    move-object/from16 v1, p0

    const-string v2, "story"

    const-string v3, "event"

    const-string v4, "podcast"

    const-string v5, "market"

    const-string v6, "market_album"

    const-string v7, "wall_reply"

    const-string v8, "sticker"

    const-string v9, "album"

    const-string v10, "gift"

    const-string v11, "page"

    const-string v12, "wall"

    const-string v13, "audio_message"

    const-string v14, "poll"

    const-string v15, "video"

    move-object/from16 p3, v2

    const-string v2, "note"

    move-object/from16 p4, v3

    const-string v3, "graffiti"

    move-object/from16 v16, v4

    const-string v4, "photo"

    move-object/from16 v17, v5

    const-string v5, "audio"

    move-object/from16 v18, v6

    const-string v6, "link"

    move-object/from16 v19, v7

    .line 35
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1a

    move-object/from16 v20, v7

    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v0, 0x0

    move-object/from16 v21, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_19

    .line 40
    :try_start_0
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    move-object/from16 v24, v3

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v25, v21

    move-object/from16 v11, p3

    move-object/from16 v21, v2

    move-object/from16 v17, v9

    move-object/from16 p3, v10

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    move-object/from16 v10, p4

    move-object/from16 p4, v5

    move-object/from16 v16, v6

    goto/16 :goto_1b

    .line 43
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    .line 44
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1b

    move/from16 v22, v7

    :try_start_1
    const-string v7, "type"

    .line 45
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 46
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1a

    if-nez v7, :cond_17

    :try_start_2
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_17

    move/from16 v23, v8

    :try_start_3
    const-string v8, "posted_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v24, v3

    goto/16 :goto_12

    .line 51
    :cond_1
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_16

    const-string v8, "doc"

    if-eqz v7, :cond_3

    .line 54
    :try_start_4
    iput-object v8, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Graffiti;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_1
    move-object/from16 v24, v3

    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v25, v21

    move-object/from16 v11, p3

    move-object/from16 v21, v2

    move-object/from16 v17, v9

    move-object/from16 p3, v10

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    :goto_2
    move-object/from16 v10, p4

    move-object/from16 p4, v5

    :goto_3
    move-object/from16 v16, v6

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    :goto_4
    move-object/from16 v24, v3

    goto/16 :goto_16

    .line 56
    :cond_3
    :try_start_5
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_16

    if-eqz v7, :cond_4

    .line 57
    :try_start_6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Link;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 61
    :cond_4
    :try_start_7
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_16

    if-eqz v7, :cond_5

    .line 62
    :try_start_8
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 63
    :cond_5
    :try_start_9
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_16

    if-eqz v7, :cond_6

    .line 64
    :try_start_a
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Note;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Note;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 65
    :cond_6
    :try_start_b
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_16

    if-eqz v7, :cond_7

    .line 66
    :try_start_c
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Video;->parseForAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 67
    :cond_7
    :try_start_d
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_16

    if-eqz v7, :cond_8

    .line 68
    :try_start_e
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    .line 69
    iget-wide v7, v0, Lcom/perm/kate/api/VkPoll;->owner_id:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-wide/16 v24, 0x0

    cmp-long v26, v7, v24

    move-wide/from16 v7, p1

    if-nez v26, :cond_2

    .line 74
    :try_start_f
    iput-wide v7, v0, Lcom/perm/kate/api/VkPoll;->owner_id:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-wide/from16 v7, p1

    goto :goto_4

    .line 77
    :cond_8
    :try_start_10
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_16

    if-eqz v7, :cond_9

    .line 78
    :try_start_11
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Document;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_1

    .line 79
    :cond_9
    :try_start_12
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_16

    if-eqz v7, :cond_a

    .line 81
    :try_start_13
    iput-object v5, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/AudioMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    .line 83
    :cond_a
    :try_start_14
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_16

    if-eqz v7, :cond_b

    .line 84
    :try_start_15
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_1

    .line 85
    :cond_b
    :try_start_16
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    if-eqz v7, :cond_c

    .line 86
    :try_start_17
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Page;->parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Page;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_1

    .line 87
    :cond_c
    :try_start_18
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_16

    if-eqz v7, :cond_d

    .line 88
    :try_start_19
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Gift;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Gift;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_1

    .line 89
    :cond_d
    :try_start_1a
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_16

    if-eqz v7, :cond_e

    .line 90
    :try_start_1b
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Album;->parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_1

    .line 91
    :cond_e
    :try_start_1c
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    move-object/from16 v8, v21

    :try_start_1d
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    if-eqz v7, :cond_f

    .line 92
    :try_start_1e
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Sticker;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Sticker;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    move-object/from16 v21, v2

    :goto_5
    move-object/from16 v24, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v2, v20

    move-object/from16 v11, p3

    move-object/from16 v17, v9

    move-object/from16 p3, v10

    move-object/from16 v9, v16

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v21, v2

    :goto_6
    move-object/from16 v24, v3

    :goto_7
    move-object/from16 v25, v8

    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v2, v20

    move-object/from16 v11, p3

    move-object/from16 v17, v9

    move-object/from16 p3, v10

    move-object/from16 v9, v16

    goto/16 :goto_18

    .line 93
    :cond_f
    :try_start_1f
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    :try_start_20
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    if-eqz v7, :cond_10

    .line 94
    :try_start_21
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Comment;->parseFromAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    move-object/from16 v19, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_6

    .line 95
    :cond_10
    :try_start_22
    iget-object v7, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    :try_start_23
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    if-eqz v7, :cond_11

    .line 96
    :try_start_24
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/MarketAlbum;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketAlbum;

    move-result-object v0

    .line 98
    iput-object v6, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 99
    new-instance v7, Lcom/perm/kate/api/Link;

    invoke-direct {v7}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v7, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object/from16 v18, v2

    .line 100
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    move-object/from16 v24, v3

    :try_start_26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    move-object/from16 v25, v8

    move-object v3, v9

    :try_start_27
    iget-wide v8, v0, Lcom/perm/kate/api/MarketAlbum;->owner_id:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "?section=album_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/perm/kate/api/MarketAlbum;->id:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 101
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v0, v0, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    iput-object v0, v2, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    move-object/from16 v26, v11

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    move-object/from16 v2, v20

    move-object/from16 v11, p3

    move-object/from16 v17, v3

    move-object/from16 v16, v6

    move-object/from16 p3, v10

    move-object/from16 v10, p4

    move-object/from16 p4, v5

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    move-object/from16 v2, v20

    move-object/from16 v11, p3

    move-object/from16 v17, v3

    move-object/from16 v16, v6

    move-object/from16 p3, v10

    move-object/from16 v10, p4

    move-object/from16 p4, v5

    goto/16 :goto_1a

    :catchall_5
    move-exception v0

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_6

    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v8

    move-object v3, v9

    .line 102
    :try_start_28
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    move-object/from16 v7, v17

    :try_start_29
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    const-string v8, "_"

    if-eqz v2, :cond_13

    .line 103
    :try_start_2a
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_12

    move-object/from16 v17, v3

    move-object/from16 v26, v11

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    move-object/from16 v11, p3

    move-object/from16 v16, v6

    move-object/from16 p3, v10

    move-object/from16 v10, p4

    move-object/from16 p4, v5

    goto/16 :goto_1b

    .line 107
    :cond_12
    invoke-static {v0}, Lcom/perm/kate/api/MarketItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketItem;

    move-result-object v0

    .line 110
    iput-object v6, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 111
    new-instance v2, Lcom/perm/kate/api/Link;

    invoke-direct {v2}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    move-object/from16 v17, v3

    :try_start_2b

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    move-object v3, v10

    move-object/from16 v26, v11

    :try_start_2c
    iget-wide v10, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 113
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    iput-object v0, v2, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    goto/16 :goto_19

    :catchall_9
    move-exception v0

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object/from16 v17, v3

    :goto_8
    move-object/from16 v26, v11

    move-object/from16 v11, p3

    goto/16 :goto_17

    :cond_13
    move-object/from16 v17, v3

    move-object v3, v10

    move-object/from16 v26, v11

    .line 114
    :try_start_2d
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    move-object/from16 v9, v16

    :try_start_2e
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 116
    iput-object v5, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 118
    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->setPodcast()V

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    goto/16 :goto_9

    .line 119
    :cond_14
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    move-object/from16 v10, p4

    :try_start_2f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 120
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    iput-object v6, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 123
    new-instance v2, Lcom/perm/kate/api/Link;

    invoke-direct {v2}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V


    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "id"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 126
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    const-string v8, "text"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    move-object/from16 v11, p3

    goto :goto_9

    .line 127
    :cond_15
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    move-object/from16 v11, p3

    :try_start_30
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 128
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Story;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Story;

    move-result-object v0

    .line 130
    iput-object v6, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 131
    new-instance v2, Lcom/perm/kate/api/Link;

    invoke-direct {v2}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    move-object/from16 p3, v3

    .line 132
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    move-object/from16 p4, v5

    :try_start_32

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_b

    move-object/from16 v16, v6

    :try_start_33
    iget-wide v5, v0, Lcom/perm/kate/api/Story;->owner_id:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/perm/kate/api/Story;->id:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    goto/16 :goto_13

    :catchall_b
    move-exception v0

    goto/16 :goto_10

    :catchall_c
    move-exception v0

    goto/16 :goto_f

    :cond_16
    :goto_9
    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 v16, v6

    goto/16 :goto_13

    :catchall_d
    move-exception v0

    goto :goto_a

    :catchall_e
    move-exception v0

    move-object/from16 v11, p3

    goto :goto_a

    :catchall_f
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    :goto_a
    move-object/from16 p3, v3

    goto/16 :goto_f

    :catchall_10
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 v9, v16

    goto/16 :goto_10

    :catchall_11
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v26, v11

    move-object/from16 v9, v16

    move-object/from16 v11, p3

    goto :goto_b

    :catchall_12
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    move-object/from16 v11, p3

    move-object/from16 v17, v3

    :goto_b
    move-object/from16 v16, v6

    move-object/from16 p3, v10

    move-object/from16 v10, p4

    move-object/from16 p4, v5

    goto :goto_11

    :catchall_13
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_c

    :catchall_14
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_c

    :catchall_15
    move-exception v0

    move-object/from16 v21, v2

    :goto_c
    move-object/from16 v24, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v11, p3

    goto :goto_e

    :catchall_16
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_d

    :catchall_17
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v23, v8

    :goto_d
    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v25, v21

    move-object/from16 v11, p3

    move-object/from16 v21, v2

    :goto_e
    move-object/from16 v17, v9

    move-object/from16 p3, v10

    move-object/from16 v9, v16

    move-object/from16 v10, p4

    :goto_f
    move-object/from16 p4, v5

    :goto_10
    move-object/from16 v16, v6

    :goto_11
    move-object/from16 v2, v20

    goto :goto_1a

    :cond_17
    move-object/from16 v24, v3

    move/from16 v23, v8

    :goto_12
    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v25, v21

    move-object/from16 v11, p3

    move-object/from16 v21, v2

    move-object/from16 v17, v9

    move-object/from16 p3, v10

    move-object/from16 v9, v16

    move-object/from16 v10, p4

    move-object/from16 p4, v5

    move-object/from16 v16, v6

    .line 47
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 49
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    :cond_18
    :goto_13
    move-object/from16 v2, v20

    .line 135
    :goto_14
    :try_start_34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_18

    goto :goto_1b

    :catchall_18
    move-exception v0

    goto :goto_1a

    :catchall_19
    move-exception v0

    goto :goto_11

    :catchall_1a
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_15

    :catchall_1b
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v22, v7

    :goto_15
    move/from16 v23, v8

    :goto_16
    move-object/from16 v26, v11

    move-object/from16 v7, v17

    move-object/from16 v25, v21

    move-object/from16 v11, p3

    move-object/from16 v21, v2

    move-object/from16 v17, v9

    :goto_17
    move-object/from16 p3, v10

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    :goto_18
    move-object/from16 v10, p4

    move-object/from16 p4, v5

    :goto_19
    move-object/from16 v16, v6

    .line 138
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    invoke-static {v0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :goto_1b
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v20, v2

    move-object/from16 p4, v10

    move-object/from16 v6, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v21, v25

    move-object/from16 v10, p3

    move-object/from16 v16, v9

    move-object/from16 p3, v11

    move-object/from16 v9, v17

    move-object/from16 v11, v26

    move-object/from16 v17, v7

    move/from16 v7, v22

    goto/16 :goto_0

    :cond_19
    move-object/from16 v2, v20

    goto :goto_1c

    :cond_1a
    move-object v2, v7

    :goto_1c
    if-eqz p5, :cond_1b

    .line 146
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    const-string v1, "geo"

    .line 147
    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 148
    invoke-static/range {p5 .. p5}, Lcom/perm/kate/api/Geo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Geo;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    .line 149
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-object v2
.end method
