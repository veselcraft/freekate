.class public abstract Lcom/perm/kate/notifications/LoginNotification;
.super Ljava/lang/Object;
.source "LoginNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "authorization"

.field private static id:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 84
    sget v0, Lcom/perm/kate/notifications/LoginNotification;->id:I

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static display(Landroid/content/Context;)V
    .locals 11

    .line 26
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/perm/kate/Helper;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0f005d

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 30
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f0f004c

    .line 32
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    .line 35
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 36
    invoke-static {v3}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string v0, "err"

    .line 37
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v0

    .line 40
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v4

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/16 v6, 0x1a

    const/4 v7, 0x1

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    const v8, 0x7f0f016e

    .line 42
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_1

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 45
    :goto_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v6, :cond_2

    .line 46
    sget-object v10, Lcom/perm/kate/notifications/LoginNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    :cond_2
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    const-string v0, "key_notify_vibration"

    .line 49
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget v0, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/app/Notification;->defaults:I

    :cond_3
    const/4 v0, 0x0

    if-eqz v8, :cond_5

    const v2, 0x7f0f016d

    .line 52
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 55
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    iput-object v0, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 58
    :cond_4
    iget v2, v3, Landroid/app/Notification;->defaults:I

    or-int/2addr v2, v7

    iput v2, v3, Landroid/app/Notification;->defaults:I

    :cond_5
    :goto_1
    const-string v2, "key_notify_led"

    .line 60
    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v2

    iput v2, v3, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x12c

    .line 62
    iput v2, v3, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x3e8

    .line 63
    iput v2, v3, Landroid/app/Notification;->ledOffMS:I

    .line 64
    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/2addr v2, v7

    iput v2, v3, Landroid/app/Notification;->flags:I

    .line 67
    :cond_6
    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x8

    .line 68
    iput v2, v3, Landroid/app/Notification;->flags:I

    if-lt v9, v6, :cond_7

    .line 72
    sget-object v2, Lcom/perm/kate/notifications/LoginNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v2, v1, v8, v0}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_7
    const-string v0, "notification"

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 75
    sget v0, Lcom/perm/kate/notifications/LoginNotification;->id:I

    invoke-virtual {p0, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
