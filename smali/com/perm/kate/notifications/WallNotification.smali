.class public abstract Lcom/perm/kate/notifications/WallNotification;
.super Ljava/lang/Object;
.source "WallNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "wall"

.field static id:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static display(Landroid/content/Context;Lcom/perm/kate/api/WallMessage;JI)V
    .locals 8

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/WallActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string v3, "show_suggested"

    .line 35
    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-static {p1}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 41
    invoke-static {}, Lcom/perm/kate/notifications/WallNotification;->makeNotificationText()Ljava/lang/String;

    move-result-object p4

    .line 43
    invoke-static {p2, p3}, Lcom/perm/kate/notifications/WallNotification;->getNotificationTitle(J)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {p1}, Lcom/perm/kate/notifications/WallNotification;->getNotificationMessage(Lcom/perm/kate/api/WallMessage;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 46
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 48
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 49
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p4

    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p4}, Lcom/perm/kate/notifications/WallNotification;->getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 55
    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_1
    long-to-int p4, p2

    const/high16 v3, 0x8000000

    .line 56
    invoke-static {p0, p4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 57
    new-instance p4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p4, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    invoke-static {v4}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string p1, "social"

    .line 59
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 61
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p1

    .line 62
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result p4

    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v3, 0x1a

    if-nez p1, :cond_3

    if-nez p4, :cond_3

    const v5, 0x7f0f016e

    .line 64
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 67
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_4

    .line 68
    sget-object v7, Lcom/perm/kate/notifications/WallNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 69
    :cond_4
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    if-nez p1, :cond_5

    if-nez p4, :cond_5

    const-string p1, "key_notify_vibration"

    .line 71
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 72
    invoke-static {p0, v0}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object p1

    iput-object p1, v4, Landroid/app/Notification;->vibrate:[J

    :cond_5
    const/4 p1, 0x0

    if-eqz v5, :cond_8

    const p4, 0x7f0f016f

    .line 74
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "android.resource://"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/raw/notification_replies_sound"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    iput-object p1, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    const p4, 0x7f0f016d

    .line 79
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 80
    invoke-static {p4}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 82
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 83
    iput-object p1, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    .line 85
    :cond_7
    iget p4, v4, Landroid/app/Notification;->defaults:I

    or-int/2addr p4, v2

    iput p4, v4, Landroid/app/Notification;->defaults:I

    :cond_8
    :goto_2
    const-string p4, "key_notify_led"

    .line 88
    invoke-interface {v0, p4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 89
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result p4

    iput p4, v4, Landroid/app/Notification;->ledARGB:I

    const/16 p4, 0x12c

    .line 90
    iput p4, v4, Landroid/app/Notification;->ledOnMS:I

    const/16 p4, 0x3e8

    .line 91
    iput p4, v4, Landroid/app/Notification;->ledOffMS:I

    .line 92
    iget p4, v4, Landroid/app/Notification;->flags:I

    or-int/2addr p4, v2

    iput p4, v4, Landroid/app/Notification;->flags:I

    .line 94
    :cond_9
    iget p4, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 p4, p4, 0x10

    iput p4, v4, Landroid/app/Notification;->flags:I

    if-lt v6, v3, :cond_a

    .line 98
    sget-object p4, Lcom/perm/kate/notifications/WallNotification;->CHANNEL:Ljava/lang/String;

    const v0, 0x7f0f051e

    invoke-static {p0, p4, v0, v5, p1}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_a
    const-string p1, "notification"

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 103
    sget p1, Lcom/perm/kate/notifications/WallNotification;->id:I

    const p4, 0xf4240

    mul-int p1, p1, p4

    const-wide/32 v0, 0xf4240

    rem-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    long-to-int p3, p2

    add-int/2addr p1, p3

    invoke-virtual {p0, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 139
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 141
    iget-object p0, p0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 145
    iget-object p0, p0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_3

    return-object v0

    .line 149
    :cond_3
    invoke-static {p0}, Lcom/perm/kate/notifications/MessagesNotification;->getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationMessage(Lcom/perm/kate/api/WallMessage;)Ljava/lang/CharSequence;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v3, 0x7f0f051e

    invoke-virtual {v2, v3}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object p0, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getNotificationTitle(J)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {p0, p1}, Lcom/perm/kate/notifications/WallNotification;->getUserName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUserName(J)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    .line 155
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 159
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long p0, p0

    invoke-virtual {v1, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static makeNotificationText()Ljava/lang/String;
    .locals 2

    .line 131
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f036e

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
