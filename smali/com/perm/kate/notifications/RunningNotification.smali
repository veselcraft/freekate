.class public abstract Lcom/perm/kate/notifications/RunningNotification;
.super Ljava/lang/Object;
.source "RunningNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "running"

.field static id:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cancel()V
    .locals 2

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "notification"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 47
    sget v1, Lcom/perm/kate/notifications/RunningNotification;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static display()V
    .locals 7

    .line 20
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 21
    invoke-static {v0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0f0450

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 25
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v5, Lcom/perm/kate/notifications/RunningNotification;->CHANNEL:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 26
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v5, 0x7f0f004c

    .line 27
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 28
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    invoke-static {v0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/high16 v3, 0x8000000

    .line 30
    invoke-static {v0, v6, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    invoke-static {v4}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 32
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 34
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 38
    sget-object v3, Lcom/perm/kate/notifications/RunningNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/perm/kate/notifications/Utils;->createNotificationChannelWithoutNoise(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const-string v2, "notification"

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 41
    sget v2, Lcom/perm/kate/notifications/RunningNotification;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
