.class public Lcom/yandex/metrica/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ad$a;
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/yandex/metrica/IMetricaService;

.field private e:Lcom/yandex/metrica/impl/ad$a;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/ad;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/IMetricaService;

    .line 41
    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->f:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->g:Z

    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/ad$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ad$1;-><init>(Lcom/yandex/metrica/impl/ad;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->h:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/yandex/metrica/impl/ad$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ad$2;-><init>(Lcom/yandex/metrica/impl/ad;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->i:Landroid/content/ServiceConnection;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ad;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/IMetricaService;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ad;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->e()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ad;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ad;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ad;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->f:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->b(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ad;->i:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/yandex/metrica/impl/ad$a;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    .line 162
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ad;->g:Z

    .line 166
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->f:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->f:Z

    .line 77
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->h:Ljava/lang/Runnable;

    sget-wide v2, Lcom/yandex/metrica/impl/ad;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ad;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/IMetricaService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/yandex/metrica/IMetricaService;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/IMetricaService;

    return-object v0
.end method

.method declared-synchronized g()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->i:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ad;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ad;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ad;->d:Lcom/yandex/metrica/IMetricaService;

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ad;->e:Lcom/yandex/metrica/impl/ad$a;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ad;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ad;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
