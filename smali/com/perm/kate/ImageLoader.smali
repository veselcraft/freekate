.class public Lcom/perm/kate/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ImageLoader$BitmapDisplayer;,
        Lcom/perm/kate/ImageLoader$PhotosLoader;,
        Lcom/perm/kate/ImageLoader$PhotosQueue;,
        Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;,
        Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;,
        Lcom/perm/kate/ImageLoader$PhotoToLoad;
    }
.end annotation


# static fields
.field private static doc_pattern:Ljava/util/regex/Pattern;


# instance fields
.field baseDir:Ljava/io/File;

.field private cacheDir:Ljava/io/File;

.field public download_images:Z

.field handler:Landroid/os/Handler;

.field imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field memoryCache:Lcom/perm/utils/MemoryCache;

.field paused:Z

.field photoLoaderThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/ImageLoader$PhotosLoader;",
            ">;"
        }
    .end annotation
.end field

.field photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

.field private rgb565:Z

.field private running_tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/perm/kate/ImageLoader$PhotoToLoad;",
            ">;"
        }
    .end annotation
.end field

.field testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const-string v0, "vk.com\\/doc.*(&dl=[0-9a-z]*)&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/ImageLoader;->doc_pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/perm/utils/MemoryCache;

    invoke-direct {v0}, Lcom/perm/utils/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    .line 64
    iput-boolean v6, p0, Lcom/perm/kate/ImageLoader;->download_images:Z

    .line 65
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->paused:Z

    .line 68
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    .line 70
    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->testMode:Z

    .line 732
    new-instance v0, Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-direct {v0}, Lcom/perm/kate/ImageLoader$PhotosQueue;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->photoLoaderThreads:Ljava/util/ArrayList;

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".Kate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    .line 78
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    const-string v2, "image_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    .line 79
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->ensureNomedia()V

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x2100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 86
    iput-boolean v6, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    .line 87
    :cond_1
    const-string v0, "Kate.ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " low quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perm/kate/ImageLoader;->rgb565:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/perm/kate/ImageLoader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ImageLoader;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    return-object v0
.end method

.method private decodeFromNetwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v2, "Kate.ImageLoader"

    const-string v3, "parsing from network directly"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->makeConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 295
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    :cond_0
    :goto_0
    return-object v2

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v2
.end method

.method static deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 959
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 961
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/perm/kate/ImageLoader;->deleteRecursive(Ljava/io/File;)V

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 963
    return-void
.end method

.method private ensureNomedia()V
    .locals 4

    .prologue
    .line 1001
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1002
    .local v1, "localFile2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1004
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCacheSizeFromPreferences()I
    .locals 4

    .prologue
    .line 896
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 897
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "image_cache_size"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "option":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    const/16 v2, 0x1e

    .line 902
    :goto_0
    return v2

    .line 900
    :cond_0
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    const/16 v2, 0x5a

    goto :goto_0

    .line 902
    :cond_1
    const/16 v2, 0x96

    goto :goto_0
.end method

.method public static getFreeSpace()J
    .locals 10

    .prologue
    .line 935
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 936
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    mul-long v0, v6, v8

    .line 937
    .local v0, "bytesAvailable":J
    const-wide/32 v6, 0x100000

    div-long v2, v0, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v0    # "bytesAvailable":J
    :goto_0
    return-wide v2

    .line 939
    :catch_0
    move-exception v5

    .line 940
    .local v5, "th":Ljava/lang/Throwable;
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static getRoundedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 536
    if-nez p0, :cond_0

    .line 537
    const/4 v2, 0x0

    .line 568
    :goto_0
    return-object v2

    .line 540
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 541
    .local v6, "square_size":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 542
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, -0x10000

    .line 545
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 546
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 547
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 549
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 550
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 551
    const/high16 v8, -0x10000

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 554
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 555
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 557
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 560
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v2    # "output":Landroid/graphics/Bitmap;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "rectF":Landroid/graphics/RectF;
    .end local v6    # "square_size":I
    :catch_0
    move-exception v7

    .line 561
    .local v7, "th":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 562
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 563
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .end local v7    # "th":Ljava/lang/OutOfMemoryError;
    :goto_1
    move-object v2, p0

    .line 568
    goto :goto_0

    .line 564
    :catch_1
    move-exception v7

    .line 565
    .local v7, "th":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 566
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private makeConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7530

    .line 337
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "imageUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 339
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 340
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 343
    invoke-static {v0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 344
    return-object v0
.end method

.method public static makeKey(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V
    .locals 8
    .param p1, "p"    # Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->tryCreateHandler()V

    .line 186
    :try_start_0
    iget-object v5, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->running_tasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .line 189
    .local v2, "r":Lcom/perm/kate/ImageLoader$PhotoToLoad;
    iget-boolean v6, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->mergeable:Z

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    iget-object v7, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->setView(Landroid/view/View;)V

    .line 192
    monitor-exit v5

    .line 217
    .end local v2    # "r":Lcom/perm/kate/ImageLoader$PhotoToLoad;
    :cond_1
    return-void

    .line 194
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/perm/kate/ImageLoader$PhotosQueue;->Clean(Landroid/view/View;)V

    .line 203
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v4}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    monitor-enter v5

    .line 204
    :try_start_2
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v4}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-boolean v4, p0, Lcom/perm/kate/ImageLoader;->paused:Z

    if-nez v4, :cond_3

    .line 206
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v4}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 207
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->photoLoaderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 211
    new-instance v1, Lcom/perm/kate/ImageLoader$PhotosLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageLoaderThread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/perm/kate/ImageLoader$PhotosLoader;-><init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;)V

    .line 212
    .local v1, "pl":Lcom/perm/kate/ImageLoader$PhotosLoader;
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->photoLoaderThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/perm/kate/ImageLoader$PhotosLoader;->setPriority(I)V

    .line 215
    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotosLoader;->start()V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "i":I
    .end local v1    # "pl":Lcom/perm/kate/ImageLoader$PhotosLoader;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method static removeDir(Ljava/io/File;)V
    .locals 12
    .param p0, "tmp"    # Ljava/io/File;

    .prologue
    .line 945
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 947
    .local v2, "t1":J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    invoke-static {p0}, Lcom/perm/kate/ImageLoader;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 954
    .local v4, "t2":J
    const-string v1, "Kate.ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteRecursive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 949
    .end local v4    # "t2":J
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 951
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeFilesFromDir(I[Ljava/io/File;)V
    .locals 16
    .param p1, "count"    # I
    .param p2, "fl"    # [Ljava/io/File;

    .prologue
    .line 912
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 913
    .local v8, "start":J
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " files"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p2

    array-length v10, v0

    sub-int v10, v10, p1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 923
    .local v5, "offset":I
    move v4, v5

    .local v4, "i":I
    :goto_0
    add-int v7, v5, p1

    if-ge v4, v7, :cond_1

    .line 924
    aget-object v7, p2, v4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v6

    .line 925
    .local v6, "res":Z
    if-nez v6, :cond_0

    .line 926
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File was not deleted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p2, v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 928
    .end local v6    # "res":Z
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 929
    .local v2, "end":J
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeFilesFromDir took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v2, v8

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms. Removed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " files."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "After clean "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " files"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method public static roundAvatarsEnabled()Z
    .locals 3

    .prologue
    .line 532
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_round_ava"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private tryCreateHandler()V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 222
    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/ImageLoader;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "put_to_memory_cache"    # Z
    .param p4, "resample_width"    # I
    .param p5, "resample_height"    # I
    .param p6, "stub_id"    # I
    .param p7, "fit_all"    # Z
    .param p8, "dont_use_from_memory"    # Z
    .param p9, "round"    # Z

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/images/question_100.gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/images/m_null.gif"

    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/images/question_c.gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/images/x_null.gif"

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    :cond_0
    move/from16 v0, p6

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    if-nez p8, :cond_3

    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 110
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p6

    invoke-virtual {p0, p2, v11, v0}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v12

    .line 119
    .local v12, "th":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    invoke-static {v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 121
    instance-of v2, v12, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_0

    .line 114
    .end local v12    # "th":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    new-instance v1, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;-><init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZ)V

    .line 115
    .local v1, "p":Lcom/perm/kate/ImageLoader$SimplePhotoToLoad;
    invoke-direct {p0, v1}, Lcom/perm/kate/ImageLoader;->queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 116
    move/from16 v0, p6

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "put_to_memory_cache"    # Z
    .param p4, "resample_size"    # I
    .param p5, "stub_id"    # I
    .param p6, "round"    # Z

    .prologue
    .line 92
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

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 93
    return-void
.end method

.method public DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V
    .locals 13
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "resample_width"    # I
    .param p4, "resample_height"    # I
    .param p5, "stub_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/ImageView;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 142
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 164
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/perm/kate/ImageLoader;->makeKey(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v2, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, v8}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {p0, v8}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 152
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p5

    invoke-virtual {p0, p2, v11, v0}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v12

    .line 161
    .local v12, "th":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    invoke-static {v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    .end local v12    # "th":Ljava/lang/Throwable;
    .restart local v8    # "key":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;-><init>(Lcom/perm/kate/ImageLoader;Ljava/util/ArrayList;Landroid/widget/ImageView;IIILjava/lang/String;)V

    .line 157
    .local v1, "p":Lcom/perm/kate/ImageLoader$MultiPhotoToLoad;
    invoke-direct {p0, v1}, Lcom/perm/kate/ImageLoader;->queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 158
    move/from16 v0, p5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public checkCacheSize()V
    .locals 14

    .prologue
    .line 859
    const-string v7, "Kate.ImageLoader"

    const-string v10, "checkCacheSize"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v7, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    if-nez v7, :cond_0

    .line 861
    const-string v7, "Kate.ImageLoader"

    const-string v10, "cacheDir==null"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 865
    .local v8, "start":J
    iget-object v7, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 866
    .local v2, "fl":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 867
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number of files in images cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-static {}, Lcom/perm/kate/ImageLoader;->getFreeSpace()J

    move-result-wide v4

    .line 870
    .local v4, "megAvailable":J
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Megs available: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-direct {p0}, Lcom/perm/kate/ImageLoader;->getCacheSizeFromPreferences()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    div-int/lit8 v3, v7, 0x1f

    .line 876
    .local v3, "max_files":I
    array-length v7, v2

    if-le v7, v3, :cond_2

    .line 877
    const-string v6, "Cache file count limit exceeded"

    .line 878
    .local v6, "msg":Ljava/lang/String;
    const-string v7, "Kate.ImageLoader"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-direct {p0, v7, v2}, Lcom/perm/kate/ImageLoader;->removeFilesFromDir(I[Ljava/io/File;)V

    .line 890
    .end local v3    # "max_files":I
    .end local v4    # "megAvailable":J
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 892
    .local v0, "end":J
    const-string v7, "Kate.ImageLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkCacheSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v0, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    .end local v0    # "end":J
    .restart local v3    # "max_files":I
    .restart local v4    # "megAvailable":J
    :cond_2
    const-wide/16 v10, 0xa

    cmp-long v7, v4, v10

    if-gez v7, :cond_1

    .line 884
    const-string v6, "Too little free space on SD"

    .line 885
    .restart local v6    # "msg":Ljava/lang/String;
    const-string v7, "Kate.ImageLoader"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/16 v7, 0x3e8

    array-length v10, v2

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v7, v2}, Lcom/perm/kate/ImageLoader;->removeFilesFromDir(I[Ljava/io/File;)V

    goto :goto_1
.end method

.method public clearFileCache()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader;->removeDir(Ljava/io/File;)V

    .line 907
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 852
    return-void
.end method

.method public decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "f"    # Ljava/io/File;
    .param p2, "resample_width"    # I
    .param p3, "resample_height"    # I
    .param p4, "fit_all"    # Z
    .param p5, "force_565"    # Z

    .prologue
    .line 399
    const/4 v4, 0x0

    .line 400
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 403
    .local v9, "sizeInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 404
    .local v6, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 405
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .local v10, "sizeInputStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    :try_start_1
    invoke-static {v10, v12, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 407
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 410
    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v11, v12, p2

    .line 411
    .local v11, "width_ratio":I
    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v3, v12, p3

    .line 412
    .local v3, "height_ratio":I
    if-eqz p4, :cond_1

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 416
    .local v8, "scale":I
    :goto_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 417
    .local v7, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 419
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 420
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    :try_start_2
    invoke-static {v5, v12, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 425
    sget-object v12, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 438
    :cond_0
    invoke-static {v5}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 441
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "height_ratio":I
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "scale":I
    .end local v11    # "width_ratio":I
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :goto_1
    return-object v0

    .line 413
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "height_ratio":I
    .restart local v6    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "width_ratio":I
    :cond_1
    :try_start_3
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    goto :goto_0

    .line 430
    .end local v3    # "height_ratio":I
    .end local v6    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .end local v11    # "width_ratio":I
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 438
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 441
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 433
    :catch_1
    move-exception v2

    .line 434
    .local v2, "ex":Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_5
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 435
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 436
    iget-object v12, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v12}, Lcom/perm/utils/MemoryCache;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_3

    .line 438
    .end local v2    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    :goto_5
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 439
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v12

    .line 438
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "height_ratio":I
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "scale":I
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "width_ratio":I
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 433
    .end local v3    # "height_ratio":I
    .end local v7    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "scale":I
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .end local v11    # "width_ratio":I
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "height_ratio":I
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "scale":I
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "width_ratio":I
    :catch_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 430
    .end local v3    # "height_ratio":I
    .end local v7    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "scale":I
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .end local v11    # "width_ratio":I
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "height_ratio":I
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "scale":I
    .restart local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "width_ratio":I
    :catch_5
    move-exception v1

    move-object v9, v10

    .end local v10    # "sizeInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "sizeInputStream":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 986
    instance-of v0, p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-eqz v0, :cond_0

    .line 987
    check-cast p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    .end local p1    # "iv":Landroid/widget/ImageView;
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    .line 990
    :goto_0
    return-void

    .line 989
    .restart local p1    # "iv":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "stub_id"    # I

    .prologue
    .line 979
    if-eqz p2, :cond_0

    .line 980
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 983
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V
    .locals 3
    .param p1, "task"    # Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->queuePhoto(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 129
    return-void
.end method

.method public downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v4, 0x0

    .line 307
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 308
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 309
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 311
    .local v7, "tempFile":Ljava/io/File;
    :try_start_0
    const-string v8, "Kate.ImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to temp file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->makeConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 313
    if-eqz p3, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 315
    .local v3, "length":I
    int-to-long v8, v3

    invoke-interface {p3, v8, v9}, Lcom/perm/utils/UploadProgressListener;->setTotalAmount(J)V

    .line 317
    .end local v3    # "length":I
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v2, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v2, v5, p3}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 320
    invoke-static {v5}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 322
    const-string v8, "Kate.ImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download complete exists="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v7, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 324
    .local v6, "res":Z
    if-nez v6, :cond_1

    .line 325
    const-string v8, "Kate.ImageLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 328
    :cond_1
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 329
    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :cond_2
    invoke-static {v5}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 332
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 334
    return-void

    .line 328
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "res":Z
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    :goto_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 329
    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :cond_3
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 332
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw v8

    .line 328
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resample_width"    # I
    .param p3, "resample_height"    # I
    .param p4, "fit_all"    # Z
    .param p5, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .param p6, "force_565"    # Z

    .prologue
    .line 229
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resample_width"    # I
    .param p3, "resample_height"    # I
    .param p4, "fit_all"    # Z
    .param p5, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .param p6, "force_565"    # Z
    .param p7, "force"    # Z

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 245
    const/4 v6, 0x0

    .line 287
    :cond_0
    :goto_0
    return-object v6

    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 250
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 251
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 252
    .local v6, "b":Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 255
    const-string v0, "Kate.ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to decode from cache. url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :cond_2
    iget-boolean v0, p0, Lcom/perm/kate/ImageLoader;->download_images:Z

    if-nez v0, :cond_3

    if-nez p7, :cond_3

    .line 259
    const/4 v6, 0x0

    goto :goto_0

    .line 262
    :cond_3
    const/4 v8, 0x0

    .line 264
    .local v8, "retry_directly_from_network":Z
    :try_start_0
    invoke-virtual {p0, p1, v1, p5}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 265
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ImageLoader;->decodeFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_0

    .line 266
    :catch_0
    move-exception v7

    .line 269
    .local v7, "ex":Ljava/io/FileNotFoundException;
    const/4 v8, 0x1

    .line 270
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 284
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_1
    if-eqz v8, :cond_6

    .line 285
    invoke-direct {p0, p1}, Lcom/perm/kate/ImageLoader;->decodeFromNetwork(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 271
    :catch_1
    move-exception v7

    .line 273
    .local v7, "ex":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    instance-of v0, v7, Ljava/net/SocketException;

    if-nez v0, :cond_4

    instance-of v0, v7, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_4

    instance-of v0, v7, Ljava/net/UnknownHostException;

    if-nez v0, :cond_4

    .line 276
    const/4 v8, 0x1

    goto :goto_1

    .line 277
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 278
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 279
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 280
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 287
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 355
    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 365
    :cond_0
    const-string v4, "vk.com/doc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    sget-object v4, Lcom/perm/kate/ImageLoader;->doc_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 367
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 371
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 373
    .local v2, "half":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/perm/kate/ImageLoader;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    .local v0, "f":Ljava/io/File;
    return-object v0
.end method

.method public getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/perm/utils/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v3, 0x0

    .line 381
    .local v3, "istr":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 382
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 383
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v5}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V

    .line 384
    :cond_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v3    # "istr":Ljava/io/InputStream;
    .local v4, "istr":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v0}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 391
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 393
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "istr":Ljava/io/InputStream;
    .restart local v3    # "istr":Ljava/io/InputStream;
    :goto_0
    return-object v5

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 393
    const/4 v5, 0x0

    new-array v5, v5, [B

    goto :goto_0

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "istr":Ljava/io/InputStream;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "istr":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "istr":Ljava/io/InputStream;
    .restart local v3    # "istr":Ljava/io/InputStream;
    goto :goto_2

    .line 388
    .end local v3    # "istr":Ljava/io/InputStream;
    .restart local v4    # "istr":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "istr":Ljava/io/InputStream;
    .restart local v3    # "istr":Ljava/io/InputStream;
    goto :goto_1
.end method

.method getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 993
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader;->baseDir:Ljava/io/File;

    const-string v3, "tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 994
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method imageViewReused(Lcom/perm/kate/ImageLoader$PhotoToLoad;)Z
    .locals 4
    .param p1, "photoToLoad"    # Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .prologue
    const/4 v2, 0x1

    .line 841
    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, "iv":Landroid/view/View;
    if-nez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v2

    .line 844
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 845
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p1, Lcom/perm/kate/ImageLoader$PhotoToLoad;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 847
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCachedInMemory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/perm/utils/MemoryCache;->isCached(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/ImageLoader;->paused:Z

    .line 967
    return-void
.end method

.method public putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/perm/utils/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 856
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 970
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/kate/ImageLoader;->paused:Z

    .line 971
    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 974
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :cond_0
    monitor-exit v2

    .line 976
    return-void

    .line 975
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
