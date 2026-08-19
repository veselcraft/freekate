.class public Lcom/perm/kate/OnlineService;
.super Landroid/app/IntentService;
.source "OnlineService.java"


# instance fields
.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Kate.OnlineService"

    .line 16
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/perm/kate/OnlineService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/OnlineService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "power"

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Kate:OnlineService"

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private safeReleaseWakeLock()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    :goto_1
    return-void
.end method

.method static schedule(Landroid/content/Context;)V
    .locals 9

    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/OnlineService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    .line 72
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/32 v1, 0x595b0

    const/4 p0, 0x2

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    const-wide/32 v7, 0x595b0

    move v1, p0

    move-wide v2, v3

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 30
    :try_start_0
    sget-object p1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    iget-boolean p1, p1, Lcom/perm/kate/Online;->started:Z

    if-nez p1, :cond_0

    .line 31
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/OnlineService;->cancel(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    return-void

    .line 34
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->createWakeLock()V

    .line 35
    iget-object p1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/perm/kate/OnlineService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 38
    :cond_1
    sget-object p1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    iget-boolean v0, p1, Lcom/perm/kate/Online;->started:Z

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/perm/kate/Online;->setOnline()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 41
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    return-void

    :catchall_1
    move-exception p1

    invoke-direct {p0}, Lcom/perm/kate/OnlineService;->safeReleaseWakeLock()V

    .line 45
    throw p1
.end method
