.class public Lcom/yandex/metrica/impl/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Lcom/yandex/metrica/impl/az;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/yandex/metrica/impl/ag;

.field private final e:Lcom/yandex/metrica/impl/bh;

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/bj$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/bj$1;-><init>(Lcom/yandex/metrica/impl/bj;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->g:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 50
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/az;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;)Lcom/yandex/metrica/impl/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ag;->start()V

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    .line 57
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/au$a;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->i()Lcom/yandex/metrica/impl/ob/bc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/bc;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/yandex/metrica/impl/l;->a:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/au$a;->a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/au;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/au;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/l;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ah;)V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 137
    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;)Lcom/yandex/metrica/impl/ag;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ag;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/ag;-><init>(Ljava/util/concurrent/Executor;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkCore ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ag;->setName(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/i;)Lcom/yandex/metrica/impl/bh;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/bh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/bh;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 87
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v0, :cond_2

    .line 89
    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bh;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ah;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yandex/metrica/impl/ao;->p()Lcom/yandex/metrica/impl/au$a;

    move-result-object v0

    const-wide/16 v4, -0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/au$a;Ljava/lang/Long;)V

    invoke-static {}, Lcom/yandex/metrica/impl/au;->t()Lcom/yandex/metrica/impl/au$a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/yandex/metrica/impl/bj;->a(Lcom/yandex/metrica/impl/au$a;Ljava/lang/Long;)V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bj;->d()V

    .line 92
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 92
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bj;->d()V

    .line 154
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->b()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->n()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/yandex/metrica/impl/bj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
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

.method public c()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ag;->b(Lcom/yandex/metrica/impl/ah;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/bh;->a(Z)V

    .line 165
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/bh;->a(J)V

    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bj;->e:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ag;->a(Lcom/yandex/metrica/impl/ah;)V

    .line 169
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

.method public close()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bj;->d()V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ag;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Lcom/yandex/metrica/impl/ag;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ag;->a()V

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bj;->f:Z

    .line 83
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
