.class public Lcom/perm/kate/BirthdayService;
.super Landroid/app/Service;
.source "BirthdayService.java"


# instance fields
.field account_id:J

.field callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    new-instance v0, Lcom/perm/kate/BirthdayService$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/BirthdayService$2;-><init>(Lcom/perm/kate/BirthdayService;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdayService;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BirthdayService;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BirthdayService;->updateData()V

    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BirthdayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getScheduleTime()J
    .locals 5

    .line 47
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    const/4 v2, 0x6

    const/4 v4, 0x1

    .line 49
    invoke-virtual {v0, v2, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 50
    :cond_0
    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xd

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 53
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTodayBirthdays(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 153
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x5

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 155
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/BirthdayHelper$ExUser;

    .line 159
    iget-object v4, v3, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, v3, Lcom/perm/kate/BirthdayHelper$ExUser;->date:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 160
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 4

    const-string p1, "Kate.BirthdayService"

    :try_start_0
    const-string v0, "birthday time"

    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->isBirthdayNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    .line 86
    invoke-static {p0, v0, v1}, Lcom/perm/kate/BirthdayHelper;->getLastRefresh(Landroid/content/Context;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 87
    new-instance p1, Lcom/perm/kate/BirthdayService$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/BirthdayService$1;-><init>(Lcom/perm/kate/BirthdayService;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 94
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/BirthdayService;->checkBirthdays(J)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "No session, service can\'t update"

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_1
    return-void
.end method

.method private makeNotificationMessage(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static schedule(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->isBirthdayNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->scheduleForced(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static scheduleForced(Landroid/content/Context;)V
    .locals 8

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    .line 32
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 34
    invoke-static {}, Lcom/perm/kate/BirthdayService;->getScheduleTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    const-string p0, "Kate.BirthdayService"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "at="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Kate.BirthdayService"

    const-string v1, "start service"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BirthdayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateData()V
    .locals 5

    const-string v0, "Kate.BirthdayService"

    const-string v1, "Update starting"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/BirthdayService;->account_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/BirthdaysActivity;->fields:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/BirthdayService;->callback:Lcom/perm/kate/session/Callback;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 119
    throw v0
.end method


# virtual methods
.method checkBirthdays(J)V
    .locals 1

    .line 140
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->didNotifyToday(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {p1, p2}, Lcom/perm/kate/BirthdayHelper;->getParsedBirthdays(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcom/perm/kate/BirthdayService;->getTodayBirthdays(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/perm/kate/BirthdayService;->makeNotificationMessage(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/perm/kate/notifications/BirthdayNotification;->display(Ljava/lang/String;Landroid/content/Context;)V

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->setNotifiedToday(Landroid/content/Context;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/perm/kate/BirthdayService;->handleStart(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method
