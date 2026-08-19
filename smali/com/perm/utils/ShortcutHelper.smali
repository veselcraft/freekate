.class public abstract Lcom/perm/utils/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# direct methods
.method public static createGroupShortcutIcon(Landroid/app/Activity;J)V
    .locals 13

    .line 138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v3, "OPEN"

    .line 141
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v3, 0x10000000

    .line 142
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 143
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.perm.kate.group_id"

    .line 144
    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 147
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 149
    iget-object v5, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 150
    iget-object v3, v3, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    const/16 v9, 0x12c

    const/16 v10, 0x12c

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    move-object v3, v4

    move-object v5, v3

    :goto_0
    if-nez v5, :cond_4

    return-void

    :cond_4
    const v6, 0x7f0801ef

    if-lt v1, v2, :cond_6

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance p2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {p2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 173
    invoke-virtual {p2, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    if-eqz v3, :cond_5

    .line 176
    invoke-static {v3, p0}, Lcom/perm/utils/ShortcutHelper;->getScaledBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 177
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_1

    .line 179
    :cond_5
    invoke-static {p0, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 180
    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 181
    const-class p1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 182
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    goto :goto_3

    .line 184
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 186
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz v3, :cond_7

    .line 189
    invoke-static {v3, p0}, Lcom/perm/utils/ShortcutHelper;->getScaledBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "android.intent.extra.shortcut.ICON"

    .line 190
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 192
    invoke-static {p0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    const-string p2, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 193
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static createShortcutIcon(Landroid/app/Activity;JJJ)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    const-string v7, "_"

    .line 27
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/perm/kate/MessageThreadActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_0

    const-string v11, "OPEN"

    .line 30
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v11, 0x10000000

    .line 31
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v11, 0x4000000

    .line 32
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-wide/16 v11, 0x0

    cmp-long v13, v3, v11

    if-lez v13, :cond_1

    const-string v13, "com.perm.kate.chat_id"

    .line 35
    invoke-virtual {v8, v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v13, "com.perm.kate.message_uid"

    .line 37
    invoke-virtual {v8, v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    cmp-long v13, v5, v11

    if-eqz v13, :cond_2

    const-string v13, "group_id"

    .line 39
    invoke-virtual {v8, v13, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    const/4 v13, 0x0

    cmp-long v14, v3, v11

    if-lez v14, :cond_4

    .line 45
    sget-object v11, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v11}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 46
    sget-object v14, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v14, v3, v4, v11, v12}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v11

    .line 48
    sget-object v12, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v12, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v12

    .line 49
    invoke-static {v12}, Lcom/perm/kate/ImageLoader;->makeKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    .line 51
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 53
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_3

    .line 56
    :cond_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 57
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 58
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v15

    const/16 v17, 0x12c

    const/16 v18, 0x12c

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_3

    .line 62
    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 63
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v14, v1

    invoke-virtual {v11, v14, v15}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 65
    iget-object v12, v11, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 66
    iget-object v11, v11, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_5
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v11, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 71
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 72
    iget-object v11, v11, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v11, v13

    move-object v12, v11

    :goto_1
    if-eqz v11, :cond_8

    .line 77
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 78
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_2
    move-object/from16 v21, v12

    move-object v12, v11

    move-object/from16 v11, v21

    goto :goto_3

    .line 81
    :cond_7
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 82
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 83
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v15

    const/16 v17, 0x12c

    const/16 v18, 0x12c

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_2

    :cond_8
    move-object v11, v12

    :cond_9
    move-object v12, v13

    :goto_3
    if-nez v11, :cond_a

    return-void

    :cond_a
    if-eqz v12, :cond_b

    .line 94
    invoke-static {v12, v0}, Lcom/perm/utils/ShortcutHelper;->getScaledBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_b
    const v14, 0x7f0801ef

    if-lt v9, v10, :cond_d

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dialog"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v11}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 106
    invoke-virtual {v2, v11}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    if-eqz v12, :cond_c

    .line 108
    invoke-static {v12}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    goto :goto_4

    .line 110
    :cond_c
    invoke-static {v0, v14}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 111
    :goto_4
    invoke-virtual {v2, v8}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 113
    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 114
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    goto :goto_6

    .line 116
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 117
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 118
    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz v12, :cond_e

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 120
    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    :cond_e
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 122
    invoke-static {v0, v14}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_5
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method private static getLauncherIconSize(Landroid/app/Activity;)I
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 210
    invoke-static {p0}, Lcom/perm/utils/ShortcutHelper;->launcherLargeIconSize(Landroid/app/Activity;)I

    move-result p0

    if-le p0, v0, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 1

    .line 216
    :try_start_0
    invoke-static {p1}, Lcom/perm/utils/ShortcutHelper;->getLauncherIconSize(Landroid/app/Activity;)I

    move-result p1

    const/4 v0, 0x1

    .line 223
    invoke-static {p0, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static launcherLargeIconSize(Landroid/app/Activity;)I
    .locals 1

    const-string v0, "activity"

    .line 203
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 204
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p0

    return p0
.end method
