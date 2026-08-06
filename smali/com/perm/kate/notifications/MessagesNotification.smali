.class public Lcom/perm/kate/notifications/MessagesNotification;
.super Ljava/lang/Object;
.source "MessagesNotification.java"


# static fields
.field private static id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/perm/kate/notifications/MessagesNotification;->id:I

    return-void
.end method

.method private static addWearableReplyAction(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from_id"    # Ljava/lang/Long;
    .param p2, "chat_id"    # Ljava/lang/Long;
    .param p3, "notification_builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const v8, 0x7f070244

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "choices":[Ljava/lang/String;
    new-instance v6, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v7, "extra_voice_reply"

    invoke-direct {v6, v7}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v6, v3}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v6

    .line 276
    invoke-virtual {v6, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v6

    .line 277
    invoke-virtual {v6}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    .line 280
    .local v5, "remoteInput":Landroid/support/v4/app/RemoteInput;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/perm/kate/WearReceiver;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "reply"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    if-eqz p2, :cond_0

    .line 283
    const-string v6, "chat_id"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 286
    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 289
    .local v4, "pending":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v7, 0x7f020125

    .line 290
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 291
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v6

    .line 292
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 295
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 296
    return-void

    .line 285
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v4    # "pending":Landroid/app/PendingIntent;
    :cond_0
    const-string v6, "from_id"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 191
    .local v0, "mManager":Landroid/app/NotificationManager;
    sget v1, Lcom/perm/kate/notifications/MessagesNotification;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 192
    return-void
.end method

.method public static display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "from_id"    # Ljava/lang/Long;
    .param p3, "chat_id"    # Ljava/lang/Long;

    .prologue
    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 183
    :goto_0
    return-void

    .line 53
    :cond_0
    const/16 v26, 0x0

    .line 56
    .local v26, "thread_id":Ljava/lang/Long;
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 58
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/perm/kate/notifications/MessagesNotification;->getShowMessage(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v23

    .line 59
    .local v23, "show_message":Z
    if-eqz v23, :cond_b

    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/perm/kate/notifications/MessagesNotification;->makeNotificationText(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 61
    .local v17, "popup_message":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/perm/kate/notifications/MessagesNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, "notification_title":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "notification_message":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-static {}, Lcom/perm/kate/MessageThreadActivity;->getShowLeftPane()Z

    move-result v28

    if-eqz v28, :cond_c

    const/4 v15, 0x1

    .line 70
    .local v15, "open_message_thread":Z
    :goto_2
    if-eqz v15, :cond_d

    const-class v6, Lcom/perm/kate/MessageThreadActivity;

    .line 73
    .local v6, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v28, 0x24000000

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    new-instance v12, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v12, "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 79
    invoke-virtual {v12, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/notifications/Utils;->getMessagesIconId(Landroid/content/Context;)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    if-eqz v23, :cond_2

    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/perm/kate/notifications/MessagesNotification;->getLargeIcon(Landroid/content/Context;Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 90
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    .line 91
    invoke-virtual {v12, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 94
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 97
    new-instance v28, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v28 .. v28}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    sget-object v28, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static/range {v28 .. v28}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    const-string v29, "headsup_notifications"

    const/16 v30, 0x1

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_3

    sget-object v28, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 102
    invoke-static/range {v28 .. v28}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    const-string v29, "key_popup_reply"

    const/16 v30, 0x1

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_3

    .line 103
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    :cond_3
    if-nez v15, :cond_5

    .line 107
    if-nez p3, :cond_4

    if-eqz p2, :cond_5

    .line 108
    :cond_4
    new-instance v9, Landroid/content/Intent;

    const-class v28, Lcom/perm/kate/MessageThreadActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v9, "intent_reply":Landroid/content/Intent;
    const/high16 v28, 0x18000000

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    if-eqz p3, :cond_e

    .line 112
    const-string v28, "com.perm.kate.chat_id"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 115
    :goto_4
    if-eqz p3, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->intValue()I

    move-result v27

    .line 116
    .local v27, "userIdHash":I
    :goto_5
    const/high16 v28, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 117
    .local v16, "pi_reply":Landroid/app/PendingIntent;
    const v28, 0x7f02012a

    const v29, 0x7f0701d5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v12, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    .end local v9    # "intent_reply":Landroid/content/Intent;
    .end local v16    # "pi_reply":Landroid/app/PendingIntent;
    .end local v27    # "userIdHash":I
    :cond_5
    invoke-static {v12}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v12}, Lcom/perm/kate/notifications/MessagesNotification;->addWearableReplyAction(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 127
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0x18

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-nez p3, :cond_6

    if-eqz p2, :cond_7

    .line 129
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070244

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 130
    .local v20, "replyLabel":Ljava/lang/String;
    new-instance v28, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v29, "extra_voice_reply"

    invoke-direct/range {v28 .. v29}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v28

    .line 132
    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v19

    .line 135
    .local v19, "remoteInput":Landroid/support/v4/app/RemoteInput;
    new-instance v8, Landroid/content/Intent;

    const-class v28, Lcom/perm/kate/WearReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v8, "intent1":Landroid/content/Intent;
    const-string v28, "reply"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    if-eqz p3, :cond_10

    .line 138
    const-string v28, "chat_id"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 141
    :goto_6
    const/16 v28, 0x0

    const/high16 v29, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 144
    .local v21, "replyPendingIntent":Landroid/app/PendingIntent;
    new-instance v28, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v29, 0x7f02012a

    const v30, 0x7f070244

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 146
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v28

    .line 147
    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    .line 148
    .local v4, "action":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {v12, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 153
    .end local v4    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v8    # "intent1":Landroid/content/Intent;
    .end local v19    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v20    # "replyLabel":Ljava/lang/String;
    .end local v21    # "replyPendingIntent":Landroid/app/PendingIntent;
    :cond_7
    invoke-virtual {v12}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 155
    .local v11, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v24

    .line 156
    .local v24, "silent_mode":Z
    invoke-static/range {p0 .. p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v25

    .line 157
    .local v25, "sleep_mode":Z
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 158
    .local v18, "prefs":Landroid/content/SharedPreferences;
    if-nez v24, :cond_8

    if-nez v25, :cond_8

    const v28, 0x7f070544

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v11, Landroid/app/Notification;->vibrate:[J

    .line 160
    :cond_8
    if-nez v24, :cond_9

    if-nez v25, :cond_9

    const v28, 0x7f070542

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 161
    const v28, 0x7f070543

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 162
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "android.resource://"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const v29, 0x7f060002

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 171
    :cond_9
    :goto_7
    const v28, 0x7f07053c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 172
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v11, Landroid/app/Notification;->ledARGB:I

    .line 173
    const/16 v28, 0x12c

    move/from16 v0, v28

    iput v0, v11, Landroid/app/Notification;->ledOnMS:I

    .line 174
    const/16 v28, 0x3e8

    move/from16 v0, v28

    iput v0, v11, Landroid/app/Notification;->ledOffMS:I

    .line 175
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 178
    :cond_a
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x10

    move/from16 v0, v28

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 181
    const-string v28, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 182
    .local v10, "mManager":Landroid/app/NotificationManager;
    sget v28, Lcom/perm/kate/notifications/MessagesNotification;->id:I

    move/from16 v0, v28

    invoke-virtual {v10, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 64
    .end local v6    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "mManager":Landroid/app/NotificationManager;
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v12    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v13    # "notification_message":Ljava/lang/String;
    .end local v14    # "notification_title":Ljava/lang/String;
    .end local v15    # "open_message_thread":Z
    .end local v17    # "popup_message":Ljava/lang/String;
    .end local v18    # "prefs":Landroid/content/SharedPreferences;
    .end local v24    # "silent_mode":Z
    .end local v25    # "sleep_mode":Z
    :cond_b
    const v28, 0x7f0701d5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 65
    .restart local v17    # "popup_message":Ljava/lang/String;
    const v28, 0x7f0701d5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 66
    .restart local v14    # "notification_title":Ljava/lang/String;
    const-string v13, ""

    .restart local v13    # "notification_message":Ljava/lang/String;
    goto/16 :goto_1

    .line 69
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 70
    .restart local v15    # "open_message_thread":Z
    :cond_d
    const-class v6, Lcom/perm/kate/DialogsActivity;

    goto/16 :goto_3

    .line 114
    .restart local v6    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent_reply":Landroid/content/Intent;
    .restart local v12    # "notification_builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_e
    const-string v28, "com.perm.kate.message_uid"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 115
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->intValue()I

    move-result v27

    goto/16 :goto_5

    .line 140
    .end local v9    # "intent_reply":Landroid/content/Intent;
    .restart local v8    # "intent1":Landroid/content/Intent;
    .restart local v19    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .restart local v20    # "replyLabel":Ljava/lang/String;
    :cond_10
    const-string v28, "from_id"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 164
    .end local v8    # "intent1":Landroid/content/Intent;
    .end local v19    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v20    # "replyLabel":Ljava/lang/String;
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v18    # "prefs":Landroid/content/SharedPreferences;
    .restart local v24    # "silent_mode":Z
    .restart local v25    # "sleep_mode":Z
    :cond_11
    const v28, 0x7f070541

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 165
    .local v22, "ringtone":Ljava/lang/String;
    if-eqz v22, :cond_12

    .line 166
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_7

    .line 168
    :cond_12
    iget v0, v11, Landroid/app/Notification;->defaults:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    iput v0, v11, Landroid/app/Notification;->defaults:I

    goto/16 :goto_7
.end method

.method public static getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "user_photo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    const/4 v4, 0x0

    .line 257
    const/4 v6, 0x0

    .line 258
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, p0

    .line 259
    .local v7, "key":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 267
    :cond_0
    :goto_0
    return-object v6

    .line 263
    :cond_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 264
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method private static getLargeIcon(Landroid/content/Context;Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from_id"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v3

    .line 241
    :cond_1
    const/4 v2, 0x0

    .line 242
    .local v2, "user_photo":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 243
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 244
    .local v1, "user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_2

    .line 245
    iget-object v2, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 251
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 253
    invoke-static {v2}, Lcom/perm/kate/notifications/MessagesNotification;->getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 247
    :cond_3
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 248
    .local v0, "group":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_2

    .line 249
    iget-object v2, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getShowMessage(Landroid/content/Context;Ljava/lang/Long;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread_id"    # Ljava/lang/Long;

    .prologue
    .line 195
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f070534

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 197
    .local v0, "flag_message_in_notification":Z
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 199
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    const/4 v0, 0x0

    .line 201
    .end local v0    # "flag_message_in_notification":Z
    :cond_1
    return v0
.end method

.method private static getUserName(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .param p0, "from_id"    # Ljava/lang/Long;

    .prologue
    .line 223
    const-string v2, ""

    .line 224
    .local v2, "user_name":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 235
    .end local v2    # "user_name":Ljava/lang/String;
    .local v3, "user_name":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 226
    .end local v3    # "user_name":Ljava/lang/String;
    .restart local v2    # "user_name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 227
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 228
    .local v1, "user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_1
    :goto_1
    move-object v3, v2

    .line 235
    .end local v2    # "user_name":Ljava/lang/String;
    .restart local v3    # "user_name":Ljava/lang/String;
    goto :goto_0

    .line 231
    .end local v3    # "user_name":Ljava/lang/String;
    .restart local v2    # "user_name":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 232
    .local v0, "group":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_1

    .line 233
    iget-object v2, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private static makeNotificationText(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from_id"    # Ljava/lang/Long;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    :try_start_0
    invoke-static {p1}, Lcom/perm/kate/notifications/MessagesNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "user_name":Ljava/lang/String;
    const-string v0, ""

    .line 208
    .local v0, "popup_line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_1
    if-eqz p0, :cond_2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    .end local v0    # "popup_line":Ljava/lang/String;
    .end local v2    # "user_name":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 219
    const v3, 0x7f0701d5

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static setColor(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "notification_builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 186
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 187
    return-void
.end method
