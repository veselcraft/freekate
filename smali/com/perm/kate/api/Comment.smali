.class public Lcom/perm/kate/api/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

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

.field public cid:J

.field public date:J

.field public from_id:J

.field public like_count:I

.field public message:Ljava/lang/String;

.field public pid:J

.field public post:Lcom/perm/kate/api/WallMessage;

.field public replyCids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public replyUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reply_to_cid:J

.field public reply_to_uid:J

.field public reply_to_user_name:Ljava/lang/String;

.field public user_like:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    .line 29
    iput-object v1, p0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 9
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 34
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 35
    const-string v4, "from_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->from_id:J

    .line 36
    const-string v4, "date"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->date:J

    .line 37
    const-string v4, "text"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 38
    const-string v4, "reply_to_user"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "reply_to_uid":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v4, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    .line 41
    :cond_0
    const-string v4, "reply_to_comment"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "reply_to_cid":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 43
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    .line 44
    :cond_1
    invoke-static {p0, v0}, Lcom/perm/kate/api/Comment;->parseLikes(Lorg/json/JSONObject;Lcom/perm/kate/api/Comment;)V

    .line 46
    const-string v4, "attachments"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 47
    .local v1, "attachments":Lorg/json/JSONArray;
    const/4 v6, 0x0

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    .line 49
    return-object v0
.end method

.method public static parseForAlbum(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    .line 111
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Comment;->pid:J

    .line 112
    return-object v0
.end method

.method public static parseFromAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 118
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 122
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 124
    new-instance v1, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v1}, Lcom/perm/kate/api/WallMessage;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    .line 125
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    const-string v2, "post_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    .line 126
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    const-string v2, "owner_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    .line 129
    return-object v0
.end method

.method private static parseLikes(Lorg/json/JSONObject;Lcom/perm/kate/api/Comment;)V
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "comment"    # Lcom/perm/kate/api/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    .local v0, "jlikes":Lorg/json/JSONObject;
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/perm/kate/api/Comment;->like_count:I

    .line 56
    const-string v1, "user_likes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 57
    const-string v1, "can_like"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, p1, Lcom/perm/kate/api/Comment;->can_like:Z

    .line 59
    .end local v0    # "jlikes":Lorg/json/JSONObject;
    :cond_0
    return-void

    .restart local v0    # "jlikes":Lorg/json/JSONObject;
    :cond_1
    move v1, v3

    .line 56
    goto :goto_0

    :cond_2
    move v2, v3

    .line 57
    goto :goto_1
.end method

.method public static parseNoteComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 78
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 79
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    .line 80
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Comment;->date:J

    .line 81
    const-string v1, "message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 82
    const-string v1, "reply_to"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    .line 83
    return-object v0
.end method

.method public static parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;
    .locals 12
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "parse_post"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 87
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 88
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 89
    const-string v5, "owner_id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    const-string v5, "owner_id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Comment;->from_id:J

    .line 93
    :goto_0
    const-string v5, "date"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Comment;->date:J

    .line 94
    const-string v5, "text"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 95
    const-string v5, "likes"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    const-string v5, "likes"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 97
    .local v7, "jlikes":Lorg/json/JSONObject;
    const-string v5, "count"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/Comment;->like_count:I

    .line 98
    const-string v5, "user_likes"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_3

    :goto_1
    iput-boolean v4, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 100
    .end local v7    # "jlikes":Lorg/json/JSONObject;
    :cond_0
    if-eqz p1, :cond_1

    .line 101
    const-string v4, "post"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 102
    .local v8, "post_json":Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    .line 104
    .end local v8    # "post_json":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "attachments"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 105
    .local v1, "attachments":Lorg/json/JSONArray;
    const/4 v6, 0x0

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    .line 106
    return-object v0

    .line 92
    .end local v1    # "attachments":Lorg/json/JSONArray;
    :cond_2
    const-string v5, "from_id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/perm/kate/api/Comment;->from_id:J

    goto :goto_0

    .line 98
    .restart local v7    # "jlikes":Lorg/json/JSONObject;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static parseTopicComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 7
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    .line 64
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 65
    const-string v4, "from_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->from_id:J

    .line 66
    const-string v4, "date"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/Comment;->date:J

    .line 67
    const-string v4, "text"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 68
    invoke-static {p0, v0}, Lcom/perm/kate/api/Comment;->parseLikes(Lorg/json/JSONObject;Lcom/perm/kate/api/Comment;)V

    .line 70
    const-string v4, "attachments"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 71
    .local v1, "attachments":Lorg/json/JSONArray;
    const/4 v6, 0x0

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    .line 73
    return-object v0
.end method
