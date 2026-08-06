.class public Lcom/perm/kate/notifications/GroupMessagesNotification;
.super Ljava/lang/Object;
.source "GroupMessagesNotification.java"


# static fields
.field static displayed_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x13

    sput v0, Lcom/perm/kate/notifications/GroupMessagesNotification;->id:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 99
    .local v1, "mManager":Landroid/app/NotificationManager;
    sget-object v2, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    .local v0, "id":I
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 101
    .end local v0    # "id":I
    :cond_0
    sget-object v2, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 102
    return-void
.end method

.method public static display(Landroid/content/Context;IJ)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I
    .param p2, "group_id"    # J

    .prologue
    .line 42
    const/4 v7, 0x0

    .line 43
    .local v7, "popup_message":Ljava/lang/String;
    const v8, 0x7f0702eb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "notification_title":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/perm/kate/notifications/GroupMessagesNotification;->getNotificationMessage(J)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "notification_message":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/perm/kate/DialogsActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v8, 0x24000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    const-string v8, "group_id"

    invoke-virtual {v0, v8, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v3, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 59
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getMessagesIconId(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    long-to-int v8, p2

    const/high16 v9, 0x8000000

    invoke-static {p0, v8, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    invoke-static {v3}, Lcom/perm/kate/notifications/GroupMessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 66
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 69
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 72
    .local v2, "notification":Landroid/app/Notification;
    iget v8, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 75
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 78
    .local v1, "mManager":Landroid/app/NotificationManager;
    sget v8, Lcom/perm/kate/notifications/GroupMessagesNotification;->id:I

    const v9, 0xf4240

    mul-int/2addr v8, v9

    const-wide/32 v10, 0xf4240

    rem-long v10, p2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    long-to-int v9, v10

    add-int v4, v8, v9

    .line 79
    .local v4, "notification_id":I
    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 80
    sget-object v8, Lcom/perm/kate/notifications/GroupMessagesNotification;->displayed_ids:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private static getNotificationMessage(J)Ljava/lang/String;
    .locals 2
    .param p0, "group_id"    # J

    .prologue
    .line 84
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 85
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 87
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method static setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "notification_builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 94
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    return-void
.end method
