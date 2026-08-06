.class public Lcom/perm/kate/notifications/PhotoUploadNotification;
.super Ljava/lang/Object;
.source "PhotoUploadNotification.java"


# static fields
.field private static max_display_period:J


# instance fields
.field private builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field error_text:Ljava/lang/String;

.field private last_display:J

.field private notifyManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/perm/kate/notifications/PhotoUploadNotification;->max_display_period:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "dialog_title"    # Ljava/lang/String;
    .param p2, "error_text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->last_display:J

    .line 24
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 25
    iput-object p2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->error_text:Ljava/lang/String;

    .line 26
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->notifyManager:Landroid/app/NotificationManager;

    .line 27
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    iget-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x1080055

    .line 29
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 33
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v2, Lcom/perm/kate/BootReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fake"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v1}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 39
    return-void
.end method

.method public static cancel()V
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 69
    .local v0, "notifyManager":Landroid/app/NotificationManager;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 70
    return-void
.end method

.method private getPercentText(IIZ)Ljava/lang/String;
    .locals 8
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 61
    const-string v0, ""

    .line 62
    .local v0, "text":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p2

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public display(IIZ)V
    .locals 6
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "now":J
    iget-wide v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->last_display:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/perm/kate/notifications/PhotoUploadNotification;->max_display_period:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 58
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-wide v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->last_display:J

    .line 52
    iget-object v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    iget-object v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/notifications/PhotoUploadNotification;->getPercentText(IIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 57
    iget-object v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->notifyManager:Landroid/app/NotificationManager;

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public displayError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->error_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v2, v2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 75
    iget-object v0, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->notifyManager:Landroid/app/NotificationManager;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/perm/kate/notifications/PhotoUploadNotification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 76
    return-void
.end method
