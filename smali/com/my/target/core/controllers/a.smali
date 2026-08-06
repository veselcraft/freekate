.class public final Lcom/my/target/core/controllers/a;
.super Ljava/lang/Object;
.source "InstreamAdAudioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/controllers/a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private final b:Lcom/my/target/ads/instream/InstreamAudioAd;

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

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
            "Lcom/my/target/core/models/banners/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

.field private m:Lcom/my/target/core/models/banners/c;

.field private n:I

.field private o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

.field private p:Lcom/my/target/core/models/sections/c;

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:F

.field private u:Lcom/my/target/core/controllers/a$a;

.field private v:I

.field private w:F

.field private x:F


# direct methods
.method public constructor <init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/my/target/core/controllers/a$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$1;-><init>(Lcom/my/target/core/controllers/a;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->c:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/my/target/core/controllers/a$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a$2;-><init>(Lcom/my/target/core/controllers/a;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->d:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    .line 256
    iput v1, p0, Lcom/my/target/core/controllers/a;->w:F

    .line 257
    iput v1, p0, Lcom/my/target/core/controllers/a;->x:F

    .line 317
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    .line 318
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAdPlayer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 587
    :goto_0
    iput-boolean v3, p0, Lcom/my/target/core/controllers/a;->i:Z

    .line 589
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 591
    const-string v0, "unable to play banner: list of banners is null, maybe not initialized"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_1
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 597
    const-string v0, "try to play banner number out of range"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/c;

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    .line 602
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    if-nez v0, :cond_7

    .line 604
    :cond_3
    const-string v0, "unable to play banner"

    .line 606
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v1, :cond_4

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_4
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_5

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data not loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_5
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    if-nez v1, :cond_6

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": current banner is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    :cond_6
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 619
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_8

    .line 620
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 622
    :cond_8
    const-string v0, "statistics"

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/c;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 624
    const-string v0, "playbackStarted"

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->b(Ljava/lang/String;)V

    .line 625
    iget v0, p0, Lcom/my/target/core/controllers/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/controllers/a;->f:I

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 626
    iget p1, p0, Lcom/my/target/core/controllers/a;->f:I

    goto/16 :goto_0

    .line 628
    :cond_9
    invoke-direct {p0, v3, v3}, Lcom/my/target/core/controllers/a;->a(ZZ)V

    goto/16 :goto_1

    .line 632
    :cond_a
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->a()Lcom/my/target/core/models/e;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/c;->getStats()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/my/target/core/controllers/a;->a(Ljava/util/ArrayList;)V

    .line 636
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/my/target/core/models/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 638
    invoke-virtual {v0}, Lcom/my/target/core/models/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    iget v2, p0, Lcom/my/target/core/controllers/a;->w:F

    invoke-interface {v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->setVolume(F)V

    .line 640
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1, v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->playAdAudio(Landroid/net/Uri;)V

    .line 641
    iput v3, p0, Lcom/my/target/core/controllers/a;->n:I

    goto/16 :goto_1

    .line 642
    :cond_b
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    const-string v1, "Missing audiodata params"

    iget-object v2, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;F)V
    .locals 2

    .prologue
    .line 27
    .line 2560
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2562
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2564
    :cond_0
    const-string v0, "unable to handle progress stat"

    .line 2566
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 2567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2568
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v1, :cond_2

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2570
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2573
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2574
    :cond_4
    :goto_0
    return-void

    .line 2576
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->q:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Ljava/util/Set;FLandroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/a;->b(Ljava/lang/String;)V

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
    .line 651
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->q:Ljava/util/HashSet;

    .line 652
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

    .line 654
    invoke-virtual {v0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playheadReachedValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/i;

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/my/target/core/controllers/a;->q:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/i;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_1
    return-void
.end method

.method private a(ZZ)V
    .locals 3

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->r:Z

    .line 666
    if-eqz p1, :cond_0

    .line 668
    const-string v0, "closedByUser"

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->b(Ljava/lang/String;)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    iget-object v2, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onBannerComplete(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;)V

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->stopAdAudio()V

    .line 682
    :goto_0
    if-eqz p2, :cond_3

    .line 684
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->k()V

    .line 1700
    :goto_1
    return-void

    .line 679
    :cond_2
    const-string v0, "unable to send stop command to player: player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1693
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 1695
    iget v0, p0, Lcom/my/target/core/controllers/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/controllers/a;->f:I

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1697
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 1699
    :cond_4
    iget v0, p0, Lcom/my/target/core/controllers/a;->f:I

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->a(I)V

    goto :goto_1

    .line 1703
    :cond_5
    const-string v0, "Reached maximum of ad banners for current section"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1708
    :cond_6
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->k()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/my/target/core/controllers/a;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/my/target/core/controllers/a;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/a;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/my/target/core/controllers/a;->t:F

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/controllers/a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    .line 2494
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to send stat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2498
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 2499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2500
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v1, :cond_2

    .line 2501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2502
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2505
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2506
    :goto_0
    return-void

    .line 2508
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/models/sections/c;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/sections/i;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to send stat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v1, :cond_2

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/my/target/core/controllers/a;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/my/target/core/controllers/a;->x:F

    return p1
.end method

.method static synthetic c(Lcom/my/target/core/controllers/a;)Lcom/my/target/core/models/banners/c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->m:Lcom/my/target/core/models/banners/c;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->s:Z

    return v0
.end method

.method static synthetic e(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->h:Z

    return v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    return-object v0
.end method

.method static synthetic i(Lcom/my/target/core/controllers/a;)Lcom/my/target/ads/instream/InstreamAudioAd;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    .line 536
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 540
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 544
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_0
    :goto_0
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 553
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    sget-object v0, Lcom/my/target/core/controllers/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    :cond_1
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 547
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

.method static synthetic j(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/my/target/core/controllers/a;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/controllers/a;->t:F

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->u:Lcom/my/target/core/controllers/a$a;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->u:Lcom/my/target/core/controllers/a$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/my/target/core/controllers/a$a;->sectionCompleted(Ljava/lang/String;)V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/my/target/core/controllers/a;)I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/controllers/a;->n:I

    return v0
.end method

.method static synthetic m(Lcom/my/target/core/controllers/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/my/target/core/controllers/a;->a(ZZ)V

    return-void
.end method

.method static synthetic n(Lcom/my/target/core/controllers/a;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/controllers/a;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/my/target/core/controllers/a;->n:I

    return v0
.end method

.method static synthetic o(Lcom/my/target/core/controllers/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/controllers/a;->n:I

    return v0
.end method

.method static synthetic p(Lcom/my/target/core/controllers/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/controllers/a;->v:I

    return v0
.end method

.method static synthetic q(Lcom/my/target/core/controllers/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic r(Lcom/my/target/core/controllers/a;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->s:Z

    return v0
.end method

.method static synthetic s(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->j()V

    return-void
.end method

.method static synthetic t(Lcom/my/target/core/controllers/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    return-void
.end method

.method static synthetic u(Lcom/my/target/core/controllers/a;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/controllers/a;->x:F

    return v0
.end method


# virtual methods
.method public final a()Lcom/my/target/ads/instream/InstreamAudioAdPlayer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/controllers/a;->w:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0, p1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->setVolume(F)V

    .line 312
    :cond_0
    iput p1, p0, Lcom/my/target/core/controllers/a;->w:F

    .line 313
    return-void
.end method

.method public final a(Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    .line 284
    return-void
.end method

.method public final a(Lcom/my/target/ads/instream/InstreamAudioAdPlayer;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    .line 300
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->d:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-interface {p1, v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->setAdPlayerListener(Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;)V

    .line 304
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    .line 477
    :cond_0
    const-string v0, "unable to handle companion show"

    .line 479
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_1

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v1, :cond_2

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context not set to player"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_3
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_4
    check-cast p1, Lcom/my/target/core/models/banners/d;

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object p2

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_1

    if-nez p2, :cond_5

    .line 459
    :cond_1
    const-string v0, "unable to handle companion click"

    .line 461
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    if-nez v1, :cond_2

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ad data is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v1, :cond_3

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": player not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_3
    if-nez p2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_4
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    check-cast p1, Lcom/my/target/core/models/banners/d;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/controllers/a$a;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->u:Lcom/my/target/core/controllers/a$a;

    .line 295
    return-void
.end method

.method public final a(Lcom/my/target/core/models/c;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->e:Lcom/my/target/core/models/c;

    .line 279
    return-void
.end method

.method public final a(Lcom/my/target/core/models/sections/c;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/c;",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/banners/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->k()Lcom/my/target/core/models/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/f;->b()I

    move-result v0

    .line 323
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 325
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/my/target/core/controllers/a;->b(Lcom/my/target/core/models/sections/c;Ljava/util/List;)V

    .line 329
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 271
    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-direct {p0, v0, v0}, Lcom/my/target/core/controllers/a;->a(ZZ)V

    .line 377
    return-void
.end method

.method public final b(Lcom/my/target/core/models/sections/c;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/c;",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/banners/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const-string v0, "try to continue wrong section"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/a;->k:Ljava/util/ArrayList;

    .line 339
    iput v2, p0, Lcom/my/target/core/controllers/a;->f:I

    .line 340
    iput-boolean v2, p0, Lcom/my/target/core/controllers/a;->h:Z

    .line 341
    iput-object p1, p0, Lcom/my/target/core/controllers/a;->p:Lcom/my/target/core/models/sections/c;

    .line 342
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->k()Lcom/my/target/core/models/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/f;->a()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/controllers/a;->v:I

    .line 344
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->u:Lcom/my/target/core/controllers/a$a;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->u:Lcom/my/target/core/controllers/a$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/my/target/core/controllers/a$a;->sectionCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "Banners list is empty"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 358
    :cond_4
    iput-boolean v2, p0, Lcom/my/target/core/controllers/a;->s:Z

    .line 359
    iput v2, p0, Lcom/my/target/core/controllers/a;->n:I

    .line 360
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->j()V

    .line 361
    invoke-direct {p0, v2}, Lcom/my/target/core/controllers/a;->a(I)V

    goto :goto_0

    .line 364
    :cond_5
    const-string v0, "Reached maximum of ad banners for current section"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->o:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/core/controllers/a;->b:Lcom/my/target/ads/instream/InstreamAudioAd;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/controllers/a;->a(ZZ)V

    .line 385
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    .line 393
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->pauseAdAudio()V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v0, "unable to pause, player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-nez v0, :cond_0

    .line 409
    const-string v0, "unable to resume: player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcom/my/target/core/controllers/a;->r:Z

    if-eqz v0, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->j()V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->resumeAdAudio()V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->stopAdAudio()V

    .line 431
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/my/target/core/controllers/a;->a(ZZ)V

    .line 432
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    .line 433
    iput-boolean v1, p0, Lcom/my/target/core/controllers/a;->r:Z

    .line 434
    const-string v0, "playbackStopped"

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/a;->b(Ljava/lang/String;)V

    .line 435
    return-void

    .line 428
    :cond_0
    const-string v0, "unable to send stop command to player: player not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/my/target/core/controllers/a;->l:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer;->destroy()V

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/my/target/core/controllers/a;->i()V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/a;->r:Z

    .line 446
    return-void
.end method
