.class public Lcom/perm/kate/notifications/UpdateNotification;
.super Ljava/lang/Object;
.source "UpdateNotification.java"


# direct methods
.method public static display(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "version_name"    # Ljava/lang/String;
    .param p1, "version_message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "market_url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/notifications/UpdateNotification;->makeUpdateActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const v9, 0x7f0704f1

    invoke-virtual {p2, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 25
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v4, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 27
    const v9, 0x7f070527

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 28
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29
    invoke-static {p2}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    const/high16 v9, 0x8000000

    invoke-static {p2, v10, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 31
    invoke-static {v4}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 32
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 34
    .local v3, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v7

    .line 35
    .local v7, "silent_mode":Z
    invoke-static {p2}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v8

    .line 36
    .local v8, "sleep_mode":Z
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 37
    .local v5, "prefs":Landroid/content/SharedPreferences;
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    const v9, 0x7f070544

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 38
    iget v9, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v3, Landroid/app/Notification;->defaults:I

    .line 39
    :cond_0
    if-nez v7, :cond_1

    if-nez v8, :cond_1

    const v9, 0x7f070542

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 40
    const v9, 0x7f070543

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f060002

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 50
    :cond_1
    :goto_0
    const v9, 0x7f07053c

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 51
    invoke-static {p2}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v9

    iput v9, v3, Landroid/app/Notification;->ledARGB:I

    .line 52
    const/16 v9, 0x12c

    iput v9, v3, Landroid/app/Notification;->ledOnMS:I

    .line 53
    const/16 v9, 0x3e8

    iput v9, v3, Landroid/app/Notification;->ledOffMS:I

    .line 54
    iget v9, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v3, Landroid/app/Notification;->flags:I

    .line 56
    :cond_2
    iget v9, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v3, Landroid/app/Notification;->flags:I

    .line 58
    const-string v9, "notification"

    invoke-virtual {p2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 59
    .local v1, "mManager":Landroid/app/NotificationManager;
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 60
    return-void

    .line 43
    .end local v1    # "mManager":Landroid/app/NotificationManager;
    :cond_3
    const v9, 0x7f070541

    invoke-virtual {p2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "ringtone":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 45
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 47
    :cond_4
    iget v9, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v3, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method public static makeUpdateActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "version_name"    # Ljava/lang/String;
    .param p1, "version_message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "market_url"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/UpdateActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.version_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "com.perm.kate.version_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "com.perm.kate.market_url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method
