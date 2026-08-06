.class final Lcom/inmobi/ads/r;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$a;
.implements Lcom/inmobi/commons/core/utilities/a$b;
.implements Lcom/inmobi/commons/core/utilities/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/r$a;,
        Lcom/inmobi/ads/r$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/s;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/inmobi/ads/r$b;

.field private e:Z

.field private f:Z

.field private final g:Landroid/os/Handler;

.field private h:I

.field private i:Z

.field private j:Lcom/inmobi/ads/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/ads/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/r;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;Lcom/inmobi/ads/r$a;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/r;->c:Ljava/util/List;

    .line 276
    iput v1, p0, Lcom/inmobi/ads/r;->h:I

    .line 278
    iput-boolean v1, p0, Lcom/inmobi/ads/r;->i:Z

    .line 291
    invoke-virtual {p4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 293
    if-nez v0, :cond_1

    .line 294
    new-array v4, v1, [Ljava/lang/Integer;

    .line 295
    invoke-virtual {p4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getRepeatingInterval()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 296
    iput-boolean v6, p0, Lcom/inmobi/ads/r;->i:Z

    .line 303
    :cond_0
    :goto_0
    new-instance v0, Lcom/inmobi/ads/s;

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/s;-><init>(Landroid/content/Context;J[Ljava/lang/Integer;Lcom/inmobi/ads/AdUnit$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/r;->b:Lcom/inmobi/ads/s;

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/ads/r;->g:Landroid/os/Handler;

    .line 305
    iput-object p5, p0, Lcom/inmobi/ads/r;->j:Lcom/inmobi/ads/r$a;

    .line 306
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/ads/r;->e:Z

    .line 309
    iput-boolean v6, p0, Lcom/inmobi/ads/r;->f:Z

    .line 311
    sget-object v0, Lcom/inmobi/ads/r$b;->c:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;)V

    .line 314
    invoke-direct {p0}, Lcom/inmobi/ads/r;->l()V

    .line 315
    return-void

    .line 299
    :cond_1
    iput-boolean v6, p0, Lcom/inmobi/ads/r;->i:Z

    .line 300
    new-array v4, v0, [Ljava/lang/Integer;

    .line 301
    invoke-virtual {p4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/r;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/inmobi/ads/r;->h:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/r;Lcom/inmobi/ads/r$b;)Lcom/inmobi/ads/r$b;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/r;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/inmobi/ads/r;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/r;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/r;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/s;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/r;->b:Lcom/inmobi/ads/s;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/r;->j:Lcom/inmobi/ads/r$a;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/ads/r;)I
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/inmobi/ads/r;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inmobi/ads/r;->h:I

    return v0
.end method

.method static synthetic f(Lcom/inmobi/ads/r;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/inmobi/ads/r;->h:I

    return v0
.end method

.method static synthetic g(Lcom/inmobi/ads/r;)J
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/inmobi/ads/r;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic h(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/ads/r;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/r;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/ads/r;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/inmobi/ads/r;->e:Z

    return v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/ads/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/inmobi/ads/r;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/inmobi/ads/r;->f:Z

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/core/utilities/a;->a(Lcom/inmobi/commons/core/utilities/a$b;)V

    .line 396
    invoke-static {}, Lcom/inmobi/commons/core/utilities/e;->a()Lcom/inmobi/commons/core/utilities/e;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/utilities/e;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/e$b;)V

    .line 397
    return-void
.end method

.method static synthetic l(Lcom/inmobi/ads/r;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/inmobi/ads/r;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/core/utilities/a;->b(Lcom/inmobi/commons/core/utilities/a$b;)V

    .line 403
    invoke-static {}, Lcom/inmobi/commons/core/utilities/e;->a()Lcom/inmobi/commons/core/utilities/e;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p0, v1}, Lcom/inmobi/commons/core/utilities/e;->a(Lcom/inmobi/commons/core/utilities/e$b;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private n()J
    .locals 2

    .prologue
    .line 407
    const-wide/16 v0, 0x4e20

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/inmobi/ads/r;->b:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->x()Lcom/inmobi/ads/q;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/inmobi/ads/r;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->g(Lcom/inmobi/ads/r;)V

    .line 353
    return-void
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->h(Lcom/inmobi/ads/r;)V

    .line 358
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/inmobi/ads/r;->b:Lcom/inmobi/ads/s;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/s;->a(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/inmobi/ads/r;->f:Z

    .line 383
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/ads/r$b;->a(Lcom/inmobi/ads/r;Z)V

    .line 384
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/inmobi/ads/r;->e:Z

    .line 389
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/ads/r$b;->b(Lcom/inmobi/ads/r;Z)V

    .line 390
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public c(Ljava/util/Map;)V
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
    .line 335
    iget-object v0, p0, Lcom/inmobi/ads/r;->b:Lcom/inmobi/ads/s;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/s;->a(Ljava/util/Map;)V

    .line 336
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->b(Lcom/inmobi/ads/r;)V

    .line 319
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->c(Lcom/inmobi/ads/r;)V

    .line 323
    return-void
.end method

.method public g()Lcom/inmobi/ads/q;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->f(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/q;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/r$b;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/r$b;->d(Lcom/inmobi/ads/r;)V

    .line 332
    return-void
.end method

.method public i()Lcom/inmobi/ads/b$f;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/inmobi/ads/r;->b:Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Lcom/inmobi/ads/s;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v0

    return-object v0
.end method

.method j()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/inmobi/ads/r;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/r;->h:I

    .line 413
    return-void
.end method
