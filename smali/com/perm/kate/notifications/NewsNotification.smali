.class public abstract Lcom/perm/kate/notifications/NewsNotification;
.super Ljava/lang/Object;
.source "NewsNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "news"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static display(Landroid/content/Context;)V
    .locals 11

    .line 25
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_tab"

    const-string v2, "PostsNewsActivityTab"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0f036f

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 29
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f0f004c

    .line 31
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 32
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    .line 34
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    invoke-static {v3}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string v0, "social"

    .line 36
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v0

    .line 39
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v4

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/16 v6, 0x1a

    const/4 v7, 0x1

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    const v8, 0x7f0f016e

    .line 41
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

    .line 44
    :goto_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v6, :cond_2

    .line 45
    sget-object v10, Lcom/perm/kate/notifications/NewsNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v10, v8}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 46
    :cond_2
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    const-string v0, "key_notify_vibration"

    .line 48
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {p0, v5}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v0

    iput-object v0, v3, Landroid/app/Notification;->vibrate:[J

    :cond_3
    const/4 v0, 0x0

    if-eqz v8, :cond_6

    const v2, 0x7f0f016f

    .line 51
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/raw/notification_sound"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    iput-object v0, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const v2, 0x7f0f016d

    .line 56
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 59
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    iput-object v0, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 62
    :cond_5
    iget v2, v3, Landroid/app/Notification;->defaults:I

    or-int/2addr v2, v7

    iput v2, v3, Landroid/app/Notification;->defaults:I

    :cond_6
    :goto_1
    const-string v2, "key_notify_led"

    .line 65
    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 66
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v2

    iput v2, v3, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x12c

    .line 67
    iput v2, v3, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x3e8

    .line 68
    iput v2, v3, Landroid/app/Notification;->ledOffMS:I

    .line 69
    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/2addr v2, v7

    iput v2, v3, Landroid/app/Notification;->flags:I

    .line 72
    :cond_7
    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Landroid/app/Notification;->flags:I

    if-lt v9, v6, :cond_8

    .line 76
    sget-object v2, Lcom/perm/kate/notifications/NewsNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v2, v1, v8, v0}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_8
    const-string v0, "notification"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 79
    invoke-virtual {p0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
