.class public Lcom/yandex/metrica/impl/ob/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/j;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Landroid/os/HandlerThread;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/yandex/metrica/impl/ob/h;

.field private g:Lcom/yandex/metrica/impl/ob/bp;

.field private h:Lcom/yandex/metrica/impl/ob/bp;

.field private i:Lcom/yandex/metrica/impl/ob/bl;

.field private j:Lcom/yandex/metrica/impl/ob/bs;

.field private k:Lcom/yandex/metrica/CounterConfiguration;

.field private final l:Lcom/yandex/metrica/impl/az;

.field private m:Lcom/yandex/metrica/impl/bj;

.field private n:Lcom/yandex/metrica/impl/ob/bc;

.field private o:Lcom/yandex/metrica/impl/ob/k;

.field private p:Lcom/yandex/metrica/impl/b;

.field private final q:Lcom/yandex/metrica/impl/ob/g;

.field private r:J

.field private volatile s:Lcom/yandex/metrica/impl/ob/aw;

.field private final t:Lcom/yandex/metrica/impl/utils/e;

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/g;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/i;->a:Z

    .line 52
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/i;->b:Z

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/az;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/az;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->l:Lcom/yandex/metrica/impl/az;

    .line 78
    new-instance v0, Lcom/yandex/metrica/impl/utils/e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/e;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->t:Lcom/yandex/metrica/impl/utils/e;

    .line 374
    new-instance v0, Lcom/yandex/metrica/impl/ob/i$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/i$1;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->u:Ljava/lang/Runnable;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/i;->f:Lcom/yandex/metrica/impl/ob/h;

    .line 92
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 94
    new-instance v0, Lcom/yandex/metrica/impl/ob/bp;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bp;->d(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/i;->r:J

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/bp;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/bp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->h:Lcom/yandex/metrica/impl/ob/bp;

    new-instance v0, Lcom/yandex/metrica/impl/ob/bl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->i:Lcom/yandex/metrica/impl/ob/bl;

    new-instance v0, Lcom/yandex/metrica/impl/ob/bs;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->j:Lcom/yandex/metrica/impl/ob/bs;

    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/ob/aw;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/aw;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/bp;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->s:Lcom/yandex/metrica/impl/ob/aw;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TaskHandler ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->c:Landroid/os/HandlerThread;

    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->d:Landroid/os/Handler;

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->l:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/az;->a(Lcom/yandex/metrica/impl/ob/i;)V

    .line 104
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/bd;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->n:Lcom/yandex/metrica/impl/ob/bc;

    .line 105
    new-instance v0, Lcom/yandex/metrica/impl/bj;

    invoke-direct {v0, p0, p2}, Lcom/yandex/metrica/impl/bj;-><init>(Lcom/yandex/metrica/impl/ob/i;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->m:Lcom/yandex/metrica/impl/bj;

    .line 107
    new-instance v0, Lcom/yandex/metrica/impl/ob/n;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/n;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 108
    new-instance v1, Lcom/yandex/metrica/impl/ob/q;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/q;-><init>(Lcom/yandex/metrica/impl/ob/p;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->o:Lcom/yandex/metrica/impl/ob/k;

    .line 109
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/i;->q:Lcom/yandex/metrica/impl/ob/g;

    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->q:Lcom/yandex/metrica/impl/ob/g;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/bp;)Lcom/yandex/metrica/impl/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->p:Lcom/yandex/metrica/impl/b;

    .line 113
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/ax;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->p:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->n:Lcom/yandex/metrica/impl/ob/bc;

    invoke-virtual {v1, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/bc;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/ax;Lcom/yandex/metrica/impl/b$a;)V

    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->m:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bj;->b()V

    .line 174
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/aw;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->s:Lcom/yandex/metrica/impl/ob/aw;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V

    .line 266
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->f:Lcom/yandex/metrica/impl/ob/h;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->h:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V

    .line 269
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    .line 178
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->l:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/az;->d(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/g;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->p()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->p()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Event received"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/e;->a(Lcom/yandex/metrica/impl/g;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->l:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->l:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/az;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->o:Lcom/yandex/metrica/impl/ob/k;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/g;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bp;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V

    .line 304
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->j:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bs;->a(Z)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bs;->k()V

    .line 363
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->n:Lcom/yandex/metrica/impl/ob/bc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bc;->a()J

    move-result-wide v2

    .line 185
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->c()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 186
    :goto_0
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/i;->a:Z

    or-int/2addr v0, v2

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->f()V

    .line 190
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/i;->a:Z

    .line 192
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public b(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 383
    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/g;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->o:Lcom/yandex/metrica/impl/ob/k;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/g;)Z

    .line 137
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->h:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bp;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V

    .line 308
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->j:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bs;->r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bs;->k()V

    .line 309
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/i;->a:Z

    .line 372
    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/i;->b:Z

    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->m:Lcom/yandex/metrica/impl/bj;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V

    .line 198
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->n:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bd;->a(Lcom/yandex/metrica/impl/ob/bc;)V

    .line 200
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/yandex/metrica/impl/g;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->s:Lcom/yandex/metrica/impl/ob/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/aw;->e()Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/ax;)V

    .line 155
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->u:Ljava/lang/Runnable;

    sget-wide v2, Lcom/yandex/metrica/impl/ad;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method

.method public d(Lcom/yandex/metrica/impl/g;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->s:Lcom/yandex/metrica/impl/ob/aw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/aw;->b(Lcom/yandex/metrica/impl/g;)Z

    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->s:Lcom/yandex/metrica/impl/ob/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/aw;->d()Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/ax;)V

    .line 160
    return-void
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->m:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bj;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Lcom/yandex/metrica/impl/g;)V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->s:Lcom/yandex/metrica/impl/ob/aw;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/aw;->f()Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/ax;)V

    .line 165
    return-void
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->m:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/yandex/metrica/impl/g;)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/i;->b(Z)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/i;->d(Lcom/yandex/metrica/impl/g;)V

    .line 289
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->t()V

    .line 290
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/yandex/metrica/impl/g;)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->p:Lcom/yandex/metrica/impl/b;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/b;->a(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->q:Lcom/yandex/metrica/impl/ob/g;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->p:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/bp;)V

    .line 295
    return-void
.end method

.method public h()Lcom/yandex/metrica/impl/az;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->l:Lcom/yandex/metrica/impl/az;

    return-object v0
.end method

.method public i()Lcom/yandex/metrica/impl/ob/bc;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->n:Lcom/yandex/metrica/impl/ob/bc;

    return-object v0
.end method

.method public j()Lcom/yandex/metrica/CounterConfiguration;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method public k()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->a()Landroid/os/ResultReceiver;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/h;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->f:Lcom/yandex/metrica/impl/ob/h;

    return-object v0
.end method

.method public m()Landroid/content/Context;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->e:Landroid/content/Context;

    return-object v0
.end method

.method public n()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized o()Z
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Lcom/yandex/metrica/impl/utils/e;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->t:Lcom/yandex/metrica/impl/utils/e;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->t:Lcom/yandex/metrica/impl/utils/e;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/e;->a()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->t:Lcom/yandex/metrica/impl/utils/e;

    return-object v0
.end method

.method public q()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->p:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/b;->a()V

    .line 299
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->q:Lcom/yandex/metrica/impl/ob/g;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->p:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/bp;)V

    .line 300
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->h:Lcom/yandex/metrica/impl/ob/bp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->h:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->c()Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V

    .line 317
    return-void
.end method

.method public t()V
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/i;->r:J

    .line 321
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/i;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bp;->n(J)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V

    .line 322
    return-void
.end method

.method public u()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/i;->r:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/az;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public v()Lcom/yandex/metrica/impl/ob/bl;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->i:Lcom/yandex/metrica/impl/ob/bl;

    return-object v0
.end method

.method public w()Lcom/yandex/metrica/impl/ob/bs;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->j:Lcom/yandex/metrica/impl/ob/bs;

    return-object v0
.end method

.method public x()Z
    .locals 4

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i;->h:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i;->g:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v2

    .line 344
    sget-object v3, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v2, v1, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 350
    :cond_0
    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->k:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i;->j:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bs;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
