.class public abstract Lcom/yandex/metrica/impl/ob/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/yandex/metrica/impl/ob/i;

.field protected b:Lcom/yandex/metrica/impl/ob/ay;

.field protected c:J

.field protected d:J

.field protected e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/ay;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/av;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 36
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/av;->d:J

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/av;->c:J

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->e(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/av;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->d(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ay;->a()V

    .line 45
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/av;->c:J

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/av;->d:J

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/av;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->i(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->h(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/av;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->d(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/av;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->f(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ay;->a()V

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->i()Lcom/yandex/metrica/impl/ob/bc;

    move-result-object v0

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/av;->c:J

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/av;->b()Lcom/yandex/metrica/impl/ob/az;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/yandex/metrica/impl/ob/bc;->a(JLcom/yandex/metrica/impl/ob/az;)V

    .line 60
    return-void
.end method

.method protected abstract b()Lcom/yandex/metrica/impl/ob/az;
.end method

.method f()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/av;->c:J

    return-wide v0
.end method

.method g()Z
    .locals 4

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/av;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/av;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()J
    .locals 6

    .prologue
    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/av;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method i()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    invoke-virtual {v0, v6, v7}, Lcom/yandex/metrica/impl/ob/ay;->g(J)J

    move-result-wide v0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 77
    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/av;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->d()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    const-wide/32 v2, -0x80000000

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->h(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ay;->a()V

    .line 83
    return-void
.end method

.method k()V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ay;->h(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ay;->a()V

    .line 87
    return-void
.end method

.method l()J
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/ob/ay;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/av;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/ob/ay;->f(J)Lcom/yandex/metrica/impl/ob/ay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ay;->a()V

    .line 96
    return-wide v0
.end method
