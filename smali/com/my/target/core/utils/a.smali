.class public final Lcom/my/target/core/utils/a;
.super Ljava/lang/Object;
.source "AdShowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/utils/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/my/target/core/utils/a;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/my/target/core/utils/a$a;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/my/target/core/utils/a;

    invoke-direct {v0}, Lcom/my/target/core/utils/a;-><init>()V

    sput-object v0, Lcom/my/target/core/utils/a;->a:Lcom/my/target/core/utils/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/my/target/core/utils/a;->b:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    .line 83
    new-instance v0, Lcom/my/target/core/utils/a$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/utils/a$1;-><init>(Lcom/my/target/core/utils/a;)V

    iput-object v0, p0, Lcom/my/target/core/utils/a;->d:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public static a()Lcom/my/target/core/utils/a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/my/target/core/utils/a;->a:Lcom/my/target/core/utils/a;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/utils/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/my/target/core/utils/a;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/utils/a$a;

    .line 69
    invoke-interface {v0}, Lcom/my/target/core/utils/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/my/target/core/utils/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/my/target/core/utils/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/utils/a;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/my/target/core/utils/a$a;)V
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/my/target/core/utils/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/my/target/core/utils/a$a;)V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/my/target/core/utils/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/utils/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/utils/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
