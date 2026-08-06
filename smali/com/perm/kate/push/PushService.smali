.class public Lcom/perm/kate/push/PushService;
.super Landroid/app/IntentService;
.source "PushService.java"


# static fields
.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Kate.PushService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static cancelRetry(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 110
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 111
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 112
    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static ensureWakeLockCreated(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 47
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "Kate.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method static scheduleRetry(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 97
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/perm/kate/push/Push;->getRetryInterval()J

    move-result-wide v2

    .line 99
    .local v2, "interval":J
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 100
    invoke-static {}, Lcom/perm/kate/push/Push;->increaseRetryInterval()J

    .line 101
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->cancelRetry(Landroid/content/Context;)V

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/push/PushService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startWithWakeLock(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->ensureWakeLockCreated(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 31
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->startService(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getSessionsWithoutPush()Ljava/util/ArrayList;

    move-result-object v10

    .line 55
    .local v10, "sessions1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v0

    iget-boolean v0, v0, Lcom/perm/kate/account/Account;->is_gcm:Z

    if-eqz v0, :cond_1

    :cond_0
    move v7, v1

    .line 58
    .local v7, "is_gcm_account":Z
    :cond_1
    if-eqz v7, :cond_2

    invoke-static {}, Lcom/perm/kate/push/Push;->isTokenGCM()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/perm/kate/push/Push;->gotNewToken(Ljava/lang/String;)V

    .line 61
    :cond_2
    sget-object v0, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 62
    invoke-static {p0, v7}, Lcom/perm/kate/push/Push;->requestToken(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 93
    .end local v7    # "is_gcm_account":Z
    .end local v10    # "sessions1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    :cond_3
    :goto_0
    return-void

    .line 67
    .restart local v7    # "is_gcm_account":Z
    .restart local v10    # "sessions1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getSessionsWithoutPush()Ljava/util/ArrayList;

    move-result-object v9

    .line 68
    .local v9, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/session/Session;

    .line 69
    .local v8, "s":Lcom/perm/kate/session/Session;
    const-string v5, "{\"msg\":\"on\",\"chat\":\"on\",\"friend\":\"on\",\"reply\":\"on\",\"comment\":\"on\",\"mention\":\"on\",\"like\":\"off\"}"

    .line 70
    .local v5, "subscribe":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "device_id":Ljava/lang/String;
    iget-object v0, v8, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    sget-object v1, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/api/Api;->registerDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {v8}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/account/Account;->push_registered:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    .end local v5    # "subscribe":Ljava/lang/String;
    .end local v6    # "device_id":Ljava/lang/String;
    .end local v8    # "s":Lcom/perm/kate/session/Session;
    .end local v9    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    :catch_0
    move-exception v11

    .line 76
    .local v11, "th":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    invoke-static {v11}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 81
    :cond_5
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->scheduleRetry(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .end local v11    # "th":Ljava/lang/Throwable;
    :goto_2
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 74
    .restart local v9    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/perm/kate/push/Push;->resetRetryInterval()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 90
    .end local v7    # "is_gcm_account":Z
    .end local v9    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    .end local v10    # "sessions1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    sget-object v1, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    throw v0

    .line 85
    :catch_1
    move-exception v11

    .line 86
    .restart local v11    # "th":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    invoke-static {v11}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    :cond_8
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/perm/kate/push/PushService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0
.end method
