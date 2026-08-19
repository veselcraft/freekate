.class public Lcom/perm/kate/push/PushService;
.super Landroid/app/IntentService;
.source "PushService.java"


# static fields
.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Kate.PushService"

    .line 22
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static cancelRetry(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static ensureWakeLockCreated(Landroid/content/Context;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "Kate:PushService"

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method static scheduleRetry(Landroid/content/Context;)V
    .locals 5

    .line 94
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 95
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 96
    invoke-static {}, Lcom/perm/kate/push/Push;->getRetryInterval()J

    move-result-wide v1

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 98
    invoke-static {}, Lcom/perm/kate/push/Push;->increaseRetryInterval()J

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->cancelRetry(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static startWithWakeLock(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->ensureWakeLockCreated(Landroid/content/Context;)V

    .line 31
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 33
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->startService(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 56
    :try_start_0
    sget-object p1, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 57
    invoke-static {p0}, Lcom/perm/kate/push/Push;->requestToken(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    sget-object p1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getSessionsWithoutPush()Ljava/util/ArrayList;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/session/Session;

    const-string v6, "{\"msg\":\"on\",\"chat\":\"on\",\"friend\":\"on\",\"reply\":\"on\",\"comment\":\"on\",\"mention\":\"on\",\"like\":\"off\"}"

    .line 65
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v7

    .line 66
    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    sget-object v2, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->registerDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perm/kate/account/Account;->push_registered:Z

    .line 68
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v0

    iput-boolean v2, v0, Lcom/perm/kate/account/Account;->is_fcm:Z

    .line 69
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {}, Lcom/perm/kate/push/Push;->resetRetryInterval()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 73
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/perm/kate/api/KException;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/KException;

    iget v0, v0, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 76
    :cond_3
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 79
    :cond_4
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->scheduleRetry(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :goto_1
    sget-object p1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 84
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 86
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    :cond_5
    sget-object p1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 89
    :goto_2
    sget-object p1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    return-void

    :catchall_2
    move-exception p1

    .line 88
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 90
    :cond_7
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
