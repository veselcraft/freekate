.class public Lcom/perm/kate/notifications/UserOnlineNotification;
.super Ljava/lang/Object;
.source "UserOnlineNotification.java"


# static fields
.field static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0xd

    sput v0, Lcom/perm/kate/notifications/UserOnlineNotification;->id:I

    return-void
.end method

.method public static display(Landroid/content/Context;Ljava/lang/Long;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "silent"    # Z

    .prologue
    .line 28
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v10, :cond_0

    .line 74
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v10, Lcom/perm/kate/ProfileInfoActivity;

    invoke-direct {v0, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v10, "com.perm.kate.user_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-static {p1, p0}, Lcom/perm/kate/notifications/UserOnlineNotification;->makeNotificationText(Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "message":Ljava/lang/CharSequence;
    if-eqz p2, :cond_4

    const/4 v5, 0x0

    .line 36
    .local v5, "popup_message":Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v4, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    const v10, 0x7f070527

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 39
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 40
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 41
    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {p0, v10, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 42
    invoke-static {v4}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 43
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 45
    .local v3, "notification":Landroid/app/Notification;
    if-nez p2, :cond_3

    .line 46
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v8

    .line 47
    .local v8, "silent_mode":Z
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v9

    .line 48
    .local v9, "sleep_mode":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 49
    .local v6, "prefs":Landroid/content/SharedPreferences;
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    const v10, 0x7f070544

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 50
    invoke-static {p0, v6}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v10

    iput-object v10, v3, Landroid/app/Notification;->vibrate:[J

    .line 51
    :cond_1
    if-nez v8, :cond_2

    if-nez v9, :cond_2

    const v10, 0x7f070542

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    const v10, 0x7f070543

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "android.resource://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x7f060000

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 62
    :cond_2
    :goto_2
    const v10, 0x7f07053c

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 63
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v10

    iput v10, v3, Landroid/app/Notification;->ledARGB:I

    .line 64
    const/16 v10, 0x12c

    iput v10, v3, Landroid/app/Notification;->ledOnMS:I

    .line 65
    const/16 v10, 0x3e8

    iput v10, v3, Landroid/app/Notification;->ledOffMS:I

    .line 66
    iget v10, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 70
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "silent_mode":Z
    .end local v9    # "sleep_mode":Z
    :cond_3
    iget v10, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 72
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 73
    .local v1, "mManager":Landroid/app/NotificationManager;
    sget v10, Lcom/perm/kate/notifications/UserOnlineNotification;->id:I

    invoke-virtual {v1, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v1    # "mManager":Landroid/app/NotificationManager;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "popup_message":Ljava/lang/CharSequence;
    :cond_4
    move-object v5, v2

    .line 34
    goto/16 :goto_1

    .line 55
    .restart local v3    # "notification":Landroid/app/Notification;
    .restart local v4    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v5    # "popup_message":Ljava/lang/CharSequence;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    .restart local v8    # "silent_mode":Z
    .restart local v9    # "sleep_mode":Z
    :cond_5
    const v10, 0x7f070541

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "ringtone":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 57
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    .line 59
    :cond_6
    iget v10, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v3, Landroid/app/Notification;->defaults:I

    goto :goto_2
.end method

.method private static getUserName(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .param p0, "from_id"    # Ljava/lang/Long;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "user":Lcom/perm/kate/api/User;
    if-eqz p0, :cond_0

    .line 95
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 97
    .local v1, "user_name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_1
    return-object v1
.end method

.method private static makeNotificationText(Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "user_id"    # Ljava/lang/Long;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/notifications/UserOnlineNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "user_name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f07044e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    .end local v1    # "user_name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 89
    const v2, 0x7f0701d5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
