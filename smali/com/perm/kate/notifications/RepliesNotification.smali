.class public Lcom/perm/kate/notifications/RepliesNotification;
.super Ljava/lang/Object;
.source "RepliesNotification.java"


# static fields
.field static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x6

    sput v0, Lcom/perm/kate/notifications/RepliesNotification;->id:I

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 185
    .local v0, "mManager":Landroid/app/NotificationManager;
    sget v1, Lcom/perm/kate/notifications/RepliesNotification;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 186
    return-void
.end method

.method public static display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I
    .param p2, "deny_double_notification"    # Z
    .param p3, "silent"    # Z
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "from_id"    # Ljava/lang/Long;
    .param p6, "first_name"    # Ljava/lang/String;
    .param p7, "last_name"    # Ljava/lang/String;
    .param p8, "group_name"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/perm/kate/NewsCommentsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v5, "intent":Landroid/content/Intent;
    invoke-static/range {p4 .. p4}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 44
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/notifications/RepliesNotification;->getShowMessage(Landroid/content/Context;)Z

    move-result v14

    .line 45
    .local v14, "show_message":Z
    if-eqz v14, :cond_7

    .line 46
    invoke-static/range {p5 .. p8}, Lcom/perm/kate/notifications/RepliesNotification;->getUserName(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 47
    .local v17, "user_name":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/perm/kate/notifications/RepliesNotification;->makeNotificationText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, "popup_message":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/perm/kate/notifications/RepliesNotification;->getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "notification_title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/perm/kate/notifications/RepliesNotification;->getNotificationMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 55
    .end local v17    # "user_name":Ljava/lang/String;
    .local v7, "message":Ljava/lang/CharSequence;
    :goto_0
    if-eqz p3, :cond_0

    .line 56
    const/4 v11, 0x0

    .line 58
    :cond_0
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v9, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v9, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 60
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 61
    invoke-virtual {v9, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    if-eqz v14, :cond_1

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 65
    invoke-static/range {p5 .. p5}, Lcom/perm/kate/notifications/RepliesNotification;->getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 67
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 68
    invoke-virtual {v9, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    new-instance v18, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    invoke-static {v9}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 73
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 75
    .local v8, "notification":Landroid/app/Notification;
    if-nez p3, :cond_4

    .line 76
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v15

    .line 77
    .local v15, "silent_mode":Z
    invoke-static/range {p0 .. p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v16

    .line 78
    .local v16, "sleep_mode":Z
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 79
    .local v12, "prefs":Landroid/content/SharedPreferences;
    if-nez v15, :cond_2

    if-nez v16, :cond_2

    const v18, 0x7f070544

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 80
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Landroid/app/Notification;->vibrate:[J

    .line 81
    :cond_2
    if-nez v15, :cond_3

    if-nez v16, :cond_3

    const v18, 0x7f070542

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 82
    const v18, 0x7f070543

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 83
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "android.resource://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f060001

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 92
    :cond_3
    :goto_1
    const v18, 0x7f07053c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 93
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->ledARGB:I

    .line 94
    const/16 v18, 0x12c

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->ledOnMS:I

    .line 95
    const/16 v18, 0x3e8

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->ledOffMS:I

    .line 96
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 99
    .end local v12    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "silent_mode":Z
    .end local v16    # "sleep_mode":Z
    :cond_4
    if-eqz p1, :cond_5

    .line 100
    move/from16 v0, p1

    iput v0, v8, Landroid/app/Notification;->number:I

    .line 101
    :cond_5
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 103
    if-eqz p2, :cond_6

    .line 104
    iget v0, v8, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 106
    :cond_6
    const-string v18, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 107
    .local v6, "mManager":Landroid/app/NotificationManager;
    sget v18, Lcom/perm/kate/notifications/RepliesNotification;->id:I

    move/from16 v0, v18

    invoke-virtual {v6, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 108
    return-void

    .line 51
    .end local v6    # "mManager":Landroid/app/NotificationManager;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v10    # "notification_title":Ljava/lang/String;
    .end local v11    # "popup_message":Ljava/lang/CharSequence;
    :cond_7
    const v18, 0x7f0703b7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 52
    .restart local v11    # "popup_message":Ljava/lang/CharSequence;
    const v18, 0x7f070527

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 53
    .restart local v10    # "notification_title":Ljava/lang/String;
    const v18, 0x7f0703b7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 85
    .restart local v8    # "notification":Landroid/app/Notification;
    .restart local v9    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v12    # "prefs":Landroid/content/SharedPreferences;
    .restart local v15    # "silent_mode":Z
    .restart local v16    # "sleep_mode":Z
    :cond_8
    const v18, 0x7f070541

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "ringtone":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 87
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_1

    .line 89
    :cond_9
    iget v0, v8, Landroid/app/Notification;->defaults:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v8, Landroid/app/Notification;->defaults:I

    goto/16 :goto_1
.end method

.method private static getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "from_id"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 166
    if-nez p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v3

    .line 168
    :cond_1
    const/4 v1, 0x0

    .line 169
    .local v1, "photo":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 170
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 171
    .local v2, "user":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_2

    .line 172
    iget-object v1, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 178
    .end local v2    # "user":Lcom/perm/kate/api/User;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 180
    invoke-static {v1}, Lcom/perm/kate/notifications/MessagesNotification;->getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 174
    :cond_3
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 175
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_2

    .line 176
    iget-object v1, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getNotificationMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0703b7

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "notification_message":Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method private static getNotificationTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_name"    # Ljava/lang/String;

    .prologue
    .line 119
    move-object v0, p1

    .line 121
    .local v0, "notification_title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const v1, 0x7f070527

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0
.end method

.method private static getShowMessage(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f070534

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    .local v0, "flag_message_in_notification":Z
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    :cond_0
    return v0
.end method

.method private static getUserName(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "from_id"    # Ljava/lang/Long;
    .param p1, "first_name"    # Ljava/lang/String;
    .param p2, "last_name"    # Ljava/lang/String;
    .param p3, "group_name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v2, ""

    .line 136
    .local v2, "user_name":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 138
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 139
    .local v1, "user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    move-object v2, p3

    .line 152
    :cond_2
    return-object v2

    .line 142
    :cond_3
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 143
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 144
    iget-object v2, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static makeNotificationText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "user_name"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0703b7

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "popup_line":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    return-object v0
.end method
