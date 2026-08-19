.class public Lcom/perm/kate/MessageNotificationService;
.super Landroid/app/IntentService;
.source "MessageNotificationService.java"


# instance fields
.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Kate.MessageNotificationService"

    .line 25
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "power"

    .line 100
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Kate:MessageNotificationService.Wakelock"

    const/4 v2, 0x1

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private safeReleaseWakeLock()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->createWakeLock()V

    .line 35
    iget-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/perm/kate/MessageNotificationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const-string v0, "message_id"

    const-wide/16 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 41
    new-instance v2, Lcom/perm/kate/MessageNotificationService$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/perm/kate/MessageNotificationService$1;-><init>(Lcom/perm/kate/MessageNotificationService;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0, p1, v2, v3}, Lcom/perm/kate/session/Session;->getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->safeReleaseWakeLock()V

    return-void

    :catchall_1
    move-exception p1

    invoke-direct {p0}, Lcom/perm/kate/MessageNotificationService;->safeReleaseWakeLock()V

    .line 94
    throw p1
.end method
