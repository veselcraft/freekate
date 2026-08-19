.class public final Lcom/flurry/sdk/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dz$a;
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/dz;


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    .line 78
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    new-instance v0, Lcom/flurry/sdk/dz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/dz$a;-><init>(Lcom/flurry/sdk/dz;Lcom/flurry/sdk/dz$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dz;
    .locals 2

    const-class v0, Lcom/flurry/sdk/dz;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dz;->a:Lcom/flurry/sdk/dz;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/flurry/sdk/dz;

    invoke-direct {v1}, Lcom/flurry/sdk/dz;-><init>()V

    sput-object v1, Lcom/flurry/sdk/dz;->a:Lcom/flurry/sdk/dz;

    .line 35
    :cond_0
    sget-object v1, Lcom/flurry/sdk/dz;->a:Lcom/flurry/sdk/dz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/flurry/sdk/dz;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dz;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/flurry/sdk/dz;->b()Ljava/util/Set;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 90
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/flurry/sdk/dz;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dz;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/dz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/dz;->c:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
