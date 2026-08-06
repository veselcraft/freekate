.class public Lcom/yandex/mobile/ads/network/core/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/network/core/c;

.field private final e:Lcom/yandex/mobile/ads/network/core/t;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/yandex/mobile/ads/network/core/v;->b:Z

    sput-boolean v0, Lcom/yandex/mobile/ads/network/core/d;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;>;",
            "Lcom/yandex/mobile/ads/network/core/c;",
            "Lcom/yandex/mobile/ads/network/core/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/d;->f:Z

    .line 63
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/d;->b:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p3, p0, Lcom/yandex/mobile/ads/network/core/d;->d:Lcom/yandex/mobile/ads/network/core/c;

    .line 66
    iput-object p4, p0, Lcom/yandex/mobile/ads/network/core/d;->e:Lcom/yandex/mobile/ads/network/core/t;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/d;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/d;->f:Z

    .line 75
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/d;->interrupt()V

    .line 76
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 80
    sget-boolean v0, Lcom/yandex/mobile/ads/network/core/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/d;->d:Lcom/yandex/mobile/ads/network/core/c;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/network/core/c;->a()V

    .line 90
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/q;

    .line 91
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/d;->f:Z

    if-eqz v0, :cond_1

    .line 152
    return-void

    .line 100
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/d;->d:Lcom/yandex/mobile/ads/network/core/c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/network/core/c;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/network/core/c$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/q;

    .line 112
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_4
    new-instance v2, Lcom/yandex/mobile/ads/network/core/o;

    iget-object v3, v1, Lcom/yandex/mobile/ads/network/core/c$a;->a:[B

    iget-object v4, v1, Lcom/yandex/mobile/ads/network/core/c$a;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/yandex/mobile/ads/network/core/o;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v2

    .line 120
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/network/core/c$a;->b()Z

    move-result v3

    if-nez v3, :cond_5

    .line 124
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/d;->e:Lcom/yandex/mobile/ads/network/core/t;

    invoke-interface {v1, v0, v2}, Lcom/yandex/mobile/ads/network/core/t;->a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;)V

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/q;

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/yandex/mobile/ads/network/core/s;->d:Z

    .line 137
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/d;->e:Lcom/yandex/mobile/ads/network/core/t;

    new-instance v3, Lcom/yandex/mobile/ads/network/core/d$1;

    invoke-direct {v3, p0, v0}, Lcom/yandex/mobile/ads/network/core/d$1;-><init>(Lcom/yandex/mobile/ads/network/core/d;Lcom/yandex/mobile/ads/network/core/q;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/yandex/mobile/ads/network/core/t;->a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
