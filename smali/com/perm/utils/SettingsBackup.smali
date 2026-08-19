.class public abstract Lcom/perm/utils/SettingsBackup;
.super Ljava/lang/Object;
.source "SettingsBackup.java"


# direct methods
.method public static backup()Z
    .locals 8

    const-string v0, "app_bg"

    const-string v1, "dash.bin"

    const-string v2, "recent_stickers.bin"

    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 37
    invoke-static {}, Lcom/perm/utils/SettingsBackup;->getSettingsDir()Ljava/io/File;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 40
    new-instance v5, Ljava/io/File;

    const-string v6, "search_history_pref"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/perm/utils/SettingsBackup;->saveSharedPreferencesToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 42
    new-instance v5, Ljava/io/File;

    const-string v6, "wall_subscriptions"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/perm/utils/SettingsBackup;->saveSharedPreferencesToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 44
    new-instance v5, Ljava/io/File;

    const-string v6, "recommendations_pref"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/perm/utils/SettingsBackup;->saveSharedPreferencesToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 46
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 47
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    const-string v6, "accounts"

    .line 49
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "current_account"

    .line 50
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "news_pos_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "news_offset_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "news_from"

    .line 56
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "push_token"

    .line 58
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "keep_names"

    .line 62
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "keep_news"

    .line 64
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "key_block_password"

    .line 66
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "key_always_unblock"

    .line 68
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "release_notes_version"

    .line 70
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v6, Ljava/io/File;

    const-string v7, "preferences"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lcom/perm/utils/SettingsBackup;->saveSharedPreferencesToFile(Ljava/io/File;Ljava/util/Map;)Z

    move-result v5

    .line 75
    :try_start_0
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 79
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 84
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 94
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 105
    :cond_3
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "message_bgs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v5
.end method

.method public static getSettingsDir()Ljava/io/File;
    .locals 3

    .line 118
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "/KateSettings"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "KateSettings"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static loadSharedPreferencesFromFile(Ljava/io/File;Landroid/content/SharedPreferences;)Z
    .locals 4

    const/4 v0, 0x0

    .line 229
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 232
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 233
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 237
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 238
    :cond_1
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 239
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 240
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 241
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 242
    :cond_3
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 243
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 244
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 245
    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 247
    :cond_5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 254
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 250
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 p0, 0x0

    .line 254
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return p0

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 255
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static loadSharedPreferencesFromFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 221
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 222
    invoke-static {p0, p1}, Lcom/perm/utils/SettingsBackup;->loadSharedPreferencesFromFile(Ljava/io/File;Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method public static restore()Z
    .locals 8

    const-string v0, "app_bg"

    const-string v1, "dash.bin"

    const-string v2, "recent_stickers.bin"

    .line 125
    invoke-static {}, Lcom/perm/utils/SettingsBackup;->getSettingsDir()Ljava/io/File;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/io/File;

    const-string v5, "search_history_pref"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/perm/utils/SettingsBackup;->loadSharedPreferencesFromFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 127
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Lcom/perm/kate/history/SearchHistoryHelper;->reinit(Landroid/content/Context;)V

    .line 129
    new-instance v4, Ljava/io/File;

    const-string v5, "wall_subscriptions"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/perm/utils/SettingsBackup;->loadSharedPreferencesFromFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 131
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perm/utils/WallSubscriptions;->init()V

    .line 133
    new-instance v4, Ljava/io/File;

    const-string v5, "recommendations_pref"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/perm/utils/SettingsBackup;->loadSharedPreferencesFromFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 135
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 136
    new-instance v5, Ljava/io/File;

    const-string v6, "preferences"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/perm/utils/SettingsBackup;->loadSharedPreferencesFromFile(Ljava/io/File;Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 140
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/perm/kate/RecentStickers;->reinit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 145
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 151
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 154
    :cond_1
    invoke-static {}, Lcom/perm/kate/DashboardItems;->load()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 163
    :goto_1
    :try_start_2
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 169
    :cond_2
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 176
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "message_bgs"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 180
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-static {v1, v3}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 184
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_background"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    :cond_3
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_3
    return v4
.end method

.method private static saveSharedPreferencesToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 201
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 202
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perm/utils/SettingsBackup;->saveSharedPreferencesToFile(Ljava/io/File;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static saveSharedPreferencesToFile(Ljava/io/File;Ljava/util/Map;)Z
    .locals 4

    const/4 v0, 0x0

    .line 208
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 211
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 p0, 0x0

    .line 215
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return p0

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 216
    throw p0
.end method
