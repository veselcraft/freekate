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
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public cid:J

.field public date:J

.field public deleted:Z

.field public from_id:J

.field public like_count:I

.field public message:Ljava/lang/String;

.field public parent_stack:J

.field public pid:J

.field public post:Lcom/perm/kate/api/WallMessage;

.field public replyCids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public replyUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reply_to_cid:J

.field public reply_to_uid:J

.field public reply_to_user_name:Ljava/lang/String;

.field public thread_comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public thread_count:I

.field public user_like:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    .line 30
    iput-object v0, p0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 8

    .line 40
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    const-string v1, "id"

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->cid:J

    const-string v1, "from_id"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v1, "date"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->date:J

    const-string v1, "text"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    const-string v1, "reply_to_user"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    :cond_0
    const-string v1, "reply_to_comment"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    .line 51
    :cond_1
    invoke-static {p0, v0}, Lcom/perm/kate/api/Comment;->parseLikes(Lorg/json/JSONObject;Lcom/perm/kate/api/Comment;)V

    const-string v1, "attachments"

    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 54
    invoke-static/range {v2 .. v7}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    const-string v1, "thread"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "count"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/Comment;->thread_count:I

    const-string v2, "items"

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 63
    iget-object v4, v0, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "parents_stack"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 68
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->parent_stack:J

    :cond_3
    const-string v1, "deleted"

    .line 70
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/perm/kate/api/Comment;->deleted:Z

    return-object v0
.end method

.method public static parseForAlbum(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 3

    .line 132
    invoke-static {p0}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    const-string v1, "pid"

    .line 133
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->pid:J

    return-object v0
.end method

.method public static parseFromAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 4

    .line 139
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    const-string v1, "id"

    .line 140
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->cid:J

    const-string v1, "text"

    .line 144
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 146
    new-instance v1, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v1}, Lcom/perm/kate/api/WallMessage;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    const-string v2, "post_id"

    .line 147
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    .line 148
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    const-string v2, "owner_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    return-object v0
.end method

.method private static parseLikes(Lorg/json/JSONObject;Lcom/perm/kate/api/Comment;)V
    .locals 2

    const-string v0, "likes"

    .line 75
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "count"

    .line 77
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/perm/kate/api/Comment;->like_count:I

    const-string v0, "user_likes"

    .line 78
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/perm/kate/api/Comment;->user_like:Z

    :cond_1
    return-void
.end method

.method public static parseNoteComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 3

    .line 99
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    const-string v1, "id"

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->cid:J

    const-string v1, "uid"

    .line 101
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v1, "date"

    .line 102
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->date:J

    const-string v1, "message"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    const-string v1, "reply_to"

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    return-object v0
.end method

.method public static parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;
    .locals 7

    .line 109
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    const-string v1, "id"

    .line 110
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->cid:J

    const-string v1, "owner_id"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    :cond_0
    const-string v1, "from_id"

    .line 113
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    :cond_1
    const-string v1, "date"

    .line 115
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->date:J

    const-string v1, "text"

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    const-string v1, "likes"

    .line 117
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "count"

    .line 119
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/Comment;->like_count:I

    const-string v2, "user_likes"

    .line 120
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "post"

    .line 123
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    :cond_4
    const-string p1, "attachments"

    .line 126
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 127
    invoke-static/range {v1 .. v6}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static parseTopicComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;
    .locals 8

    .line 85
    new-instance v0, Lcom/perm/kate/api/Comment;

    invoke-direct {v0}, Lcom/perm/kate/api/Comment;-><init>()V

    const-string v1, "id"

    .line 86
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->cid:J

    const-string v1, "from_id"

    .line 87
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v1, "date"

    .line 88
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Comment;->date:J

    const-string v1, "text"

    .line 89
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 90
    invoke-static {p0, v0}, Lcom/perm/kate/api/Comment;->parseLikes(Lorg/json/JSONObject;Lcom/perm/kate/api/Comment;)V

    const-string v1, "attachments"

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 93
    invoke-static/range {v2 .. v7}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method
