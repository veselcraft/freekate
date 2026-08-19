.class public abstract Lcom/perm/kate/notifications/VideoCacheNotification;
.super Ljava/lang/Object;
.source "VideoCacheNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "video_cache"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x10

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static display(Landroid/content/Context;JJ)V
    .locals 3

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v1, 0x7f0f02f4

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 24
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->fetchVideo(JJ)Lcom/perm/kate/api/Video;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 27
    :goto_0
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object p3, Lcom/perm/kate/notifications/VideoCacheNotification;->CHANNEL:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 30
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/high16 p1, 0x8000000

    .line 31
    invoke-static {p0, p4, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 32
    invoke-static {p2}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    const-string p1, "progress"

    .line 33
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 34
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 36
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 39
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_1

    .line 40
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object p3, Lcom/perm/kate/notifications/VideoCacheNotification;->CHANNEL:Ljava/lang/String;

    const p4, 0x7f0f051c

    invoke-static {p2, p3, p4}, Lcom/perm/kate/notifications/Utils;->createNotificationChannelWithoutNoise(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const-string p2, "notification"

    .line 42
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p2, 0x10

    .line 43
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
