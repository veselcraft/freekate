.class public abstract Lcom/perm/kate/notifications/MessagesNotification;
.super Ljava/lang/Object;
.source "MessagesNotification.java"


# static fields
.field static CHANNEL:Ljava/lang/String; = "messages"

.field private static id:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static addWearableReplyAction(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 5

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f029e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 396
    new-instance v3, Landroidx/core/app/RemoteInput$Builder;

    const-string v4, "extra_voice_reply"

    invoke-direct {v3, v4}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v3, v0}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v2}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v0

    .line 402
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/perm/kate/WearReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "reply"

    .line 403
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "chat_id"

    .line 405
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p2, "from_id"

    .line 407
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x0

    const/high16 p2, 0x8000000

    .line 408
    invoke-static {p0, p1, v2, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 411
    new-instance p2, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v2, 0x7f0801d6

    .line 412
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 413
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object p0

    .line 414
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    .line 417
    new-instance p1, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$WearableExtender;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static cancel(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "notification"

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 313
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/perm/kate/notifications/MessagesNotification;->id:I

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 58
    const-class v4, Lcom/perm/kate/MessageThreadActivity;

    if-eqz v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/perm/kate/push/C2DMReceiver;->getPushAccount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "@all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
    :cond_0
    invoke-static {v0, v2, v3}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-static {v3, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v5

    .line 71
    invoke-static {v0, v5, v6}, Lcom/perm/kate/notifications/MessagesNotification;->getShowMessage(Landroid/content/Context;J)Z

    move-result v7

    const v8, 0x7f0f0231

    if-eqz v7, :cond_3

    .line 73
    invoke-static {v1, v2, v0}, Lcom/perm/kate/notifications/MessagesNotification;->makeNotificationText(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 74
    invoke-static/range {p3 .. p3}, Lcom/perm/kate/notifications/MessagesNotification;->getChatTitle(Ljava/lang/Long;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 75
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 76
    invoke-static/range {p2 .. p2}, Lcom/perm/kate/notifications/MessagesNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v10

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 80
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/perm/kate/notifications/MessagesNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 84
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v1, ""

    .line 88
    :goto_0
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/perm/kate/MessageThreadActivity;->getShowLeftPane()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_5

    move-object v14, v4

    goto :goto_2

    .line 91
    :cond_5
    const-class v14, Lcom/perm/kate/DialogsActivity;

    .line 92
    :goto_2
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v14, 0x24000000

    .line 93
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    new-instance v14, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v14, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v14, v9}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 98
    invoke-virtual {v14, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 99
    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/notifications/Utils;->getMessagesIconId(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v14, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v7, :cond_6

    .line 108
    invoke-static {v0, v2}, Lcom/perm/kate/notifications/MessagesNotification;->getLargeIcon(Landroid/content/Context;Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 111
    invoke-virtual {v14, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 114
    :cond_7
    :goto_3
    invoke-static {v0, v13, v15, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    if-ge v9, v15, :cond_8

    .line 120
    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v7, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    .line 127
    :cond_8
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    sget v15, Lcom/perm/kate/notifications/MessagesNotification;->id:I

    invoke-static {v8, v15}, Lcom/perm/kate/notifications/MessagesNotification;->getActiveNotification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 129
    invoke-static {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;->extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object v8

    goto :goto_4

    .line 130
    :cond_9
    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    const-string v15, "\u0412\u044b"

    invoke-direct {v8, v15}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    :goto_4
    new-instance v15, Landroidx/core/app/Person$Builder;

    invoke-direct {v15}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v15, v10}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v10

    if-eqz v7, :cond_a

    .line 134
    invoke-static {v7}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    .line 135
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v10

    invoke-virtual {v8, v1, v12, v13, v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 136
    invoke-virtual {v14, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    :goto_5
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v8, "headsup_notifications"

    const/4 v10, 0x1

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 142
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v8, "key_popup_reply"

    const/4 v7, 0x0

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 143
    invoke-virtual {v14, v10}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b
    const v1, 0x7f0801e9

    if-nez v11, :cond_f

    if-nez v3, :cond_c

    if-eqz v2, :cond_f

    .line 149
    :cond_c
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x18000000

    .line 151
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_d

    const-string v4, "com.perm.kate.chat_id"

    .line 153
    invoke-virtual {v8, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_6

    :cond_d
    const-string v4, "com.perm.kate.message_uid"

    .line 155
    invoke-virtual {v8, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_6
    if-eqz v3, :cond_e

    .line 156
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->intValue()I

    move-result v4

    goto :goto_7

    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->intValue()I

    move-result v4

    :goto_7
    const/high16 v10, 0x10000000

    .line 157
    invoke-static {v0, v4, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v8, 0x7f0f0231

    .line 158
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v14, v1, v10, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 161
    :cond_f
    invoke-static {v14}, Lcom/perm/kate/notifications/MessagesNotification;->setColor(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 163
    invoke-static {v0, v2, v3, v14}, Lcom/perm/kate/notifications/MessagesNotification;->addWearableReplyAction(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Landroidx/core/app/NotificationCompat$Builder;)V

    const/high16 v4, 0x8000000

    const-string v8, "chat_id"

    const-string v10, "from_id"

    const/16 v11, 0x18

    if-lt v9, v11, :cond_12

    if-nez v3, :cond_10

    if-eqz v2, :cond_12

    .line 170
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f029e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    new-instance v13, Landroidx/core/app/RemoteInput$Builder;

    const-string v7, "extra_voice_reply"

    invoke-direct {v13, v7}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v13, v11}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v7

    .line 173
    invoke-virtual {v7}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v7

    .line 176
    new-instance v11, Landroid/content/Intent;

    const-class v13, Lcom/perm/kate/WearReceiver;

    invoke-direct {v11, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "reply"

    .line 177
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_11

    .line 179
    invoke-virtual {v11, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_8

    .line 181
    :cond_11
    invoke-virtual {v11, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_8
    long-to-int v13, v5

    .line 182
    invoke-static {v0, v13, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 185
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 186
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v1, v12, v11}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    invoke-virtual {v13, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    .line 189
    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_12
    if-nez v3, :cond_13

    if-eqz v2, :cond_15

    .line 195
    :cond_13
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/perm/kate/WearReceiver;

    invoke-direct {v1, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "read"

    .line 196
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_14

    .line 198
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_9

    .line 200
    :cond_14
    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_9
    long-to-int v2, v5

    .line 201
    invoke-static {v0, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0801b1

    const v3, 0x7f0f032e

    .line 204
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v2, v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 208
    :cond_15
    invoke-static {}, Lcom/perm/utils/SilentMode;->isEnabled()Z

    move-result v1

    .line 209
    invoke-static/range {p0 .. p0}, Lcom/perm/utils/SleepModeHelper;->isActiveSleepMode(Landroid/content/Context;)Z

    move-result v2

    .line 210
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x1a

    if-nez v1, :cond_17

    if-nez v2, :cond_17

    const v7, 0x7f0f016e

    .line 212
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_16

    if-lt v9, v4, :cond_17

    :cond_16
    const/4 v10, 0x1

    goto :goto_a

    :cond_17
    const/4 v10, 0x0

    :goto_a
    if-lt v9, v4, :cond_18

    .line 215
    sget-object v7, Lcom/perm/kate/notifications/MessagesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/perm/kate/notifications/Utils;->getChannelId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_18
    const-string v7, "msg"

    .line 218
    invoke-virtual {v14, v7}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 221
    invoke-virtual {v14}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    if-nez v1, :cond_19

    if-nez v2, :cond_19

    const-string v1, "key_notify_vibration"

    const/4 v2, 0x0

    .line 223
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 224
    invoke-static {v0, v3}, Lcom/perm/kate/notifications/Utils;->getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J

    move-result-object v1

    iput-object v1, v7, Landroid/app/Notification;->vibrate:[J

    :cond_19
    if-eqz v10, :cond_1c

    const v1, 0x7f0f016f

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/raw/notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 229
    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :goto_b
    move-object v2, v8

    :goto_c
    const/4 v8, 0x1

    goto :goto_d

    :cond_1a
    const v1, 0x7f0f016d

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/perm/kate/notifications/MessagesNotification;->fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 234
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 235
    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_b

    .line 237
    :cond_1b
    iget v1, v7, Landroid/app/Notification;->defaults:I

    const/4 v8, 0x1

    or-int/2addr v1, v8

    iput v1, v7, Landroid/app/Notification;->defaults:I

    goto :goto_d

    :cond_1c
    const/4 v2, 0x0

    goto :goto_c

    :goto_d
    const-string v1, "key_notify_led"

    .line 240
    invoke-interface {v3, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 243
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Settings;->getLedColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v7, Landroid/app/Notification;->ledARGB:I

    const/16 v1, 0x12c

    .line 244
    iput v1, v7, Landroid/app/Notification;->ledOnMS:I

    const/16 v1, 0x3e8

    .line 245
    iput v1, v7, Landroid/app/Notification;->ledOffMS:I

    .line 246
    iget v1, v7, Landroid/app/Notification;->flags:I

    or-int/2addr v1, v8

    iput v1, v7, Landroid/app/Notification;->flags:I

    .line 249
    :cond_1d
    iget v1, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v7, Landroid/app/Notification;->flags:I

    if-lt v9, v4, :cond_1f

    if-eqz v10, :cond_1e

    .line 255
    sget-object v1, Lcom/perm/kate/notifications/MessagesNotification;->CHANNEL:Ljava/lang/String;

    const v3, 0x7f0f0231

    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/notifications/Utils;->createNotificationChannelHigh(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_e

    :cond_1e
    const v3, 0x7f0f0231

    .line 257
    sget-object v1, Lcom/perm/kate/notifications/MessagesNotification;->CHANNEL:Ljava/lang/String;

    invoke-static {v0, v1, v3, v10, v2}, Lcom/perm/kate/notifications/Utils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;IZLandroid/net/Uri;)V

    :cond_1f
    :goto_e
    const-string v1, "notification"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 263
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/perm/kate/notifications/MessagesNotification;->id:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method static fileRingtoneFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 285
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Redmi"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mi "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MI "

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DUA-L22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MIX"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Impress_Lion_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ZB633KL"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TECNO F4 Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "POCOPHONE F1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ZB602KL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLT-L29"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mi-"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LLD-L31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_1

    const-string v0, "file:///storage"

    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method static getActiveNotification(Ljava/lang/String;I)Landroid/app/Notification;
    .locals 5

    .line 424
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 425
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 426
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 427
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 381
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 387
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    const/16 v3, 0x12c

    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getChatTitle(Ljava/lang/Long;)Ljava/lang/CharSequence;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 271
    :cond_0
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v1}, Lcom/perm/kate/LongPoll;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Lcom/perm/kate/push/C2DMReceiver;->getPushAccount()J

    move-result-wide v1

    .line 274
    :goto_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getLargeIcon(Landroid/content/Context;Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 367
    iget-object p1, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 371
    iget-object p1, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    if-nez p1, :cond_3

    return-object p0

    .line 375
    :cond_3
    invoke-static {p1}, Lcom/perm/kate/notifications/MessagesNotification;->getBitmapFromMemoryOrSdCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getShowMessage(Landroid/content/Context;J)Z
    .locals 3

    .line 317
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0166

    .line 318
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 319
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 321
    :cond_0
    invoke-static {p1, p2}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static getUserName(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 353
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static makeNotificationText(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 328
    :try_start_0
    invoke-static {p1}, Lcom/perm/kate/notifications/MessagesNotification;->getUserName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p0, :cond_2

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const p0, 0x7f0f0231

    .line 341
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setColor(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 298
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method
