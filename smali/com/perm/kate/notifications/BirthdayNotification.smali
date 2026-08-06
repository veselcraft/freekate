.class public Lcom/perm/kate/notifications/BirthdayNotification;
.super Ljava/lang/Object;
.source "BirthdayNotification.java"


# direct methods
.method public static display(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v9, Lcom/perm/kate/BirthdaysActivity;

    invoke-direct {v0, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const v9, 0x7f07004b

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, "title":Ljava/lang/String;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v3, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 27
    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    invoke-virtual {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29
    invoke-static {p1}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    invoke-static {p1, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 31
    invoke-static {v3}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 32
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 34
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v6

    .line 35
    .local v6, "silent_mode":Z
    invoke-static {p1}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v7

    .line 36
    .local v7, "sleep_mode":Z
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 37
    .local v4, "prefs":Landroid/content/SharedPreferences;
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    const v9, 0x7f070544

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 38
    invoke-static {p1, v4}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v9

    iput-object v9, v2, Landroid/app/Notification;->vibrate:[J

    .line 39
    :cond_0
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    const v9, 0x7f070542

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 40
    const v9, 0x7f070541

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "ringtone":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 42
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 46
    .end local v5    # "ringtone":Ljava/lang/String;
    :cond_1
    :goto_0
    const v9, 0x7f07053c

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 47
    invoke-static {p1}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v9

    iput v9, v2, Landroid/app/Notification;->ledARGB:I

    .line 48
    const/16 v9, 0x12c

    iput v9, v2, Landroid/app/Notification;->ledOnMS:I

    .line 49
    const/16 v9, 0x3e8

    iput v9, v2, Landroid/app/Notification;->ledOffMS:I

    .line 50
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 54
    :cond_2
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 56
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 57
    .local v1, "mManager":Landroid/app/NotificationManager;
    const/4 v9, 0x5

    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 58
    return-void

    .line 44
    .end local v1    # "mManager":Landroid/app/NotificationManager;
    .restart local v5    # "ringtone":Ljava/lang/String;
    :cond_3
    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v2, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method
