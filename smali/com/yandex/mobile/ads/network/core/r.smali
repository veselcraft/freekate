.class public Lcom/yandex/mobile/ads/network/core/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/core/r$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/mobile/ads/network/core/c;

.field private final g:Lcom/yandex/mobile/ads/network/core/m;

.field private final h:Lcom/yandex/mobile/ads/network/core/t;

.field private i:[Lcom/yandex/mobile/ads/network/core/n;

.field private j:Lcom/yandex/mobile/ads/network/core/d;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/m;I)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/yandex/mobile/ads/network/core/g;

    new-instance v1, Landroid/os/Handler;

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/network/core/g;-><init>(Landroid/os/Handler;)V

    .line 124
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/network/core/r;-><init>(Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/m;ILcom/yandex/mobile/ads/network/core/t;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/m;ILcom/yandex/mobile/ads/network/core/t;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 76
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->k:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/r;->f:Lcom/yandex/mobile/ads/network/core/c;

    .line 111
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/r;->g:Lcom/yandex/mobile/ads/network/core/m;

    .line 112
    new-array v0, p3, [Lcom/yandex/mobile/ads/network/core/n;

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->i:[Lcom/yandex/mobile/ads/network/core/n;

    .line 113
    iput-object p4, p0, Lcom/yandex/mobile/ads/network/core/r;->h:Lcom/yandex/mobile/ads/network/core/t;

    .line 114
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/q;)Lcom/yandex/mobile/ads/network/core/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<TT;>;)",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/r;)Lcom/yandex/mobile/ads/network/core/q;

    .line 230
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/r;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/network/core/q;->a(I)Lcom/yandex/mobile/ads/network/core/q;

    .line 236
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 264
    :goto_0
    return-object p1

    .line 232
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    monitor-enter v1

    .line 246
    :try_start_2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->g()Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 250
    if-nez v0, :cond_1

    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 253
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-boolean v0, Lcom/yandex/mobile/ads/network/core/v;->b:Z

    if-eqz v0, :cond_2

    .line 256
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 265
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 261
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public a()V
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/r;->b()V

    .line 144
    new-instance v0, Lcom/yandex/mobile/ads/network/core/d;

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/r;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/r;->f:Lcom/yandex/mobile/ads/network/core/c;

    iget-object v4, p0, Lcom/yandex/mobile/ads/network/core/r;->h:Lcom/yandex/mobile/ads/network/core/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/network/core/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/t;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->j:Lcom/yandex/mobile/ads/network/core/d;

    .line 145
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->j:Lcom/yandex/mobile/ads/network/core/d;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/d;->start()V

    .line 148
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->i:[Lcom/yandex/mobile/ads/network/core/n;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 149
    new-instance v1, Lcom/yandex/mobile/ads/network/core/n;

    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/r;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/r;->g:Lcom/yandex/mobile/ads/network/core/m;

    iget-object v4, p0, Lcom/yandex/mobile/ads/network/core/r;->f:Lcom/yandex/mobile/ads/network/core/c;

    iget-object v5, p0, Lcom/yandex/mobile/ads/network/core/r;->h:Lcom/yandex/mobile/ads/network/core/t;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/mobile/ads/network/core/n;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/yandex/mobile/ads/network/core/m;Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/t;)V

    .line 151
    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/r;->i:[Lcom/yandex/mobile/ads/network/core/n;

    aput-object v1, v2, v0

    .line 152
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/network/core/n;->start()V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/r$a;)V
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/q;

    .line 199
    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/network/core/r$a;->a(Lcom/yandex/mobile/ads/network/core/q;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->i()V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->j:Lcom/yandex/mobile/ads/network/core/d;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->j:Lcom/yandex/mobile/ads/network/core/d;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/d;->a()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->i:[Lcom/yandex/mobile/ads/network/core/n;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->i:[Lcom/yandex/mobile/ads/network/core/n;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->i:[Lcom/yandex/mobile/ads/network/core/n;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/network/core/n;->a()V

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    return-void
.end method

.method b(Lcom/yandex/mobile/ads/network/core/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->k:Ljava/util/List;

    monitor-enter v1

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 279
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 284
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    monitor-enter v1

    .line 288
    :try_start_4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->g()Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 290
    if-eqz v0, :cond_2

    .line 291
    sget-boolean v3, Lcom/yandex/mobile/ads/network/core/v;->b:Z

    if-eqz v3, :cond_1

    .line 292
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 293
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 292
    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/r;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 299
    :cond_2
    monitor-exit v1

    .line 301
    :cond_3
    return-void

    .line 299
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
