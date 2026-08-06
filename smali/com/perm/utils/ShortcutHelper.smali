.class public Lcom/perm/utils/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# direct methods
.method public static createShortcutIcon(Landroid/app/Activity;JJJ)V
    .locals 21
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message_uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "group_id"    # J

    .prologue
    .line 25
    :try_start_0
    new-instance v14, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v14, "shortcutIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    const/high16 v2, 0x4000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_2

    .line 30
    const-string v2, "com.perm.kate.chat_id"

    move-wide/from16 v0, p3

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v2, p5, v4

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "group_id"

    move-wide/from16 v0, p5

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    :cond_0
    const/16 v16, 0x0

    .line 37
    .local v16, "title":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 39
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_4

    .line 40
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 41
    .local v8, "account_id":J
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v16

    .line 43
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v17

    .line 44
    .local v17, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/ImageLoader;->makeKey(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    .line 46
    .local v13, "key":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 84
    .end local v8    # "account_id":J
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    if-nez v16, :cond_8

    .line 108
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "shortcutIntent":Landroid/content/Intent;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :goto_2
    return-void

    .line 32
    .restart local v14    # "shortcutIntent":Landroid/content/Intent;
    :cond_2
    const-string v2, "com.perm.kate.message_uid"

    move-wide/from16 v0, p1

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v14    # "shortcutIntent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .line 105
    .local v15, "th":Ljava/lang/Throwable;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-static {v15}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 51
    .end local v15    # "th":Ljava/lang/Throwable;
    .restart local v8    # "account_id":J
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "shortcutIntent":Landroid/content/Intent;
    .restart local v16    # "title":Ljava/lang/CharSequence;
    .restart local v17    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 52
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 56
    .end local v3    # "file":Ljava/io/File;
    .end local v8    # "account_id":J
    .end local v13    # "key":Ljava/lang/String;
    .end local v17    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/16 v19, 0x0

    .line 57
    .local v19, "user_photo":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 58
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p1

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v12

    .line 59
    .local v12, "group":Lcom/perm/kate/api/Group;
    if-eqz v12, :cond_5

    .line 60
    iget-object v0, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 61
    iget-object v0, v12, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 71
    .end local v12    # "group":Lcom/perm/kate/api/Group;
    :cond_5
    :goto_3
    if-eqz v19, :cond_1

    .line 72
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 64
    :cond_6
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v18

    .line 65
    .local v18, "user":Lcom/perm/kate/api/User;
    if-eqz v18, :cond_5

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 67
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_3

    .line 76
    .end local v18    # "user":Lcom/perm/kate/api/User;
    :cond_7
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 77
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_1

    .line 88
    .end local v3    # "file":Ljava/io/File;
    .end local v19    # "user_photo":Ljava/lang/String;
    :cond_8
    if-eqz v11, :cond_9

    .line 89
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lcom/perm/utils/ShortcutHelper;->getScaledBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 91
    :cond_9
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v10, "addIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v10, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 94
    if-eqz v11, :cond_a

    .line 95
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v10, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    :goto_4
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 97
    :cond_a
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v4, 0x7f020130

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private static getLauncherIconSize(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 120
    .local v0, "size1":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-static {p0}, Lcom/perm/utils/ShortcutHelper;->launcherLargeIconSize(Landroid/app/Activity;)I

    move-result v1

    .line 121
    .local v1, "size2":I
    :goto_0
    if-le v1, v0, :cond_1

    .end local v1    # "size2":I
    :goto_1
    return v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "size2":I
    :cond_1
    move v1, v0

    .line 121
    goto :goto_1
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    :try_start_0
    invoke-static {p1}, Lcom/perm/utils/ShortcutHelper;->getLauncherIconSize(Landroid/app/Activity;)I

    move-result v0

    .line 133
    .local v0, "size":I
    const/4 v2, 0x1

    invoke-static {p0, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 138
    .end local v0    # "size":I
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 134
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static launcherLargeIconSize(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 113
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    return v1
.end method
