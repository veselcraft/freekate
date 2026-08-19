.class public abstract Lcom/perm/kate/notifications/GroupMessagesNotification;
.super Ljava/lang/Object;
.source "GroupMessagesNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "group_messages"

.field static displayed_ids:Ljava/util/ArrayList; = null

.field private static id:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 105
    sget-object v0, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 106
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 107
    :cond_0
    sget-object p0, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static display(Landroid/content/Context;IJ)V
    .locals 7

    const v0, 0x7f0f034a

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p2, p3}, Lcom/perm/kate/notifications/GroupMessagesNotification;->getNotificationMessage(J)Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/DialogsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x24000000

    .line 48
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "group_id"

    .line 49
    invoke-virtual {v3, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v5, Lcom/perm/kate/notifications/GroupMessagesNotification;->CHANNEL:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 53
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 54
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 55
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getMessagesIconId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    long-to-int v1, p2

    const/high16 v2, 0x8000000

    .line 63
    invoke-static {p0, v1, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 65
    invoke-static {v4}, Lcom/perm/kate/notifications/GroupMessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 67
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "msg"

    .line 69
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 72
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 75
    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 79
    sget-object v1, Lcom/perm/kate/notifications/GroupMessagesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/perm/kate/notifications/Utils;->createNotificationChannelWithoutNoise(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "notification"

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 84
    sget v0, Lcom/perm/kate/notifications/GroupMessagesNotification;->id:I

    const v1, 0xf4240

    mul-int v0, v0, v1

    const-wide/32 v1, 0xf4240

    rem-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    long-to-int p3, p2

    add-int/2addr v0, p3

    .line 85
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 86
    sget-object p0, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getNotificationMessage(J)Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static setColor(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 100
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method
