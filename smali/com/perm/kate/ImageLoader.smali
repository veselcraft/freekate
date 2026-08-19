.class public Lcom/perm/kate/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ImageLoader$PhotoToLoad;
    }
.end annotation


# static fields
.field private static doc_pattern:Ljava/util/regex/Pattern;

.field static fail_count:I

.field static listed:Z


# instance fields
.field access:Ljava/util/HashMap;

.field baseDir:Ljava/io/File;

.field private cacheDir:Ljava/io/File;

.field volatile clean_running:Z

.field public download_images:Z

.field private file_count:Ljava/lang/Integer;

.field handler:Landroid/os/Handler;

.field hits:I

.field hits_ava:I

.field hits_stick:I

.field imageViews:Ljava/util/Map;

.field mark_right:I

.field mark_wrong:I

.field memoryCache:Lcom/perm/utils/MemoryCache;

.field paused:Z

.field photoLoaderThreads:Ljava/util/ArrayList;

.field photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

.field private rgb565:Z

.field private running_tasks:Ljava/util/List;

.field testMode:Z

.field tries:I

.field tries_ava:I

.field tries_stick:I


# direct methods
.method public static synthetic $r8$lambda$2qBGEg2P6qo6Own36Ij29I14GtE(Lcom/perm/kate/ImageLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->cleanFileCount()V

    return-void
.end method

.method public static synthetic $r8$lambda$PWXlXKZWHldHLnAE_YWYKEGT6J8(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perm/kate/ImageLoader;->lambda$removeFilesFromDir$0(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jq91lXuCgjCdIsOGsDSW2PWBZzo(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perm/kate/ImageLoader;->lambda$removeFilesFromDir$1(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vk.com\\/doc.*(&dl=[0-9a-zA-Z:]*)&"

    .line 428
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/ImageLoader;->doc_pattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 1265
    sput-boolean v0, Lcom/perm/kate/ImageLoader;->listed:Z

    .line 1266
    sput v0, Lcom/perm/kate/ImageLoader;->fail_count:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/perm/utils/MemoryCache;

    invoke-direct {v0}, Lcom/perm/utils/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader;->download_images:Z

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->paused:Z

    .line 75
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    .line 77
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->testMode:Z

    .line 255
    iput v1, p0, Lcom/perm/kate/ImageLoader;->tries:I

    .line 256
    iput v1, p0, Lcom/perm/kate/ImageLoader;->hits:I

    .line 257
    iput v1, p0, Lcom/perm/kate/ImageLoader;->tries_stick:I

    .line 258
    iput v1, p0, Lcom/perm/kate/ImageLoader;->hits_stick:I

    .line 259
    iput v1, p0, Lcom/perm/kate/ImageLoader;->tries_ava:I

    .line 260
    iput v1, p0, Lcom/perm/kate/ImageLoader;->hits_ava:I

    .line 472
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    .line 880
    new-instance v2, Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-direct {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    .line 910
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    .line 964
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/ImageLoader;->photoLoaderThreads:Ljava/util/ArrayList;

    .line 1166
    iput v1, p0, Lcom/perm/kate/ImageLoader;->mark_right:I

    .line 1167
    iput v1, p0, Lcom/perm/kate/ImageLoader;->mark_wrong:I

    const/4 v2, 0x0

    .line 1306
    iput-object v2, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    .line 1339
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z

    .line 81
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".Kate"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    .line 90
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    const-string v2, "image_cache"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->ensureNomedia()V

    .line 97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x3100000

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    .line 98
    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Heap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " low quality="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.ImageLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ImageLoader;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->increaseFileCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ImageLoader;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    return-object p0
.end method

.method private addToAccess(Ljava/lang/String;JJ)V
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    const/4 v3, 0x2

    new-array v3, v3, [J

    aput-wide p2, v3, v2

    aput-wide p4, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 466
    :cond_0
    aget-wide v3, v0, v2

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    aput-wide p1, v0, v2

    .line 467
    aget-wide p1, v0, v1

    add-long/2addr p1, p4

    aput-wide p1, v0, v1

    :goto_0
    return-void
.end method

.method private checkFileCount()V
    .locals 6

    .line 1332
    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z

    if-eqz v0, :cond_0

    return-void

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getMaxFiles()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 1335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/ImageLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private cleanFileCount()V
    .locals 5

    const/4 v0, 0x0

    .line 1343
    :try_start_0
    iget-boolean v1, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1353
    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1344
    :try_start_1
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z

    .line 1345
    invoke-virtual {p0}, Lcom/perm/kate/ImageLoader;->checkCacheSize()V

    .line 1347
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/Helper;->preference_name:Ljava/lang/String;

    .line 1348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1350
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1351
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1353
    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z

    return-void

    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader;->clean_running:Z

    .line 1354
    throw v1
.end method

.method private decodeFromNetwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "Kate.ImageLoader"

    const-string v1, "parsing from network directly"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 368
    :try_start_0
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->makeConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p1, v0

    .line 371
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 375
    :cond_1
    throw v0
.end method

.method static deleteRecursive(Ljava/io/File;)V
    .locals 4

    .line 1207
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1209
    invoke-static {v3}, Lcom/perm/kate/ImageLoader;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1210
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private ensureNomedia()V
    .locals 3

    .line 1256
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private extractCount(J)J
    .locals 7

    const-wide/32 v0, 0x186a0

    .line 1161
    rem-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1162
    iget v6, p0, Lcom/perm/kate/ImageLoader;->mark_right:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/perm/kate/ImageLoader;->mark_right:I

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/perm/kate/ImageLoader;->mark_wrong:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/perm/kate/ImageLoader;->mark_wrong:I

    :goto_0
    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const-wide/32 v2, 0x989680

    .line 1163
    rem-long/2addr p1, v2

    div-long/2addr p1, v0

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x1

    :goto_1
    return-wide p1
.end method

.method private extractDate(J)J
    .locals 2

    const-wide/32 v0, 0x989680

    .line 1156
    div-long/2addr p1, v0

    mul-long p1, p1, v0

    return-wide p1
.end method

.method private getCacheSizeFromPreferences()I
    .locals 3

    .line 1054
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "image_cache_size_2"

    const-string v2, "1"

    .line 1055
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 1056
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    return v0

    .line 1058
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    return v0

    :cond_1
    const/16 v0, 0x96

    return v0
.end method

.method private static getCoeff()J
    .locals 8

    .line 1070
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "coeff"

    .line 1071
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x4

    .line 1072
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    new-array v3, v2, [J

    .line 1074
    fill-array-data v3, :array_0

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v2

    rem-long/2addr v4, v6

    long-to-int v2, v4

    aget-wide v2, v3, v2

    .line 1076
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v0, v2

    :goto_0
    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :array_0
    .array-data 8
        0x0
        0x2
        0x4
        0x8
        0x10
        0x18
        0x30
        0x38
        0x48
        0x60
        0x78
        0x90
        0xa8
    .end array-data
.end method

.method public static getFreeSpace()J
    .locals 5

    .line 1183
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    const-wide/32 v3, 0x100000

    .line 1185
    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private getMaxFiles()I
    .locals 1

    .line 1050
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getCacheSizeFromPreferences()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x29

    return v0
.end method

.method static getRoundedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 683
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 684
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 685
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 688
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 689
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 690
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    .line 692
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 693
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x10000

    .line 694
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 695
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 697
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 698
    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 700
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 709
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 704
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 705
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 706
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method private increaseFileCount()V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1321
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->initFileCount()V

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    .line 1323
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->checkFileCount()V

    return-void
.end method

.method private initFileCount()V
    .locals 3

    .line 1309
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "cache_file_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    return-void
.end method

.method private static synthetic lambda$removeFilesFromDir$0(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 1115
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p2, v0, p0

    return p2
.end method

.method private static synthetic lambda$removeFilesFromDir$1(Ljava/util/HashMap;Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 1127
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const-wide/16 v0, 0x0

    .line 1128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez p1, :cond_0

    move-object p1, v0

    .line 1129
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 1131
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method static lastModifiedSupported()Z
    .locals 2

    .line 1302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 418
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-static {v0}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/16 v0, 0x4e20

    .line 420
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 421
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 424
    invoke-static {p1}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method private makeFakeDate(J)J
    .locals 4

    .line 1175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ImageLoader;->extractDate(J)J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    const-wide/16 p1, 0x0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public static makeKey(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 148
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onFailed()V
    .locals 8

    .line 1269
    sget v0, Lcom/perm/kate/ImageLoader;->fail_count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/perm/kate/ImageLoader;->fail_count:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    return-void

    .line 1276
    :cond_0
    sget-boolean v0, Lcom/perm/kate/ImageLoader;->listed:Z

    if-eqz v0, :cond_1

    return-void

    .line 1278
    :cond_1
    sput-boolean v1, Lcom/perm/kate/ImageLoader;->listed:Z

    const/4 v0, 0x0

    .line 1281
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1290
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "succ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1291
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "succ_clean"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 1293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v6, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v6, v2

    div-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1295
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1296
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", files: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to rename"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method private queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V
    .locals 5

    .line 202
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->tryCreateHandler()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .line 211
    iget-boolean v3, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->mergeable:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    iget-object v4, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->setView(Landroid/view/View;)V

    .line 214
    monitor-exit v0

    return-void

    .line 216
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader$PhotosQueue;->Clean(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v0

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-boolean p1, p0, Lcom/perm/kate/ImageLoader;->paused:Z

    if-nez p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {p1}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 229
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 231
    iget-object p1, p0, Lcom/perm/kate/ImageLoader;->photoLoaderThreads:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    .line 233
    new-instance v0, Lcom/perm/kate/ImageLoader$PhotosLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLoaderThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ImageLoader$PhotosLoader;-><init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->photoLoaderThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catchall_2
    move-exception p1

    .line 229
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static removeDir(Ljava/io/File;)V
    .locals 5

    .line 1193
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1195
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1196
    invoke-static {p0}, Lcom/perm/kate/ImageLoader;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1198
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1199
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1201
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteRecursive "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Kate.ImageLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeFilesFromDir(I[Ljava/io/File;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1084
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Kate.ImageLoader"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " items"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1096
    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1097
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 1098
    invoke-static {v4, v6}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 1100
    :cond_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->getCoeff()J

    move-result-wide v6

    .line 1101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 1103
    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 1105
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1107
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Ljava/io/File;

    .line 1108
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-eqz v17, :cond_2

    .line 1110
    invoke-direct {v0, v12, v13}, Lcom/perm/kate/ImageLoader;->extractDate(J)J

    move-result-wide v18

    invoke-direct {v0, v12, v13}, Lcom/perm/kate/ImageLoader;->extractCount(J)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long v12, v18, v12

    .line 1111
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1113
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v14

    const-wide/32 v11, 0xf4240

    div-long/2addr v6, v11

    .line 1114
    invoke-direct {v0, v6, v7}, Lcom/perm/kate/ImageLoader;->reportGetLastModified(J)V

    .line 1115
    new-instance v6, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda1;

    invoke-direct {v6, v10}, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1117
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ImageLoader;->loadFileCacheStats()V

    .line 1120
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1121
    iget-object v13, v0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1123
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [J

    const/16 v17, 0x0

    aget-wide v18, v16, v17

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    const/16 v16, 0x1

    aget-wide v16, v14, v16

    mul-long v16, v16, v6

    add-long v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1124
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v6, v10

    invoke-direct {v0, v6, v7}, Lcom/perm/kate/ImageLoader;->reportGetLastModified(J)V

    .line 1125
    new-instance v6, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda2;

    invoke-direct {v6, v12}, Lcom/perm/kate/ImageLoader$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashMap;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1134
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sort took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v7, 0xf4240

    div-long/2addr v10, v7

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_8

    .line 1138
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 1140
    :cond_6
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File was not deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1145
    :cond_7
    iget-object v7, v0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 1148
    invoke-virtual {v0, v6}, Lcom/perm/kate/ImageLoader;->saveFileCacheStats(Z)V

    .line 1149
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFilesFromDir took "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Removed "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p2

    .line 1151
    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v2}, Lcom/perm/kate/ImageLoader;->setFileCount(I)V

    return-void
.end method

.method private reportGetLastModified(J)V
    .locals 8

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    .line 360
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, "FakeClass"

    const-string v6, "getLastModified"

    const-string v7, "FakeClass.java"

    invoke-direct {v4, v5, v6, v7, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 361
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method private reportSetLastModified(ZJ)V
    .locals 7

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    .line 353
    new-instance v4, Ljava/lang/StackTraceElement;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLastModified_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "FakeClass"

    const-string v6, "FakeClass.java"

    invoke-direct {v4, v5, p1, v6, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 354
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method public static roundAvatarsEnabled()Z
    .locals 3

    .line 675
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_round_ava"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setFileCount(I)V
    .locals 0

    .line 1327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    .line 1328
    invoke-virtual {p0}, Lcom/perm/kate/ImageLoader;->saveFileCount()V

    return-void
.end method

.method private tryCreateHandler()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 244
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    .line 111
    :try_start_0
    iget-object v1, v11, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/images/question_100.gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/images/m_null.gif"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/images/question_c.gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/images/x_null.gif"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p8, :cond_1

    .line 119
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v12, v0, v13}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 126
    :cond_1
    new-instance v14, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;-><init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZ)V

    .line 127
    invoke-direct {p0, v14}, Lcom/perm/kate/ImageLoader;->queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 128
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 133
    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_3
    :goto_1
    return-void
.end method

.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    move/from16 v9, p6

    .line 104
    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    return-void
.end method

.method public DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V
    .locals 13

    move-object v11, p0

    move-object v0, p2

    move/from16 v9, p5

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    move-object v3, p1

    .line 164
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v9, v10

    move v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    return-void

    :cond_1
    move-object v3, p1

    .line 168
    :try_start_0
    invoke-static {p1}, Lcom/perm/kate/ImageLoader;->makeKey(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 169
    iget-object v1, v11, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0, v8}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p0, v8}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    invoke-virtual {p0, p2, v1, v9}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v10, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;-><init>(Lcom/perm/kate/ImageLoader;Ljava/util/ArrayList;Landroid/widget/ImageView;IIILjava/lang/String;)V

    .line 179
    invoke-direct {p0, v10}, Lcom/perm/kate/ImageLoader;->queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 180
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized checkCacheSize()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "Kate.ImageLoader"

    const-string v1, "checkCacheSize"

    .line 1008
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "Kate.ImageLoader"

    const-string v1, "cacheDir==null"

    .line 1010
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    monitor-exit p0

    return-void

    .line 1013
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1014
    iget-object v2, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "Kate.ImageLoader"

    .line 1016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of files in images cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/perm/kate/ImageLoader;->setFileCount(I)V

    .line 1019
    invoke-static {}, Lcom/perm/kate/ImageLoader;->getFreeSpace()J

    move-result-wide v3

    const-string v5, "Kate.ImageLoader"

    .line 1020
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Megs available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getMaxFiles()I

    move-result v5

    .line 1026
    array-length v6, v2

    if-le v6, v5, :cond_1

    const-string v3, "Cache file count limit exceeded"

    const-string v4, "Kate.ImageLoader"

    .line 1028
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    array-length v3, v2

    sub-int/2addr v3, v5

    invoke-direct {p0, v3, v2}, Lcom/perm/kate/ImageLoader;->removeFilesFromDir(I[Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    const-string v3, "Too little free space on SD"

    const-string v4, "Kate.ImageLoader"

    .line 1035
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    .line 1037
    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/perm/kate/ImageLoader;->removeFilesFromDir(I[Ljava/io/File;)V

    .line 1041
    :cond_2
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 1042
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "succ_clean"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1044
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Kate.ImageLoader"

    .line 1046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCacheSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearFileCache()V
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader;->removeDir(Ljava/io/File;)V

    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V

    return-void
.end method

.method public decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p5, 0x0

    .line 500
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 501
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 502
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 503
    :try_start_1
    invoke-static {v1, p5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 504
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 507
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, p2

    .line 508
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p2, p3

    if-eqz p4, :cond_0

    .line 509
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 513
    :goto_0
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 514
    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 516
    iget-boolean p2, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    if-eqz p2, :cond_1

    .line 517
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 518
    :cond_1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 519
    :try_start_2
    invoke-static {p2, p5, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 523
    sget-object p3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    :cond_2
    invoke-static {p2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 541
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, p5

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, p5

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p2, p5

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p5

    move-object v1, p2

    .line 537
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception p1

    move-object p2, p5

    move-object v1, p2

    .line 532
    :goto_2
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 533
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 534
    iget-object p1, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {p1}, Lcom/perm/utils/MemoryCache;->clear()V

    goto :goto_4

    :catch_5
    move-exception p1

    move-object p2, p5

    move-object v1, p2

    .line 529
    :goto_3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 540
    :goto_4
    invoke-static {p2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 541
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p5

    :catchall_3
    move-exception p1

    .line 540
    invoke-static {p2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 541
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 542
    throw p1
.end method

.method public displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1241
    instance-of v0, p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-eqz v0, :cond_0

    .line 1242
    check-cast p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1235
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    return-void
.end method

.method public downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V
    .locals 6

    const-string v0, "Kate.ImageLoader"

    .line 383
    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 385
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to temp file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->makeConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p3, :cond_0

    .line 388
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    .line 389
    invoke-interface {p3, v3, v4}, Lcom/perm/utils/UploadProgressListener;->setTotalAmount(J)V

    .line 391
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 392
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 393
    :try_start_3
    invoke-static {v3, v4, p3}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 394
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 395
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 397
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 399
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename file "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p2, p3, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->onFailed()V

    .line 404
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string p3, "Failed to rename"

    invoke-direct {p2, p3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->increaseFileCount()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 411
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 412
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v4, v2

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v4, v2

    goto :goto_1

    :catchall_3
    move-exception p2

    move-object p1, v2

    move-object v4, p1

    .line 409
    :goto_1
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_3

    .line 411
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 412
    :cond_3
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 414
    throw p2
.end method

.method public getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 251
    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 277
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "sticker"

    .line 278
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ava=1"

    .line 279
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 284
    iget v3, v7, Lcom/perm/kate/ImageLoader;->tries:I

    const/4 v10, 0x1

    add-int/2addr v3, v10

    iput v3, v7, Lcom/perm/kate/ImageLoader;->tries:I

    if-eqz v1, :cond_1

    .line 285
    iget v3, v7, Lcom/perm/kate/ImageLoader;->tries_stick:I

    add-int/2addr v3, v10

    iput v3, v7, Lcom/perm/kate/ImageLoader;->tries_stick:I

    :cond_1
    if-eqz v2, :cond_2

    .line 286
    iget v3, v7, Lcom/perm/kate/ImageLoader;->tries_ava:I

    add-int/2addr v3, v10

    iput v3, v7, Lcom/perm/kate/ImageLoader;->tries_ava:I

    .line 287
    :cond_2
    invoke-static {}, Lcom/perm/kate/ImageLoader;->getCoeff()J

    move-result-wide v11

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x0

    if-eqz v3, :cond_9

    .line 289
    iget v3, v7, Lcom/perm/kate/ImageLoader;->hits:I

    add-int/2addr v3, v10

    iput v3, v7, Lcom/perm/kate/ImageLoader;->hits:I

    if-eqz v1, :cond_3

    .line 290
    iget v1, v7, Lcom/perm/kate/ImageLoader;->hits_stick:I

    add-int/2addr v1, v10

    iput v1, v7, Lcom/perm/kate/ImageLoader;->hits_stick:I

    :cond_3
    if-eqz v2, :cond_4

    .line 291
    iget v1, v7, Lcom/perm/kate/ImageLoader;->hits_ava:I

    add-int/2addr v1, v10

    iput v1, v7, Lcom/perm/kate/ImageLoader;->hits_ava:I

    .line 292
    :cond_4
    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, v11, v15

    if-eqz v3, :cond_6

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Lcom/perm/kate/ImageLoader;->extractCount(J)J

    move-result-wide v1

    const-wide/16 v3, 0x63

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    add-long/2addr v1, v13

    .line 297
    :cond_5
    invoke-direct {v7, v1, v2}, Lcom/perm/kate/ImageLoader;->makeFakeDate(J)J

    move-result-wide v1

    .line 299
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    .line 302
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v5, v2

    .line 303
    invoke-direct {v7, v1, v5, v6}, Lcom/perm/kate/ImageLoader;->reportSetLastModified(ZJ)V

    :cond_7
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 305
    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    .line 309
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to decode from cache. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.ImageLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_9
    iget-boolean v1, v7, Lcom/perm/kate/ImageLoader;->download_images:Z

    if-nez v1, :cond_a

    if-nez p7, :cond_a

    return-object v9

    :cond_a
    const/16 v17, 0x0

    move-object/from16 v1, p5

    .line 318
    :try_start_0
    invoke-virtual {v7, v8, v0, v1}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V

    .line 320
    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    cmp-long v1, v11, v15

    if-eqz v1, :cond_b

    .line 322
    invoke-direct {v7, v13, v14}, Lcom/perm/kate/ImageLoader;->makeFakeDate(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 324
    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 337
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 338
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 339
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    const/4 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    instance-of v1, v0, Ljava/net/SocketException;

    if-nez v1, :cond_d

    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_d

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_d

    goto :goto_0

    :catch_1
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v10, :cond_e

    .line 344
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ImageLoader;->decodeFromNetwork(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v9
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .line 435
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    const-string v0, "vk.com/doc"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget-object v0, Lcom/perm/kate/ImageLoader;->doc_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 449
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 452
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/perm/kate/ImageLoader;->addToAccess(Ljava/lang/String;JJ)V

    .line 457
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/perm/utils/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageBytes(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    .line 478
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-virtual {p0, p1, v1, v0}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V

    .line 481
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x200

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 482
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 484
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 486
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :goto_1
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 489
    throw p1
.end method

.method getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1248
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1252
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method imageViewReused(Lcom/perm/kate/ImageLoader$PhotoToLoad;)Z
    .locals 3

    .line 989
    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 992
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 993
    iget-object p1, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public isCachedInMemory(Ljava/lang/String;)Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/perm/utils/MemoryCache;->isCached(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadFileCacheStats()V
    .locals 11

    const/4 v0, 0x0

    .line 1402
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1403
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "cachestats.bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1404
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1405
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 1407
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 1408
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 1409
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 1410
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    move-object v5, p0

    .line 1412
    invoke-direct/range {v5 .. v10}, Lcom/perm/kate/ImageLoader;->addToAccess(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    const-string v0, "Kate.ImageLoader"

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stats read took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms. "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items in memory. File size "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    .line 1419
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1420
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    .line 1416
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1422
    :goto_3
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/perm/utils/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method reportFileCacheEfficiency()V
    .locals 10

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-static {}, Lcom/perm/kate/ImageLoader;->getCoeff()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 555
    iget v1, p0, Lcom/perm/kate/ImageLoader;->tries:I

    const-string v2, "FakeClass.java"

    const-string v3, "FakeClass"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_1

    .line 557
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/StackTraceElement;

    .line 558
    new-instance v7, Ljava/lang/StackTraceElement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFileCacheEff_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getCacheSizeFromPreferences()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 560
    iget v6, p0, Lcom/perm/kate/ImageLoader;->hits:I

    int-to-float v6, v6

    iget v7, p0, Lcom/perm/kate/ImageLoader;->tries:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 561
    iput v4, p0, Lcom/perm/kate/ImageLoader;->hits:I

    iput v4, p0, Lcom/perm/kate/ImageLoader;->tries:I

    .line 564
    :cond_1
    iget v1, p0, Lcom/perm/kate/ImageLoader;->tries_stick:I

    if-lez v1, :cond_2

    .line 566
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/StackTraceElement;

    .line 567
    new-instance v7, Ljava/lang/StackTraceElement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFileCacheEffStick_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getCacheSizeFromPreferences()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 569
    iget v6, p0, Lcom/perm/kate/ImageLoader;->hits_stick:I

    int-to-float v6, v6

    iget v7, p0, Lcom/perm/kate/ImageLoader;->tries_stick:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 570
    iput v4, p0, Lcom/perm/kate/ImageLoader;->hits_stick:I

    iput v4, p0, Lcom/perm/kate/ImageLoader;->tries_stick:I

    .line 573
    :cond_2
    iget v1, p0, Lcom/perm/kate/ImageLoader;->tries_ava:I

    if-lez v1, :cond_3

    .line 575
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-array v6, v5, [Ljava/lang/StackTraceElement;

    .line 576
    new-instance v7, Ljava/lang/StackTraceElement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFileCacheEffAva"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getCacheSizeFromPreferences()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 578
    iget v6, p0, Lcom/perm/kate/ImageLoader;->hits_ava:I

    int-to-float v6, v6

    iget v7, p0, Lcom/perm/kate/ImageLoader;->tries_ava:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 579
    iput v4, p0, Lcom/perm/kate/ImageLoader;->hits_ava:I

    iput v4, p0, Lcom/perm/kate/ImageLoader;->tries_ava:I

    .line 582
    :cond_3
    iget v1, p0, Lcom/perm/kate/ImageLoader;->mark_right:I

    iget v6, p0, Lcom/perm/kate/ImageLoader;->mark_wrong:I

    add-int/2addr v1, v6

    if-lez v1, :cond_4

    .line 583
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/StackTraceElement;

    .line 584
    new-instance v6, Ljava/lang/StackTraceElement;

    const-string v7, "reportFileCacheMark"

    invoke-direct {v6, v3, v7, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 586
    iget v0, p0, Lcom/perm/kate/ImageLoader;->mark_right:I

    int-to-float v2, v0

    iget v3, p0, Lcom/perm/kate/ImageLoader;->mark_wrong:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 587
    iput v4, p0, Lcom/perm/kate/ImageLoader;->mark_wrong:I

    iput v4, p0, Lcom/perm/kate/ImageLoader;->mark_right:I

    :cond_4
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public saveFileCacheStats(Z)V
    .locals 12

    .line 1359
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1361
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1362
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "cachestats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1365
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getMaxFiles()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v4, v4, 0x24

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    .line 1366
    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-nez v3, :cond_2

    .line 1371
    :cond_1
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1373
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1375
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1378
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    aget-wide v8, v7, v3

    invoke-virtual {v5, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1379
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    aget-wide v7, v6, v2

    invoke-virtual {v5, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/2addr v4, v2

    int-to-double v6, v4

    .line 1381
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getMaxFiles()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_3

    .line 1382
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v4, v2, [Ljava/lang/StackTraceElement;

    .line 1383
    new-instance v6, Ljava/lang/StackTraceElement;

    const-string v7, "FakeClass"

    const-string v8, "statsCountLimitExceed"

    const-string v9, "FakeClass.java"

    invoke-direct {v6, v7, v8, v9, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1384
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1388
    :cond_4
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1389
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    .line 1390
    invoke-direct {p0, v2, v3, v4}, Lcom/perm/kate/ImageLoader;->reportSetLastModified(ZJ)V

    const-string p1, "Kate.ImageLoader"

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats save took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object p1, p0, Lcom/perm/kate/ImageLoader;->access:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1394
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1395
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method saveFileCount()V
    .locals 3

    .line 1313
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 1315
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v1, 0x0

    const-string v2, "cache_file_count"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->file_count:Ljava/lang/Integer;

    .line 1316
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
