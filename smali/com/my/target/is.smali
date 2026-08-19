.class public Lcom/my/target/is;
.super Ljava/lang/Object;
.source "Repeater.java"


# static fields
.field private static final handler:Landroid/os/Handler;


# instance fields
.field private final pB:I

.field private final pC:Ljava/util/WeakHashMap;

.field private final pD:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/my/target/is;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/my/target/is;-><init>(I)V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/my/target/is;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    .line 32
    new-instance v0, Lcom/my/target/is$1;

    invoke-direct {v0, p0}, Lcom/my/target/is$1;-><init>(Lcom/my/target/is;)V

    iput-object v0, p0, Lcom/my/target/is;->pD:Ljava/lang/Runnable;

    .line 48
    iput p1, p0, Lcom/my/target/is;->pB:I

    return-void
.end method

.method public static final N(I)Lcom/my/target/is;
    .locals 1

    .line 25
    new-instance v0, Lcom/my/target/is;

    invoke-direct {v0, p0}, Lcom/my/target/is;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/is;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/my/target/is;->eR()V

    return-void
.end method

.method private eR()V
    .locals 2

    .line 79
    monitor-enter p0

    .line 81
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 84
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/my/target/is;->eS()V

    .line 90
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private eS()V
    .locals 4

    .line 95
    sget-object v0, Lcom/my/target/is;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/is;->pD:Ljava/lang/Runnable;

    iget v2, p0, Lcom/my/target/is;->pB:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Runnable;)V
    .locals 3

    .line 54
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/my/target/is;->eS()V

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 1

    .line 67
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/my/target/is;->pC:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lcom/my/target/is;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/my/target/is;->pD:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
