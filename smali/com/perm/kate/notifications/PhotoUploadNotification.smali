.class public Lcom/perm/kate/notifications/PhotoUploadNotification;
.super Ljava/lang/Object;
.source "PhotoUploadNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "photos_upload"

.field private static max_display_period:J = 0x3e8L


# instance fields
.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field public error_text:Ljava/lang/String;

.field private last_display:J

.field private notifyManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->last_display:J

    .line 25
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->error_text:Ljava/lang/String;

    .line 27
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->notifyManager:Landroid/app/NotificationManager;

    .line 28
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object v1, Lcom/perm/kate/notifications/PhotoUploadNotification;->CHANNEL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x1080055

    .line 30
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    iget-object p1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 32
    iget-object p1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const-string p2, "progress"

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static cancel()V
    .locals 2

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xf

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private getPercentText(IIZ)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v0, p2

    int-to-double p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    double-to-int p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public display(IIZ)V
    .locals 7

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    iget-wide v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->last_display:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/perm/kate/notifications/PhotoUploadNotification;->max_display_period:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 44
    :cond_0
    iput-wide v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->last_display:J

    .line 46
    iget-object v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 49
    iget-object v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/notifications/PhotoUploadNotification;->getPercentText(IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_1

    .line 52
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object p2, Lcom/perm/kate/notifications/PhotoUploadNotification;->CHANNEL:Ljava/lang/String;

    const p3, 0x7f0f0519

    invoke-static {p1, p2, p3}, Lcom/perm/kate/notifications/Utils;->createNotificationChannelWithoutNoise(Landroid/content/Context;Ljava/lang/String;I)V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->notifyManager:Landroid/app/NotificationManager;

    const/16 p2, 0xf

    iget-object p3, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public displayError()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->error_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    iget-object v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->notifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
