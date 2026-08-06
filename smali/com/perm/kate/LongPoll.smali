.class public Lcom/perm/kate/LongPoll;
.super Ljava/lang/Object;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/LongPoll$PollState;,
        Lcom/perm/kate/LongPoll$PollThread;,
        Lcom/perm/kate/LongPoll$RequestServerThread;
    }
.end annotation


# instance fields
.field account_id:J

.field group_id:J

.field handler:Landroid/os/Handler;

.field key:Ljava/lang/String;

.field pollThread:Lcom/perm/kate/LongPoll$PollThread;

.field requestServerRunnable:Ljava/lang/Runnable;

.field requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

.field server:Ljava/lang/String;

.field private state:Lcom/perm/kate/LongPoll$PollState;

.field ts:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/perm/kate/LongPoll$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LongPoll$1;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/LongPoll;->group_id:J

    .line 57
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "group_id"    # J

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/perm/kate/LongPoll$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LongPoll$1;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    .line 52
    iput-wide p1, p0, Lcom/perm/kate/LongPoll;->group_id:J

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LongPoll;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopPollThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/LongPoll;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->requestServer()V

    return-void
.end method

.method static synthetic access$202(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LongPoll;
    .param p1, "x1"    # Lcom/perm/kate/LongPoll$PollState;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/LongPoll;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LongPoll;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/perm/kate/LongPoll;->parseUpdates(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/LongPoll;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->sendMessagesBroadcast()V

    return-void
.end method

.method private isLongPullEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 99
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070533

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "key":Ljava/lang/String;
    const-string v4, "0"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "key_int":I
    if-eq v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMessageBroken(Lcom/perm/kate/api/Message;)Z
    .locals 4
    .param p0, "m"    # Lcom/perm/kate/api/Message;

    .prologue
    const-wide/16 v2, 0x0

    .line 502
    iget-wide v0, p0, Lcom/perm/kate/api/Message;->date:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/api/Message;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static longPollNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 447
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "longpoll_notifications"

    const/4 v2, 0x1

    .line 448
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    return v0
.end method

.method private parseUpdates(Lorg/json/JSONObject;)V
    .locals 38
    .param p1, "root"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 282
    const/16 v29, 0x0

    .line 283
    .local v29, "sendMessageBroadcast":Z
    const/4 v4, 0x0

    .line 284
    .local v4, "displayNotification":Z
    const/16 v26, 0x0

    .line 285
    .local v26, "onlineNotification":Z
    const/16 v27, 0x0

    .line 286
    .local v27, "online_user_id":Ljava/lang/Long;
    const/16 v25, 0x0

    .line 287
    .local v25, "m1":Lcom/perm/kate/api/Message;
    :try_start_0
    const-string v5, "updates"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 288
    .local v34, "updates":Lorg/json/JSONArray;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v23

    if-ge v0, v5, :cond_d

    .line 289
    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v32

    .line 290
    .local v32, "update":Lorg/json/JSONArray;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v33

    .line 291
    .local v33, "update_type":I
    sparse-switch v33, :sswitch_data_0

    .line 288
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 293
    :sswitch_0
    const-string v5, "Kate.LongPoll"

    const-string v7, "message deleted"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 440
    .end local v23    # "i":I
    .end local v32    # "update":Lorg/json/JSONArray;
    .end local v33    # "update_type":I
    .end local v34    # "updates":Lorg/json/JSONArray;
    :catch_0
    move-exception v31

    .line 441
    .local v31, "th":Ljava/lang/Throwable;
    invoke-static/range {v31 .. v31}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 442
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    .end local v31    # "th":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-void

    .line 296
    .restart local v23    # "i":I
    .restart local v32    # "update":Lorg/json/JSONArray;
    .restart local v33    # "update_type":I
    .restart local v34    # "updates":Lorg/json/JSONArray;
    :sswitch_1
    :try_start_1
    const-string v5, "Kate.LongPoll"

    const-string v7, "message flags replaced"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    :sswitch_2
    const-string v5, "Kate.LongPoll"

    const-string v7, "message flags changed"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 301
    .local v19, "flag":I
    sget v5, Lcom/perm/kate/api/Message;->UNREAD:I

    and-int v5, v5, v19

    if-eqz v5, :cond_2

    .line 302
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v6, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/LongPoll;->account_id:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/db/DataHelper;->setMessageReadState(Ljava/util/ArrayList;ZJJ)J

    .line 305
    const/16 v29, 0x1

    .line 307
    .end local v6    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    sget v5, Lcom/perm/kate/api/Message;->DELETED:I

    and-int v5, v5, v19

    if-eqz v5, :cond_0

    .line 308
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/LongPoll;->account_id:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/db/DataHelper;->deleteMessage(JJJ)Z

    .line 309
    const/16 v29, 0x1

    goto :goto_1

    .line 314
    .end local v19    # "flag":I
    :sswitch_3
    const-string v5, "Kate.LongPoll"

    const-string v7, "message flags reset"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 316
    .restart local v19    # "flag":I
    sget v5, Lcom/perm/kate/api/Message;->UNREAD:I

    and-int v5, v5, v19

    if-eqz v5, :cond_0

    .line 317
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .restart local v6    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/LongPoll;->account_id:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/db/DataHelper;->setMessageReadState(Ljava/util/ArrayList;ZJJ)J

    .line 320
    const/16 v29, 0x1

    .line 321
    goto/16 :goto_1

    .line 326
    .end local v6    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "flag":I
    :sswitch_4
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    .line 331
    .local v28, "peer_id":I
    const-wide/16 v36, 0x0

    .local v36, "user_id":J
    const-wide/16 v20, 0x0

    .line 332
    .local v20, "chat_id":J
    const v5, 0x77359400

    move/from16 v0, v28

    if-le v0, v5, :cond_3

    .line 333
    const v5, 0x77359400

    sub-int v5, v28, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    .line 337
    :goto_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-static {v5, v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 339
    .local v8, "thread_id":J
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/LongPoll;->account_id:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/db/DataHelper;->setMessagesReadState(JJJ)J

    .line 340
    const/16 v29, 0x1

    .line 341
    goto/16 :goto_1

    .line 335
    .end local v8    # "thread_id":J
    :cond_3
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v36, v0

    goto :goto_3

    .line 344
    .end local v20    # "chat_id":J
    .end local v28    # "peer_id":I
    .end local v36    # "user_id":J
    :sswitch_5
    const-string v5, "Kate.LongPoll"

    const-string v7, "message created"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static/range {v32 .. v32}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Message;

    move-result-object v24

    .line 347
    .local v24, "m":Lcom/perm/kate/api/Message;
    move-object/from16 v0, v24

    iget-boolean v5, v0, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v5, :cond_4

    move-object/from16 v0, v24

    iget-boolean v5, v0, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v5, :cond_4

    .line 348
    sget-object v5, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/perm/kate/Counter;->increase(I)V

    .line 349
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v5, v12, v13}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/perm/kate/LongPoll;->account_id:J

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/LongPoll;->group_id:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v11 .. v18}, Lcom/perm/kate/db/DataHelper;->increaseUnreadCountInChat(JJIJ)V

    .line 352
    :cond_4
    move-object/from16 v0, v24

    iget-boolean v5, v0, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v5, :cond_5

    .line 353
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/LongPoll;->account_id:J

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/perm/kate/LongPoll;->group_id:J

    move-object/from16 v11, v24

    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    .line 355
    move-object/from16 v0, v24

    iget-wide v10, v0, Lcom/perm/kate/api/Message;->mid:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/perm/kate/LongPoll;->refreshMessageInThread(J)V

    .line 356
    const/16 v29, 0x1

    .line 358
    :cond_5
    move-object/from16 v0, v24

    iget-boolean v5, v0, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v5, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/LongPoll;->group_id:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_6

    .line 362
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/perm/kate/LongPoll;->playDefaultNotificationSound(Z)V

    .line 363
    :cond_6
    sget-wide v10, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_7

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v5, :cond_7

    sget-wide v10, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_7

    .line 364
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/perm/kate/LongPoll;->playDefaultNotificationSound(Z)V

    goto/16 :goto_1

    .line 367
    :cond_7
    sget-wide v10, Lcom/perm/kate/KApplication;->user_in_dialog:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_8

    sget-wide v10, Lcom/perm/kate/KApplication;->user_in_dialog:J

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/perm/kate/api/Message;->uid:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_8

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-nez v5, :cond_8

    .line 368
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/perm/kate/LongPoll;->playDefaultNotificationSound(Z)V

    goto/16 :goto_1

    .line 373
    :cond_8
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/LongPoll;->group_id:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_9

    .line 374
    const/4 v4, 0x1

    .line 375
    :cond_9
    move-object/from16 v25, v24

    .line 376
    goto/16 :goto_1

    .line 378
    .end local v24    # "m":Lcom/perm/kate/api/Message;
    :sswitch_6
    const-string v5, "Kate.LongPoll"

    const-string v7, "user online"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 380
    .restart local v19    # "flag":I
    if-nez v19, :cond_0

    .line 381
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v36

    .line 382
    .restart local v36    # "user_id":J
    const-wide/16 v10, 0x0

    cmp-long v5, v36, v10

    if-gez v5, :cond_a

    .line 383
    const-wide/16 v10, -0x1

    mul-long v36, v36, v10

    .line 384
    :cond_a
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v7, 0x1

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1, v7}, Lcom/perm/kate/db/DataHelper;->updateUserOnlineStatus(JZ)Z

    .line 385
    const/16 v29, 0x1

    .line 386
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/perm/utils/OnlineNotificationsHelper;->isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    const/16 v26, 0x1

    .line 388
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    goto/16 :goto_1

    .line 394
    .end local v19    # "flag":I
    .end local v36    # "user_id":J
    :sswitch_7
    const-string v5, "Kate.LongPoll"

    const-string v7, "user offline"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 396
    .restart local v19    # "flag":I
    if-eqz v19, :cond_b

    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_0

    .line 397
    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v36

    .line 398
    .restart local v36    # "user_id":J
    const-wide/16 v10, 0x0

    cmp-long v5, v36, v10

    if-gez v5, :cond_c

    .line 399
    const-wide/16 v10, -0x1

    mul-long v36, v36, v10

    .line 400
    :cond_c
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v7, 0x0

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1, v7}, Lcom/perm/kate/db/DataHelper;->updateUserOnlineStatus(JZ)Z

    .line 401
    const/16 v29, 0x1

    .line 402
    goto/16 :goto_1

    .line 406
    .end local v19    # "flag":I
    .end local v36    # "user_id":J
    :sswitch_8
    const-string v5, "Kate.LongPoll"

    const-string v7, "user start typing"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v36

    .line 408
    .restart local v36    # "user_id":J
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2, v5}, Lcom/perm/kate/LongPoll;->sendTypingBroadcast(JLjava/lang/Long;)V

    goto/16 :goto_1

    .line 412
    .end local v36    # "user_id":J
    :sswitch_9
    const-string v5, "Kate.LongPoll"

    const-string v7, "user start typing in chat"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v36

    .line 414
    .restart local v36    # "user_id":J
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v20

    .line 415
    .restart local v20    # "chat_id":J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2, v5}, Lcom/perm/kate/LongPoll;->sendTypingBroadcast(JLjava/lang/Long;)V

    goto/16 :goto_1

    .line 420
    .end local v20    # "chat_id":J
    .end local v32    # "update":Lorg/json/JSONArray;
    .end local v33    # "update_type":I
    .end local v36    # "user_id":J
    :cond_d
    if-eqz v29, :cond_e

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/LongPoll;->sendMessagesBroadcast()V

    .line 422
    :cond_e
    if-eqz v4, :cond_10

    .line 423
    invoke-static {}, Lcom/perm/kate/LongPoll;->longPollNotificationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 424
    const/16 v30, 0x0

    .line 425
    .local v30, "text":Ljava/lang/String;
    const/16 v22, 0x0

    .line 426
    .local v22, "from_id":Ljava/lang/Long;
    const/16 v20, 0x0

    .line 427
    .local v20, "chat_id":Ljava/lang/Long;
    if-eqz v25, :cond_f

    .line 428
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 429
    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 430
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 433
    :cond_f
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v5, v0, v1, v2}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 434
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v5, v0, v1, v2}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 437
    .end local v20    # "chat_id":Ljava/lang/Long;
    .end local v22    # "from_id":Ljava/lang/Long;
    .end local v30    # "text":Ljava/lang/String;
    :cond_10
    if-eqz v26, :cond_1

    .line 438
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-static {v5, v0, v7}, Lcom/perm/kate/notifications/UserOnlineNotification;->display(Landroid/content/Context;Ljava/lang/Long;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x3d -> :sswitch_8
        0x3e -> :sswitch_9
    .end sparse-switch
.end method

.method private playDefaultNotificationSound(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 455
    :try_start_0
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "open_dialog_notification"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 459
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 461
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 462
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 463
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 464
    .local v1, "r":Landroid/media/Ringtone;
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "r":Landroid/media/Ringtone;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 466
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private refreshMessageInThread(J)V
    .locals 1
    .param p1, "message_id"    # J

    .prologue
    .line 472
    new-instance v0, Lcom/perm/kate/LongPoll$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/LongPoll$2;-><init>(Lcom/perm/kate/LongPoll;J)V

    .line 497
    invoke-virtual {v0}, Lcom/perm/kate/LongPoll$2;->start()V

    .line 498
    return-void
.end method

.method private requestServer()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopRequestServerThread()V

    .line 80
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    new-instance v0, Lcom/perm/kate/LongPoll$RequestServerThread;

    invoke-direct {v0, p0}, Lcom/perm/kate/LongPoll$RequestServerThread;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    .line 82
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll$RequestServerThread;->start()V

    .line 83
    return-void
.end method

.method private sendMessagesBroadcast()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.intent.action.new_messages"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method private sendTypingBroadcast(JLjava/lang/Long;)V
    .locals 3
    .param p1, "user_id"    # J
    .param p3, "chat_id"    # Ljava/lang/Long;

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 516
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.intent.action.typing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 518
    if-eqz p3, :cond_0

    .line 519
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 520
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 521
    return-void
.end method

.method private stopPollThread()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll$PollThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    .line 116
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll$PollThread;->interrupt()V

    .line 118
    :cond_0
    return-void
.end method

.method private stopRequestServerThread()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll$RequestServerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method


# virtual methods
.method public checkSettings()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->isLongPullEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/perm/kate/LongPoll;->start()V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/LongPoll;->stop()V

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->isLongPullEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    if-eq v0, v1, :cond_0

    .line 66
    const-string v0, "Kate.LongPoll"

    const-string v1, "Starting LongPoll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 68
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->requestServer()V

    .line 70
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "running_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->display()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "Kate.LongPoll"

    const-string v1, "Stopping LongPoll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopPollThread()V

    .line 108
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopRequestServerThread()V

    .line 109
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 110
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->cancel()V

    .line 111
    return-void
.end method
