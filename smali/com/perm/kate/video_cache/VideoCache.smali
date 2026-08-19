.class public abstract Lcom/perm/kate/video_cache/VideoCache;
.super Ljava/lang/Object;
.source "VideoCache.java"


# static fields
.field public static PATH_PREF_NAME:Ljava/lang/String; = "video_cache_dir"

.field static callback:Lcom/perm/kate/session/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 190
    new-instance v0, Lcom/perm/kate/video_cache/VideoCache$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perm/kate/video_cache/VideoCache$2;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/video_cache/VideoCache;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/perm/kate/video_cache/VideoCache;->fixCache([Ljava/lang/String;)V

    return-void
.end method

.method public static add(JJ)V
    .locals 1

    .line 35
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->addVideoToCache(JJ)V

    .line 36
    sget-object p0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p0}, Lcom/perm/kate/video_cache/VideoCache;->startService(Landroid/content/Context;)V

    return-void
.end method

.method public static clearInThread()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 211
    new-instance v0, Lcom/perm/kate/video_cache/VideoCache$3;

    invoke-direct {v0}, Lcom/perm/kate/video_cache/VideoCache$3;-><init>()V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static fixCache([Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-string v0, "(-?\\d*)_(\\d*)\\.(mp4|flv)"

    .line 137
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    aget-object v0, v1, v9

    .line 142
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v10, 0x1

    .line 145
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x2

    .line 146
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    new-array v0, v13, [Ljava/lang/Long;

    .line 147
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v0, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v0, v10

    .line 150
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10, v14, v15, v11, v12}, Lcom/perm/kate/db/DataHelper;->isVideoCached(JJ)Z

    move-result v10

    if-nez v10, :cond_1

    .line 151
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10, v14, v15, v11, v12}, Lcom/perm/kate/db/DataHelper;->videoExists(JJ)Z

    move-result v10

    if-nez v10, :cond_2

    .line 155
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 163
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 166
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v5}, Lcom/perm/kate/db/DataHelper;->addVideosToCache(Ljava/util/ArrayList;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 173
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v6}, Lcom/perm/kate/video_cache/VideoCache;->videoIdsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lcom/perm/kate/video_cache/VideoCache;->callback:Lcom/perm/kate/session/Callback;

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/perm/kate/session/Session;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 176
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v0, v2

    const-wide/32 v9, 0xf4240

    div-long/2addr v2, v9

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v4, v0

    div-long/2addr v0, v9

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v4

    div-long/2addr v6, v9

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.VideoCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fixCacheIfRequired(Z)V
    .locals 2

    .line 104
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "video_cache_fixed"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 107
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    new-instance p0, Lcom/perm/kate/video_cache/VideoCache$1;

    const-string v0, "VideoCacheFixer"

    invoke-direct {p0, v0}, Lcom/perm/kate/video_cache/VideoCache$1;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 3

    .line 62
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/video_cache/VideoCache;->PATH_PREF_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.Kate/video_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "video_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v1
.end method

.method public static getCacheFile(JJZ)Ljava/io/File;
    .locals 2

    .line 76
    invoke-static {}, Lcom/perm/kate/video_cache/VideoCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string p4, ".flv"

    goto :goto_0

    :cond_0
    const-string p4, ".mp4"

    .line 78
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getCacheFileIfExists(JJ)Ljava/lang/String;
    .locals 3

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 89
    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remove(JJ)V
    .locals 1

    .line 28
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->removeVideoFromCache(JJ)V

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/video_cache/VideoCache;->removeFile(JJ)V

    return-void
.end method

.method public static removeFile(JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 52
    invoke-static {p2, p3, p0, p1, v0}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-static {p2, p3, p0, p1, v0}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static retry(JJ)V
    .locals 6

    .line 40
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V

    .line 41
    sget-object p0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p0}, Lcom/perm/kate/video_cache/VideoCache;->startService(Landroid/content/Context;)V

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static tryFromCache(JJ)Ljava/lang/String;
    .locals 2

    .line 203
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->getDownloadVideoStatus(JJ)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 204
    invoke-static {p2, p3, p0, p1}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFileIfExists(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static videoIdsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .line 182
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method
