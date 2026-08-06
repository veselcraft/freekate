.class abstract Lcom/my/target/core/async/commands/a;
.super Ljava/lang/Object;
.source "AbstractAsyncCommand.java"

# interfaces
.implements Lcom/my/target/core/async/commands/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/my/target/core/async/commands/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/ExecutorService;

.field private static final f:Ljava/util/concurrent/ExecutorService;

.field private static final g:Landroid/os/Handler;


# instance fields
.field protected a:Z

.field final b:Landroid/content/Context;

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field private h:Lcom/my/target/core/async/commands/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/my/target/core/async/commands/b$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/async/commands/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/async/commands/a;->f:Ljava/util/concurrent/ExecutorService;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/my/target/core/async/commands/a;->g:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/async/commands/a;->b:Landroid/content/Context;

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/async/commands/a;->b:Landroid/content/Context;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/async/commands/a;->a:Z

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/async/commands/a;)Lcom/my/target/core/async/commands/b$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/my/target/core/async/commands/a;->h:Lcom/my/target/core/async/commands/b$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/my/target/core/async/commands/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/my/target/core/async/commands/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/async/commands/b$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/my/target/core/async/commands/a;->h:Lcom/my/target/core/async/commands/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "add command to "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/my/target/core/async/commands/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "low priority"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " executor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/my/target/core/async/commands/a;->a:Z

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/my/target/core/async/commands/a;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 101
    :goto_1
    return-void

    .line 93
    :cond_0
    const-string v0, "main"

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/my/target/core/async/commands/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected abstract c()V
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/my/target/core/async/commands/a;->c()V

    .line 1108
    monitor-enter p0

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/async/commands/a;->h:Lcom/my/target/core/async/commands/b$a;

    if-eqz v0, :cond_0

    .line 1111
    sget-object v0, Lcom/my/target/core/async/commands/a;->g:Landroid/os/Handler;

    new-instance v1, Lcom/my/target/core/async/commands/a$1;

    invoke-direct {v1, p0}, Lcom/my/target/core/async/commands/a$1;-><init>(Lcom/my/target/core/async/commands/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1125
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
