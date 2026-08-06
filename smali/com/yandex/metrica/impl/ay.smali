.class public Lcom/yandex/metrica/impl/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ad$a;
.implements Lcom/yandex/metrica/impl/t;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ad;

.field private final c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private e:Lcom/yandex/metrica/impl/aa;

.field private f:Lcom/yandex/metrica/impl/v;

.field private g:Lcom/yandex/metrica/impl/ob/cc;

.field private final h:Lcom/yandex/metrica/impl/ob/bn;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ad$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ad;

    invoke-direct {v0, p2, p3}, Lcom/yandex/metrica/impl/ad;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad$a;)V

    .line 51
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay;->d:Ljava/util/concurrent/ExecutorService;

    .line 53
    iput-object p2, p0, Lcom/yandex/metrica/impl/ay;->a:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/NativeCrashesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ay;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/v;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ay;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ay;->h:Lcom/yandex/metrica/impl/ob/bn;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ay;->c(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->g:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 326
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method private c(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->d()V

    .line 116
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v0

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->g:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/g;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 119
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ar;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/impl/t;)V

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ar;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ad;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ay;->a(Z)V

    .line 237
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ay;->b(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 240
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ay;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p0, v1}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Lcom/yandex/metrica/impl/ay;Ljava/util/concurrent/ExecutorService;)V

    .line 246
    :cond_0
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/aw;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/g;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/IMetricaService;->reportData(Landroid/os/Bundle;)V

    .line 248
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->e:Lcom/yandex/metrica/impl/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aa;->a_()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->c()V

    .line 249
    :cond_2
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/aa;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay;->e:Lcom/yandex/metrica/impl/aa;

    .line 64
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/aw;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->j()Lcom/yandex/metrica/impl/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/q;->a(Lcom/yandex/metrica/impl/ak;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 149
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ay;->c(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V

    .line 124
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/g;",
            "Lcom/yandex/metrica/impl/aw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/yandex/metrica/impl/at;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/at;-><init>(Lcom/yandex/metrica/impl/t;)V

    new-instance v1, Lcom/yandex/metrica/impl/ay$2;

    invoke-direct {v1, p3}, Lcom/yandex/metrica/impl/ay$2;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at$a;)Lcom/yandex/metrica/impl/at;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ay$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ay$1;-><init>(Lcom/yandex/metrica/impl/ay;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/at;->b(Lcom/yandex/metrica/impl/at$a;)Lcom/yandex/metrica/impl/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V

    .line 137
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/v;->a(Lcom/yandex/metrica/impl/i;)V

    .line 79
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/cc;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay;->g:Lcom/yandex/metrica/impl/ob/cc;

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/v;->b(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 75
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aa;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/aw;)V

    .line 110
    return-void
.end method

.method a(Ljava/lang/String;Lcom/yandex/metrica/impl/aw;)V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Error received: native"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->o:Lcom/yandex/metrica/impl/q$a;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/q;->a(Lcom/yandex/metrica/impl/q$a;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/aw;)V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Lcom/yandex/metrica/impl/ar;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/impl/t;)V

    new-instance v1, Lcom/yandex/metrica/impl/g;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/g;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->w:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ar;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V

    .line 257
    return-void
.end method

.method a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/aw;)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Error received: uncaught"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->d()V

    .line 176
    invoke-static {p1}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/Throwable;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 178
    new-instance v1, Lcom/yandex/metrica/impl/ap;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ap;-><init>(Lcom/yandex/metrica/impl/t;)V

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V

    .line 179
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ad$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yandex/metrica/impl/ay;->i:Ljava/util/List;

    .line 83
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/util/Map;)V

    .line 157
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/Object;)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(ZLcom/yandex/metrica/impl/aw;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->b(Z)V

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Z)V

    .line 96
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Lcom/yandex/metrica/impl/aw;)V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lcom/yandex/metrica/impl/ar;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ar;-><init>(Lcom/yandex/metrica/impl/t;)V

    new-instance v1, Lcom/yandex/metrica/impl/g;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/g;-><init>()V

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->x:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ar;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V

    .line 265
    return-void
.end method

.method b(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/g;)V

    .line 284
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->h:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 286
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/e;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->e(Z)V

    .line 288
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p1}, Lcom/yandex/metrica/impl/q;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 145
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->c:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a()V

    .line 91
    return-void
.end method

.method c(Lcom/yandex/metrica/impl/aw;)V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Lcom/yandex/metrica/impl/aq;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/aq;-><init>(Lcom/yandex/metrica/impl/t;)V

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/as;Lcom/yandex/metrica/impl/aw;)V

    .line 319
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->g(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->q:Lcom/yandex/metrica/impl/q$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/q;->d(Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 141
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/v;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->i(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ay;->j()V

    .line 198
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ad$a;

    .line 199
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->e()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Z)V

    .line 203
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ay;->a(Z)V

    .line 223
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ad$a;

    .line 224
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->f()V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Z)V

    .line 228
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ay;->a(Z)V

    .line 212
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ad$a;

    .line 213
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ad$a;->g()V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ad;->a(Z)V

    .line 217
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->d()V

    .line 184
    return-void
.end method

.method i()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->b:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->c()V

    .line 189
    return-void
.end method

.method j()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yandex/metrica/impl/ay;->f:Lcom/yandex/metrica/impl/v;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ay;->c(Lcom/yandex/metrica/impl/aw;)V

    .line 313
    return-void
.end method
