.class public Lcom/yandex/mobile/ads/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/ao;->a:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method


# virtual methods
.method public varargs a([Lcom/yandex/mobile/ads/nativeads/j;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yandex/mobile/ads/nativeads/j;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 128
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    .line 129
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 130
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/yandex/mobile/ads/nativeads/g;

    if-eqz v5, :cond_0

    .line 132
    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_2
    return-object v2
.end method

.method public a(Ljava/util/Set;Lcom/yandex/mobile/ads/nativeads/h;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/g;",
            ">;",
            "Lcom/yandex/mobile/ads/nativeads/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/yandex/mobile/ads/nativeads/h;->a(Ljava/util/Map;)V

    .line 52
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/ao;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/d;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/network/core/k;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/utils/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/g;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/g;->b()I

    move-result v7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    long-to-float v9, v10

    sub-float v8, v9, v8

    mul-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v7, 0x49800000    # 1048576.0f

    add-float/2addr v1, v7

    cmpg-float v7, v8, v1

    if-gez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Not enough free memory to create bitmap. FreeMemory = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", RequiredMemory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    new-instance v1, Lcom/yandex/mobile/ads/ao$1;

    invoke-direct {v1, v4, v0, v3, p2}, Lcom/yandex/mobile/ads/ao$1;-><init>(Ljava/util/Map;Lcom/yandex/mobile/ads/nativeads/g;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/yandex/mobile/ads/nativeads/h;)V

    invoke-virtual {v2, v6, v1}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;)Lcom/yandex/mobile/ads/network/core/k$c;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
