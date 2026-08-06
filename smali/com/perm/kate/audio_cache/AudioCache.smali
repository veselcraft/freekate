.class public Lcom/perm/kate/audio_cache/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"


# static fields
.field public static PATH_PREF_NAME:Ljava/lang/String;

.field static callback:Lcom/perm/kate/session/Callback;

.field public static pattern_string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "audio_cache_dir"

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCache;->PATH_PREF_NAME:Ljava/lang/String;

    .line 185
    const-string v0, "(-?\\d+)_(\\d+)\\.mp3"

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCache;->pattern_string:Ljava/lang/String;

    .line 246
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCache$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perm/kate/audio_cache/AudioCache$2;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCache;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/perm/kate/audio_cache/AudioCache;->fixCache([Ljava/lang/String;)V

    return-void
.end method

.method public static add(JJ)V
    .locals 8
    .param p0, "audio_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 35
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->addAudioToCache(JJLjava/lang/Long;)V

    .line 36
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCache;->startService(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private static audioIdsToString(Ljava/util/ArrayList;)Ljava/lang/String;
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
    .line 237
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    const-string v1, ""

    .line 238
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

    .line 239
    .local v0, "id":[Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
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

    .line 242
    goto :goto_0

    .line 243
    .end local v0    # "id":[Ljava/lang/Long;
    :cond_1
    return-object v1
.end method

.method public static clearInThread()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 268
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCache$3;

    invoke-direct {v0}, Lcom/perm/kate/audio_cache/AudioCache$3;-><init>()V

    .line 285
    invoke-virtual {v0}, Lcom/perm/kate/audio_cache/AudioCache$3;->start()V

    .line 286
    return-void
.end method

.method private static findFile(JJ)Ljava/io/File;
    .locals 18
    .param p0, "owner_id"    # J
    .param p2, "audio_id"    # J

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 130
    .local v8, "t1":J
    const/4 v6, 0x0

    .line 131
    .local v6, "f":Ljava/io/File;
    invoke-static {}, Lcom/perm/kate/audio_cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 133
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "cache_files":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 135
    const/4 v7, 0x0

    .line 147
    :goto_0
    return-object v7

    .line 136
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "_"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ".mp3"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "end":Ljava/lang/String;
    array-length v12, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_1

    aget-object v2, v3, v7

    .line 138
    .local v2, "cache_file":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 139
    new-instance v6, Ljava/io/File;

    .end local v6    # "f":Ljava/io/File;
    invoke-direct {v6, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .end local v2    # "cache_file":Ljava/lang/String;
    .restart local v6    # "f":Ljava/io/File;
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 144
    .local v10, "t2":J
    const-string v7, "Kate.AudioCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "findFile took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v10, v8

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mks"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 147
    goto :goto_0

    .line 137
    .end local v10    # "t2":J
    .restart local v2    # "cache_file":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static fixCache([Ljava/lang/String;)V
    .locals 30
    .param p0, "cache_files"    # [Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 192
    .local v14, "t1":J
    sget-object v23, Lcom/perm/kate/audio_cache/AudioCache;->pattern_string:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 193
    .local v11, "pattern":Ljava/util/regex/Pattern;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v8, "ids_to_cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v9, "ids_to_download":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    aget-object v6, p0, v23

    .line 197
    .local v6, "cache_file":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 199
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-nez v25, :cond_1

    .line 195
    .end local v10    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 201
    .restart local v10    # "m":Ljava/util/regex/Matcher;
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 202
    .local v12, "owner_id":J
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 203
    .local v4, "audio_id":J
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v7, v0, [Ljava/lang/Long;

    const/16 v25, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v7, v25

    const/16 v25, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v7, v25

    .line 206
    .local v7, "ids":[Ljava/lang/Long;
    sget-object v25, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/perm/kate/db/DataHelper;->isAudioCached(JJ)Z

    move-result v25

    if-nez v25, :cond_2

    .line 207
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    sget-object v25, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/perm/kate/db/DataHelper;->audioExists(JJ)Z

    move-result v25

    if-nez v25, :cond_0

    .line 211
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    .end local v4    # "audio_id":J
    .end local v7    # "ids":[Ljava/lang/Long;
    .end local v10    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "owner_id":J
    :catch_0
    move-exception v22

    .line 214
    .local v22, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    invoke-static/range {v22 .. v22}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 219
    .end local v6    # "cache_file":Ljava/lang/String;
    .end local v22    # "th":Ljava/lang/Throwable;
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 222
    .local v16, "t2":J
    sget-object v23, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/perm/kate/db/DataHelper;->addAudiosToCache(Ljava/util/ArrayList;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 229
    .local v18, "t3":J
    sget-object v23, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v23, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_4

    .line 230
    sget-object v23, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v9}, Lcom/perm/kate/audio_cache/AudioCache;->audioIdsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/perm/kate/audio_cache/AudioCache;->callback:Lcom/perm/kate/session/Callback;

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/perm/kate/session/Session;->getAudioById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 232
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 233
    .local v20, "t4":J
    const-string v23, "Kate.AudioCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v16, v14

    const-wide/32 v28, 0xf4240

    div-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v18, v16

    const-wide/32 v28, 0xf4240

    div-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v20, v18

    const-wide/32 v28, 0xf4240

    div-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public static fixCacheIfRequired(Z)V
    .locals 6
    .param p0, "force"    # Z

    .prologue
    .line 157
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 158
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cache_fixed"

    .line 159
    .local v1, "preference_name":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 160
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    .local v0, "fixed":Z
    if-eqz v0, :cond_0

    .line 183
    .end local v0    # "fixed":Z
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    new-instance v3, Lcom/perm/kate/audio_cache/AudioCache$1;

    const-string v4, "AudioCacheFixer"

    invoke-direct {v3, v4}, Lcom/perm/kate/audio_cache/AudioCache$1;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, "th":Ljava/lang/Thread;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 181
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 57
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/audio_cache/AudioCache;->PATH_PREF_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "dir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {}, Lcom/perm/kate/audio_cache/AudioCache;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 63
    :cond_1
    return-object v1
.end method

.method public static getCacheFile(JJLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "owner_id"    # J
    .param p2, "audio_id"    # J
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    const/16 v7, 0x2d

    .line 72
    invoke-virtual {p4, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    .line 73
    invoke-virtual {p5, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p5

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "suffix":Ljava/lang/String;
    const/16 v5, 0x3f

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 85
    const/16 v5, 0x3a

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 87
    const/16 v5, 0x2f

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 89
    const/16 v5, 0x5c

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 91
    const/16 v5, 0x7c

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 93
    const/16 v5, 0x22

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 95
    const/16 v5, 0x2a

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 97
    const/16 v5, 0x3e

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 99
    const/16 v5, 0x3c

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int v2, v5, 0xff

    .line 108
    .local v2, "max_prefix_length":I
    div-int/lit8 v2, v2, 0x2

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_0
    invoke-static {}, Lcom/perm/kate/audio_cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, "cache_dir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "file_name":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v5
.end method

.method public static getCacheFileIfExists(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "owner_id"    # J
    .param p2, "audio_id"    # J

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/audio_cache/AudioCache;->findFile(JJ)Ljava/io/File;

    move-result-object v0

    .line 122
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Kate/audio_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(JJLjava/lang/Long;)V
    .locals 4
    .param p0, "audio_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "lyrics_id"    # Ljava/lang/Long;

    .prologue
    .line 26
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->removeAudioFromCache(JJ)V

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/audio_cache/AudioCache;->removeFile(JJ)V

    .line 30
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 31
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/audio_cache/LyricsCache;->removeFile(J)V

    .line 32
    :cond_0
    return-void
.end method

.method public static removeFile(JJ)V
    .locals 2
    .param p0, "audio_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 51
    invoke-static {p2, p3, p0, p1}, Lcom/perm/kate/audio_cache/AudioCache;->findFile(JJ)Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 54
    :cond_0
    return-void
.end method

.method public static retry(JJ)V
    .locals 4
    .param p0, "audio_id"    # J
    .param p2, "owner_id"    # J

    .prologue
    .line 40
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/perm/kate/db/DataHelper;->setAudioInCacheStatus(Ljava/lang/Long;JI)V

    .line 41
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCache;->startService(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method

.method public static tryFromCache(Lcom/perm/kate/api/Audio;)Ljava/lang/String;
    .locals 6
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 259
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v4, p0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->getDownloadStatus(JJ)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 260
    iget-wide v0, p0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/audio_cache/AudioCache;->getCacheFileIfExists(JJ)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
