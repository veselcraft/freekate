.class public Lcom/perm/kate/MessageNotificationService;
.super Landroid/app/IntentService;
.source "MessageNotificationService.java"


# instance fields
.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Kate.MessageNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 97
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "Kate.MessageNotificationService.Wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private safeReleaseWakeLock()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->createWakeLock()V

    .line 35
    iget-object v5, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    iget-object v5, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 38
    :cond_0
    const-string v5, "message_id"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 40
    .local v2, "message_id":J
    new-instance v0, Lcom/perm/kate/MessageNotificationService$1;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5, p1}, Lcom/perm/kate/MessageNotificationService$1;-><init>(Lcom/perm/kate/MessageNotificationService;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 81
    .local v0, "callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v0, v6}, Lcom/perm/kate/session/Session;->getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->safeReleaseWakeLock()V

    .line 91
    .end local v0    # "callback":Lcom/perm/kate/session/Callback;
    .end local v1    # "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "message_id":J
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v4

    .line 86
    .local v4, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->safeReleaseWakeLock()V

    goto :goto_0

    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->safeReleaseWakeLock()V

    throw v5
.end method
