.class public abstract Lcom/perm/kate/notifications/BirthdayNotification;
.super Ljava/lang/Object;
.source "BirthdayNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "birthday"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static display(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9

    .line 26
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BirthdaysActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0f0064

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 32
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    invoke-static {p1}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x0

    .line 34
    invoke-static {p1, p0, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    invoke-static {v2}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string v0, "social"

    .line 36
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v0

    .line 39
    invoke-static {p1}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v1

    .line 40
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const v6, 0x7f0f016e

    .line 41
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 44
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v4, :cond_2

    .line 45
    sget-object v8, Lcom/perm/kate/notifications/BirthdayNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 46
    :cond_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const-string v0, "key_notify_vibration"

    .line 48
    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 49
    invoke-static {p1, v3}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object p0

    iput-object p0, v2, Landroid/app/Notification;->vibrate:[J

    :cond_3
    const/4 p0, 0x0

    if-eqz v6, :cond_5

    const v0, 0x7f0f016d

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 55
    iput-object p0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 57
    :cond_4
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v5

    iput v0, v2, Landroid/app/Notification;->defaults:I

    :cond_5
    :goto_1
    const-string v0, "key_notify_led"

    .line 59
    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    invoke-static {p1}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v0

    iput v0, v2, Landroid/app/Notification;->ledARGB:I

    const/16 v0, 0x12c

    .line 61
    iput v0, v2, Landroid/app/Notification;->ledOnMS:I

    const/16 v0, 0x3e8

    .line 62
    iput v0, v2, Landroid/app/Notification;->ledOffMS:I

    .line 63
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/2addr v0, v5

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 67
    :cond_6
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    if-lt v7, v4, :cond_7

    .line 71
    sget-object v0, Lcom/perm/kate/notifications/BirthdayNotification;->CHANNEL:Ljava/lang/String;

    const v1, 0x7f0f01b0

    invoke-static {p1, v0, v1, v6, p0}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_7
    const-string p0, "notification"

    .line 73
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 p1, 0x5

    .line 74
    invoke-virtual {p0, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
