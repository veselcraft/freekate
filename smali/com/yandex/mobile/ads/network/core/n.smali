.class public Lcom/yandex/mobile/ads/network/core/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/network/core/m;

.field private final c:Lcom/yandex/mobile/ads/network/core/c;

.field private final d:Lcom/yandex/mobile/ads/network/core/t;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/yandex/mobile/ads/network/core/m;Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;",
            "Lcom/yandex/mobile/ads/network/core/m;",
            "Lcom/yandex/mobile/ads/network/core/c;",
            "Lcom/yandex/mobile/ads/network/core/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/n;->e:Z

    .line 61
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/n;->a:Ljava/util/concurrent/BlockingQueue;

    .line 62
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/n;->b:Lcom/yandex/mobile/ads/network/core/m;

    .line 63
    iput-object p3, p0, Lcom/yandex/mobile/ads/network/core/n;->c:Lcom/yandex/mobile/ads/network/core/c;

    .line 64
    iput-object p4, p0, Lcom/yandex/mobile/ads/network/core/n;->d:Lcom/yandex/mobile/ads/network/core/t;

    .line 65
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/n;->e:Z

    .line 73
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/n;->interrupt()V

    .line 74
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 86
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/n;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/q;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :try_start_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->e()V
    :try_end_1
    .catch Lcom/yandex/mobile/ads/network/core/error/h; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/error/h;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/n;->d:Lcom/yandex/mobile/ads/network/core/t;

    invoke-interface {v2, v0, v1}, Lcom/yandex/mobile/ads/network/core/t;->a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/n;->e:Z

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 111
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->d()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/n;->b:Lcom/yandex/mobile/ads/network/core/m;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/network/core/m;->a(Lcom/yandex/mobile/ads/network/core/q;)Lcom/yandex/mobile/ads/network/core/o;

    move-result-object v1

    .line 115
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/network/core/o;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->y()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->e()V
    :try_end_2
    .catch Lcom/yandex/mobile/ads/network/core/error/h; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 141
    :catch_2
    move-exception v1

    .line 142
    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v2, Lcom/yandex/mobile/ads/network/core/error/h;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/network/core/error/h;-><init>(Ljava/lang/Throwable;)V

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 145
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/n;->d:Lcom/yandex/mobile/ads/network/core/t;

    invoke-interface {v1, v0, v2}, Lcom/yandex/mobile/ads/network/core/t;->a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto :goto_0

    .line 125
    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->t()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/yandex/mobile/ads/network/core/s;->b:Lcom/yandex/mobile/ads/network/core/c$a;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/n;->c:Lcom/yandex/mobile/ads/network/core/c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/yandex/mobile/ads/network/core/s;->b:Lcom/yandex/mobile/ads/network/core/c$a;

    invoke-interface {v2, v3, v4}, Lcom/yandex/mobile/ads/network/core/c;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/c$a;)V

    .line 132
    :cond_4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->x()V

    .line 137
    iget-object v2, p0, Lcom/yandex/mobile/ads/network/core/n;->d:Lcom/yandex/mobile/ads/network/core/t;

    invoke-interface {v2, v0, v1}, Lcom/yandex/mobile/ads/network/core/t;->a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;)V
    :try_end_3
    .catch Lcom/yandex/mobile/ads/network/core/error/h; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
