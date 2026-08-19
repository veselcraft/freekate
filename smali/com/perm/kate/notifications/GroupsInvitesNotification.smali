.class public abstract Lcom/perm/kate/notifications/GroupsInvitesNotification;
.super Ljava/lang/Object;
.source "GroupsInvitesNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "group_invites"

.field static id:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 91
    sget v0, Lcom/perm/kate/notifications/GroupsInvitesNotification;->id:I

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static display(Landroid/content/Context;IZ)V
    .locals 12

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0f04fd

    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 30
    :goto_0
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f0f004c

    .line 32
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    .line 35
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 36
    invoke-static {v5}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string v0, "social"

    .line 37
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v0

    .line 40
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v4

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const/16 v7, 0x1a

    const/4 v8, 0x1

    if-nez p2, :cond_2

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    const v9, 0x7f0f016e

    .line 42
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v7, :cond_2

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 45
    :goto_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v7, :cond_3

    .line 46
    sget-object v11, Lcom/perm/kate/notifications/GroupsInvitesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v11, v9}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    :cond_3
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    if-nez p2, :cond_8

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    const-string p2, "key_notify_vibration"

    .line 50
    invoke-interface {v6, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 51
    invoke-static {p0, v6}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object p2

    iput-object p2, v5, Landroid/app/Notification;->vibrate:[J

    :cond_4
    if-eqz v9, :cond_7

    const p2, 0x7f0f016f

    .line 53
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/raw/notification_sound"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 56
    iput-object p2, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :goto_2
    move-object v3, p2

    goto :goto_3

    :cond_5
    const p2, 0x7f0f016d

    .line 58
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {p2}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 61
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 62
    iput-object p2, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    .line 64
    :cond_6
    iget p2, v5, Landroid/app/Notification;->defaults:I

    or-int/2addr p2, v8

    iput p2, v5, Landroid/app/Notification;->defaults:I

    :cond_7
    :goto_3
    const-string p2, "key_notify_led"

    .line 67
    invoke-interface {v6, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 68
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result p2

    iput p2, v5, Landroid/app/Notification;->ledARGB:I

    const/16 p2, 0x12c

    .line 69
    iput p2, v5, Landroid/app/Notification;->ledOnMS:I

    const/16 p2, 0x3e8

    .line 70
    iput p2, v5, Landroid/app/Notification;->ledOffMS:I

    .line 71
    iget p2, v5, Landroid/app/Notification;->flags:I

    or-int/2addr p2, v8

    iput p2, v5, Landroid/app/Notification;->flags:I

    .line 74
    :cond_8
    iget p2, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x8

    .line 76
    iput p2, v5, Landroid/app/Notification;->flags:I

    if-eqz p1, :cond_9

    .line 79
    iput p1, v5, Landroid/app/Notification;->number:I

    :cond_9
    if-lt v10, v7, :cond_a

    .line 83
    sget-object p1, Lcom/perm/kate/notifications/GroupsInvitesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, p1, v1, v9, v3}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_a
    const-string p1, "notification"

    .line 85
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 86
    sget p1, Lcom/perm/kate/notifications/GroupsInvitesNotification;->id:I

    invoke-virtual {p0, p1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
