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

.field public topic:Lcom/perm/kate/api/GroupTopic;

.field public type:Ljava/lang/String;

.field public video:Lcom/perm/kate/api/Video;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "items"

    .line 285
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 288
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 289
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "id"

    .line 292
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "from_id"

    .line 293
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 295
    new-instance v4, Lcom/perm/kate/api/IdsPair;

    invoke-direct {v4}, Lcom/perm/kate/api/IdsPair;-><init>()V

    .line 296
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/perm/kate/api/IdsPair;->id:J

    .line 297
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/perm/kate/api/IdsPair;->owner_id:J

    .line 298
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "items"

    .line 272
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 275
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 276
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "from_id"

    .line 278
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notification;
    .locals 12

    const-string v0, "topic"

    const-string v1, "market"

    const/4 v2, 0x0

    .line 54
    :try_start_0
    new-instance v3, Lcom/perm/kate/api/Notification;

    invoke-direct {v3}, Lcom/perm/kate/api/Notification;-><init>()V

    const-string v4, "type"

    .line 55
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "date"

    .line 56
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    .line 57
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v5, "follow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "feedback"

    if-eqz v4, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 59
    iput-object v2, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    if-eqz p0, :cond_2e

    .line 61
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 62
    :cond_0
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v6, "friend_accepted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 64
    iput-object v2, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    if-eqz p0, :cond_2e

    .line 66
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 67
    :cond_1
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v6, "mention"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 69
    iput-object v2, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    if-eqz p0, :cond_2e

    .line 71
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 72
    :cond_2
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v6, "mention_comments"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    const-string v7, "parent"

    if-eqz v4, :cond_4

    .line 73
    :try_start_2
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_3

    .line 76
    invoke-static {v0}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_3
    if-eqz p0, :cond_2e

    .line 78
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    :cond_4
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "wall"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 80
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 82
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 83
    :cond_5
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "wall_publish"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 86
    invoke-static {p0}, Lcom/perm/kate/api/WallMessage;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 87
    :cond_6
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "comment_post"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 88
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_7

    .line 91
    invoke-static {v0}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_7
    if-eqz p0, :cond_2e

    .line 93
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    :cond_8
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "comment_photo"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 95
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_9

    .line 98
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_9
    if-eqz p0, :cond_2e

    .line 100
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 101
    :cond_a
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "comment_video"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 102
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_b

    .line 105
    invoke-static {v0}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_b
    if-eqz p0, :cond_2e

    .line 107
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    :cond_c
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v8, "reply_comment"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-eqz v4, :cond_e

    .line 109
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_d

    .line 112
    invoke-static {v0, v8}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_d
    if-eqz p0, :cond_2e

    .line 114
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :cond_e
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v9, "reply_comment_photo"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, "photo"

    if-eqz v4, :cond_10

    .line 116
    :try_start_3
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_f

    .line 119
    invoke-static {v0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 120
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 121
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    :cond_f
    if-eqz p0, :cond_2e

    .line 124
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    :cond_10
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v10, "mention_comment_photo"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 126
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_11

    .line 129
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_11
    if-eqz p0, :cond_2e

    .line 131
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 132
    :cond_12
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v10, "mention_comment_video"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 133
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_13

    .line 136
    invoke-static {v0}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_13
    if-eqz p0, :cond_2e

    .line 138
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 139
    :cond_14
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v10, "reply_comment_video"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, "video"

    if-eqz v4, :cond_16

    .line 140
    :try_start_4
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_15

    .line 143
    invoke-static {v0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 144
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 145
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    :cond_15
    if-eqz p0, :cond_2e

    .line 148
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 149
    :cond_16
    iget-object v4, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v11, "reply_comment_market"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 150
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_17

    .line 153
    invoke-static {v0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 154
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 155
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/MarketItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketItem;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    :cond_17
    if-eqz p0, :cond_2e

    .line 158
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    :cond_18
    iget-object v1, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "reply_topic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 160
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_19

    .line 163
    invoke-static {v0}, Lcom/perm/kate/api/GroupTopic;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_19
    if-eqz p0, :cond_2e

    .line 165
    invoke-static {p0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 166
    :cond_1a
    iget-object v1, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_post"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 167
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_1b

    .line 170
    invoke-static {v0}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_1b
    if-eqz p0, :cond_2e

    .line 172
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 173
    :cond_1c
    iget-object v1, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 174
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_1d

    .line 177
    invoke-static {v0, v8}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_1d
    if-eqz p0, :cond_2e

    .line 179
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :cond_1e
    iget-object v1, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment_photo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 181
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_1f

    .line 184
    invoke-static {v0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 185
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 186
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    :cond_1f
    if-eqz p0, :cond_2e

    .line 189
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    :cond_20
    iget-object v1, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment_video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 191
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_21

    .line 194
    invoke-static {v0, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v1

    iput-object v1, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 195
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 196
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    :cond_21
    if-eqz p0, :cond_2e

    .line 199
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 200
    :cond_22
    iget-object v1, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment_topic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 201
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 202
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v1, :cond_23

    .line 204
    invoke-static {v1, v6}, Lcom/perm/kate/api/Comment;->parseNotificationComment(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Comment;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    .line 205
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 206
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/api/GroupTopic;->parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->topic:Lcom/perm/kate/api/GroupTopic;

    :cond_23
    if-eqz p0, :cond_2e

    .line 209
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 210
    :cond_24
    iget-object v0, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 211
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_25

    .line 214
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_25
    if-eqz p0, :cond_2e

    .line 216
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto/16 :goto_0

    .line 217
    :cond_26
    iget-object v0, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 218
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_27

    .line 221
    invoke-static {v0}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_27
    if-eqz p0, :cond_2e

    .line 223
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getProfiles(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_28
    iget-object v0, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "copy_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 225
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_29

    .line 228
    invoke-static {v0}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_29
    if-eqz p0, :cond_2e

    .line 230
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_2a
    iget-object v0, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "copy_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 232
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_2b

    .line 235
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_2b
    if-eqz p0, :cond_2e

    .line 237
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_2c
    iget-object v0, v3, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "copy_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 239
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v0, :cond_2d

    .line 242
    invoke-static {v0}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    :cond_2d
    if-eqz p0, :cond_2e

    .line 244
    invoke-static {p0}, Lcom/perm/kate/api/Notification;->getCopies(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2e
    :goto_0
    return-object v3

    :catch_0
    move-exception p0

    .line 250
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 251
    invoke-static {p0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static parseNotifications(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 259
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 260
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 263
    invoke-static {v2}, Lcom/perm/kate/api/Notification;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notification;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
