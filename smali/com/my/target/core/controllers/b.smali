.class public final Lcom/my/target/core/controllers/b;
.super Ljava/lang/Object;
.source "InstreamAdVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/controllers/b$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private final b:Lcom/my/target/ads/instream/InstreamAd;

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

.field private e:Lcom/my/target/core/models/c;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/m;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/my/target/ads/instream/InstreamAdPlayer;

.field private m:Lcom/my/target/core/models/banners/m;

.field private n:I

.field private o:I

.field private p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

.field private q:Lcom/my/target/core/models/sections/k;

.field private r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

.field private t:Z

.field private u:Z

.field private v:F

.field private w:Lcom/my/target/core/controllers/b$a;

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/my/target/ads/instream/InstreamAd;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/my/target/core/controllers/b$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/b$1;-><init>(Lcom/my/target/core/controllers/b;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->c:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/my/target/core/controllers/b$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/b$2;-><init>(Lcom/my/target/core/controllers/b;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->d:Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    .line 266
    iput v1, p0, Lcom/my/target/core/controllers/b;->y:F

    .line 267
    iput v1, p0, Lcom/my/target/core/controllers/b;->z:F

    .line 338
    iput-object p1, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAdPlayer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/controllers/b;F)V
    .locals 2

    .prologue
    .line 24
    .line 2524
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->r:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2526
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 2527
    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2529
    :cond_0
    const-string v0, "unable to handle progress stat"

    .line 2531
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 2532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2533
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-nez v1, :cond_2

    .line 2534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2535
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2537
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 2538
    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    .line 2539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2541
    :cond_4
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2542
    :cond_5
    :goto_0
    return-void

    .line 2544
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->r:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Ljava/util/Set;FLandroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->r:Ljava/util/HashSet;

    .line 638
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 640
    invoke-virtual {v0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playheadReachedValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/i;

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/my/target/core/controllers/b;->r:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/i;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    :cond_1
    return-void
.end method

.method private a(ZZ)V
    .locals 3

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->j()V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/b;->t:Z

    .line 652
    if-eqz p1, :cond_0

    .line 654
    const-string v0, "closedByUser"

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/b;->b(Ljava/lang/String;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->s:Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onBannerComplete(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;)V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->stopAdVideo()V

    .line 668
    :goto_0
    if-eqz p2, :cond_3

    .line 670
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->l()V

    .line 1686
    :goto_1
    return-void

    .line 665
    :cond_2
    const-string v0, "unable to send stop command to player: player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1679
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 1681
    iget v0, p0, Lcom/my/target/core/controllers/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/controllers/b;->f:I

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1683
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 1685
    :cond_4
    iget v0, p0, Lcom/my/target/core/controllers/b;->f:I

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/b;->b(I)V

    goto :goto_1

    .line 1689
    :cond_5
    const-string v0, "Reached maximum of ad banners for current section"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1694
    :cond_6
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->l()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/my/target/core/controllers/b;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/my/target/core/controllers/b;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/b;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/my/target/core/controllers/b;->v:F

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/b;)Lcom/my/target/core/models/c;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    return-object v0
.end method

.method private b(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 555
    :goto_0
    iput-boolean v8, p0, Lcom/my/target/core/controllers/b;->i:Z

    .line 557
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 559
    const-string v0, "unable to play banner: list of banners is null, maybe not initialized"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 633
    :cond_0
    :goto_1
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 565
    const-string v0, "try to play banner number out of range"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/m;

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    .line 572
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    if-nez v0, :cond_7

    .line 574
    :cond_3
    const-string v0, "unable to play banner"

    .line 576
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-nez v1, :cond_4

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_4
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_5

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data not loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :cond_5
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    if-nez v1, :cond_6

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": current banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    :cond_6
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 589
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_8

    .line 590
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 592
    :cond_8
    const-string v0, "statistics"

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 594
    const-string v0, "playbackStarted"

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/b;->b(Ljava/lang/String;)V

    .line 596
    iget v0, p0, Lcom/my/target/core/controllers/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/controllers/b;->f:I

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 597
    iget p1, p0, Lcom/my/target/core/controllers/b;->f:I

    goto/16 :goto_0

    .line 600
    :cond_9
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    if-eqz v0, :cond_a

    .line 602
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/my/target/core/controllers/b$a;->sectionCompleted(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    :cond_a
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto/16 :goto_1

    .line 611
    :cond_b
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->m()Ljava/util/List;

    move-result-object v0

    .line 613
    iget v1, p0, Lcom/my/target/core/controllers/b;->n:I

    invoke-static {v0, v1}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v6

    .line 616
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->getStats()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/b;->a(Ljava/util/ArrayList;)V

    .line 618
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->g()Z

    move-result v1

    .line 619
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->h()F

    move-result v2

    .line 620
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->f()F

    move-result v3

    .line 621
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->getCtaText()Ljava/lang/String;

    move-result-object v7

    .line 623
    new-instance v0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    .line 625
    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;-><init>(ZFFII)V

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->s:Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    .line 627
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->s:Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    iput-object v7, v0, Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;->ctaText:Ljava/lang/String;

    .line 629
    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    iget v2, p0, Lcom/my/target/core/controllers/b;->y:F

    invoke-interface {v1, v2}, Lcom/my/target/ads/instream/InstreamAdPlayer;->setVolume(F)V

    .line 631
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/my/target/ads/instream/InstreamAdPlayer;->playAdVideo(Landroid/net/Uri;II)V

    .line 632
    iput v8, p0, Lcom/my/target/core/controllers/b;->o:I

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    .line 1699
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 1700
    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1702
    :cond_0
    const-string v0, "unable to handle pause stat"

    .line 1704
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1706
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-nez v1, :cond_2

    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1708
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 1711
    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view has not context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1714
    :cond_4
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1715
    :goto_0
    return-void

    .line 1717
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->q:Lcom/my/target/core/models/sections/k;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 723
    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to handle stat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-nez v1, :cond_2

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 734
    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view has not context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_4
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 740
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/my/target/core/controllers/b;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/my/target/core/controllers/b;->z:F

    return p1
.end method

.method static synthetic c(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->s:Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/controllers/b;)Lcom/my/target/core/models/banners/m;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/controllers/b;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/my/target/core/controllers/b;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/my/target/core/controllers/b;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/my/target/core/controllers/b;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/my/target/core/controllers/b;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/my/target/core/controllers/b;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/my/target/core/controllers/b;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/b;->h:Z

    return v0
.end method

.method static synthetic i()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    return-object v0
.end method

.method static synthetic j(Lcom/my/target/core/controllers/b;)Lcom/my/target/ads/instream/InstreamAd;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 496
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    .line 499
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 503
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 507
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 516
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    sget-object v0, Lcom/my/target/core/controllers/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    :cond_1
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error creating timer handler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/my/target/core/controllers/b;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/b;->i:Z

    return v0
.end method

.method static synthetic l(Lcom/my/target/core/controllers/b;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/my/target/core/controllers/b;->v:F

    return v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/my/target/core/controllers/b$a;->sectionCompleted(Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/my/target/core/controllers/b;)I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/controllers/b;->o:I

    return v0
.end method

.method static synthetic n(Lcom/my/target/core/controllers/b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v0}, Lcom/my/target/core/controllers/b;->a(ZZ)V

    return-void
.end method

.method static synthetic o(Lcom/my/target/core/controllers/b;)I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/my/target/core/controllers/b;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/my/target/core/controllers/b;->o:I

    return v0
.end method

.method static synthetic p(Lcom/my/target/core/controllers/b;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/my/target/core/controllers/b;->o:I

    return v0
.end method

.method static synthetic q(Lcom/my/target/core/controllers/b;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/my/target/core/controllers/b;->x:I

    return v0
.end method

.method static synthetic r(Lcom/my/target/core/controllers/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic s(Lcom/my/target/core/controllers/b;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/b;->u:Z

    return v0
.end method

.method static synthetic t(Lcom/my/target/core/controllers/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->k()V

    return-void
.end method

.method static synthetic u(Lcom/my/target/core/controllers/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->j()V

    return-void
.end method

.method static synthetic v(Lcom/my/target/core/controllers/b;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/my/target/core/controllers/b;->z:F

    return v0
.end method


# virtual methods
.method public final a()Lcom/my/target/ads/instream/InstreamAdPlayer;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/controllers/b;->y:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0, p1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->setVolume(F)V

    .line 333
    :cond_0
    iput p1, p0, Lcom/my/target/core/controllers/b;->y:F

    .line 334
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 324
    iput p1, p0, Lcom/my/target/core/controllers/b;->n:I

    .line 325
    return-void
.end method

.method public final a(Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    .line 320
    return-void
.end method

.method public final a(Lcom/my/target/ads/instream/InstreamAdPlayer;)V
    .locals 1

    .prologue
    .line 309
    iput-object p1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 311
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->d:Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;

    invoke-interface {p1, v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->setAdPlayerListener(Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;)V

    .line 315
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/core/controllers/b$a;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    .line 295
    return-void
.end method

.method public final a(Lcom/my/target/core/models/c;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    .line 289
    return-void
.end method

.method public final a(Lcom/my/target/core/models/sections/k;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/k;",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/banners/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->k()Lcom/my/target/core/models/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/l;->d()I

    move-result v0

    .line 344
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 346
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/my/target/core/controllers/b;->b(Lcom/my/target/core/models/sections/k;Ljava/util/List;)V

    .line 350
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    const-string v0, "fullscreenOn"

    .line 304
    :goto_0
    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/b;->b(Ljava/lang/String;)V

    .line 305
    return-void

    .line 303
    :cond_0
    const-string v0, "fullscreenOff"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 283
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 281
    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 396
    invoke-direct {p0, v0, v0}, Lcom/my/target/core/controllers/b;->a(ZZ)V

    .line 397
    return-void
.end method

.method public final b(Lcom/my/target/core/models/sections/k;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/k;",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/banners/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    const-string v0, "try to continue wrong section"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/b;->k:Ljava/util/ArrayList;

    .line 360
    iput v2, p0, Lcom/my/target/core/controllers/b;->f:I

    .line 361
    iput-boolean v2, p0, Lcom/my/target/core/controllers/b;->h:Z

    .line 362
    iput-object p1, p0, Lcom/my/target/core/controllers/b;->q:Lcom/my/target/core/models/sections/k;

    .line 363
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->k()Lcom/my/target/core/models/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/l;->c()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/controllers/b;->x:I

    .line 365
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->w:Lcom/my/target/core/controllers/b$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/my/target/core/controllers/b$a;->sectionCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "Banners list is empty"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 379
    :cond_4
    invoke-direct {p0, v2}, Lcom/my/target/core/controllers/b;->b(I)V

    .line 380
    iput-boolean v2, p0, Lcom/my/target/core/controllers/b;->u:Z

    .line 381
    iput v2, p0, Lcom/my/target/core/controllers/b;->o:I

    .line 382
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->k()V

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "Reached maximum of ad banners for current section"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->p:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->b:Lcom/my/target/ads/instream/InstreamAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/controllers/b;->a(ZZ)V

    .line 405
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->j()V

    .line 413
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->pauseAdVideo()V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const-string v0, "unable to pause, player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_1

    .line 429
    iget-boolean v0, p0, Lcom/my/target/core/controllers/b;->t:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->k()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->resumeAdVideo()V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_1
    const-string v0, "unable to resume, player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->stopAdVideo()V

    .line 451
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/my/target/core/controllers/b;->a(ZZ)V

    .line 452
    const-string v0, "playbackStopped"

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/b;->b(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->j()V

    .line 455
    iput-boolean v1, p0, Lcom/my/target/core/controllers/b;->t:Z

    .line 456
    return-void

    .line 448
    :cond_0
    const-string v0, "unable to send stop command to player: player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->destroy()V

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/my/target/core/controllers/b;->j()V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/b;->t:Z

    .line 467
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 473
    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    .line 475
    :cond_0
    const-string v0, "unable to handle click "

    .line 477
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-nez v1, :cond_2

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 484
    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": view has not context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    :cond_4
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/b;->e:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/controllers/b;->m:Lcom/my/target/core/models/banners/m;

    iget-object v2, p0, Lcom/my/target/core/controllers/b;->l:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-interface {v2}, Lcom/my/target/ads/instream/InstreamAdPlayer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    goto :goto_0
.end method
