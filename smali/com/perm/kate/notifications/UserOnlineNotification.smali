.class public abstract Lcom/perm/kate/notifications/UserOnlineNotification;
.super Ljava/lang/Object;
.source "UserOnlineNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "user_online"

.field static id:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static display(Landroid/content/Context;Ljava/lang/Long;Z)V
    .locals 10

    .line 30
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-static {p1, p0}, Lcom/perm/kate/notifications/UserOnlineNotification;->makeNotificationText(Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 38
    :goto_0
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f0f004c

    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 41
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 42
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/high16 p1, 0x8000000

    const/4 v2, 0x0

    .line 43
    invoke-static {p0, v2, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 44
    invoke-static {v3}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string p1, "social"

    .line 45
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p1

    .line 48
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v0

    .line 49
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/16 v5, 0x1a

    const/4 v6, 0x1

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    const v7, 0x7f0f016e

    .line 50
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_3

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 53
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v5, :cond_4

    .line 54
    sget-object v9, Lcom/perm/kate/notifications/UserOnlineNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 55
    :cond_4
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    if-nez p2, :cond_9

    if-nez p1, :cond_5

    if-nez v0, :cond_5

    const-string p1, "key_notify_vibration"

    .line 58
    invoke-interface {v4, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    invoke-static {p0, v4}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object p1

    iput-object p1, v3, Landroid/app/Notification;->vibrate:[J

    :cond_5
    if-eqz v7, :cond_8

    const p1, 0x7f0f016f

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android.resource://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/raw/notification_online_sound"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 64
    iput-object p1, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_6
    const p1, 0x7f0f016d

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 69
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 70
    iput-object p1, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    .line 72
    :cond_7
    iget p1, v3, Landroid/app/Notification;->defaults:I

    or-int/2addr p1, v6

    iput p1, v3, Landroid/app/Notification;->defaults:I

    :cond_8
    :goto_3
    const-string p1, "key_notify_led"

    .line 75
    invoke-interface {v4, p1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 76
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result p1

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    const/16 p1, 0x12c

    .line 77
    iput p1, v3, Landroid/app/Notification;->ledOnMS:I

    const/16 p1, 0x3e8

    .line 78
    iput p1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 79
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v6

    iput p1, v3, Landroid/app/Notification;->flags:I

    .line 83
    :cond_9
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v3, Landroid/app/Notification;->flags:I

    if-lt v8, v5, :cond_a

    .line 87
    sget-object p1, Lcom/perm/kate/notifications/UserOnlineNotification;->CHANNEL:Ljava/lang/String;

    const p2, 0x7f0f03a7

    invoke-static {p0, p1, p2, v7, v1}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_a
    const-string p1, "notification"

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 90
    sget p1, Lcom/perm/kate/notifications/UserOnlineNotification;->id:I

    invoke-virtual {p0, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static getUserName(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 112
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static makeNotificationText(Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/notifications/UserOnlineNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f0f04e0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const p0, 0x7f0f0231

    .line 106
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
