.class public Lcom/perm/kate/api/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public access_key:Ljava/lang/String;

.field public aid:J

.field public can_comment:Ljava/lang/Boolean;

.field public comments_count:Ljava/lang/Integer;

.field public created:J

.field public height:I

.field public lat:Ljava/lang/String;

.field public like_count:Ljava/lang/Integer;

.field public lon:Ljava/lang/String;

.field public owner_id:Ljava/lang/String;

.field public phototext:Ljava/lang/String;

.field public pid:J

.field public src:Ljava/lang/String;

.field public src_256:Ljava/lang/String;

.field public src_big:Ljava/lang/String;

.field public src_xbig:Ljava/lang/String;

.field public src_xxbig:Ljava/lang/String;

.field public src_xxxbig:Ljava/lang/String;

.field public tags_count:Ljava/lang/Integer;

.field public user_id:Ljava/lang/String;

.field public user_likes:Ljava/lang/Boolean;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;
    .locals 6

    .line 37
    new-instance v0, Lcom/perm/kate/api/Photo;

    invoke-direct {v0}, Lcom/perm/kate/api/Photo;-><init>()V

    const-string v1, "id"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-string v1, "album_id"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Photo;->aid:J

    const-string v1, "owner_id"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v1, "text"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    const-string v1, "date"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Photo;->created:J

    const-string v1, "user_id"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    const-string v1, "likes"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "count"

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    const-string v2, "user_likes"

    .line 55
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    :cond_1
    const-string v1, "comments"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    :cond_2
    const-string v1, "tags"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    :cond_3
    const-string v1, "can_comment"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    :cond_5
    const-string v1, "width"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Photo;->width:I

    const-string v1, "height"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Photo;->height:I

    const-string v1, "access_key"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    const-string v1, "lat"

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->lat:Ljava/lang/String;

    const-string v1, "long"

    .line 71
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->lon:Ljava/lang/String;

    .line 73
    invoke-static {p0, v0}, Lcom/perm/kate/api/Photo;->parseSizes(Lorg/json/JSONObject;Lcom/perm/kate/api/Photo;)V

    return-object v0
.end method

.method public static parseCounts(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "pid"

    .line 169
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "likes"

    .line 172
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "comments"

    .line 173
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "tags"

    .line 174
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "can_comment"

    .line 175
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "user_id"

    .line 176
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 178
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 179
    new-instance v8, Lcom/perm/kate/api/Photo;

    invoke-direct {v8}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 181
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/perm/kate/api/Photo;->pid:J

    .line 183
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "count"

    .line 184
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v8, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    const-string v11, "user_likes"

    .line 185
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 187
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 188
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    .line 190
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 191
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 193
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    if-ne v9, v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    .line 198
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 199
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    .line 201
    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static parseSizes(Lorg/json/JSONObject;Lcom/perm/kate/api/Photo;)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "sizes"

    move-object/from16 v2, p0

    .line 80
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string v3, ""

    move-object v13, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 85
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v2, v14, :cond_9

    .line 86
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "type"

    .line 87
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p0, v1

    const-string v1, "m"

    .line 91
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v16, v13

    const-string v13, "height"

    move/from16 v17, v12

    const-string v12, "width"

    move/from16 v18, v11

    const-string v11, "url"

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 93
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    :goto_1
    move v9, v8

    move-object/from16 v13, v16

    move/from16 v12, v17

    move/from16 v11, v18

    move v8, v1

    goto/16 :goto_3

    :cond_1
    const-string v1, "a"

    .line 95
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 99
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 100
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_2
    const-string v1, "x"

    .line 101
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 103
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move v10, v6

    move-object/from16 v13, v16

    move/from16 v12, v17

    move/from16 v11, v18

    move v6, v1

    goto/16 :goto_3

    :cond_3
    const-string v1, "y"

    .line 105
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 107
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v7, v4

    move-object/from16 v13, v16

    move/from16 v12, v17

    move/from16 v11, v18

    move v4, v1

    goto :goto_3

    :cond_4
    const-string v1, "z"

    .line 109
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 111
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    move-object/from16 v13, v16

    move/from16 v12, v17

    move/from16 v11, v18

    move v3, v1

    goto :goto_3

    :cond_5
    const-string v1, "w"

    .line 113
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v1, "l"

    .line 115
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 118
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move-object v13, v1

    goto :goto_3

    :cond_7
    const-string v1, "j"

    .line 119
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->src_256:Ljava/lang/String;

    :cond_8
    :goto_2
    move-object/from16 v13, v16

    move/from16 v12, v17

    move/from16 v11, v18

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_9
    move/from16 v18, v11

    move/from16 v17, v12

    move-object/from16 v16, v13

    if-eqz v3, :cond_a

    .line 125
    iput v3, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 126
    iput v5, v0, Lcom/perm/kate/api/Photo;->height:I

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    .line 128
    iput v4, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 129
    iput v7, v0, Lcom/perm/kate/api/Photo;->height:I

    goto :goto_4

    :cond_b
    if-eqz v6, :cond_c

    .line 131
    iput v6, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 132
    iput v10, v0, Lcom/perm/kate/api/Photo;->height:I

    goto :goto_4

    .line 134
    :cond_c
    iput v8, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 135
    iput v9, v0, Lcom/perm/kate/api/Photo;->height:I

    .line 142
    :goto_4
    iget-wide v1, v0, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_d

    const/16 v1, 0xc8

    if-ge v6, v1, :cond_d

    if-ge v10, v1, :cond_d

    move/from16 v2, v18

    if-le v2, v6, :cond_d

    move/from16 v12, v17

    if-le v12, v10, :cond_d

    move-object/from16 v3, v16

    .line 147
    iput-object v3, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 149
    iput v2, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 150
    iput v12, v0, Lcom/perm/kate/api/Photo;->height:I

    :cond_d
    return-void
.end method
