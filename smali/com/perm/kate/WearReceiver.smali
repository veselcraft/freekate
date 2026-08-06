.class public Lcom/perm/kate/WearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-static {p1}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "remoteInput":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "extra_voice_reply"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    const-string v3, "reply"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/perm/kate/WearReceiver;->getMessageText(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 15
    .local v13, "text":Ljava/lang/CharSequence;
    if-nez v13, :cond_1

    .line 24
    .end local v13    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 17
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_1
    const-string v3, "from_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 18
    .local v4, "user_id":J
    const-string v3, "chat_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 19
    .local v6, "chat_id":J
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    move-wide v14, v4

    .line 20
    .local v14, "id":J
    :goto_1
    const-wide/16 v8, 0x0

    invoke-static {v14, v15, v8, v9}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v2

    .line 21
    .local v2, "queue":Lcom/perm/kate/MessageSendQueue;
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;)V

    goto :goto_0

    .end local v2    # "queue":Lcom/perm/kate/MessageSendQueue;
    .end local v14    # "id":J
    :cond_2
    move-wide v14, v6

    .line 19
    goto :goto_1
.end method
