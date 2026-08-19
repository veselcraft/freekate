.class public Lcom/perm/kate/WearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    .line 44
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_voice_reply"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getPeerId(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    return-wide p0

    :cond_0
    const-wide/32 p0, 0x77359400

    add-long/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 13
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v3, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reply"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "chat_id"

    const-string v5, "from_id"

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_3

    .line 16
    invoke-direct {v0, v2}, Lcom/perm/kate/WearReceiver;->getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 19
    :cond_1
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 20
    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    cmp-long v8, v19, v6

    if-eqz v8, :cond_2

    move-wide/from16 v8, v19

    goto :goto_0

    :cond_2
    move-wide/from16 v8, v21

    .line 22
    :goto_0
    invoke-static {v8, v9, v6, v7}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v8

    .line 23
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v10, v19

    move-wide/from16 v12, v21

    invoke-virtual/range {v8 .. v18}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 24
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v8

    invoke-static {v1, v8, v9}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;J)V

    .line 26
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v8, "read"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 28
    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 29
    invoke-static {v8, v9, v2, v3}, Lcom/perm/kate/WearReceiver;->getPeerId(JJ)J

    move-result-wide v4

    .line 30
    new-instance v6, Lcom/perm/kate/WearReceiver$1;

    invoke-direct {v6, v0, v4, v5}, Lcom/perm/kate/WearReceiver$1;-><init>(Lcom/perm/kate/WearReceiver;J)V

    .line 38
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;J)V

    :cond_4
    return-void
.end method
