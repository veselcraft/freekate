.class public Lcom/my/target/ads/instream/InstreamAd;
.super Lcom/my/target/core/facades/a;
.source "InstreamAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;,
        Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_VIDEO_QUALITY:I = 0x168


# instance fields
.field private final completeSectionListener:Lcom/my/target/core/controllers/b$a;

.field private controller:Lcom/my/target/core/controllers/b;

.field private currentSection:Ljava/lang/String;

.field private doAfterPosition:I

.field private final doAfterServiceListener:Lcom/my/target/core/async/commands/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/my/target/core/async/commands/b$a",
            "<",
            "Lcom/my/target/core/models/c;",
            ">;"
        }
    .end annotation
.end field

.field private instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

.field private final isAdLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loadingMidPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final midPointServiceListener:Lcom/my/target/core/async/commands/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/my/target/core/async/commands/b$a",
            "<",
            "Lcom/my/target/core/models/c;",
            ">;"
        }
    .end annotation
.end field

.field private midPoints:[F

.field private section:Lcom/my/target/core/models/sections/f;

.field private userMidPoints:[F

.field private videoDuration:F

.field private videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

.field private videoQuality:I

.field private volume:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    const-string v0, "instreamads"

    invoke-direct {p0, p1, v0, p2}, Lcom/my/target/core/facades/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/my/target/ads/instream/InstreamAd$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/instream/InstreamAd$1;-><init>(Lcom/my/target/ads/instream/InstreamAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->doAfterServiceListener:Lcom/my/target/core/async/commands/b$a;

    .line 77
    new-instance v0, Lcom/my/target/ads/instream/InstreamAd$2;

    invoke-direct {v0, p0}, Lcom/my/target/ads/instream/InstreamAd$2;-><init>(Lcom/my/target/ads/instream/InstreamAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->midPointServiceListener:Lcom/my/target/core/async/commands/b$a;

    .line 94
    new-instance v0, Lcom/my/target/ads/instream/InstreamAd$3;

    invoke-direct {v0, p0}, Lcom/my/target/ads/instream/InstreamAd$3;-><init>(Lcom/my/target/ads/instream/InstreamAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->completeSectionListener:Lcom/my/target/core/controllers/b$a;

    .line 127
    const/16 v0, 0x168

    iput v0, p0, Lcom/my/target/ads/instream/InstreamAd;->videoQuality:I

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/my/target/ads/instream/InstreamAd;->volume:F

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->isAdLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {p0, v2}, Lcom/my/target/ads/instream/InstreamAd;->setTrackingEnvironmentEnabled(Z)V

    .line 224
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->loadingMidPoint:Landroid/util/Pair;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/ads/instream/InstreamAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->currentSection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/models/sections/f;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    return-object v0
.end method

.method static synthetic access$300(Lcom/my/target/ads/instream/InstreamAd;)Lcom/my/target/core/controllers/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    return-object v0
.end method

.method static synthetic access$400(Lcom/my/target/ads/instream/InstreamAd;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/ads/instream/InstreamAd;->doAfterPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/core/models/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAd;->loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/my/target/ads/instream/InstreamAd;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->loadingMidPoint:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$700(Lcom/my/target/ads/instream/InstreamAd;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAd;->startAtPoint(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$800(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/core/models/sections/k;F)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAd;->loadMidPoint(Lcom/my/target/core/models/sections/k;F)V

    return-void
.end method

.method private loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 529
    if-nez p1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    invoke-interface {v0, p2, p0}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->currentSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->b()I

    move-result v0

    iput v0, p0, Lcom/my/target/ads/instream/InstreamAd;->doAfterPosition:I

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading doAfter, pos = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/ads/instream/InstreamAd;->doAfterPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->adData:Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd;->adParams:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/ads/instream/InstreamAd;->context:Landroid/content/Context;

    .line 542
    invoke-static {v1, v0, v2, v3}, Lcom/my/target/core/factories/b;->a(Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/a;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->doAfterServiceListener:Lcom/my/target/core/async/commands/b$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/async/commands/b;->a(Lcom/my/target/core/async/commands/b$a;)V

    .line 547
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    goto :goto_0
.end method

.method private loadMidPoint(Lcom/my/target/core/models/sections/k;F)V
    .locals 5

    .prologue
    .line 494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->j()Ljava/util/ArrayList;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 498
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v4

    cmpl-float v4, v4, p2

    if-nez v4, :cond_0

    .line 499
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 504
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/d;

    .line 506
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->j()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->adData:Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd;->adParams:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/ads/instream/InstreamAd;->context:Landroid/content/Context;

    .line 513
    invoke-static {v0, v1, v2, v3}, Lcom/my/target/core/factories/b;->a(Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/a;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->midPointServiceListener:Lcom/my/target/core/async/commands/b$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/async/commands/b;->a(Lcom/my/target/core/async/commands/b$a;)V

    .line 518
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    .line 525
    :goto_2
    return-void

    .line 521
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is no one midpoint service for point "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->l()Lcom/my/target/core/models/d;

    move-result-object v0

    .line 523
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/k;->e()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-direct {p0, v0, v1}, Lcom/my/target/ads/instream/InstreamAd;->loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 33
    sput-boolean p0, Lcom/my/target/core/b;->a:Z

    .line 34
    if-eqz p0, :cond_0

    .line 35
    const-string v0, "Debug mode enabled"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method private start(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-nez v0, :cond_1

    .line 413
    :cond_0
    const-string v0, "Unable to start advertisement: not loaded yet"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->a()Lcom/my/target/ads/instream/InstreamAdPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 418
    const-string v0, "Unable to start advertisement: player has not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd;->currentSection:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    .line 424
    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/k;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/models/sections/k;Ljava/util/List;)V

    goto :goto_0
.end method

.method private startAtPoint(Ljava/lang/String;F)V
    .locals 5

    .prologue
    .line 430
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-nez v0, :cond_2

    .line 432
    :cond_0
    const-string v0, "Unable to start advertisement: not loaded yet"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->a()Lcom/my/target/ads/instream/InstreamAdPlayer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 438
    const-string v0, "Unable to start advertisement: player has not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_3
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd;->currentSection:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    .line 444
    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v3

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 447
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/k;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/m;

    .line 449
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->a()F

    move-result v4

    cmpl-float v4, v4, p2

    if-nez v4, :cond_4

    .line 451
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 457
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->loadingMidPoint:Landroid/util/Pair;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->loadingMidPoint:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_a

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->loadingMidPoint:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 461
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 465
    :goto_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->loadingMidPoint:Landroid/util/Pair;

    .line 467
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v1, p1}, Lcom/my/target/core/controllers/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 469
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto/16 :goto_0

    .line 474
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 476
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v1, v3, v0}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/models/sections/k;Ljava/util/List;)V

    goto/16 :goto_0

    .line 477
    :cond_7
    const-string v0, "midroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/k;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 480
    invoke-direct {p0, v3, p2}, Lcom/my/target/ads/instream/InstreamAd;->loadMidPoint(Lcom/my/target/core/models/sections/k;F)V

    goto/16 :goto_0

    .line 481
    :cond_8
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/k;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 483
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/k;->l()Lcom/my/target/core/models/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/my/target/ads/instream/InstreamAd;->loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :cond_9
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public configureMidpoints(F)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/ads/instream/InstreamAd;->configureMidpoints(F[F)V

    .line 230
    return-void
.end method

.method public configureMidpoints(F[F)V
    .locals 2

    .prologue
    .line 234
    iput-object p2, p0, Lcom/my/target/ads/instream/InstreamAd;->userMidPoints:[F

    .line 235
    iput p1, p0, Lcom/my/target/ads/instream/InstreamAd;->videoDuration:F

    .line 237
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    const-string v1, "midroll"

    .line 240
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->userMidPoints:[F

    invoke-static {v0, v1, p1}, Lcom/my/target/core/utils/n;->a(Lcom/my/target/core/models/sections/k;[FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->midPoints:[F

    .line 244
    :cond_0
    return-void
.end method

.method public configureMidpointsPercents(F[F)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 248
    array-length v1, p2

    new-array v2, v1, [F

    move v1, v0

    .line 250
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 252
    aget v3, p2, v0

    .line 253
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to add midrollpoint at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, must be in range [0..100]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 258
    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v0

    .line 250
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    div-float v4, p1, v6

    mul-float/2addr v3, v4

    aput v3, v2, v0

    goto :goto_1

    .line 264
    :cond_2
    if-lez v1, :cond_3

    .line 266
    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    .line 267
    array-length v0, v2

    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    .line 269
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/my/target/ads/instream/InstreamAd;->configureMidpoints(F[F)V

    .line 270
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->g()V

    .line 309
    :cond_0
    return-void
.end method

.method public getMidPoints()[F
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->midPoints:[F

    return-object v0
.end method

.method public getPlayer()Lcom/my/target/ads/instream/InstreamAdPlayer;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

    return-object v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/my/target/ads/instream/InstreamAd;->videoQuality:I

    return v0
.end method

.method public handleClick()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->h()V

    .line 333
    :cond_0
    return-void
.end method

.method public isTrackingEnvironmentEnabled()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->f()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->isAdLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance just loaded once, don\'t call load() more than one time per instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->b(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/my/target/core/facades/a;->load()V

    .line 204
    return-void
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "instreamads"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/my/target/core/models/sections/f;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/my/target/core/models/sections/f;

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->section:Lcom/my/target/core/models/sections/f;

    const-string v1, "midroll"

    .line 380
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/f;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/k;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->userMidPoints:[F

    iget v2, p0, Lcom/my/target/ads/instream/InstreamAd;->videoDuration:F

    invoke-static {v0, v1, v2}, Lcom/my/target/core/utils/n;->a(Lcom/my/target/core/models/sections/k;[FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->midPoints:[F

    .line 383
    new-instance v0, Lcom/my/target/core/controllers/b;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/b;-><init>(Lcom/my/target/ads/instream/InstreamAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    .line 384
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/models/c;)V

    .line 385
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;)V

    .line 386
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    iget v1, p0, Lcom/my/target/ads/instream/InstreamAd;->videoQuality:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/b;->a(I)V

    .line 387
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    iget v1, p0, Lcom/my/target/ads/instream/InstreamAd;->volume:F

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/b;->a(F)V

    .line 388
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->completeSectionListener:Lcom/my/target/core/controllers/b$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/core/controllers/b$a;)V

    .line 389
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/ads/instream/InstreamAdPlayer;)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    invoke-interface {v0, p0}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onLoad(Lcom/my/target/ads/instream/InstreamAd;)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    goto :goto_0
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V

    .line 402
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->d()V

    .line 285
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->e()V

    .line 293
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/b;->a(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public setListener(Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;)V

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd;->instreamAdListener:Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;

    .line 175
    return-void
.end method

.method public setPlayer(Lcom/my/target/ads/instream/InstreamAdPlayer;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/ads/instream/InstreamAdPlayer;)V

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAd;->videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 184
    return-void
.end method

.method public setTrackingEnvironmentEnabled(Z)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/a;->a(Z)V

    .line 407
    return-void
.end method

.method public setVideoQuality(I)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/b;->a(I)V

    .line 192
    :cond_0
    iput p1, p0, Lcom/my/target/ads/instream/InstreamAd;->videoQuality:I

    .line 193
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to set volume"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume must be in range [0..1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/b;->a(F)V

    .line 217
    :cond_2
    iput p1, p0, Lcom/my/target/ads/instream/InstreamAd;->volume:F

    goto :goto_0
.end method

.method public skip()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->b()V

    .line 317
    :cond_0
    return-void
.end method

.method public skipBanner()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->c()V

    .line 325
    :cond_0
    return-void
.end method

.method public startMidroll(F)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 352
    .line 353
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->midPoints:[F

    if-eqz v1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAd;->midPoints:[F

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 356
    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    .line 358
    const/4 v0, 0x1

    .line 362
    :cond_0
    if-eqz v0, :cond_2

    .line 363
    const-string v0, "midroll"

    invoke-direct {p0, v0, p1}, Lcom/my/target/ads/instream/InstreamAd;->startAtPoint(Ljava/lang/String;F)V

    .line 367
    :goto_1
    return-void

    .line 354
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_2
    const-string v0, "attempt to start wrong midpoint, use one of InstreamAd.getMidPoints() value"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startPauseroll()V
    .locals 1

    .prologue
    .line 347
    const-string v0, "pauseroll"

    invoke-direct {p0, v0}, Lcom/my/target/ads/instream/InstreamAd;->start(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public startPostroll()V
    .locals 1

    .prologue
    .line 342
    const-string v0, "postroll"

    invoke-direct {p0, v0}, Lcom/my/target/ads/instream/InstreamAd;->start(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public startPreroll()V
    .locals 1

    .prologue
    .line 337
    const-string v0, "preroll"

    invoke-direct {p0, v0}, Lcom/my/target/ads/instream/InstreamAd;->start(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/b;->f()V

    .line 301
    :cond_0
    return-void
.end method

.method public useDefaultPlayer()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

    .line 275
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAd;->controller:Lcom/my/target/core/controllers/b;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAd;->videoPlayer:Lcom/my/target/ads/instream/InstreamAdPlayer;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/b;->a(Lcom/my/target/ads/instream/InstreamAdPlayer;)V

    .line 277
    :cond_0
    return-void
.end method
