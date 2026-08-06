.class public Lcom/yandex/mobile/ads/network/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/mobile/ads/network/core/r;

.field private static volatile c:Lcom/yandex/mobile/ads/network/core/k;

.field private static volatile d:Ljava/lang/Integer;

.field private static volatile e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/network/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/network/core/r;
    .locals 6

    .prologue
    .line 54
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->b:Lcom/yandex/mobile/ads/network/core/r;

    if-nez v0, :cond_2

    .line 55
    sget-object v1, Lcom/yandex/mobile/ads/network/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->b:Lcom/yandex/mobile/ads/network/core/r;

    if-nez v0, :cond_1

    .line 57
    const-string v0, "Yandex Mobile Ads"

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yandex/mobile/ads/network/core/v;->b:Z

    .line 60
    new-instance v0, Lcom/yandex/mobile/ads/network/c;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/network/c;-><init>()V

    .line 61
    new-instance v2, Lcom/yandex/mobile/ads/network/core/a;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/network/core/a;-><init>(Lcom/yandex/mobile/ads/network/core/i;)V

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "mobileads-volley-cache"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/yandex/mobile/ads/network/core/f;

    const-wide/32 v4, 0xa00000

    invoke-static {v3, v4, v5}, Lcom/yandex/mobile/ads/utils/e;->a(Ljava/io/File;J)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v0, v3, v4}, Lcom/yandex/mobile/ads/network/core/f;-><init>(Ljava/io/File;I)V

    .line 65
    new-instance v3, Lcom/yandex/mobile/ads/network/core/r;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/yandex/mobile/ads/network/core/r;-><init>(Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/m;I)V

    .line 66
    sput-object v3, Lcom/yandex/mobile/ads/network/d;->b:Lcom/yandex/mobile/ads/network/core/r;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/network/core/r;->a()V

    .line 68
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_2
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->b:Lcom/yandex/mobile/ads/network/core/r;

    return-object v0

    .line 62
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/yandex/mobile/ads/network/core/k;
    .locals 6

    .prologue
    .line 92
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->c:Lcom/yandex/mobile/ads/network/core/k;

    if-nez v0, :cond_1

    .line 93
    sget-object v1, Lcom/yandex/mobile/ads/network/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->c:Lcom/yandex/mobile/ads/network/core/k;

    if-nez v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/d;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/network/core/r;

    move-result-object v0

    .line 96
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/d;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    invoke-static {p0}, Lcom/yandex/mobile/ads/network/d;->d(Landroid/content/Context;)Landroid/util/LruCache;

    move-result-object v3

    .line 99
    new-instance v4, Lcom/yandex/mobile/ads/network/b;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Lcom/yandex/mobile/ads/network/d$1;

    invoke-direct {v5, v3}, Lcom/yandex/mobile/ads/network/d$1;-><init>(Landroid/util/LruCache;)V

    invoke-direct {v4, v0, v2, v5}, Lcom/yandex/mobile/ads/network/b;-><init>(Lcom/yandex/mobile/ads/network/core/r;ILcom/yandex/mobile/ads/network/core/k$b;)V

    sput-object v4, Lcom/yandex/mobile/ads/network/d;->c:Lcom/yandex/mobile/ads/network/core/k;

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->c:Lcom/yandex/mobile/ads/network/core/k;

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->d:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 119
    sget-object v1, Lcom/yandex/mobile/ads/network/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/yandex/mobile/ads/utils/f;->i(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 122
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/network/d;->d:Ljava/lang/Integer;

    .line 124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->d:Ljava/lang/Integer;

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d(Landroid/content/Context;)Landroid/util/LruCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->e:Landroid/util/LruCache;

    if-nez v0, :cond_1

    .line 134
    sget-object v1, Lcom/yandex/mobile/ads/network/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->e:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 136
    const/16 v0, 0x1400

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/utils/e;->a(Landroid/content/Context;I)I

    move-result v0

    .line 137
    new-instance v2, Lcom/yandex/mobile/ads/network/d$2;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/network/d$2;-><init>(I)V

    sput-object v2, Lcom/yandex/mobile/ads/network/d;->e:Landroid/util/LruCache;

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/network/d;->e:Landroid/util/LruCache;

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
