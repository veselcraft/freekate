.class public Lcom/perm/kate/video_cache/VideoCache;
.super Ljava/lang/Object;
.source "VideoCache.java"


# static fields
.field public static PATH_PREF_NAME:Ljava/lang/String;

.field static callback:Lcom/perm/kate/session/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "video_cache_dir"

    sput-object v0, Lcom/perm/kate/video_cache/VideoCache;->PATH_PREF_NAME:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/perm/kate/video_cache/VideoCache$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perm/kate/video_cache/VideoCache$2;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/video_cache/VideoCache;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/perm/kate/video_cache/VideoCache;->fixCache([Ljava/lang/String;)V

    return-void
.end method

.method public static add(JJ)V
    .locals 2
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 32
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->addVideoToCache(JJ)V

    .line 33
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCache;->startService(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static clearInThread()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 204
    new-instance v0, Lcom/perm/kate/video_cache/VideoCache$3;

    invoke-direct {v0}, Lcom/perm/kate/video_cache/VideoCache$3;-><init>()V

    .line 218
    invoke-virtual {v0}, Lcom/perm/kate/video_cache/VideoCache$3;->start()V

    .line 219
    return-void
.end method

.method private static fixCache([Ljava/lang/String;)V
    .locals 34
    .param p0, "cache_files"    # [Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    .line 129
    .local v24, "t1":J
    const-string v22, "(\\d*)_(\\d*)\\.(mp4|flv)"

    .line 130
    .local v22, "pattern_string":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v19

    .line 131
    .local v19, "pattern":Ljava/util/regex/Pattern;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v16, "ids_to_cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v17, "ids_to_download":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v14, p0, v4

    .line 135
    .local v14, "cache_file":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 136
    .local v18, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    .line 133
    .end local v18    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 139
    .local v20, "owner_id":J
    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 140
    .local v32, "video_id":J
    const/4 v6, 0x2

    new-array v15, v6, [Ljava/lang/Long;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    .line 143
    .local v15, "ids":[Ljava/lang/Long;
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, v32

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isVideoCached(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, v32

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->videoExists(JJ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    .end local v15    # "ids":[Ljava/lang/Long;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "owner_id":J
    .end local v32    # "video_id":J
    :catch_0
    move-exception v23

    .line 151
    .local v23, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    .end local v14    # "cache_file":Ljava/lang/String;
    .end local v23    # "th":Ljava/lang/Throwable;
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    .line 159
    .local v26, "t2":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/perm/kate/db/DataHelper;->addVideosToCache(Ljava/util/ArrayList;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    .line 166
    .local v28, "t3":J
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v4, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static/range {v17 .. v17}, Lcom/perm/kate/video_cache/VideoCache;->videoIdsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/perm/kate/video_cache/VideoCache;->callback:Lcom/perm/kate/session/Callback;

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/perm/kate/session/Session;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 169
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 170
    .local v30, "t4":J
    const-string v4, "Kate.VideoCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v26, v24

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v28, v26

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v30, v28

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public static fixCacheIfRequired(Z)V
    .locals 6
    .param p0, "force"    # Z

    .prologue
    .line 97
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 98
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "video_cache_fixed"

    .line 99
    .local v1, "preference_name":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 100
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, "fixed":Z
    if-eqz v0, :cond_0

    .line 122
    .end local v0    # "fixed":Z
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    new-instance v3, Lcom/perm/kate/video_cache/VideoCache$1;

    const-string v4, "VideoCacheFixer"

    invoke-direct {v3, v4}, Lcom/perm/kate/video_cache/VideoCache$1;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "th":Ljava/lang/Thread;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 121
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 59
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/video_cache/VideoCache;->PATH_PREF_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "dir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.Kate/video_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_1
    return-object v1
.end method

.method public static getCacheFile(JJZ)Ljava/io/File;
    .locals 6
    .param p0, "video_id"    # J
    .param p2, "audio_id"    # J
    .param p4, "is_flv"    # Z

    .prologue
    .line 69
    invoke-static {}, Lcom/perm/kate/video_cache/VideoCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "cache_dir":Ljava/io/File;
    if-eqz p4, :cond_0

    const-string v1, ".flv"

    .line 71
    .local v1, "ext":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "file_name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3

    .line 70
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "file_name":Ljava/lang/String;
    :cond_0
    const-string v1, ".mp4"

    goto :goto_0
.end method

.method public static getCacheFileIfExists(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "owner_id"    # J
    .param p2, "video_id"    # J

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p3, v2}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 84
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static remove(JJ)V
    .locals 2
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 25
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->removeVideoFromCache(JJ)V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/video_cache/VideoCache;->removeFile(JJ)V

    .line 29
    return-void
.end method

.method public static removeFile(JJ)V
    .locals 2
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 49
    const/4 v1, 0x0

    invoke-static {p2, p3, p0, p1, v1}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const/4 v1, 0x1

    invoke-static {p2, p3, p0, p1, v1}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    :cond_1
    return-void
.end method

.method public static retry(JJ)V
    .locals 8
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 37
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v6, 0x1

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V

    .line 38
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCache;->startService(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method

.method public static tryFromCache(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "video_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 196
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStatus(JJ)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    invoke-static {p2, p3, p0, p1}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFileIfExists(JJ)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static videoIdsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    const-string v1, ""

    .line 175
    .local v1, "param":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 176
    .local v0, "id":[Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    goto :goto_0

    .line 180
    .end local v0    # "id":[Ljava/lang/Long;
    :cond_1
    return-object v1
.end method
