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

.field public like_count:Ljava/lang/Integer;

.field public owner_id:Ljava/lang/String;

.field public phototext:Ljava/lang/String;

.field public pid:J

.field public src:Ljava/lang/String;

.field public src_big:Ljava/lang/String;

.field public src_small:Ljava/lang/String;

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

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;
    .locals 10
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    new-instance v3, Lcom/perm/kate/api/Photo;

    invoke-direct {v3}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 34
    .local v3, "p":Lcom/perm/kate/api/Photo;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/perm/kate/api/Photo;->pid:J

    .line 35
    const-string v4, "album_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/perm/kate/api/Photo;->aid:J

    .line 36
    const-string v4, "owner_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 37
    const-string v4, "photo_130"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 38
    const-string v4, "photo_75"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src_small:Ljava/lang/String;

    .line 39
    const-string v4, "photo_604"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 40
    const-string v4, "photo_807"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 41
    const-string v4, "photo_1280"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 42
    const-string v4, "photo_2560"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    .line 43
    const-string v4, "text"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 44
    const-string v4, "date"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/perm/kate/api/Photo;->created:J

    .line 45
    const-string v4, "user_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    .line 47
    const-string v4, "likes"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string v4, "likes"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    .local v1, "jlikes":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 50
    const-string v4, "user_likes"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 52
    .end local v1    # "jlikes":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "comments"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "comments"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    .local v0, "jcomments":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    .line 56
    .end local v0    # "jcomments":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "tags"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    const-string v4, "tags"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    .local v2, "jtags":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 60
    .end local v2    # "jtags":Lorg/json/JSONObject;
    :cond_2
    const-string v4, "can_comment"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const-string v4, "can_comment"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_5

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    .line 62
    :cond_3
    const-string v4, "width"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/perm/kate/api/Photo;->width:I

    .line 63
    const-string v4, "height"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/perm/kate/api/Photo;->height:I

    .line 64
    const-string v4, "access_key"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    .line 67
    invoke-static {p0, v3}, Lcom/perm/kate/api/Photo;->parseSizes(Lorg/json/JSONObject;Lcom/perm/kate/api/Photo;)V

    .line 69
    return-object v3

    .restart local v1    # "jlikes":Lorg/json/JSONObject;
    :cond_4
    move v4, v6

    .line 50
    goto :goto_0

    .end local v1    # "jlikes":Lorg/json/JSONObject;
    :cond_5
    move v5, v6

    .line 61
    goto :goto_1
.end method

.method public static parseCounts(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;
    .locals 12
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v6, Lcom/perm/kate/api/Photo;

    invoke-direct {v6}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 149
    .local v6, "p":Lcom/perm/kate/api/Photo;
    const-string v10, "pid"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 150
    .local v7, "pid_array":Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 151
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/perm/kate/api/Photo;->pid:J

    .line 153
    :cond_0
    const-string v10, "likes"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 154
    .local v5, "likes_array":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 155
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 156
    .local v3, "jlikes":Lorg/json/JSONObject;
    const-string v10, "count"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 157
    const-string v10, "user_likes"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 159
    .end local v3    # "jlikes":Lorg/json/JSONObject;
    :cond_1
    const-string v10, "comments"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 160
    .local v1, "comments_array":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 161
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 162
    .local v2, "jcomments":Lorg/json/JSONObject;
    const-string v10, "count"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    .line 164
    .end local v2    # "jcomments":Lorg/json/JSONObject;
    :cond_2
    const-string v10, "tags"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 165
    .local v8, "tags_array":Lorg/json/JSONArray;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 166
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 167
    .local v4, "jtags":Lorg/json/JSONObject;
    const-string v10, "count"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 169
    .end local v4    # "jtags":Lorg/json/JSONObject;
    :cond_3
    const-string v10, "can_comment"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 170
    .local v0, "can_comment_array":Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 171
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    .line 173
    :cond_4
    const-string v10, "user_id"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 174
    .local v9, "user_id_array":Lorg/json/JSONArray;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 175
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    .line 177
    :cond_5
    return-object v6

    .line 157
    .end local v0    # "can_comment_array":Lorg/json/JSONArray;
    .end local v1    # "comments_array":Lorg/json/JSONArray;
    .end local v8    # "tags_array":Lorg/json/JSONArray;
    .end local v9    # "user_id_array":Lorg/json/JSONArray;
    .restart local v3    # "jlikes":Lorg/json/JSONObject;
    :cond_6
    const/4 v10, 0x0

    goto :goto_0

    .line 171
    .end local v3    # "jlikes":Lorg/json/JSONObject;
    .restart local v0    # "can_comment_array":Lorg/json/JSONArray;
    .restart local v1    # "comments_array":Lorg/json/JSONArray;
    .restart local v8    # "tags_array":Lorg/json/JSONArray;
    :cond_7
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static parseSizes(Lorg/json/JSONObject;Lcom/perm/kate/api/Photo;)V
    .locals 22
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "p"    # Lcom/perm/kate/api/Photo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v17, "sizes"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 74
    .local v9, "sizes_json":Lorg/json/JSONArray;
    if-nez v9, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v14, 0x0

    .local v14, "width_x":I
    const/4 v4, 0x0

    .local v4, "height_x":I
    const/4 v12, 0x0

    .local v12, "width_l":I
    const/4 v2, 0x0

    .local v2, "height_l":I
    const/16 v16, 0x0

    .local v16, "width_z":I
    const/4 v6, 0x0

    .local v6, "height_z":I
    const/4 v15, 0x0

    .local v15, "width_y":I
    const/4 v5, 0x0

    .local v5, "height_y":I
    const/4 v13, 0x0

    .local v13, "width_m":I
    const/4 v3, 0x0

    .line 77
    .local v3, "height_m":I
    const-string v10, ""

    .line 78
    .local v10, "src_l":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 79
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 80
    .local v8, "size_json":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "type":Ljava/lang/String;
    const-string v17, "s"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 82
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->src_small:Ljava/lang/String;

    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    :cond_3
    const-string v17, "m"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 84
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 85
    const-string v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 86
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 87
    :cond_4
    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 88
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 89
    const-string v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 90
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 91
    :cond_5
    const-string v17, "y"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 92
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 93
    const-string v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 94
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 95
    :cond_6
    const-string v17, "z"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 96
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 97
    const-string v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 98
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    .line 99
    :cond_7
    const-string v17, "w"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 100
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    goto/16 :goto_2

    .line 101
    :cond_8
    const-string v17, "l"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 102
    const-string v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 103
    const-string v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 104
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 109
    .end local v8    # "size_json":Lorg/json/JSONObject;
    .end local v11    # "type":Ljava/lang/String;
    :cond_9
    if-eqz v16, :cond_a

    .line 110
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/perm/kate/api/Photo;->width:I

    .line 111
    move-object/from16 v0, p1

    iput v6, v0, Lcom/perm/kate/api/Photo;->height:I

    .line 125
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->aid:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x2

    cmp-long v17, v18, v20

    if-nez v17, :cond_0

    .line 127
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 129
    if-le v12, v14, :cond_0

    if-le v2, v4, :cond_0

    .line 130
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p1

    iput v12, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 133
    move-object/from16 v0, p1

    iput v2, v0, Lcom/perm/kate/api/Photo;->height:I

    goto/16 :goto_0

    .line 112
    :cond_a
    if-eqz v15, :cond_b

    .line 113
    move-object/from16 v0, p1

    iput v15, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 114
    move-object/from16 v0, p1

    iput v5, v0, Lcom/perm/kate/api/Photo;->height:I

    goto :goto_3

    .line 115
    :cond_b
    if-eqz v14, :cond_c

    .line 116
    move-object/from16 v0, p1

    iput v14, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 117
    move-object/from16 v0, p1

    iput v4, v0, Lcom/perm/kate/api/Photo;->height:I

    goto :goto_3

    .line 119
    :cond_c
    move-object/from16 v0, p1

    iput v13, v0, Lcom/perm/kate/api/Photo;->width:I

    .line 120
    move-object/from16 v0, p1

    iput v3, v0, Lcom/perm/kate/api/Photo;->height:I

    goto :goto_3
.end method
