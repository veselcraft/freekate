.class public Lcom/perm/kate/api/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CHAT:I = 0x0

.field public static DELETED:I = 0x0

.field public static FIXED:I = 0x0

.field public static FRIENDS:I = 0x0

.field public static IMPORTANT:I = 0x0

.field public static MEDIA:I = 0x0

.field public static OUTBOX:I = 0x0

.field public static REPLIED:I = 0x0

.field public static SPAM:I = 0x0

.field public static UNREAD:I = 0x0

.field static chat_long_const:J = 0x0L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public action:Ljava/lang/Integer;

.field public action_mid:Ljava/lang/Long;

.field public action_text:Ljava/lang/String;

.field public admin_id:Ljava/lang/Long;

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

.field public body:Ljava/lang/String;

.field public chat_id:Ljava/lang/Long;

.field public chat_members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public date:J

.field public important:Ljava/lang/Boolean;

.field public is_out:Z

.field public mid:J

.field public photo_100:Ljava/lang/String;

.field public photo_200:Ljava/lang/String;

.field public photo_50:Ljava/lang/String;

.field public read_state:Z

.field public title:Ljava/lang/String;

.field public uid:J

.field public unread_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x1

    sput v0, Lcom/perm/kate/api/Message;->UNREAD:I

    .line 126
    const/4 v0, 0x2

    sput v0, Lcom/perm/kate/api/Message;->OUTBOX:I

    .line 127
    const/4 v0, 0x4

    sput v0, Lcom/perm/kate/api/Message;->REPLIED:I

    .line 128
    const/16 v0, 0x8

    sput v0, Lcom/perm/kate/api/Message;->IMPORTANT:I

    .line 129
    const/16 v0, 0x10

    sput v0, Lcom/perm/kate/api/Message;->CHAT:I

    .line 130
    const/16 v0, 0x20

    sput v0, Lcom/perm/kate/api/Message;->FRIENDS:I

    .line 131
    const/16 v0, 0x40

    sput v0, Lcom/perm/kate/api/Message;->SPAM:I

    .line 132
    const/16 v0, 0x80

    sput v0, Lcom/perm/kate/api/Message;->DELETED:I

    .line 133
    const/16 v0, 0x100

    sput v0, Lcom/perm/kate/api/Message;->FIXED:I

    .line 134
    const/16 v0, 0x200

    sput v0, Lcom/perm/kate/api/Message;->MEDIA:I

    .line 136
    const-wide/32 v0, 0x77359400

    sput-wide v0, Lcom/perm/kate/api/Message;->chat_long_const:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    return-void
.end method

.method private static actionStringToInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "chat_invite_user"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, "chat_kick_user"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "chat_photo_update"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "chat_photo_remove"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_3
    const-string v0, "chat_create"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_4
    const-string v0, "chat_title_update"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Message;
    .locals 9
    .param p0, "a"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 139
    new-instance v1, Lcom/perm/kate/api/Message;

    invoke-direct {v1}, Lcom/perm/kate/api/Message;-><init>()V

    .line 140
    .local v1, "m":Lcom/perm/kate/api/Message;
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/perm/kate/api/Message;->mid:J

    .line 141
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/perm/kate/api/Message;->uid:J

    .line 142
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/perm/kate/api/Message;->date:J

    .line 143
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescapeForLongPoll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    .line 144
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescapeForLongPoll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 145
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 146
    .local v0, "flag":I
    sget v3, Lcom/perm/kate/api/Message;->UNREAD:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lcom/perm/kate/api/Message;->read_state:Z

    .line 147
    sget v3, Lcom/perm/kate/api/Message;->OUTBOX:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v5, v1, Lcom/perm/kate/api/Message;->is_out:Z

    .line 148
    iget-wide v4, v1, Lcom/perm/kate/api/Message;->uid:J

    sget-wide v6, Lcom/perm/kate/api/Message;->chat_long_const:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 149
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sget-wide v6, Lcom/perm/kate/api/Message;->chat_long_const:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 150
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 151
    .local v2, "o":Lorg/json/JSONObject;
    const-string v3, "from"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/perm/kate/api/Message;->uid:J

    .line 154
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v1

    :cond_1
    move v3, v5

    .line 146
    goto :goto_0

    :cond_2
    move v5, v4

    .line 147
    goto :goto_1
.end method

.method public static parse(Lorg/json/JSONObject;ZJZJ)Lcom/perm/kate/api/Message;
    .locals 26
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "from_history"    # Z
    .param p2, "history_uid"    # J
    .param p4, "from_chat"    # Z
    .param p5, "me"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v23, Lcom/perm/kate/api/Message;

    invoke-direct/range {v23 .. v23}, Lcom/perm/kate/api/Message;-><init>()V

    .line 43
    .local v23, "m":Lcom/perm/kate/api/Message;
    if-eqz p4, :cond_2

    .line 44
    const-string v6, "user_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 45
    .local v20, "from_id":J
    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/perm/kate/api/Message;->uid:J

    .line 46
    cmp-long v6, v20, p5

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, v23

    iput-boolean v6, v0, Lcom/perm/kate/api/Message;->is_out:Z

    .line 56
    .end local v20    # "from_id":J
    :goto_1
    const-string v6, "id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v23

    iput-wide v6, v0, Lcom/perm/kate/api/Message;->mid:J

    .line 57
    const-string v6, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v23

    iput-wide v6, v0, Lcom/perm/kate/api/Message;->date:J

    .line 58
    const-string v6, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    .line 59
    const-string v6, "body"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/perm/kate/api/Api;->unescapeWithSmiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 60
    const-string v6, "read_state"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, v23

    iput-boolean v6, v0, Lcom/perm/kate/api/Message;->read_state:Z

    .line 63
    const-string v6, "important"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 65
    const-string v6, "chat_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    const-string v6, "chat_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 69
    :cond_0
    const-string v6, "chat_active"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 70
    .local v24, "tmp":Lorg/json/JSONArray;
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_8

    .line 71
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    .line 72
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_8

    .line 73
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 46
    .end local v22    # "i":I
    .end local v24    # "tmp":Lorg/json/JSONArray;
    .restart local v20    # "from_id":J
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 47
    .end local v20    # "from_id":J
    :cond_2
    if-eqz p1, :cond_4

    .line 48
    move-wide/from16 v0, p2

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/perm/kate/api/Message;->uid:J

    .line 49
    const-string v6, "from_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 50
    .local v20, "from_id":Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, v23

    iput-boolean v6, v0, Lcom/perm/kate/api/Message;->is_out:Z

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_5

    .line 53
    .end local v20    # "from_id":Ljava/lang/Long;
    :cond_4
    const-string v6, "user_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v23

    iput-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 54
    const-string v6, "out"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, v23

    iput-boolean v6, v0, Lcom/perm/kate/api/Message;->is_out:Z

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    .line 60
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 63
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 76
    .restart local v24    # "tmp":Lorg/json/JSONArray;
    :cond_8
    const-string v6, "attachments"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 77
    .local v5, "attachments":Lorg/json/JSONArray;
    const-string v6, "geo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 78
    .local v10, "geo_json":Lorg/json/JSONObject;
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    .line 81
    const-string v6, "fwd_messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 82
    .local v19, "fwd_messages":Lorg/json/JSONArray;
    if-eqz v19, :cond_9

    .line 83
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_7
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_9

    .line 84
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 85
    .local v12, "fwd_message_json":Lorg/json/JSONObject;
    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v12 .. v18}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;ZJZJ)Lcom/perm/kate/api/Message;

    move-result-object v11

    .line 86
    .local v11, "fwd_message":Lcom/perm/kate/api/Message;
    new-instance v4, Lcom/perm/kate/api/Attachment;

    invoke-direct {v4}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 87
    .local v4, "att":Lcom/perm/kate/api/Attachment;
    const-string v6, "message"

    iput-object v6, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 88
    iput-object v11, v4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 89
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 93
    .end local v4    # "att":Lcom/perm/kate/api/Attachment;
    .end local v11    # "fwd_message":Lcom/perm/kate/api/Message;
    .end local v12    # "fwd_message_json":Lorg/json/JSONObject;
    .end local v22    # "i":I
    :cond_9
    if-nez p1, :cond_a

    if-nez p4, :cond_a

    .line 94
    const-string v6, "photo_50"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->photo_50:Ljava/lang/String;

    .line 95
    const-string v6, "photo_100"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->photo_100:Ljava/lang/String;

    .line 96
    const-string v6, "photo_200"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->photo_200:Ljava/lang/String;

    .line 99
    :cond_a
    const-string v6, "action"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 100
    const-string v6, "action"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/perm/kate/api/Message;->actionStringToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    .line 101
    :cond_b
    const-string v6, "action_mid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 102
    const-string v6, "action_mid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    .line 103
    :cond_c
    const-string v6, "action_text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 104
    const-string v6, "action_text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    .line 106
    :cond_d
    return-object v23
.end method

.method public static parseSearchedDialogs(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/SearchDialogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/SearchDialogItem;>;"
    if-nez p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v4

    .line 162
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 163
    .local v0, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 164
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/json/JSONObject;

    if-nez v10, :cond_3

    .line 163
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 167
    .local v7, "o":Lorg/json/JSONObject;
    new-instance v3, Lcom/perm/kate/api/SearchDialogItem;

    invoke-direct {v3}, Lcom/perm/kate/api/SearchDialogItem;-><init>()V

    .line 168
    .local v3, "item":Lcom/perm/kate/api/SearchDialogItem;
    const-string v10, "type"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "type":Ljava/lang/String;
    iput-object v8, v3, Lcom/perm/kate/api/SearchDialogItem;->str_type:Ljava/lang/String;

    .line 170
    const-string v10, "profile"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 171
    sget-object v10, Lcom/perm/kate/api/SearchDialogItem$SDIType;->USER:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 172
    invoke-static {v7}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v10

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->user:Lcom/perm/kate/api/User;

    .line 196
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 198
    .end local v0    # "category_count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .end local v7    # "o":Lorg/json/JSONObject;
    .end local v8    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "category_count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/perm/kate/api/SearchDialogItem;
    .restart local v7    # "o":Lorg/json/JSONObject;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v10, "chat"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 174
    sget-object v10, Lcom/perm/kate/api/SearchDialogItem$SDIType;->CHAT:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 175
    new-instance v6, Lcom/perm/kate/api/Message;

    invoke-direct {v6}, Lcom/perm/kate/api/Message;-><init>()V

    .line 176
    .local v6, "m":Lcom/perm/kate/api/Message;
    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 177
    const-string v10, "admin_id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Message;->admin_id:Ljava/lang/Long;

    .line 178
    const-string v10, "title"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    .line 179
    const-string v10, "users"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 180
    .local v9, "users":Lorg/json/JSONArray;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 181
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    .line 182
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 183
    iget-object v10, v6, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 185
    .end local v5    # "j":I
    :cond_5
    iput-object v6, v3, Lcom/perm/kate/api/SearchDialogItem;->chat:Lcom/perm/kate/api/Message;

    goto :goto_3

    .line 186
    .end local v6    # "m":Lcom/perm/kate/api/Message;
    .end local v9    # "users":Lorg/json/JSONArray;
    :cond_6
    const-string v10, "group"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 187
    sget-object v10, Lcom/perm/kate/api/SearchDialogItem$SDIType;->GROUP:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 188
    new-instance v10, Lcom/perm/kate/api/Group;

    invoke-direct {v10}, Lcom/perm/kate/api/Group;-><init>()V

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    .line 189
    iget-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    const-string v11, "id"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v10, Lcom/perm/kate/api/Group;->gid:J

    .line 190
    iget-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    const-string v11, "name"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 191
    iget-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->group:Lcom/perm/kate/api/Group;

    const-string v11, "photo_100"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto/16 :goto_3

    .line 193
    :cond_7
    sget-object v10, Lcom/perm/kate/api/SearchDialogItem$SDIType;->EMAIL:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->type:Lcom/perm/kate/api/SearchDialogItem$SDIType;

    .line 194
    const-string v10, "email"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/perm/kate/api/SearchDialogItem;->email:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
