.class public Lcom/perm/utils/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# instance fields
.field private cache:Ljava/util/Map;

.field private limit:J

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J

    const-wide/32 v0, 0xf4240

    .line 18
    iput-wide v0, p0, Lcom/perm/utils/MemoryCache;->limit:J

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/perm/utils/MemoryCache;->setLimit(J)V

    return-void
.end method

.method private checkSize()V
    .locals 9

    const-string v0, "Kate.MemoryCache"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/utils/MemoryCache;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J

    iget-wide v2, p0, Lcom/perm/utils/MemoryCache;->limit:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-wide v1, p0, Lcom/perm/utils/MemoryCache;->size:J

    iget-wide v3, p0, Lcom/perm/utils/MemoryCache;->limit:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 69
    monitor-exit v0

    return-void

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    iget-object v3, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 72
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 74
    iget-wide v5, p0, Lcom/perm/utils/MemoryCache;->size:J

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4}, Lcom/perm/utils/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/perm/utils/MemoryCache;->size:J

    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 76
    iget-wide v4, p0, Lcom/perm/utils/MemoryCache;->size:J

    iget-wide v6, p0, Lcom/perm/utils/MemoryCache;->limit:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    .line 79
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "Kate.MemoryCache"

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clean cache duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " size after clean "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method getSizeInBytes(Landroid/graphics/Bitmap;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J

    iget-object v2, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/perm/utils/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J

    invoke-virtual {p0, p2}, Lcom/perm/utils/MemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/perm/utils/MemoryCache;->size:J

    .line 48
    invoke-direct {p0}, Lcom/perm/utils/MemoryCache;->checkSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/perm/utils/MemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLimit(J)V
    .locals 4

    .line 26
    iput-wide p1, p0, Lcom/perm/utils/MemoryCache;->limit:J

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MemoryCache will use up to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/perm/utils/MemoryCache;->limit:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kate.MemoryCache"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
