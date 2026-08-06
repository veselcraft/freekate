.class public Lcom/perm/kate/notifications/ValidationNotification;
.super Ljava/lang/Object;
.source "ValidationNotification.java"


# static fields
.field private static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xb

    sput v0, Lcom/perm/kate/notifications/ValidationNotification;->id:I

    return-void
.end method

.method public static display(Ljava/lang/String;)V
    .locals 13
    .param p0, "redirect_uri"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 24
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 25
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v10, Lcom/perm/kate/LoginActivity;

    invoke-direct {v1, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    const-string v10, "validation_uri"

    invoke-virtual {v1, v10, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const v10, 0x7f070301

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 30
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v5, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 32
    const v10, 0x7f070527

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 33
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 34
    invoke-static {v0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 35
    const/high16 v10, 0x8000000

    invoke-static {v0, v11, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 36
    invoke-static {v5}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 37
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 39
    .local v4, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v8

    .line 40
    .local v8, "silent_mode":Z
    invoke-static {v0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v9

    .line 41
    .local v9, "sleep_mode":Z
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 42
    .local v6, "prefs":Landroid/content/SharedPreferences;
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const v10, 0x7f070544

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 43
    iget v10, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 44
    :cond_0
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    const v10, 0x7f070542

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 45
    const v10, 0x7f070541

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "ringtone":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 47
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 51
    .end local v7    # "ringtone":Ljava/lang/String;
    :cond_1
    :goto_0
    const v10, 0x7f07053c

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    invoke-static {v0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v10

    iput v10, v4, Landroid/app/Notification;->ledARGB:I

    .line 53
    const/16 v10, 0x12c

    iput v10, v4, Landroid/app/Notification;->ledOnMS:I

    .line 54
    const/16 v10, 0x3e8

    iput v10, v4, Landroid/app/Notification;->ledOffMS:I

    .line 55
    iget v10, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 58
    :cond_2
    iget v10, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 59
    iget v10, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 61
    const-string v10, "notification"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 62
    .local v2, "mManager":Landroid/app/NotificationManager;
    sget v10, Lcom/perm/kate/notifications/ValidationNotification;->id:I

    invoke-virtual {v2, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 63
    return-void

    .line 49
    .end local v2    # "mManager":Landroid/app/NotificationManager;
    .restart local v7    # "ringtone":Ljava/lang/String;
    :cond_3
    iget v10, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method
