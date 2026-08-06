.class public Lcom/perm/kate/OnlineService;
.super Landroid/app/IntentService;
.source "OnlineService.java"


# instance fields
.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Kate.OnlineService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/perm/kate/OnlineService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 81
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 82
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 83
    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/OnlineService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/perm/kate/OnlineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 51
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "Kate.OnlineService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private safeReleaseWakeLock()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static schedule(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/perm/kate/OnlineService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 69
    .local v6, "pending":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 70
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 71
    const-wide/32 v4, 0x3a980

    .line 76
    .local v4, "interval":J
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 30
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    iget-boolean v1, v1, Lcom/perm/kate/Online;->started:Z

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Lcom/perm/kate/OnlineService;->cancel(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    .line 45
    :goto_0
    return-void

    .line 34
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->createWakeLock()V

    .line 35
    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 37
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    iget-boolean v1, v1, Lcom/perm/kate/Online;->started:Z

    if-eqz v1, :cond_2

    .line 38
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v1}, Lcom/perm/kate/Online;->setOnline()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "th":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    goto :goto_0

    .end local v0    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    throw v1
.end method
