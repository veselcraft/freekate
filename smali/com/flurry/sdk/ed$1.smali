.class Lcom/flurry/sdk/ed$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ed;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ed;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7

    .line 50
    iput-object p1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 71
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 73
    iget-object p2, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {p2, p1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {p2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v0}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p2, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {p2, p1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V

    .line 83
    new-instance p2, Lcom/flurry/sdk/ed$1$2;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/ed$1$2;-><init>(Lcom/flurry/sdk/ed$1;Lcom/flurry/sdk/fd;)V

    invoke-virtual {p2}, Lcom/flurry/sdk/fc;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 56
    iget-object p1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {p1, p2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance p2, Lcom/flurry/sdk/ed$1$1;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/ed$1$1;-><init>(Lcom/flurry/sdk/ed$1;Lcom/flurry/sdk/fd;)V

    invoke-virtual {p2}, Lcom/flurry/sdk/fc;->run()V

    return-void
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/flurry/sdk/ec;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/ec;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 100
    iget-object p2, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {p2}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ed$1;->a:Lcom/flurry/sdk/ed;

    invoke-static {v1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;

    move-result-object v1

    check-cast p1, Lcom/flurry/sdk/fd;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Callable not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
