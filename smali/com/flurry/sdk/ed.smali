.class public abstract Lcom/flurry/sdk/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/fd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ed"


# instance fields
.field private final b:Lcom/flurry/sdk/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dp<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/sdk/dp;

    invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V

    iput-object v0, v8, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lcom/flurry/sdk/ed;->d:Ljava/util/HashMap;

    .line 49
    new-instance v9, Lcom/flurry/sdk/ed$1;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ed$1;-><init>(Lcom/flurry/sdk/ed;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v9, v8, Lcom/flurry/sdk/ed;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 108
    new-instance v0, Lcom/flurry/sdk/ed$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ed$2;-><init>(Lcom/flurry/sdk/ed;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 132
    new-instance v0, Lcom/flurry/sdk/ew;

    const/4 v1, 0x1

    move-object v2, p1

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/ew;-><init>(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ed;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ed;->a(Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 238
    instance-of v0, p1, Lcom/flurry/sdk/ec;

    if-eqz v0, :cond_0

    .line 239
    check-cast p1, Lcom/flurry/sdk/ec;

    .line 240
    invoke-virtual {p1}, Lcom/flurry/sdk/ec;->a()Ljava/lang/Runnable;

    move-result-object p1

    check-cast p1, Lcom/flurry/sdk/fd;

    goto :goto_0

    .line 241
    :cond_0
    instance-of v0, p1, Lcom/flurry/sdk/fd;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Lcom/flurry/sdk/fd;

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 244
    sget-object v1, Lcom/flurry/sdk/ed;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown runnable class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ed;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/flurry/sdk/ed;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ed;->b(Lcom/flurry/sdk/fd;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/flurry/sdk/fd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/ed;->c(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/dp;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dp;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object p1, p0, Lcom/flurry/sdk/ed;->c:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ed;->b(Ljava/lang/Object;Lcom/flurry/sdk/fd;)V

    .line 142
    iget-object p1, p0, Lcom/flurry/sdk/ed;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 138
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
