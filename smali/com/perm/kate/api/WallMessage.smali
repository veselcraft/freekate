.class public Lcom/perm/kate/api/WallMessage;
.super Ljava/lang/Object;
.source "WallMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


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

.field public can_like:Z

.field public comment_can_post:Z

.field public comment_count:J

.field public comment_id:Ljava/lang/Long;

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

.field public from_id:J

.field public id:J

.field public is_pinned:Z

.field public is_explicit:Z

.field public like_can_publish:Z

.field public like_count:I

.field public post_type:I

.field public reposts_count:I

.field public signer_id:J

.field public text:Ljava/lang/String;

.field public to_id:J

.field public user_like:Z

.field public user_reposted:Z

.field public views:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    .line 34
    iput-wide v2, p0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    .line 35
    iput-wide v2, p0, Lcom/perm/kate/api/WallMessage;->copy_post_id:J

    .line 40
    iput-wide v2, p0, Lcom/perm/kate/api/WallMessage;->signer_id:J

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    return-void
.end method

.method public static getPostType(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 129
    const/4 v1, -0x1

    .line 130
    .local v1, "post_type":I
    const-string v2, "post_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "post_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "_post_type":Ljava/lang/String;
    const-string v2, "post"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v1, 0x0

    .line 143
    .end local v0    # "_post_type":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 134
    .restart local v0    # "_post_type":Ljava/lang/String;
    :cond_1
    const-string v2, "copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const/4 v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    const-string v2, "postpone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    const/4 v1, 0x2

    goto :goto_0

    .line 138
    :cond_3
    const-string v2, "suggest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    const/4 v1, 0x3

    goto :goto_0

    .line 140
    :cond_4
    const-string v2, "reply"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;
    .locals 15
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 46
    new-instance v12, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v12}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 47
    .local v12, "wm":Lcom/perm/kate/api/WallMessage;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->id:J

    .line 48
    const-string v2, "from_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->from_id:J

    .line 49
    const-string v2, "to_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const-string v2, "to_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 54
    :goto_0
    const-string v2, "date"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->date:J

    .line 55
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->getPostType(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, v12, Lcom/perm/kate/api/WallMessage;->post_type:I

    .line 57
    iget v2, v12, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 58
    iget-wide v2, v12, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->comment_id:Ljava/lang/Long;

    .line 59
    const-string v2, "post_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->id:J

    .line 61
    :cond_0
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 62
    const-string v2, "likes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "likes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 64
    .local v10, "jlikes":Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 65
    const-string v2, "user_likes"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_3

    move v2, v13

    :goto_1
    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->user_like:Z

    .line 66
    const-string v2, "can_like"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_4

    move v2, v13

    :goto_2
    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->can_like:Z

    .line 67
    const-string v2, "can_publish"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_5

    move v2, v13

    :goto_3
    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->like_can_publish:Z

    .line 69
    .end local v10    # "jlikes":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "copy_history"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 70
    .local v0, "copy_history_json":Lorg/json/JSONArray;
    if-eqz v0, :cond_7

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    .line 72
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v8, v2, :cond_7

    .line 73
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 76
    .local v7, "history_item":Lorg/json/JSONObject;
    const-string v2, "id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 53
    .end local v0    # "copy_history_json":Lorg/json/JSONArray;
    .end local v7    # "history_item":Lorg/json/JSONObject;
    .end local v8    # "i":I
    :cond_2
    const-string v2, "owner_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->to_id:J

    goto/16 :goto_0

    .restart local v10    # "jlikes":Lorg/json/JSONObject;
    :cond_3
    move v2, v14

    .line 65
    goto :goto_1

    :cond_4
    move v2, v14

    .line 66
    goto :goto_2

    :cond_5
    move v2, v14

    .line 67
    goto :goto_3

    .line 79
    .end local v10    # "jlikes":Lorg/json/JSONObject;
    .restart local v0    # "copy_history_json":Lorg/json/JSONArray;
    .restart local v7    # "history_item":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    :cond_6
    iget-object v2, v12, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 82
    .end local v7    # "history_item":Lorg/json/JSONObject;
    .end local v8    # "i":I
    :cond_7
    const-string v2, "attachments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 83
    .local v1, "attachments":Lorg/json/JSONArray;
    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 85
    .local v6, "geo_json":Lorg/json/JSONObject;
    iget-wide v2, v12, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v4, v12, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 86
    const-string v2, "comments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 87
    const-string v2, "comments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 88
    .local v9, "jcomments":Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->comment_count:J

    .line 89
    const-string v2, "can_post"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_c

    move v2, v13

    :goto_6
    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    .line 91
    .end local v9    # "jcomments":Lorg/json/JSONObject;
    :cond_8
    const-string v2, "signer_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/perm/kate/api/WallMessage;->signer_id:J

    .line 92
    const-string v2, "reposts"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 93
    const-string v2, "reposts"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 94
    .restart local v10    # "jlikes":Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    .line 95
    const-string v2, "user_reposted"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_d

    move v2, v13

    :goto_7
    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    .line 97
    .end local v10    # "jlikes":Lorg/json/JSONObject;
    :cond_9
    const-string v2, "is_pinned"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 98
    const-string v2, "is_pinned"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_e

    :goto_8
    iput-boolean v13, v12, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    .line 99
    :cond_a
    const-string v2, "is_explicit"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_explicit

    const-string v2, "is_explicit"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_explicit_end

    :cond_explicit
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/perm/kate/api/WallMessage;->is_explicit:Z

    :cond_explicit_end
    .line 100
    const-string v2, "views"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 101
    .local v11, "views":Lorg/json/JSONObject;
    if-eqz v11, :cond_b

    .line 102
    const-string v2, "count"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    .line 104
    :cond_b
    return-object v12

    .end local v11    # "views":Lorg/json/JSONObject;
    .restart local v9    # "jcomments":Lorg/json/JSONObject;
    :cond_c
    move v2, v14

    .line 89
    goto :goto_6

    .end local v9    # "jcomments":Lorg/json/JSONObject;
    .restart local v10    # "jlikes":Lorg/json/JSONObject;
    :cond_d
    move v2, v14

    .line 95
    goto :goto_7

    .end local v10    # "jlikes":Lorg/json/JSONObject;
    :cond_e
    move v13, v14

    .line 98
    goto :goto_8
.end method

.method public static parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;
    .locals 7
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v0}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 109
    .local v0, "wm":Lcom/perm/kate/api/WallMessage;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    .line 110
    const-string v2, "from_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    .line 111
    const-string v2, "to_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 112
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->getPostType(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    .line 113
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 122
    const-string v2, "attachments"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 123
    .local v1, "attachments":Lorg/json/JSONArray;
    const-string v2, "geo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 124
    .local v6, "geo_json":Lorg/json/JSONObject;
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    .line 125
    return-object v0
.end method
