.class public Lcom/perm/kate/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field static preference_name:Ljava/lang/String; = "uss"

.field static update_running:Z = false


# instance fields
.field account_id:J

.field callback:Lcom/perm/kate/session/Callback;

.field callback_replies:Lcom/perm/kate/session/Callback;

.field session:Lcom/perm/kate/session/Session;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field widget_refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    .line 248
    new-instance v0, Lcom/perm/kate/UpdateService$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/UpdateService$2;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateService;->callback_replies:Lcom/perm/kate/session/Callback;

    .line 257
    new-instance v0, Lcom/perm/kate/UpdateService$3;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/UpdateService$3;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateService;->callback:Lcom/perm/kate/session/Callback;

    .line 275
    new-instance v0, Lcom/perm/kate/UpdateService$4;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/UpdateService$4;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/UpdateService;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->updateData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/UpdateService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->sendNewsBroadcast()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/UpdateService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->sendMessagesBroadcast()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "power"

    .line 130
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Kate:UpdateService"

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getStartTime()J
    .locals 4

    .line 376
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    sget-object v1, Lcom/perm/kate/UpdateService;->preference_name:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimerInterval(Landroid/content/Context;)J
    .locals 3

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_notify_interval"

    const-string v2, "6"

    .line 75
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f03003f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    aget p0, p0, v0

    invoke-static {p0}, Lcom/perm/kate/UpdateService;->limitPeriod(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    return-wide v0
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->createWakeLock()V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->isWidgetRefresh(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    .line 119
    new-instance p1, Lcom/perm/kate/UpdateService$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/UpdateService$1;-><init>(Lcom/perm/kate/UpdateService;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isWidgetRefresh(Landroid/content/Intent;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "widget_refresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static limitPeriod(I)I
    .locals 5

    .line 82
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/16 v1, 0x1388

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-int v1, v1

    const v2, 0x15180

    mul-int v0, v0, v2

    .line 87
    div-int/2addr v0, v1

    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_1
    const/16 v0, 0x78

    if-ge p0, v0, :cond_2

    const/16 p0, 0x78

    :cond_2
    return p0
.end method

.method public static regularRefreshEnabled()Z
    .locals 3

    .line 67
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 68
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0f015d

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static runIfRequired()V
    .locals 6

    .line 383
    :try_start_0
    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/UpdateService;->getTimerInterval(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    long-to-double v0, v0

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/perm/kate/UpdateService;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    return-void

    .line 392
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v3, Lcom/perm/kate/UpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 395
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private safeReleaseWakeLock()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveStartTime()V
    .locals 4

    .line 370
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/perm/kate/UpdateService;->preference_name:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->scheduleForced(Landroid/content/Context;)V

    return-void
.end method

.method static schedule(Landroid/content/Context;J)V
    .locals 7

    .line 37
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    .line 39
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Kate.UpdateService"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v3, v1, p1

    const/4 v1, 0x2

    move-wide v2, v3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static scheduleForced(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->getTimerInterval(Landroid/content/Context;)J

    move-result-wide v0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/perm/kate/UpdateService;->schedule(Landroid/content/Context;J)V

    return-void
.end method

.method private sendMessagesBroadcast()V
    .locals 2

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.new_messages"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendNewsBroadcast()V
    .locals 2

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.new_news"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateData(Z)V
    .locals 5

    const-string v0, "Kate.UpdateService"

    const-string v1, "Update starting"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v1, Lcom/perm/kate/UpdateService;->update_running:Z

    if-eqz v1, :cond_0

    const-string p1, "Update is already running"

    .line 141
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 143
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 149
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_1

    const-string p1, "No session, service can\'t update"

    .line 150
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    sput-boolean v1, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    return-void

    .line 155
    :cond_1
    :try_start_1
    iput-object v2, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    .line 156
    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/UpdateService;->account_id:J

    .line 158
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez p1, :cond_2

    const v3, 0x7f0f015d

    .line 161
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 204
    sput-boolean v1, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    return-void

    :cond_2
    :try_start_2
    const-string v3, "Update running"

    .line 166
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    const v3, 0x7f0f017b

    .line 169
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-static {}, Lcom/perm/kate/Helper;->isWifi()Z

    move-result v3

    if-nez v3, :cond_3

    const-string p1, "not wifi, update canceled"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    sput-boolean v1, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 178
    :try_start_3
    sput-boolean v0, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 180
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->saveStartTime()V

    const-string v3, "key_notify_news"

    .line 182
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "key_notify_messages"

    .line 183
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const-string v4, "key_notify_replies"

    .line 184
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p1, :cond_4

    if-eqz v3, :cond_4

    .line 188
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateNews()V

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 193
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateReplies()V

    :cond_5
    if-nez p1, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateWalls()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 199
    :try_start_4
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    :cond_6
    :goto_0
    sput-boolean v1, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    return-void

    :catchall_1
    move-exception p1

    .line 204
    sput-boolean v1, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 205
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    .line 207
    throw p1
.end method

.method private updateNews()V
    .locals 13

    const-string v0, "Kate.UpdateService"

    const-string v1, "Update News running"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->getLastNewsDate(J)J

    move-result-wide v0

    .line 228
    iget-object v2, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget v0, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v4, v0

    iget-object v11, p0, Lcom/perm/kate/UpdateService;->callback:Lcom/perm/kate/session/Callback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "post,photo,photo_tag,note"

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private updateReplies()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/UpdateService;->callback_replies:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getCounters(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private updateWalls()V
    .locals 10

    .line 326
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    .line 327
    invoke-static {v1}, Lcom/perm/utils/WallSubscriptions;->shouldSkip(Lcom/perm/utils/WallSubscriptions$WallSubscription;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    new-instance v8, Lcom/perm/kate/UpdateService$5;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v2, v1}, Lcom/perm/kate/UpdateService$5;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;Lcom/perm/utils/WallSubscriptions$WallSubscription;)V

    .line 350
    iget v3, v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v2, "suggests"

    :cond_1
    move-object v7, v2

    .line 352
    iget-object v3, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/session/Session;->getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected firstUnread(Ljava/util/ArrayList;)Lcom/perm/kate/api/Message;
    .locals 2

    .line 295
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 296
    iget-boolean v1, v0, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getNewPost(Ljava/util/ArrayList;J)Lcom/perm/kate/api/WallMessage;
    .locals 4

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 361
    iget-wide v1, v0, Lcom/perm/kate/api/WallMessage;->date:J

    cmp-long v3, v1, p2

    if-lez v3, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->handleStart(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method
