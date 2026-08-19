.class public Lcom/perm/kate/api/WallMessage;
.super Ljava/lang/Object;
.source "WallMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ad_data:Ljava/lang/String;

.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public comment_can_post:Z

.field public comment_count:J

.field public comment_id:Ljava/lang/Long;

.field public copy_history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation
.end field

.field public copy_owner_id:J

.field public copy_text:Ljava/lang/String;

.field public copyright_link:Ljava/lang/String;

.field public copyright_name:Ljava/lang/String;

.field public created_by:J

.field public date:J

.field public from_id:J

.field public id:J

.field public is_pinned:Z

.field public like_count:I

.field public post_type:I

.field public reposts_count:I

.field public signer_id:J

.field public statistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public to_id:J

.field public track_code:Ljava/lang/String;

.field public user_like:Z

.field public user_reposted:Z

.field public views:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    .line 41
    iput-wide v0, p0, Lcom/perm/kate/api/WallMessage;->signer_id:J

    const/4 v2, 0x0

    .line 42
    iput-boolean v2, p0, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    .line 57
    iput-wide v0, p0, Lcom/perm/kate/api/WallMessage;->created_by:J

    return-void
.end method

.method public static getPostType(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "post_type"

    .line 152
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "post"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "copy"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "postpone"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "suggest"

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "reply"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;
    .locals 13

    .line 60
    new-instance v0, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v0}, Lcom/perm/kate/api/WallMessage;-><init>()V

    const-string v1, "id"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    const-string v2, "from_id"

    .line 62
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-string v2, "to_id"

    .line 63
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    goto :goto_0

    :cond_0
    const-string v2, "owner_id"

    .line 67
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    :goto_0
    const-string v2, "date"

    .line 68
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->date:J

    .line 69
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->getPostType(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 72
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/WallMessage;->comment_id:Ljava/lang/Long;

    const-string v2, "post_id"

    .line 73
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    :cond_1
    const-string v2, "text"

    .line 75
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    const-string v2, "likes"

    .line 76
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "count"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    const-string v3, "user_likes"

    .line 79
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    :cond_3
    const-string v2, "copy_history"

    .line 83
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 86
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 87
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 90
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    .line 93
    :cond_4
    iget-object v8, v0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "attachments"

    .line 96
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v1, "geo"

    .line 97
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 99
    iget-wide v8, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v10, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static/range {v7 .. v12}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    const-string v1, "comments"

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 101
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/perm/kate/api/WallMessage;->comment_count:J

    const-string v2, "can_post"

    .line 103
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    :cond_7
    const-string v1, "signer_id"

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/WallMessage;->signer_id:J

    const-string v1, "reposts"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    const-string v2, "user_reposted"

    .line 109
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v0, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    :cond_9
    const-string v1, "is_pinned"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 112
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_a

    const/4 v5, 0x1

    :cond_a
    iput-boolean v5, v0, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    :cond_b
    const-string v1, "views"

    .line 114
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 116
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    :cond_c
    const-string v1, "copyright"

    .line 118
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "link"

    .line 120
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/WallMessage;->copyright_link:Ljava/lang/String;

    const-string v2, "name"

    .line 121
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/WallMessage;->copyright_name:Ljava/lang/String;

    :cond_d
    const-string v1, "created_by"

    .line 124
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/WallMessage;->created_by:J

    return-object v0
.end method

.method public static parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;
    .locals 8

    .line 130
    new-instance v0, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v0}, Lcom/perm/kate/api/WallMessage;-><init>()V

    const-string v1, "id"

    .line 131
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/WallMessage;->id:J

    const-string v1, "from_id"

    .line 132
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-string v1, "to_id"

    .line 133
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 134
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->getPostType(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    const-string v1, "text"

    .line 135
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    const-string v1, "attachments"

    .line 144
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v1, "geo"

    .line 145
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 146
    iget-wide v3, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-wide v5, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method
