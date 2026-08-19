.class public Lcom/perm/kate/LongPoll;
.super Ljava/lang/Object;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/LongPoll$PollState;
    }
.end annotation


# instance fields
.field account_id:J

.field executor:Ljava/util/concurrent/ExecutorService;

.field group_id:J

.field handler:Landroid/os/Handler;

.field inline_bot_buttons:Landroid/util/LruCache;

.field key:Ljava/lang/String;

.field messages_to_refresh:Ljava/util/List;

.field pollThread:Lcom/perm/kate/LongPoll$PollThread;

.field requestServerRunnable:Ljava/lang/Runnable;

.field requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

.field server:Ljava/lang/String;

.field private state:Lcom/perm/kate/LongPoll$PollState;

.field ts:Ljava/lang/Long;


# direct methods
.method public static synthetic $r8$lambda$mCFPMmd2vQqOeu4wIj-pAi3kL1M(Lcom/perm/kate/LongPoll;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->lambda$addToRefreshQueue$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/perm/kate/LongPoll$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LongPoll$1;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    .line 605
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->messages_to_refresh:Ljava/util/List;

    .line 654
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->inline_bot_buttons:Landroid/util/LruCache;

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/perm/kate/LongPoll;->group_id:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/perm/kate/LongPoll$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LongPoll$1;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    .line 605
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->messages_to_refresh:Ljava/util/List;

    .line 654
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->inline_bot_buttons:Landroid/util/LruCache;

    .line 62
    iput-wide p1, p0, Lcom/perm/kate/LongPoll;->group_id:J

    return-void
.end method

.method static synthetic access$002(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/LongPoll;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopPollThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/LongPoll;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->requestServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/LongPoll;Lorg/json/JSONObject;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/LongPoll;->parseUpdates(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/LongPoll;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->sendMessagesBroadcast()V

    return-void
.end method

.method private addToRefreshQueue(J)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->messages_to_refresh:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object p1, p0, Lcom/perm/kate/LongPoll;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    .line 612
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/LongPoll;->executor:Ljava/util/concurrent/ExecutorService;

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/LongPoll;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/perm/kate/LongPoll$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/perm/kate/LongPoll$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/LongPoll;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private getFirstNotMe(Lorg/json/JSONArray;)J
    .locals 6

    const/4 v0, 0x0

    .line 539
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 540
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    .line 541
    iget-wide v3, p0, Lcom/perm/kate/LongPoll;->account_id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private hasAttachments(Lorg/json/JSONArray;Lcom/perm/kate/api/Message;)Z
    .locals 2

    const/4 p2, 0x7

    const/4 v0, 0x1

    .line 550
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v1, "attach1_type"

    .line 553
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v1, "reply"

    .line 556
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "fwd"

    .line 559
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    const/4 p2, 0x6

    .line 562
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v1, "source_act"

    .line 566
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 571
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 572
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private isLongPullEnabled()Z
    .locals 3

    .line 109
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    .line 111
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMessageBroken(Lcom/perm/kate/api/Message;)Z
    .locals 5

    .line 658
    iget-wide v0, p0, Lcom/perm/kate/api/Message;->date:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/api/Message;->uid:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addToRefreshQueue$0()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->messages_to_refresh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/LongPoll;->messages_to_refresh:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 620
    iget-object v1, p0, Lcom/perm/kate/LongPoll;->messages_to_refresh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 621
    invoke-direct {p0, v0}, Lcom/perm/kate/LongPoll;->refreshMessageInThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static longPollNotificationsEnabled()Z
    .locals 3

    .line 579
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "longpoll_notifications"

    const/4 v2, 0x1

    .line 580
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private parseUpdates(Lorg/json/JSONObject;)V
    .locals 29

    move-object/from16 v1, p0

    :try_start_0
    const-string v0, "updates"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v2, p1

    .line 318
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 319
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-ge v6, v0, :cond_21

    const/4 v12, 0x1

    .line 322
    :try_start_2
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v14, "Kate.LongPoll"

    if-eqz v13, :cond_1f

    if-eq v13, v12, :cond_1e

    const/4 v15, 0x2

    if-eq v13, v15, :cond_1c

    const/4 v4, 0x3

    if-eq v13, v4, :cond_1b

    const/4 v4, 0x4

    const-wide/16 v17, 0x0

    if-eq v13, v4, :cond_f

    const/4 v4, 0x5

    if-eq v13, v4, :cond_d

    const/4 v4, 0x7

    const v5, 0x77359400

    if-eq v13, v4, :cond_b

    const/16 v4, 0x8

    const-wide/16 v19, -0x1

    if-eq v13, v4, :cond_9

    const/16 v4, 0x9

    if-eq v13, v4, :cond_6

    const/16 v4, 0x3f

    const-wide/32 v19, 0x77359400

    if-eq v13, v4, :cond_3

    const/16 v4, 0x40

    if-eq v13, v4, :cond_1

    const/16 v4, 0x50

    if-eq v13, v4, :cond_0

    goto/16 :goto_7

    .line 499
    :cond_0
    :try_start_3
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 500
    sget-object v4, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    invoke-virtual {v4, v0}, Lcom/perm/kate/Counter;->setValue(I)V

    goto/16 :goto_7

    :cond_1
    const-string v4, "user start audiomessage in peer_id "

    .line 487
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 489
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v13, 0x0

    .line 491
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v13, v0

    if-le v4, v5, :cond_2

    int-to-long v4, v4

    sub-long v4, v4, v19

    .line 494
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 495
    :goto_1
    invoke-direct {v1, v13, v14, v0, v12}, Lcom/perm/kate/LongPoll;->sendTypingBroadcast(JLjava/lang/Long;Z)V

    goto/16 :goto_7

    .line 473
    :cond_3
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    .line 475
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 478
    invoke-direct {v1, v0}, Lcom/perm/kate/LongPoll;->getFirstNotMe(Lorg/json/JSONArray;)J

    move-result-wide v12

    cmp-long v0, v12, v17

    if-nez v0, :cond_4

    goto/16 :goto_7

    :cond_4
    cmp-long v0, v4, v19

    if-lez v0, :cond_5

    sub-long v4, v4, v19

    .line 482
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x0

    .line 483
    invoke-direct {v1, v12, v13, v0, v4}, Lcom/perm/kate/LongPoll;->sendTypingBroadcast(JLjava/lang/Long;Z)V

    goto/16 :goto_7

    :cond_6
    const-string v4, "user offline"

    .line 458
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    if-ne v4, v12, :cond_20

    .line 461
    :cond_7
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-gez v0, :cond_8

    mul-long v4, v4, v19

    .line 464
    :cond_8
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v13, 0x0

    invoke-virtual {v0, v4, v5, v13}, Lcom/perm/kate/db/DataHelper;->updateUserOnlineStatus(JZ)Z

    goto/16 :goto_4

    :cond_9
    const-string v4, "user online"

    .line 444
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-gez v0, :cond_a

    mul-long v4, v4, v19

    .line 449
    :cond_a
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v4, v5, v12}, Lcom/perm/kate/db/DataHelper;->updateUserOnlineStatus(JZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 451
    :try_start_4
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/perm/utils/OnlineNotificationsHelper;->isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_e

    .line 453
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v7, 0x1

    const/4 v10, 0x1

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    const/4 v7, 0x1

    const/4 v10, 0x1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 359
    :cond_b
    :try_start_6
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    if-le v0, v5, :cond_c

    sub-int/2addr v0, v5

    int-to-long v4, v0

    move-wide/from16 v27, v4

    move-wide/from16 v4, v17

    move-wide/from16 v17, v27

    goto :goto_3

    :cond_c
    int-to-long v4, v0

    .line 370
    :goto_3
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v20

    .line 372
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, v1, Lcom/perm/kate/LongPoll;->account_id:J

    iget-wide v13, v1, Lcom/perm/kate/LongPoll;->group_id:J

    move-wide/from16 v22, v4

    move-wide/from16 v24, v13

    invoke-virtual/range {v19 .. v25}, Lcom/perm/kate/db/DataHelper;->setMessagesReadState(JJJ)J

    goto :goto_4

    .line 431
    :cond_d
    invoke-static {v0}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Message;

    move-result-object v0

    .line 433
    iget-boolean v4, v0, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v4, :cond_20

    .line 436
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, v0, Lcom/perm/kate/api/Message;->mid:J

    iget-wide v13, v1, Lcom/perm/kate/LongPoll;->account_id:J

    move-wide/from16 v16, v13

    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->group_id:J

    iget-object v0, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    move-wide/from16 v20, v4

    move-wide/from16 v22, v16

    move-wide/from16 v24, v12

    move-object/from16 v26, v0

    invoke-virtual/range {v19 .. v26}, Lcom/perm/kate/db/DataHelper;->updateMessageText(JJJLjava/lang/String;)Z

    :cond_e
    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_f
    const-string v4, "message created"

    .line 377
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/perm/kate/api/Message;->broken_id:Ljava/lang/Long;

    .line 379
    :cond_10
    invoke-static {v0}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Message;

    move-result-object v4

    .line 381
    iget-boolean v5, v4, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v5, :cond_11

    iget-boolean v5, v4, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v5, :cond_11

    .line 387
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, v4, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    iget-wide v12, v4, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v20

    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->account_id:J

    const/16 v24, 0x1

    iget-wide v14, v1, Lcom/perm/kate/LongPoll;->group_id:J

    move-wide/from16 v22, v12

    move-wide/from16 v25, v14

    invoke-virtual/range {v19 .. v26}, Lcom/perm/kate/db/DataHelper;->increaseUnreadCountInChat(JJIJ)V

    .line 390
    :cond_11
    iget-boolean v5, v4, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v5, :cond_15

    .line 391
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->account_id:J

    const/16 v23, 0x1

    iget-wide v14, v1, Lcom/perm/kate/LongPoll;->group_id:J

    move-object/from16 v20, v4

    move-wide/from16 v21, v12

    move-wide/from16 v24, v14

    invoke-virtual/range {v19 .. v25}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    .line 396
    invoke-direct {v1, v0, v4}, Lcom/perm/kate/LongPoll;->hasAttachments(Lorg/json/JSONArray;Lcom/perm/kate/api/Message;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 397
    iget-wide v12, v4, Lcom/perm/kate/api/Message;->mid:J

    invoke-direct {v1, v12, v13}, Lcom/perm/kate/LongPoll;->addToRefreshQueue(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 400
    :cond_12
    :try_start_7
    iget-object v5, v4, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz v5, :cond_14

    .line 402
    iget-boolean v7, v5, Lcom/perm/kate/api/BotKeyboard;->inline:Z

    if-nez v7, :cond_13

    .line 403
    iget-wide v12, v4, Lcom/perm/kate/api/Message;->uid:J

    iget-object v7, v4, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-direct {v1, v12, v13, v7, v5}, Lcom/perm/kate/LongPoll;->sendBotButtonsBroadcast(JLjava/lang/Long;Lcom/perm/kate/api/BotKeyboard;)V

    goto :goto_5

    .line 406
    :cond_13
    iget-object v5, v1, Lcom/perm/kate/LongPoll;->inline_bot_buttons:Landroid/util/LruCache;

    iget-wide v12, v4, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v12, v4, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    invoke-virtual {v5, v7, v12}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_14
    :goto_5
    const/4 v7, 0x1

    .line 408
    :cond_15
    :try_start_8
    iget-boolean v5, v4, Lcom/perm/kate/api/Message;->is_out:Z

    if-eqz v5, :cond_16

    goto/16 :goto_7

    .line 411
    :cond_16
    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->group_id:J

    cmp-long v5, v12, v17

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    .line 412
    invoke-direct {v1, v5}, Lcom/perm/kate/LongPoll;->playDefaultNotificationSound(Z)V

    .line 413
    :cond_17
    sget-wide v12, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    cmp-long v5, v12, v17

    if-eqz v5, :cond_18

    iget-object v5, v4, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-nez v5, :cond_18

    const/4 v5, 0x0

    .line 414
    invoke-direct {v1, v5}, Lcom/perm/kate/LongPoll;->playDefaultNotificationSound(Z)V

    goto/16 :goto_7

    .line 417
    :cond_18
    sget-wide v12, Lcom/perm/kate/KApplication;->user_in_dialog:J

    cmp-long v5, v12, v17

    if-eqz v5, :cond_19

    iget-wide v14, v4, Lcom/perm/kate/api/Message;->uid:J

    cmp-long v5, v12, v14

    if-nez v5, :cond_19

    iget-object v5, v4, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-nez v5, :cond_19

    const/4 v5, 0x0

    .line 418
    invoke-direct {v1, v5}, Lcom/perm/kate/LongPoll;->playDefaultNotificationSound(Z)V

    goto/16 :goto_7

    .line 423
    :cond_19
    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->group_id:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    cmp-long v5, v12, v17

    if-nez v5, :cond_1a

    const/4 v8, 0x1

    .line 427
    :cond_1a
    :try_start_9
    invoke-static {v0}, Lcom/perm/kate/api/Message;->parseLongpollAttachments(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v4, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v9, v4

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v4

    goto/16 :goto_6

    :cond_1b
    :try_start_a
    const-string v4, "message flags reset"

    .line 347
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 349
    sget v5, Lcom/perm/kate/api/Message;->UNREAD:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    .line 350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    .line 351
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/16 v21, 0x1

    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->account_id:J

    iget-wide v14, v1, Lcom/perm/kate/LongPoll;->group_id:J

    move-object/from16 v20, v4

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-virtual/range {v19 .. v25}, Lcom/perm/kate/db/DataHelper;->setMessageReadState(Ljava/util/ArrayList;ZJJ)J

    goto/16 :goto_4

    :cond_1c
    const-string v4, "message flags changed"

    .line 332
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 334
    sget v5, Lcom/perm/kate/api/Message;->UNREAD:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_1d

    .line 335
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    .line 336
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/16 v21, 0x0

    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->account_id:J

    iget-wide v14, v1, Lcom/perm/kate/LongPoll;->group_id:J

    move-object/from16 v20, v5

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-virtual/range {v19 .. v25}, Lcom/perm/kate/db/DataHelper;->setMessageReadState(Ljava/util/ArrayList;ZJJ)J

    const/4 v7, 0x1

    .line 340
    :cond_1d
    sget v5, Lcom/perm/kate/api/Message;->DELETED:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    .line 341
    sget-object v19, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v20

    iget-wide v12, v1, Lcom/perm/kate/LongPoll;->account_id:J

    iget-wide v14, v1, Lcom/perm/kate/LongPoll;->group_id:J

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-virtual/range {v19 .. v25}, Lcom/perm/kate/db/DataHelper;->deleteMessage(JJJ)Z

    goto/16 :goto_4

    :cond_1e
    const-string v0, "message flags replaced"

    .line 329
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1f
    const-string v0, "message deleted"

    .line 326
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 505
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_20
    :goto_7
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_21
    if-eqz v7, :cond_22

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/LongPoll;->sendMessagesBroadcast()V

    :cond_22
    if-eqz v8, :cond_26

    .line 512
    invoke-static {}, Lcom/perm/kate/LongPoll;->longPollNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, ""

    if-eqz v9, :cond_24

    .line 517
    iget-object v0, v9, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 518
    iget-wide v3, v9, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 519
    iget-object v3, v9, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 520
    iget-object v5, v9, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v6, v9, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_24
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 525
    :cond_25
    :goto_8
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v4, v3}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 526
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v4, v3}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_26
    if-eqz v10, :cond_27

    .line 530
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v11, v3}, Lcom/perm/kate/notifications/UserOnlineNotification;->display(Landroid/content/Context;Ljava/lang/Long;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v2, p1

    .line 533
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_27
    :goto_a
    return-void
.end method

.method private playDefaultNotificationSound(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 587
    :try_start_0
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "open_dialog_notification"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 591
    :cond_1
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 593
    :cond_2
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 595
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    .line 596
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 598
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 599
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private refreshMessageInThread(Ljava/util/ArrayList;)V
    .locals 4

    .line 626
    iget-wide v0, p0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    new-instance v0, Lcom/perm/kate/LongPoll$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/LongPoll$2;-><init>(Lcom/perm/kate/LongPoll;Landroid/app/Activity;)V

    .line 648
    iget-wide v2, p0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/perm/kate/session/Session;->getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private requestServer()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopRequestServerThread()V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    new-instance v0, Lcom/perm/kate/LongPoll$RequestServerThread;

    invoke-direct {v0, p0}, Lcom/perm/kate/LongPoll$RequestServerThread;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendBotButtonsBroadcast(JLjava/lang/Long;Lcom/perm/kate/api/BotKeyboard;)V
    .locals 2

    .line 683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.bot_buttons"

    .line 684
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    .line 685
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p1, "chat_id"

    .line 687
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const-string p1, "keyboard"

    .line 688
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 689
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendMessagesBroadcast()V
    .locals 2

    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.new_messages"

    .line 663
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendTypingBroadcast(JLjava/lang/Long;Z)V
    .locals 2

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.typing"

    .line 672
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    .line 673
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p1, "chat_id"

    .line 675
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const-string p1, "audiomessage"

    .line 676
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private stopPollThread()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private stopRequestServerThread()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->requestServerThread:Lcom/perm/kate/LongPoll$RequestServerThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkSettings()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->isLongPullEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/perm/kate/LongPoll;->start()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/LongPoll;->stop()V

    :goto_0
    return-void
.end method

.method public isStarted()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->isLongPullEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_1

    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const-string v0, "Kate.LongPoll"

    const-string v2, "Starting LongPoll"

    .line 76
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object v1, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->requestServer()V

    .line 80
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "running_notification"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->display()V

    :cond_3
    return-void
.end method

.method public stop()V
    .locals 5

    const-string v0, "Kate.LongPoll"

    const-string v1, "Stopping LongPoll"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopPollThread()V

    .line 118
    invoke-direct {p0}, Lcom/perm/kate/LongPoll;->stopRequestServerThread()V

    .line 119
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    iput-object v0, p0, Lcom/perm/kate/LongPoll;->state:Lcom/perm/kate/LongPoll$PollState;

    .line 120
    iget-wide v0, p0, Lcom/perm/kate/LongPoll;->group_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 121
    invoke-static {}, Lcom/perm/kate/notifications/RunningNotification;->cancel()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->inline_bot_buttons:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 123
    iget-object v0, p0, Lcom/perm/kate/LongPoll;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/perm/kate/LongPoll;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
