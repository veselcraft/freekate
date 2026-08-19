.class public Lcom/perm/kate/api/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DELETED:I = 0x80

.field public static OUTBOX:I = 0x2

.field public static UNREAD:I = 0x1

.field public static broken_id:Ljava/lang/Long; = null

.field static chat_long_const:J = 0x77359400L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public action:Ljava/lang/Integer;

.field public action_mid:Ljava/lang/Long;

.field public action_text:Ljava/lang/String;

.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public body:Ljava/lang/String;

.field public chat_id:Ljava/lang/Long;

.field public chat_members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public date:J

.field public important:Ljava/lang/Boolean;

.field public is_out:Z

.field public keyboard:Lcom/perm/kate/api/BotKeyboard;

.field public mid:J

.field public photo_100:Ljava/lang/String;

.field public pinned_message:Lcom/perm/kate/api/Message;

.field public read_state:Z

.field public title:Ljava/lang/String;

.field public uid:J

.field public unread_count:I

.field public update_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/perm/kate/api/Message;->update_time:J

    return-void
.end method

.method private static actionStringToInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "chat_invite_user"

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "chat_invite_user_by_link"

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x9

    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "chat_kick_user"

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "chat_photo_update"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    .line 225
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "chat_photo_remove"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    .line 227
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "chat_create"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    .line 229
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "chat_title_update"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x6

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "chat_pin_message"

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "chat_unpin_message"

    .line 234
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    .line 235
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Message;
    .locals 10

    .line 253
    new-instance v0, Lcom/perm/kate/api/Message;

    invoke-direct {v0}, Lcom/perm/kate/api/Message;-><init>()V

    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->mid:J

    const/4 v2, 0x3

    .line 255
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/Message;->uid:J

    const/4 v3, 0x4

    .line 256
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/Message;->date:J

    const/4 v3, 0x5

    .line 258
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescapeForLongPoll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    const/4 v3, 0x2

    .line 259
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 260
    sget v4, Lcom/perm/kate/api/Message;->UNREAD:I

    and-int/2addr v4, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v0, Lcom/perm/kate/api/Message;->read_state:Z

    .line 261
    sget v4, Lcom/perm/kate/api/Message;->OUTBOX:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/perm/kate/api/Message;->is_out:Z

    .line 262
    iget-wide v3, v0, Lcom/perm/kate/api/Message;->uid:J

    sget-wide v5, Lcom/perm/kate/api/Message;->chat_long_const:J

    const-string v7, "keyboard"

    const/4 v8, 0x6

    cmp-long v9, v3, v5

    if-ltz v9, :cond_4

    .line 263
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    sget-wide v3, Lcom/perm/kate/api/Message;->chat_long_const:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 264
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "from"

    .line 265
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 266
    iget-boolean v1, v0, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v1, :cond_5

    .line 267
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 269
    invoke-static {p0}, Lcom/perm/kate/api/Message;->parseKeyboard(Lorg/json/JSONObject;)Lcom/perm/kate/api/BotKeyboard;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    .line 271
    :cond_2
    iget-object p0, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/perm/kate/api/BotKeyboard;->author_id:Ljava/lang/Long;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_5

    .line 272
    :cond_3
    iget-object p0, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    iget-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/api/BotKeyboard;->author_id:Ljava/lang/Long;

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 275
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 276
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 278
    invoke-static {p0}, Lcom/perm/kate/api/Message;->parseKeyboard(Lorg/json/JSONObject;)Lcom/perm/kate/api/BotKeyboard;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Message;
    .locals 10

    .line 51
    new-instance v0, Lcom/perm/kate/api/Message;

    invoke-direct {v0}, Lcom/perm/kate/api/Message;-><init>()V

    const-string v1, "peer_id"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "from_id"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    if-nez p1, :cond_1

    const-wide/32 v4, 0x77359400

    cmp-long p1, v1, v4

    if-lez p1, :cond_0

    sub-long/2addr v1, v4

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    goto :goto_0

    .line 59
    :cond_0
    iput-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 61
    :goto_0
    iget-object p1, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    :cond_2
    :goto_1
    const-string p1, "out"

    .line 68
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, v0, Lcom/perm/kate/api/Message;->is_out:Z

    const-string p1, "id"

    .line 69
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/Message;->mid:J

    const-string p1, "date"

    .line 70
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/Message;->date:J

    const-string p1, "text"

    .line 71
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescapeWithSmiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 72
    iput-boolean v2, v0, Lcom/perm/kate/api/Message;->read_state:Z

    const-string v3, "important"

    .line 75
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    const-string v3, "attachments"

    .line 77
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v3, "geo"

    .line 78
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 79
    invoke-static/range {v4 .. v9}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "fwd_messages"

    .line 82
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "message"

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    .line 84
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 85
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 86
    invoke-static {v6, v2}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Message;

    move-result-object v6

    .line 87
    new-instance v7, Lcom/perm/kate/api/Attachment;

    invoke-direct {v7}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 88
    iput-object v4, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 89
    iput-object v6, v7, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 90
    iget-object v6, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const-string v3, "reply_message"

    .line 95
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 97
    invoke-static {v3, v2}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Message;

    move-result-object v3

    .line 98
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 99
    iput-object v4, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 100
    iput-object v3, v5, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 101
    iget-object v3, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "action"

    .line 104
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v4, "type"

    .line 106
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 107
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Message;->actionStringToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    :cond_6
    const-string v4, "member_id"

    .line 108
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 109
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    .line 110
    :cond_7
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 111
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    :cond_8
    const-string p1, "update_time"

    .line 114
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/Message;->update_time:J

    const-string p1, "keyboard"

    .line 116
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 118
    invoke-static {p1}, Lcom/perm/kate/api/Message;->parseKeyboard(Lorg/json/JSONObject;)Lcom/perm/kate/api/BotKeyboard;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    .line 120
    :cond_9
    sget-object p1, Lcom/perm/kate/api/Message;->broken_id:Ljava/lang/Long;

    if-eqz p1, :cond_a

    iget-wide v3, v0, Lcom/perm/kate/api/Message;->mid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_a

    .line 121
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v3, v2, [Ljava/lang/StackTraceElement;

    .line 122
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, "FakeClass"

    const-string v6, "brokenLongPollMessage"

    const-string v7, "FakeClass.java"

    invoke-direct {v4, v5, v6, v7, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 123
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    .line 124
    sput-object p0, Lcom/perm/kate/api/Message;->broken_id:Ljava/lang/Long;

    :cond_a
    return-object v0
.end method

.method public static parseConversation(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/perm/kate/api/Message;
    .locals 7

    const/4 v0, 0x0

    .line 166
    invoke-static {p0, v0}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Message;

    move-result-object p0

    const-string v1, "in_read"

    .line 171
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "out_read"

    .line 172
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 173
    iget-boolean v3, p0, Lcom/perm/kate/api/Message;->is_out:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 174
    iget-wide v5, p0, Lcom/perm/kate/api/Message;->mid:J

    int-to-long v1, v2

    cmp-long v3, v5, v1

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/perm/kate/api/Message;->read_state:Z

    goto :goto_0

    .line 176
    :cond_1
    iget-wide v2, p0, Lcom/perm/kate/api/Message;->mid:J

    int-to-long v5, v1

    cmp-long v1, v2, v5

    if-gtz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/perm/kate/api/Message;->read_state:Z

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 179
    invoke-static {p1, p0}, Lcom/perm/kate/api/Message;->parseConversationFields(Lorg/json/JSONObject;Lcom/perm/kate/api/Message;)V

    :cond_3
    const-string v0, "unread_count"

    .line 181
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/api/Message;->unread_count:I

    return-object p0
.end method

.method static parseConversationFields(Lorg/json/JSONObject;Lcom/perm/kate/api/Message;)V
    .locals 7

    const-string v0, "chat_settings"

    .line 188
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "active_ids"

    .line 190
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 193
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 194
    iget-object v4, p1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "title"

    .line 197
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    const-string v1, "photo"

    .line 199
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "photo_100"

    .line 202
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/perm/kate/api/Message;->photo_100:Ljava/lang/String;

    :cond_1
    const-string v1, "pinned_message"

    .line 207
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    invoke-static {v0, v2}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Message;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    :cond_2
    const-string v0, "current_keyboard"

    .line 212
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 214
    invoke-static {p0}, Lcom/perm/kate/api/Message;->parseKeyboard(Lorg/json/JSONObject;)Lcom/perm/kate/api/BotKeyboard;

    move-result-object p0

    iput-object p0, p1, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    :cond_3
    return-void
.end method

.method public static parseKeyboard(Lorg/json/JSONObject;)Lcom/perm/kate/api/BotKeyboard;
    .locals 11

    .line 134
    :try_start_0
    new-instance v0, Lcom/perm/kate/api/BotKeyboard;

    invoke-direct {v0}, Lcom/perm/kate/api/BotKeyboard;-><init>()V

    const-string v1, "one_time"

    .line 135
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/api/BotKeyboard;->one_time:Z

    const-string v1, "author_id"

    .line 136
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/BotKeyboard;->author_id:Ljava/lang/Long;

    const-string v1, "buttons"

    .line 137
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 139
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 140
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 142
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 143
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 144
    new-instance v8, Lcom/perm/kate/api/BotButton;

    invoke-direct {v8}, Lcom/perm/kate/api/BotButton;-><init>()V

    const-string v9, "action"

    .line 145
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "label"

    .line 147
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/perm/kate/api/BotButton;->action_label:Ljava/lang/String;

    const-string v10, "payload"

    .line 148
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/perm/kate/api/BotButton;->action_payload:Ljava/lang/String;

    const-string v9, "color"

    .line 149
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/perm/kate/api/BotButton;->color:Ljava/lang/String;

    .line 150
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 152
    :cond_0
    iget-object v4, v0, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "inline"

    .line 155
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/perm/kate/api/BotKeyboard;->inline:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    invoke-static {p0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLongpollAttachments(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "attach"

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x7

    .line 357
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    new-instance v4, Lcom/perm/kate/api/Attachment;

    invoke-direct {v4}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 364
    iput-object v3, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "doc"

    .line 366
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_kind"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "audiomsg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "audio"

    .line 367
    iput-object v3, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 368
    new-instance v3, Lcom/perm/kate/api/Audio;

    invoke-direct {v3}, Lcom/perm/kate/api/Audio;-><init>()V

    iput-object v3, v4, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    const-wide/16 v5, -0x1

    .line 370
    iput-wide v5, v3, Lcom/perm/kate/api/Audio;->aid:J

    .line 373
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    invoke-static {p0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static parseSearchedDialogs(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 11

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 291
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "profiles"

    .line 292
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 294
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v5

    .line 295
    iget-wide v6, v5, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "groups"

    .line 300
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 301
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 302
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object v6

    .line 303
    iget-wide v7, v6, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "items"

    .line 306
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_9

    .line 310
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    goto/16 :goto_5

    .line 312
    :cond_3
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 313
    new-instance v6, Lcom/perm/kate/api/SearchDialogItem;

    invoke-direct {v6}, Lcom/perm/kate/api/SearchDialogItem;-><init>()V

    const-string v7, "peer"

    .line 314
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "type"

    .line 315
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "user"

    .line 317
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "id"

    if-eqz v9, :cond_4

    .line 318
    :try_start_1
    sget-object v5, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v5, v6, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 319
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 320
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/User;

    iput-object v5, v6, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    goto :goto_4

    :cond_4
    const-string v9, "chat"

    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 322
    sget-object v8, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v8, v6, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 323
    new-instance v8, Lcom/perm/kate/api/Message;

    invoke-direct {v8}, Lcom/perm/kate/api/Message;-><init>()V

    const-string v9, "local_id"

    .line 324
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v8, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    const-string v7, "chat_settings"

    .line 326
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "title"

    .line 327
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    .line 335
    iput-object v8, v6, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    goto :goto_4

    :cond_5
    const-string v9, "group"

    .line 336
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "page"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    .line 342
    :cond_6
    sget-object v7, Lcom/perm/kate/api/SearchDialogItem$SDIType;->EMAIL:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v7, v6, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    const-string v7, "email"

    .line 343
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/perm/kate/api/SearchDialogItem;->email:Ljava/lang/String;

    goto :goto_4

    .line 337
    :cond_7
    :goto_3
    sget-object v5, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v5, v6, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 338
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    neg-long v7, v7

    .line 339
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Group;

    iput-object v5, v6, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    .line 345
    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 348
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 349
    invoke-static {p0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :cond_9
    return-object v0
.end method
