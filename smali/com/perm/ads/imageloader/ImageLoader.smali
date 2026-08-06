.class public Lcom/perm/ads/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/ads/imageloader/ImageLoader$BitmapDisplayer;,
        Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;,
        Lcom/perm/ads/imageloader/ImageLoader$PhotosLoader;
    }
.end annotation


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;

.field fileCache:Lcom/perm/ads/imageloader/FileCache;

.field handler:Landroid/os/Handler;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field memoryCache:Lcom/perm/ads/imageloader/MemoryCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/perm/ads/imageloader/MemoryCache;

    invoke-direct {v0}, Lcom/perm/ads/imageloader/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader;->memoryCache:Lcom/perm/ads/imageloader/MemoryCache;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader;->imageViews:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader;->handler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/perm/ads/imageloader/FileCache;

    invoke-direct {v0, p1}, Lcom/perm/ads/imageloader/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader;->fileCache:Lcom/perm/ads/imageloader/FileCache;

    .line 33
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/ads/imageloader/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/perm/ads/imageloader/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/ads/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 112
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v2, "o2":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 115
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v3, "stream2":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-static {v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "stream2":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    move-object v0, v4

    .line 124
    goto :goto_0

    .line 119
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v8, p0, Lcom/perm/ads/imageloader/ImageLoader;->fileCache:Lcom/perm/ads/imageloader/FileCache;

    invoke-virtual {v8, p1}, Lcom/perm/ads/imageloader/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 60
    .local v4, "f":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/perm/ads/imageloader/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 83
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "imageUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 69
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 70
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 71
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 72
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 73
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v7, "os":Ljava/io/OutputStream;
    invoke-static {v6, v7}, Lcom/perm/ads/imageloader/Utils;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 75
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 76
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    invoke-direct {p0, v4}, Lcom/perm/ads/imageloader/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 79
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "imageUrl":Ljava/net/URL;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 80
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    instance-of v8, v3, Ljava/lang/OutOfMemoryError;

    if-eqz v8, :cond_1

    .line 82
    iget-object v8, p0, Lcom/perm/ads/imageloader/ImageLoader;->memoryCache:Lcom/perm/ads/imageloader/MemoryCache;

    invoke-virtual {v8}, Lcom/perm/ads/imageloader/MemoryCache;->clear()V

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    new-instance v0, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;-><init>(Lcom/perm/ads/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 52
    .local v0, "p":Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/perm/ads/imageloader/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/perm/ads/imageloader/ImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/perm/ads/imageloader/ImageLoader$PhotosLoader;-><init>(Lcom/perm/ads/imageloader/ImageLoader;Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 53
    return-void
.end method


# virtual methods
.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/perm/ads/imageloader/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/perm/ads/imageloader/ImageLoader;->memoryCache:Lcom/perm/ads/imageloader/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/perm/ads/imageloader/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/perm/ads/imageloader/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method imageViewReused(Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;)Z
    .locals 3
    .param p1, "photoToLoad"    # Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/perm/ads/imageloader/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/perm/ads/imageloader/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
