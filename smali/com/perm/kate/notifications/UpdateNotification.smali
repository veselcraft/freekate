.class public abstract Lcom/perm/kate/notifications/UpdateNotification;
.super Ljava/lang/Object;
.source "UpdateNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "update"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static display(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/notifications/UpdateNotification;->makeUpdateActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const p1, 0x7f0f0576

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 28
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f0f004c

    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 32
    invoke-static {p2}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p3, 0x0

    const/high16 v1, 0x8000000

    .line 33
    invoke-static {p2, p3, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    invoke-static {v0}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 36
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p0

    .line 37
    invoke-static {p2}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v1

    .line 38
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-nez p0, :cond_1

    if-nez v1, :cond_1

    const v5, 0x7f0f016e

    .line 39
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 42
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_2

    .line 43
    sget-object v7, Lcom/perm/kate/notifications/UpdateNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 44
    :cond_2
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    if-nez p0, :cond_3

    if-nez v1, :cond_3

    const-string p0, "key_notify_vibration"

    .line 46
    invoke-interface {v2, p0, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 47
    iget p0, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroid/app/Notification;->defaults:I

    :cond_3
    const/4 p0, 0x0

    if-eqz v5, :cond_6

    const p3, 0x7f0f016f

    .line 49
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.resource://"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/raw/notification_sound"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 52
    iput-object p0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const p3, 0x7f0f016d

    .line 54
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 55
    invoke-static {p3}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 57
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 58
    iput-object p0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 60
    :cond_5
    iget p3, v0, Landroid/app/Notification;->defaults:I

    or-int/2addr p3, v4

    iput p3, v0, Landroid/app/Notification;->defaults:I

    :cond_6
    :goto_1
    const-string p3, "key_notify_led"

    .line 63
    invoke-interface {v2, p3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 64
    invoke-static {p2}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result p3

    iput p3, v0, Landroid/app/Notification;->ledARGB:I

    const/16 p3, 0x12c

    .line 65
    iput p3, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 p3, 0x3e8

    .line 66
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 67
    iget p3, v0, Landroid/app/Notification;->flags:I

    or-int/2addr p3, v4

    iput p3, v0, Landroid/app/Notification;->flags:I

    .line 69
    :cond_7
    iget p3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x10

    iput p3, v0, Landroid/app/Notification;->flags:I

    if-lt v6, v3, :cond_8

    .line 73
    sget-object p3, Lcom/perm/kate/notifications/UpdateNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {p2, p3, p1, v5, p0}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_8
    const-string p0, "notification"

    .line 75
    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 p1, 0x3

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static makeUpdateActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/UpdateActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.perm.kate.version_name"

    .line 81
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.perm.kate.version_message"

    .line 82
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.perm.kate.market_url"

    .line 83
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
