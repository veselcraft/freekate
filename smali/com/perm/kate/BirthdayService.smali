.class public Lcom/perm/kate/BirthdayService;
.super Landroid/app/Service;
.source "BirthdayService.java"


# instance fields
.field account_id:J

.field callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 114
    new-instance v0, Lcom/perm/kate/BirthdayService$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/BirthdayService$2;-><init>(Lcom/perm/kate/BirthdayService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdayService;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BirthdayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BirthdayService;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BirthdayService;->updateData()V

    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 53
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 55
    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BirthdayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getScheduleTime()J
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 41
    const/16 v0, 0xa

    .line 42
    .local v0, "desired_hour":I
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 43
    .local v1, "now":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 44
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 45
    :cond_0
    invoke-virtual {v1, v5, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 46
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 47
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 48
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private getTodayBirthdays(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BirthdayHelper$ExUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BirthdayHelper$ExUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 146
    .local v2, "now":Ljava/util/GregorianCalendar;
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 147
    .local v0, "day_of_month":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 148
    .local v1, "month":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v3, "todayUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 150
    .local v4, "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    iget-object v6, v4, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v6

    if-ne v6, v0, :cond_0

    iget-object v6, v4, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v6

    if-ne v6, v1, :cond_0

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v4    # "u":Lcom/perm/kate/BirthdayHelper$ExUser;
    :cond_1
    return-object v3
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string v0, "Kate.BirthdayService"

    const-string v1, "birthday time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->isBirthdayNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const-string v0, "Kate.BirthdayService"

    const-string v1, "No session, service can\'t update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/perm/kate/BirthdayService;->stopSelf()V

    .line 94
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    .line 83
    iget-wide v0, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-static {p0, v0, v1}, Lcom/perm/kate/BirthdayHelper;->getLastRefresh(Landroid/content/Context;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Lcom/perm/kate/BirthdayService$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdayService$1;-><init>(Lcom/perm/kate/BirthdayService;)V

    .line 89
    invoke-virtual {v0}, Lcom/perm/kate/BirthdayService$1;->start()V

    goto :goto_0

    .line 91
    :cond_2
    iget-wide v0, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/BirthdayService;->checkBirthdays(J)V

    .line 92
    invoke-virtual {p0}, Lcom/perm/kate/BirthdayService;->stopSelf()V

    goto :goto_0
.end method

.method private makeNotificationMessage(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BirthdayHelper$ExUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "todayUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    const-string v0, ""

    .line 157
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 158
    .local v1, "u":Lcom/perm/kate/api/User;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    goto :goto_0

    .line 162
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_1
    return-object v0
.end method

.method static schedule(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->isBirthdayNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->scheduleForced(Landroid/content/Context;)V

    .line 26
    :cond_0
    return-void
.end method

.method static scheduleForced(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 30
    .local v6, "pending":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 31
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 33
    invoke-static {}, Lcom/perm/kate/BirthdayService;->getScheduleTime()J

    move-result-wide v2

    .line 34
    .local v2, "at":J
    const-wide/32 v4, 0x5265c00

    .line 36
    .local v4, "interval":J
    const-string v1, "Kate.BirthdayService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "at="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 38
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BirthdayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    return-void
.end method

.method private updateData()V
    .locals 6

    .prologue
    .line 97
    const-string v1, "Kate.BirthdayService"

    const-string v2, "Update starting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/BirthdaysActivity;->fields:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/BirthdayService;->callback:Lcom/perm/kate/session/Callback;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p0}, Lcom/perm/kate/BirthdayService;->stopSelf()V

    .line 112
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-virtual {p0}, Lcom/perm/kate/BirthdayService;->stopSelf()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/perm/kate/BirthdayService;->stopSelf()V

    throw v1
.end method


# virtual methods
.method checkBirthdays(J)V
    .locals 3
    .param p1, "user_id"    # J

    .prologue
    .line 132
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->didNotifyToday(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getParsedBirthdays(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    invoke-direct {p0, v1}, Lcom/perm/kate/BirthdayService;->getTodayBirthdays(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 139
    .local v0, "todayUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/BirthdayHelper$ExUser;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-direct {p0, v0}, Lcom/perm/kate/BirthdayService;->makeNotificationMessage(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/perm/kate/notifications/BirthdayNotification;->display(Ljava/lang/String;Landroid/content/Context;)V

    .line 141
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->setNotifiedToday(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/perm/kate/BirthdayService;->handleStart(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/BirthdayService;->handleStart(Landroid/content/Intent;)V

    .line 65
    const/4 v0, 0x2

    return v0
.end method
