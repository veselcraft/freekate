.class public Lcom/perm/kate/api/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public date:Ljava/lang/Long;

.field public feedback:Ljava/lang/Object;

.field public market:Lcom/perm/kate/api/MarketItem;

.field public parent:Ljava/lang/Object;

.field public photo:Lcom/perm/kate/api/Photo;

.field public reply:Ljava/lang/Object;

.field public type:Ljava/lang/String;

.field public video:Lcom/perm/kate/api/Video;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "jfeedback"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v7, "items"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 284
    .local v4, "items":Lorg/json/JSONArray;
    if-nez v4, :cond_1

    .line 299
    :cond_0
    return-object v3

    .line 286
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 287
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 288
    .local v5, "j_id":Lorg/json/JSONObject;
    if-nez v5, :cond_3

    .line 286
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_3
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 291
    .local v2, "id":Ljava/lang/Long;
    const-string v7, "from_id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 292
    .local v6, "owner_id":Ljava/lang/Long;
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    .line 293
    new-instance v0, Lcom/perm/kate/api/IdsPair;

    invoke-direct {v0}, Lcom/perm/kate/api/IdsPair;-><init>()V

    .line 294
    .local v0, "c":Lcom/perm/kate/api/IdsPair;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/perm/kate/api/IdsPair;->id:J

    .line 295
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/perm/kate/api/IdsPair;->owner_id:J

    .line 296
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "jfeedback"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v4, "items"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 271
    .local v2, "items":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 278
    :cond_0
    return-object v1

    .line 273
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 274
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 275
    .local v3, "j_id":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 276
    const-string v4, "from_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notification;
    .locals 10
    .param p0, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 50
    const/4 v4, 0x0

    .line 52
    .local v4, "n":Lcom/perm/kate/api/Notification;
    :try_start_0
    new-instance v5, Lcom/perm/kate/api/Notification;

    invoke-direct {v5}, Lcom/perm/kate/api/Notification;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v4    # "n":Lcom/perm/kate/api/Notification;
    .local v5, "n":Lcom/perm/kate/api/Notification;
    :try_start_1
    const-string v7, "type"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    .line 54
    const-string v7, "date"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    .line 55
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "follow"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    .local v1, "jfeedback":Lorg/json/JSONObject;
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 58
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    .line 245
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string v7, "reply"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 246
    .local v3, "jreply":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 247
    invoke-static {v3}, Lcom/perm/kate/api/Reply;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Reply;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->reply:Ljava/lang/Object;

    :cond_1
    move-object v4, v5

    .line 252
    .end local v3    # "jreply":Lorg/json/JSONObject;
    .end local v5    # "n":Lcom/perm/kate/api/Notification;
    .restart local v4    # "n":Lcom/perm/kate/api/Notification;
    :goto_1
    return-object v5

    .line 60
    .end local v4    # "n":Lcom/perm/kate/api/Notification;
    .restart local v5    # "n":Lcom/perm/kate/api/Notification;
    :cond_2
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "friend_accepted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 248
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 249
    .end local v5    # "n":Lcom/perm/kate/api/Notification;
    .local v0, "ex":Lorg/json/JSONException;
    .restart local v4    # "n":Lcom/perm/kate/api/Notification;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v6

    .line 250
    goto :goto_1

    .line 65
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v4    # "n":Lcom/perm/kate/api/Notification;
    .restart local v5    # "n":Lcom/perm/kate/api/Notification;
    :cond_3
    :try_start_2
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "mention"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 67
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-static {v1}, Lcom/perm/kate/api/WallMessage;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    :cond_4
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "mention_comments"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 71
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    .local v2, "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 74
    invoke-static {v2}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 75
    :cond_5
    if-eqz v1, :cond_0

    .line 76
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto :goto_0

    .line 77
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_6
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "wall"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 78
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 80
    invoke-static {v1}, Lcom/perm/kate/api/WallMessage;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 81
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    :cond_7
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "wall_publish"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 82
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 83
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 84
    invoke-static {v1}, Lcom/perm/kate/api/WallMessage;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 85
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    :cond_8
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "comment_post"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 86
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_9

    .line 89
    invoke-static {v2}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 90
    :cond_9
    if-eqz v1, :cond_0

    .line 91
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 92
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_a
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "comment_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 93
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 95
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_b

    .line 96
    invoke-static {v2}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 97
    :cond_b
    if-eqz v1, :cond_0

    .line 98
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 99
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_c
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "comment_video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 100
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 101
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_d

    .line 103
    invoke-static {v2}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 104
    :cond_d
    if-eqz v1, :cond_0

    .line 105
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_e
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "reply_comment"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 107
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 108
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_f

    .line 110
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 111
    :cond_f
    if-eqz v1, :cond_0

    .line 112
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 113
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_10
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "reply_comment_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 114
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 115
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_11

    .line 117
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 118
    const-string v7, "photo"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 119
    const-string v7, "photo"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 121
    :cond_11
    if-eqz v1, :cond_0

    .line 122
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 123
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_12
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "mention_comment_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 124
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_13

    .line 127
    invoke-static {v2}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 128
    :cond_13
    if-eqz v1, :cond_0

    .line 129
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 130
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_14
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "mention_comment_video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 131
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 132
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 133
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_15

    .line 134
    invoke-static {v2}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 135
    :cond_15
    if-eqz v1, :cond_0

    .line 136
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 137
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_16
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "reply_comment_video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 138
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 139
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_17

    .line 141
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 142
    const-string v7, "video"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 143
    const-string v7, "video"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 145
    :cond_17
    if-eqz v1, :cond_0

    .line 146
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 147
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_18
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "reply_comment_market"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 148
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 149
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 150
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_19

    .line 151
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 152
    const-string v7, "market"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 153
    const-string v7, "market"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/MarketItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketItem;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    .line 155
    :cond_19
    if-eqz v1, :cond_0

    .line 156
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 157
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_1a
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "reply_topic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 158
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 159
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_1b

    .line 161
    invoke-static {v2}, Lcom/perm/kate/api/GroupTopic;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 162
    :cond_1b
    if-eqz v1, :cond_0

    .line 163
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 164
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_1c
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_post"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 165
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 167
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_1d

    .line 168
    invoke-static {v2}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 169
    :cond_1d
    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 171
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_1e
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_comment"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 172
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 173
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 174
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_1f

    .line 175
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 176
    :cond_1f
    if-eqz v1, :cond_0

    .line 177
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_20
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_comment_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 179
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 181
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_21

    .line 182
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 183
    const-string v7, "photo"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 184
    const-string v7, "photo"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 186
    :cond_21
    if-eqz v1, :cond_0

    .line 187
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_22
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_comment_video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 189
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 190
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_23

    .line 192
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 193
    const-string v7, "video"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 194
    const-string v7, "video"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 196
    :cond_23
    if-eqz v1, :cond_0

    .line 197
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 198
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_24
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_comment_topic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 199
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 201
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_25

    .line 202
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 207
    :cond_25
    if-eqz v1, :cond_0

    .line 208
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 209
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_26
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 210
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 211
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 212
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_27

    .line 213
    invoke-static {v2}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 214
    :cond_27
    if-eqz v1, :cond_0

    .line 215
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 216
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_28
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "like_video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 217
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 218
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 219
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_29

    .line 220
    invoke-static {v2}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 221
    :cond_29
    if-eqz v1, :cond_0

    .line 222
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 223
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_2a
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "copy_post"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 224
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 225
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_2b

    .line 227
    invoke-static {v2}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 228
    :cond_2b
    if-eqz v1, :cond_0

    .line 229
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 230
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_2c
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "copy_photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 231
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 232
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 233
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_2d

    .line 234
    invoke-static {v2}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 235
    :cond_2d
    if-eqz v1, :cond_0

    .line 236
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 237
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    :cond_2e
    iget-object v7, v5, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "copy_video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    const-string v7, "parent"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 239
    .restart local v2    # "jparent":Lorg/json/JSONObject;
    const-string v7, "feedback"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 240
    .restart local v1    # "jfeedback":Lorg/json/JSONObject;
    if-eqz v2, :cond_2f

    .line 241
    invoke-static {v2}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 242
    :cond_2f
    if-eqz v1, :cond_0

    .line 243
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 248
    .end local v1    # "jfeedback":Lorg/json/JSONObject;
    .end local v2    # "jparent":Lorg/json/JSONObject;
    .end local v5    # "n":Lcom/perm/kate/api/Notification;
    .restart local v4    # "n":Lcom/perm/kate/api/Notification;
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public static parseNotifications(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "jnotifications"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Notification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Notification;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 258
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 261
    .local v1, "jgroup":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notification;

    move-result-object v2

    .line 262
    .local v2, "n":Lcom/perm/kate/api/Notification;
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    .end local v1    # "jgroup":Lorg/json/JSONObject;
    .end local v2    # "n":Lcom/perm/kate/api/Notification;
    :cond_2
    return-object v3
.end method
