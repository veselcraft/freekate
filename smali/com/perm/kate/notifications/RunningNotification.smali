.class public Lcom/perm/kate/notifications/RunningNotification;
.super Ljava/lang/Object;
.source "RunningNotification.java"


# static fields
.field static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0xe

    sput v0, Lcom/perm/kate/notifications/RunningNotification;->id:I

    return-void
.end method

.method public static cancel()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 40
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 41
    .local v1, "mManager":Landroid/app/NotificationManager;
    sget v2, Lcom/perm/kate/notifications/RunningNotification;->id:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 42
    return-void
.end method

.method public static display()V
    .locals 9

    .prologue
    .line 19
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 20
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 21
    .local v1, "intent":Landroid/content/Intent;
    const v7, 0x7f0703c8

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 22
    .local v3, "message":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 24
    .local v6, "popup_message":Ljava/lang/CharSequence;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v5, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 26
    const v7, 0x7f070527

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 27
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    invoke-static {v0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    invoke-static {v5}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 31
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 33
    .local v4, "notification":Landroid/app/Notification;
    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 34
    const-string v7, "notification"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 35
    .local v2, "mManager":Landroid/app/NotificationManager;
    sget v7, Lcom/perm/kate/notifications/RunningNotification;->id:I

    invoke-virtual {v2, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 36
    return-void
.end method
