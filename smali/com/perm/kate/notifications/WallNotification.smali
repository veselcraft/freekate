.class public Lcom/perm/kate/notifications/WallNotification;
.super Ljava/lang/Object;
.source "WallNotification.java"


# static fields
.field static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x11

    sput v0, Lcom/perm/kate/notifications/WallNotification;->id:I

    return-void
.end method

.method public static display(Landroid/content/Context;Lcom/perm/kate/api/WallMessage;JI)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wm"    # Lcom/perm/kate/api/WallMessage;
    .param p2, "from_id"    # J
    .param p4, "type"    # I

    .prologue
    .line 32
    new-instance v3, Landroid/content/Intent;

    const-class v14, Lcom/perm/kate/WallActivity2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v3, "intent":Landroid/content/Intent;
    const-string v14, "com.perm.kate.user_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v15, "show_suggested"

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_4

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v3, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 40
    invoke-static {}, Lcom/perm/kate/notifications/WallNotification;->makeNotificationText()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "popup_message":Ljava/lang/CharSequence;
    invoke-static/range {p2 .. p3}, Lcom/perm/kate/notifications/WallNotification;->getNotificationTitle(J)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "notification_title":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/perm/kate/notifications/WallNotification;->getNotificationMessage(Lcom/perm/kate/api/WallMessage;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 45
    .local v5, "message":Ljava/lang/CharSequence;
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v7, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v7, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 47
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 48
    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 50
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/notifications/Utils;->getIconId(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xa

    if-lt v14, v15, :cond_0

    .line 52
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v14}, Lcom/perm/kate/notifications/WallNotification;->getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 54
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 57
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-wide/from16 v0, p2

    long-to-int v14, v0

    const/high16 v15, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    new-instance v14, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v14}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v14, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 59
    invoke-static {v7}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 60
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 62
    .local v6, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v12

    .line 63
    .local v12, "silent_mode":Z
    invoke-static/range {p0 .. p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v13

    .line 64
    .local v13, "sleep_mode":Z
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 65
    .local v10, "prefs":Landroid/content/SharedPreferences;
    if-nez v12, :cond_1

    if-nez v13, :cond_1

    const v14, 0x7f070544

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 66
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v14

    iput-object v14, v6, Landroid/app/Notification;->vibrate:[J

    .line 67
    :cond_1
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    const v14, 0x7f070542

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 68
    const v14, 0x7f070543

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 69
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "android.resource://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f060002

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 78
    :cond_2
    :goto_1
    const v14, 0x7f07053c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v14

    iput v14, v6, Landroid/app/Notification;->ledARGB:I

    .line 80
    const/16 v14, 0x12c

    iput v14, v6, Landroid/app/Notification;->ledOnMS:I

    .line 81
    const/16 v14, 0x3e8

    iput v14, v6, Landroid/app/Notification;->ledOffMS:I

    .line 82
    iget v14, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x1

    iput v14, v6, Landroid/app/Notification;->flags:I

    .line 84
    :cond_3
    iget v14, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v6, Landroid/app/Notification;->flags:I

    .line 86
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 89
    .local v4, "mManager":Landroid/app/NotificationManager;
    sget v14, Lcom/perm/kate/notifications/WallNotification;->id:I

    const v15, 0xf4240

    mul-int/2addr v14, v15

    const-wide/32 v16, 0xf4240

    rem-long v16, p2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    add-int/2addr v14, v15

    invoke-virtual {v4, v14, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    return-void

    .line 34
    .end local v4    # "mManager":Landroid/app/NotificationManager;
    .end local v5    # "message":Ljava/lang/CharSequence;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v8    # "notification_title":Ljava/lang/String;
    .end local v9    # "popup_message":Ljava/lang/CharSequence;
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "silent_mode":Z
    .end local v13    # "sleep_mode":Z
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 71
    .restart local v5    # "message":Ljava/lang/CharSequence;
    .restart local v6    # "notification":Landroid/app/Notification;
    .restart local v7    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v8    # "notification_title":Ljava/lang/String;
    .restart local v9    # "popup_message":Ljava/lang/CharSequence;
    .restart local v10    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "silent_mode":Z
    .restart local v13    # "sleep_mode":Z
    :cond_5
    const v14, 0x7f070541

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "ringtone":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 73
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 75
    :cond_6
    iget v14, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v14, v14, 0x1

    iput v14, v6, Landroid/app/Notification;->defaults:I

    goto :goto_1
.end method

.method private static getLargeIcon(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "from_id"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 121
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v3

    .line 123
    :cond_1
    const/4 v1, 0x0

    .line 124
    .local v1, "photo":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 125
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 126
    .local v2, "user":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_2

    .line 127
    iget-object v1, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 133
    .end local v2    # "user":Lcom/perm/kate/api/User;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 135
    invoke-static {v1}, Lcom/perm/kate/notifications/MessagesNotification;->getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 129
    :cond_3
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 130
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_2

    .line 131
    iget-object v1, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getNotificationMessage(Lcom/perm/kate/api/WallMessage;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "wm"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 96
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v3, 0x7f070491

    invoke-virtual {v2, v3}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v3, p0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1
    return-object v0
.end method

.method private static getNotificationTitle(J)Ljava/lang/String;
    .locals 2
    .param p0, "from_id"    # J

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/perm/kate/notifications/WallNotification;->getUserName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserName(J)Ljava/lang/String;
    .locals 6
    .param p0, "from_id"    # J

    .prologue
    .line 139
    const-string v2, ""

    .line 140
    .local v2, "user_name":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_1

    .line 141
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, p0, p1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 142
    .local v1, "user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 143
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

    .line 149
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    return-object v2

    .line 145
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v4, p0

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 146
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 147
    iget-object v2, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static makeNotificationText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f07030c

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
