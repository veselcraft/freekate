.class public Lcom/perm/kate/push/C2DMReceiver;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "C2DMReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private displayMessageNotification(Ljava/util/Map;Landroid/content/Context;)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "context"

    .line 225
    invoke-static {}, Lcom/perm/kate/push/Push;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 229
    :cond_0
    sget-object v4, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v4}, Lcom/perm/kate/LongPoll;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    .line 233
    :cond_1
    sget-object v4, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v4, v4, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    return v5

    :cond_2
    const-string v4, "body"

    .line 237
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "text"

    if-eqz v6, :cond_3

    .line 238
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    if-nez v4, :cond_4

    const-string v4, ""

    .line 248
    :cond_4
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 249
    new-instance v8, Lorg/json/JSONObject;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    move-object v14, v8

    goto :goto_2

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/push/C2DMReceiver;->getIntentValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_2
    const-string v0, "msg_id"

    .line 256
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v15, 0x0

    if-eqz v8, :cond_6

    .line 258
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :goto_3
    move-wide v12, v8

    goto :goto_4

    .line 261
    :cond_6
    :try_start_1
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 263
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/push/C2DMReceiver;->getIntentValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-wide v12, v15

    .line 268
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 269
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {}, Lcom/perm/kate/push/C2DMReceiver;->getPushAccount()J

    move-result-wide v17

    move-wide v5, v9

    move-wide v9, v12

    move-object v11, v4

    move-wide/from16 v21, v12

    move-wide/from16 v12, v17

    invoke-virtual/range {v8 .. v13}, Lcom/perm/kate/db/DataHelper;->doesMessageExist(JLjava/lang/String;J)Z

    move-result v0

    const-string v8, "c2_doesMessageExist"

    const/4 v9, 0x0

    .line 270
    invoke-static {v5, v6, v8, v9}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    return v5

    :cond_7
    const/4 v5, 0x0

    const-wide/32 v10, 0x77359400

    const-string v0, "from_id"

    .line 277
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "chat_id"

    if-eqz v6, :cond_9

    .line 278
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    invoke-direct {v1, v2}, Lcom/perm/kate/push/C2DMReceiver;->safeParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v14, :cond_8

    .line 281
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v6, v12, v15

    if-eqz v6, :cond_8

    cmp-long v6, v12, v10

    if-lez v6, :cond_8

    sub-long/2addr v12, v10

    .line 283
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v9

    :goto_5
    move-object/from16 v24, v6

    move-object v6, v2

    move-object/from16 v2, v24

    goto :goto_6

    :cond_9
    const-string v6, "uid"

    .line 287
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    invoke-direct {v1, v2}, Lcom/perm/kate/push/C2DMReceiver;->safeParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 289
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-lez v6, :cond_a

    .line 290
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v9

    goto :goto_6

    :cond_a
    move-object v6, v2

    move-object v2, v9

    .line 296
    :goto_6
    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescapeForPush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    if-nez v6, :cond_b

    .line 308
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v10, :cond_b

    iget-object v10, v10, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-boolean v10, v10, Lcom/perm/kate/account/Account;->push_registered:Z

    if-eqz v10, :cond_b

    .line 310
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/perm/kate/MessageNotificationService;

    invoke-direct {v9, v3, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "message_id"

    move-wide/from16 v11, v21

    .line 311
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 312
    invoke-virtual {v9, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 314
    invoke-virtual {v9, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 316
    invoke-virtual {v3, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8

    :cond_b
    move-wide/from16 v11, v21

    .line 319
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v6, v2}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 320
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v6, v2}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 325
    new-instance v0, Lcom/perm/kate/api/Message;

    invoke-direct {v0}, Lcom/perm/kate/api/Message;-><init>()V

    .line 326
    iput-wide v11, v0, Lcom/perm/kate/api/Message;->mid:J

    .line 327
    iput-object v4, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 329
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_7

    :cond_c
    move-wide v3, v15

    :goto_7
    iput-wide v3, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 330
    iput-object v2, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->date:J

    .line 334
    invoke-static {}, Lcom/perm/kate/push/C2DMReceiver;->getPushAccount()J

    move-result-wide v19

    cmp-long v2, v19, v15

    if-eqz v2, :cond_d

    .line 336
    sget-object v17, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v23}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    :cond_d
    const/4 v5, 0x1

    :goto_8
    return v5
.end method

.method private getIntentValues(Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 208
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public static getPushAccount()J
    .locals 3

    .line 342
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 343
    iget-object v2, v1, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-boolean v2, v2, Lcom/perm/kate/account/Account;->push_registered:Z

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private handleMessage(Landroid/content/Context;Ljava/util/Map;)V
    .locals 10

    const-string v0, "Kate.C2DMReceiver"

    const-string v1, "handleMessage"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-boolean v1, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0, p2}, Lcom/perm/kate/push/C2DMReceiver;->getIntentValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "CMD"

    .line 70
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "RST_FULL"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "type"

    .line 74
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "msg"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "chat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v2, "friend"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p2, 0x0

    .line 91
    invoke-static {p1, p2, p2}, Lcom/perm/kate/notifications/FriendNotification;->display(Landroid/content/Context;IZ)V

    goto/16 :goto_4

    :cond_3
    const-string v2, "reply"

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "text"

    const-string v4, "body"

    if-nez v2, :cond_11

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "mention"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "unifymention"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v2, "call"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v2, "friend_found"

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v2, "event_soon"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_4

    :cond_7
    const-string v2, "show_message"

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 167
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    const-string v1, "title"

    .line 168
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 169
    invoke-static {p1, v0, p2}, Lcom/perm/kate/notifications/SecurityNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const-string p1, "repost"

    .line 170
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_4

    :cond_a
    const-string p1, "open_url"

    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_4

    :cond_b
    const-string p1, "deleted_messages"

    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto/16 :goto_4

    :cond_c
    const-string p1, "erase"

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_4

    :cond_d
    const-string p1, "erase_messages"

    .line 182
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_4

    :cond_e
    const-string p1, "erase_message"

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    const-string p1, "unifystory_long_time"

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_4

    .line 196
    :cond_10
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 197
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-direct {p0, p2}, Lcom/perm/kate/push/C2DMReceiver;->getIntentValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "values"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xa

    const-string v0, "NEW_PUSH_TYPE"

    .line 199
    invoke-static {v0, p1, p2}, Lcom/perm/kate/Helper;->reportEvent(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_4

    .line 143
    :cond_11
    :goto_1
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_12
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const-string v0, "from_id"

    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-direct {p0, v0}, Lcom/perm/kate/push/C2DMReceiver;->safeParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v0, "first_name"

    .line 148
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "last_name"

    .line 149
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "group_name"

    .line 150
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    .line 151
    invoke-static/range {v1 .. v9}, Lcom/perm/kate/notifications/RepliesNotification;->display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 84
    :cond_13
    :goto_3
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/push/C2DMReceiver;->displayMessageNotification(Ljava/util/Map;Landroid/content/Context;)Z

    :goto_4
    return-void
.end method

.method static handleRegistrationSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Kate.C2DMReceiver"

    const-string v1, "registration_id=..."

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1}, Lcom/perm/kate/push/Push;->gotNewToken(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/perm/kate/push/Push;->resetRetryInterval()V

    .line 53
    sget-object p1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object p1, p1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/perm/kate/account/Account;->push_registered:Z

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/perm/kate/push/Push;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->startWithWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method private safeParseLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 369
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Kate.C2DMReceiver"

    const-string v2, "onReceive"

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 38
    invoke-direct {p0, p0, v0}, Lcom/perm/kate/push/C2DMReceiver;->handleMessage(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-direct {p0, v0}, Lcom/perm/kate/push/C2DMReceiver;->getIntentValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    .line 377
    invoke-static {p0, p1}, Lcom/perm/kate/push/C2DMReceiver;->handleRegistrationSuccess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
