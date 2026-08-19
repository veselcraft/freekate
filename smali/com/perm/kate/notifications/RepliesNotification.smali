.class public abstract Lcom/perm/kate/notifications/RepliesNotification;
.super Ljava/lang/Object;
.source "RepliesNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "replies"

.field static id:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 201
    sget v0, Lcom/perm/kate/notifications/RepliesNotification;->id:I

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/NewsCommentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-static {p4}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 45
    invoke-static {p0}, Lcom/perm/kate/notifications/RepliesNotification;->getShowMessage(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0f0437

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p5, p6, p7, p8}, Lcom/perm/kate/notifications/RepliesNotification;->getUserName(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 48
    invoke-static {p4, p6}, Lcom/perm/kate/notifications/RepliesNotification;->makeNotificationText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 49
    invoke-static {p0, p6}, Lcom/perm/kate/notifications/RepliesNotification;->getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 50
    invoke-static {p0, p4}, Lcom/perm/kate/notifications/RepliesNotification;->getNotificationMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p4

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p7

    const p4, 0x7f0f004c

    .line 53
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 54
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    :goto_0
    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move-object p7, p8

    .line 59
    :cond_1
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v3, p7}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 61
    invoke-virtual {v3, p6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 62
    invoke-virtual {v3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    invoke-virtual {v3, p6, p7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 64
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p6

    invoke-virtual {v3, p6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_2

    .line 66
    invoke-static {p5}, Lcom/perm/kate/notifications/RepliesNotification;->getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 69
    invoke-virtual {v3, p5}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    const/4 p5, 0x0

    .line 71
    invoke-static {p0, p5, v0, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    invoke-virtual {v3, p6}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 72
    new-instance p6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p6, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    invoke-static {v3}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string p4, "social"

    .line 74
    invoke-virtual {v3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 76
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result p4

    .line 77
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result p6

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p7

    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-nez p3, :cond_4

    if-nez p4, :cond_4

    if-nez p6, :cond_4

    const v4, 0x7f0f016e

    .line 79
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p7, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 82
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v0, :cond_5

    .line 83
    sget-object v6, Lcom/perm/kate/notifications/RepliesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 84
    :cond_5
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    if-nez p3, :cond_a

    if-nez p4, :cond_6

    if-nez p6, :cond_6

    const-string p3, "key_notify_vibration"

    .line 87
    invoke-interface {p7, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 88
    invoke-static {p0, p7}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object p3

    iput-object p3, v3, Landroid/app/Notification;->vibrate:[J

    :cond_6
    if-eqz v4, :cond_9

    const p3, 0x7f0f016f

    .line 90
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p7, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "android.resource://"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/raw/notification_replies_sound"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 93
    iput-object p3, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :goto_2
    move-object p8, p3

    goto :goto_3

    :cond_7
    const p3, 0x7f0f016d

    .line 95
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p7, p3, p8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 96
    invoke-static {p3}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 98
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 99
    iput-object p3, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    .line 101
    :cond_8
    iget p3, v3, Landroid/app/Notification;->defaults:I

    or-int/2addr p3, v1

    iput p3, v3, Landroid/app/Notification;->defaults:I

    :cond_9
    :goto_3
    const-string p3, "key_notify_led"

    .line 104
    invoke-interface {p7, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 105
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result p3

    iput p3, v3, Landroid/app/Notification;->ledARGB:I

    const/16 p3, 0x12c

    .line 106
    iput p3, v3, Landroid/app/Notification;->ledOnMS:I

    const/16 p3, 0x3e8

    .line 107
    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 108
    iget p3, v3, Landroid/app/Notification;->flags:I

    or-int/2addr p3, v1

    iput p3, v3, Landroid/app/Notification;->flags:I

    :cond_a
    if-eqz p1, :cond_b

    .line 112
    iput p1, v3, Landroid/app/Notification;->number:I

    .line 113
    :cond_b
    iget p1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v3, Landroid/app/Notification;->flags:I

    if-eqz p2, :cond_c

    or-int/lit8 p1, p1, 0x8

    .line 116
    iput p1, v3, Landroid/app/Notification;->flags:I

    :cond_c
    if-lt v5, v0, :cond_d

    .line 120
    sget-object p1, Lcom/perm/kate/notifications/RepliesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p8}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_d
    const-string p1, "notification"

    .line 122
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 123
    sget p1, Lcom/perm/kate/notifications/RepliesNotification;->id:I

    invoke-virtual {p0, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 186
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 188
    iget-object p0, p0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 192
    iget-object p0, p0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_3

    return-object v0

    .line 196
    :cond_3
    invoke-static {p0}, Lcom/perm/kate/notifications/MessagesNotification;->getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0437

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f004c

    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static getShowMessage(Landroid/content/Context;)Z
    .locals 3

    .line 143
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0166

    .line 144
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static getUserName(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, " "

    const-string v1, ""

    if-eqz p0, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 154
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    .line 158
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 164
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v1

    :goto_1
    return-object p3
.end method

.method private static makeNotificationText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 172
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f0437

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ": "

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
