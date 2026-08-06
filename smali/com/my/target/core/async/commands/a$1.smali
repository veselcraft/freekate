.class final Lcom/my/target/core/async/commands/a$1;
.super Ljava/lang/Object;
.source "AbstractAsyncCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/async/commands/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/async/commands/a;


# direct methods
.method constructor <init>(Lcom/my/target/core/async/commands/a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/my/target/core/async/commands/a$1;->a:Lcom/my/target/core/async/commands/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/my/target/core/async/commands/a$1;->a:Lcom/my/target/core/async/commands/a;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/async/commands/a$1;->a:Lcom/my/target/core/async/commands/a;

    invoke-static {v0}, Lcom/my/target/core/async/commands/a;->a(Lcom/my/target/core/async/commands/a;)Lcom/my/target/core/async/commands/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/my/target/core/async/commands/a$1;->a:Lcom/my/target/core/async/commands/a;

    invoke-static {v0}, Lcom/my/target/core/async/commands/a;->a(Lcom/my/target/core/async/commands/a;)Lcom/my/target/core/async/commands/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/async/commands/a$1;->a:Lcom/my/target/core/async/commands/a;

    iget-object v3, p0, Lcom/my/target/core/async/commands/a$1;->a:Lcom/my/target/core/async/commands/a;

    iget-object v3, v3, Lcom/my/target/core/async/commands/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/my/target/core/async/commands/b$a;->onExecute(Lcom/my/target/core/async/commands/b;Ljava/lang/Object;)V

    .line 122
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
