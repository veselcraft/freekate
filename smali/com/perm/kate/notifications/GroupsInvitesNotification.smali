.class public Lcom/perm/kate/notifications/GroupsInvitesNotification;
.super Ljava/lang/Object;
.source "GroupsInvitesNotification.java"


# static fields
.field static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xc

    sput v0, Lcom/perm/kate/notifications/GroupsInvitesNotification;->id:I

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 74
    .local v0, "mManager":Landroid/app/NotificationManager;
    sget v1, Lcom/perm/kate/notifications/GroupsInvitesNotification;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 75
    return-void
.end method

.method public static display(Landroid/content/Context;IZ)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groups"    # I
    .param p2, "silent"    # Z

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v10, Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {v0, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const v10, 0x7f07046e

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 26
    .local v2, "message":Ljava/lang/CharSequence;
    if-eqz p2, :cond_4

    const/4 v5, 0x0

    .line 28
    .local v5, "popup_message":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v4, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    const v10, 0x7f070527

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 31
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 32
    invoke-static {p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 33
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 34
    invoke-static {v4}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 35
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 37
    .local v3, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v8

    .line 38
    .local v8, "silent_mode":Z
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v9

    .line 39
    .local v9, "sleep_mode":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 40
    .local v6, "prefs":Landroid/content/SharedPreferences;
    if-nez p2, :cond_2

    .line 41
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const v10, 0x7f070544

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 42
    invoke-static {p0, v6}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v10

    iput-object v10, v3, Landroid/app/Notification;->vibrate:[J

    .line 43
    :cond_0
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    const v10, 0x7f070542

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 44
    const v10, 0x7f070543

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 45
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

    const v11, 0x7f060002

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 54
    :cond_1
    :goto_1
    const v10, 0x7f07053c

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 55
    invoke-static {p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v10

    iput v10, v3, Landroid/app/Notification;->ledARGB:I

    .line 56
    const/16 v10, 0x12c

    iput v10, v3, Landroid/app/Notification;->ledOnMS:I

    .line 57
    const/16 v10, 0x3e8

    iput v10, v3, Landroid/app/Notification;->ledOffMS:I

    .line 58
    iget v10, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 61
    :cond_2
    iget v10, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 63
    iget v10, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 65
    if-eqz p1, :cond_3

    .line 66
    iput p1, v3, Landroid/app/Notification;->number:I

    .line 68
    :cond_3
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 69
    .local v1, "mManager":Landroid/app/NotificationManager;
    sget v10, Lcom/perm/kate/notifications/GroupsInvitesNotification;->id:I

    invoke-virtual {v1, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    return-void

    .end local v1    # "mManager":Landroid/app/NotificationManager;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "popup_message":Ljava/lang/CharSequence;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "silent_mode":Z
    .end local v9    # "sleep_mode":Z
    :cond_4
    move-object v5, v2

    .line 26
    goto/16 :goto_0

    .line 47
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

    .line 48
    .local v7, "ringtone":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 49
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 51
    :cond_6
    iget v10, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v3, Landroid/app/Notification;->defaults:I

    goto :goto_1
.end method
