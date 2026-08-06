.class public Lcom/perm/kate/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field static update_running:Z


# instance fields
.field account_id:J

.field callback:Lcom/perm/kate/session/Callback;

.field callback_messages:Lcom/perm/kate/session/Callback;

.field callback_replies:Lcom/perm/kate/session/Callback;

.field session:Lcom/perm/kate/session/Session;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field widget_refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/UpdateService;->update_running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    .line 233
    new-instance v0, Lcom/perm/kate/UpdateService$2;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/UpdateService$2;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateService;->callback_replies:Lcom/perm/kate/session/Callback;

    .line 242
    new-instance v0, Lcom/perm/kate/UpdateService$3;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/UpdateService$3;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateService;->callback:Lcom/perm/kate/session/Callback;

    .line 260
    new-instance v0, Lcom/perm/kate/UpdateService$4;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/UpdateService$4;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateService;->callback_messages:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/UpdateService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/UpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->updateData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/UpdateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/UpdateService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->sendNewsBroadcast()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/UpdateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/UpdateService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->sendMessagesBroadcast()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 45
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 46
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 47
    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    :try_start_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/perm/kate/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 118
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "Kate.UpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v1, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getTimerInterval(Landroid/content/Context;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const v3, 0x7f07053b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 74
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "6"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "key_int":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d003d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 76
    .local v4, "up_int":J
    return-wide v4
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->createWakeLock()V

    .line 100
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->isWidgetRefresh(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    .line 106
    new-instance v0, Lcom/perm/kate/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/UpdateService$1;-><init>(Lcom/perm/kate/UpdateService;)V

    .line 111
    invoke-virtual {v0}, Lcom/perm/kate/UpdateService$1;->start()V

    .line 112
    return-void
.end method

.method private isWidgetRefresh(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_0
    const-string v0, "widget_refresh"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static regularRefreshEnabled()Z
    .locals 4

    .prologue
    .line 66
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f07052b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private safeReleaseWakeLock()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/UpdateService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->scheduleForced(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static schedule(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interval"    # J

    .prologue
    .line 36
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 37
    .local v6, "pending":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 38
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 39
    const-string v1, "Kate.UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 41
    return-void
.end method

.method static scheduleForced(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/perm/kate/UpdateService;->getTimerInterval(Landroid/content/Context;)J

    move-result-wide v0

    .line 56
    .local v0, "interval":J
    invoke-static {p0, v0, v1}, Lcom/perm/kate/UpdateService;->schedule(Landroid/content/Context;J)V

    .line 57
    return-void
.end method

.method private sendMessagesBroadcast()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.intent.action.new_messages"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Lcom/perm/kate/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private sendNewsBroadcast()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.intent.action.new_news"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/perm/kate/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method private updateData(Z)V
    .locals 11
    .param p1, "widget_refresh"    # Z

    .prologue
    const/4 v10, 0x0

    .line 126
    const-string v7, "Kate.UpdateService"

    const-string v8, "Update starting"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v7, Lcom/perm/kate/UpdateService;->update_running:Z

    if-eqz v7, :cond_0

    .line 128
    const-string v7, "Kate.UpdateService"

    const-string v8, "Update is already running"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 130
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    .line 193
    :goto_0
    return-void

    .line 136
    :cond_0
    :try_start_0
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v7, :cond_1

    .line 137
    const-string v7, "Kate.UpdateService"

    const-string v8, "No session, service can\'t update"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    sput-boolean v10, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    goto :goto_0

    .line 142
    :cond_1
    :try_start_1
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iput-object v7, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    .line 143
    iget-object v7, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/perm/kate/UpdateService;->account_id:J

    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 147
    .local v5, "prefs":Landroid/content/SharedPreferences;
    if-nez p1, :cond_2

    .line 148
    const v7, 0x7f07052b

    invoke-virtual {p0, v7}, Lcom/perm/kate/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 149
    .local v0, "autoupdate":Z
    if-nez v0, :cond_2

    .line 189
    sput-boolean v10, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    goto :goto_0

    .line 153
    .end local v0    # "autoupdate":Z
    :cond_2
    :try_start_2
    const-string v7, "Kate.UpdateService"

    const-string v8, "Update running"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p1, :cond_3

    .line 156
    const v7, 0x7f070550

    invoke-virtual {p0, v7}, Lcom/perm/kate/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 157
    .local v6, "wifi_only":Z
    if-eqz v6, :cond_3

    .line 158
    invoke-static {}, Lcom/perm/kate/Helper;->isWifi()Z

    move-result v7

    if-nez v7, :cond_3

    .line 159
    const-string v7, "Kate.UpdateService"

    const-string v8, "not wifi, update canceled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    sput-boolean v10, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    goto :goto_0

    .line 165
    .end local v6    # "wifi_only":Z
    :cond_3
    const/4 v7, 0x1

    :try_start_3
    sput-boolean v7, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 167
    const v7, 0x7f07053f

    invoke-virtual {p0, v7}, Lcom/perm/kate/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 168
    .local v3, "notify_news":Z
    const v7, 0x7f07053e

    invoke-virtual {p0, v7}, Lcom/perm/kate/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 169
    .local v2, "notify_messages":Z
    const v7, 0x7f070540

    invoke-virtual {p0, v7}, Lcom/perm/kate/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 171
    .local v4, "notify_replies":Z
    if-nez p1, :cond_4

    .line 172
    if-eqz v3, :cond_4

    .line 173
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateNews()V

    .line 174
    :cond_4
    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    .line 175
    :cond_5
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateMessages()V

    .line 176
    :cond_6
    if-nez p1, :cond_7

    .line 177
    if-eqz v4, :cond_7

    .line 178
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateReplies()V

    .line 179
    :cond_7
    if-nez p1, :cond_8

    .line 180
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->updateWalls()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :cond_8
    sput-boolean v10, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    goto/16 :goto_0

    .line 182
    .end local v2    # "notify_messages":Z
    .end local v3    # "notify_news":Z
    .end local v4    # "notify_replies":Z
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 185
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    sput-boolean v10, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    goto/16 :goto_0

    .line 189
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    sput-boolean v10, Lcom/perm/kate/UpdateService;->update_running:Z

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/UpdateService;->stopSelf()V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/UpdateService;->safeReleaseWakeLock()V

    throw v7
.end method

.method private updateMessages()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 217
    const-string v0, "Kate.UpdateService"

    const-string v1, "Update Messages running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-wide/16 v2, 0x0

    .line 219
    .local v2, "time_offset":J
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v8, p0, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v0, v8, v9}, Lcom/perm/kate/db/DataHelper;->getLastIncomingMessageDate(J)J

    move-result-wide v10

    .line 220
    .local v10, "start_time":J
    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    sub-long v2, v0, v10

    .line 223
    :cond_0
    cmp-long v0, v2, v12

    if-gez v0, :cond_1

    .line 224
    const-wide/16 v2, 0x0

    .line 225
    :cond_1
    const-wide/16 v0, 0x14

    add-long/2addr v2, v0

    .line 226
    iget-object v1, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    iget-object v8, p0, Lcom/perm/kate/UpdateService;->callback_messages:Lcom/perm/kate/session/Callback;

    move v5, v4

    move-object v7, v6

    move-object v9, v6

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->getMessages(JZILjava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 227
    return-void
.end method

.method private updateNews()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 208
    const-string v0, "Kate.UpdateService"

    const-string v1, "Update News running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->getLastNewsDate(J)J

    move-result-wide v12

    .line 213
    .local v12, "start_time":J
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v2, v2

    const-string v7, "post,photo,photo_tag,note"

    iget-object v9, p0, Lcom/perm/kate/UpdateService;->callback:Lcom/perm/kate/session/Callback;

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    move-object v10, v4

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 214
    return-void
.end method

.method private updateReplies()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/UpdateService;->callback_replies:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getCounters(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 231
    return-void
.end method

.method private updateWalls()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 311
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    .line 312
    .local v7, "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    new-instance v5, Lcom/perm/kate/UpdateService$5;

    invoke-direct {v5, p0, v6, v7}, Lcom/perm/kate/UpdateService$5;-><init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;Lcom/perm/utils/WallSubscriptions$WallSubscription;)V

    .line 326
    .local v5, "callback1":Lcom/perm/kate/session/Callback;
    const/4 v4, 0x0

    .line 327
    .local v4, "filter":Ljava/lang/String;
    iget v0, v7, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    const-string v4, "suggests"

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/UpdateService;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, v7, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 332
    .end local v4    # "filter":Ljava/lang/String;
    .end local v5    # "callback1":Lcom/perm/kate/session/Callback;
    .end local v7    # "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    :cond_1
    return-void
.end method


# virtual methods
.method protected firstUnread(Ljava/util/ArrayList;)Lcom/perm/kate/api/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)",
            "Lcom/perm/kate/api/Message;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 281
    .local v0, "m":Lcom/perm/kate/api/Message;
    iget-boolean v2, v0, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v2, :cond_0

    .line 283
    .end local v0    # "m":Lcom/perm/kate/api/Message;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNewPost(Ljava/util/ArrayList;J)Lcom/perm/kate/api/WallMessage;
    .locals 4
    .param p2, "last_post"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;J)",
            "Lcom/perm/kate/api/WallMessage;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "wall_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 338
    .local v0, "wm":Lcom/perm/kate/api/WallMessage;
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->date:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    .line 340
    .end local v0    # "wm":Lcom/perm/kate/api/WallMessage;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->handleStart(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/perm/kate/UpdateService;->handleStart(Landroid/content/Intent;)V

    .line 82
    const/4 v0, 0x2

    return v0
.end method
