.class public Lcom/perm/kate/notifications/AudioCacheNotification;
.super Ljava/lang/Object;
.source "AudioCacheNotification.java"


# direct methods
.method public static cancel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 40
    .local v0, "mManager":Landroid/app/NotificationManager;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 41
    return-void
.end method

.method public static display(Landroid/content/Context;JJ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 19
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    const v7, 0x7f070041

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 22
    .local v6, "title":Ljava/lang/CharSequence;
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v0

    .line 23
    .local v0, "audio":Lcom/perm/kate/api/Audio;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 25
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v4, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 27
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    invoke-static {v4}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 31
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 33
    .local v2, "notification":Landroid/app/Notification;
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 34
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 35
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const/16 v7, 0x9

    invoke-virtual {v3, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 36
    return-void

    .line 23
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_0
    const-string v5, ""

    goto :goto_0
.end method
