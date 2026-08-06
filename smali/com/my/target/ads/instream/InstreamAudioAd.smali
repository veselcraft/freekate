.class public Lcom/my/target/ads/instream/InstreamAudioAd;
.super Lcom/my/target/core/facades/a;
.source "InstreamAudioAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;,
        Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;
    }
.end annotation


# instance fields
.field private audioDuration:F

.field private audioPlayer:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

.field private final completeSectionListener:Lcom/my/target/core/controllers/a$a;

.field private controller:Lcom/my/target/core/controllers/a;

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

.field private instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

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

.field private section:Lcom/my/target/core/models/sections/g;

.field private userMidPoints:[F

.field private volume:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    const-string v0, "instreamaudioads"

    invoke-direct {p0, p1, v0, p2}, Lcom/my/target/core/facades/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/my/target/ads/instream/InstreamAudioAd$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$1;-><init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->doAfterServiceListener:Lcom/my/target/core/async/commands/b$a;

    .line 77
    new-instance v0, Lcom/my/target/ads/instream/InstreamAudioAd$2;

    invoke-direct {v0, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$2;-><init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPointServiceListener:Lcom/my/target/core/async/commands/b$a;

    .line 95
    new-instance v0, Lcom/my/target/ads/instream/InstreamAudioAd$3;

    invoke-direct {v0, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$3;-><init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->completeSectionListener:Lcom/my/target/core/controllers/a$a;

    .line 128
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->volume:F

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->isAdLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    invoke-virtual {p0, v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->setTrackingEnvironmentEnabled(Z)V

    .line 182
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->loadingMidPoint:Landroid/util/Pair;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/ads/instream/InstreamAudioAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->currentSection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/models/sections/g;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    return-object v0
.end method

.method static synthetic access$300(Lcom/my/target/ads/instream/InstreamAudioAd;)Lcom/my/target/core/controllers/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/my/target/ads/instream/InstreamAudioAd;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->doAfterPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/core/models/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAudioAd;->loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/my/target/ads/instream/InstreamAudioAd;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->loadingMidPoint:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$700(Lcom/my/target/ads/instream/InstreamAudioAd;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAudioAd;->startAtPoint(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$800(Lcom/my/target/ads/instream/InstreamAudioAd;Lcom/my/target/core/models/sections/c;F)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/my/target/ads/instream/InstreamAudioAd;->loadMidPoint(Lcom/my/target/core/models/sections/c;F)V

    return-void
.end method

.method private loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 506
    if-nez p1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    invoke-interface {v0, p2, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->currentSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->b()I

    move-result v0

    iput v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->doAfterPosition:I

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading doAfter, pos = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->doAfterPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->adData:Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->adParams:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->context:Landroid/content/Context;

    .line 519
    invoke-static {v1, v0, v2, v3}, Lcom/my/target/core/factories/b;->a(Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/a;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->doAfterServiceListener:Lcom/my/target/core/async/commands/b$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/async/commands/b;->a(Lcom/my/target/core/async/commands/b$a;)V

    .line 524
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    goto :goto_0
.end method

.method private loadMidPoint(Lcom/my/target/core/models/sections/c;F)V
    .locals 5

    .prologue
    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->j()Ljava/util/ArrayList;

    move-result-object v2

    .line 473
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

    .line 475
    invoke-virtual {v0}, Lcom/my/target/core/models/d;->f()F

    move-result v4

    cmpl-float v4, v4, p2

    if-nez v4, :cond_0

    .line 476
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 481
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

    .line 483
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->j()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->adData:Lcom/my/target/core/models/c;

    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->adParams:Lcom/my/target/core/a;

    iget-object v3, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->context:Landroid/content/Context;

    .line 490
    invoke-static {v0, v1, v2, v3}, Lcom/my/target/core/factories/b;->a(Lcom/my/target/core/models/c;Ljava/util/ArrayList;Lcom/my/target/core/a;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPointServiceListener:Lcom/my/target/core/async/commands/b$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/async/commands/b;->a(Lcom/my/target/core/async/commands/b$a;)V

    .line 495
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    .line 502
    :goto_2
    return-void

    .line 498
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is no one midpoint service for point "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->l()Lcom/my/target/core/models/d;

    move-result-object v0

    .line 500
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-direct {p0, v0, v1}, Lcom/my/target/ads/instream/InstreamAudioAd;->loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 31
    sput-boolean p0, Lcom/my/target/core/b;->a:Z

    .line 32
    if-eqz p0, :cond_0

    .line 33
    const-string v0, "Debug mode enabled"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method private start(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-nez v0, :cond_1

    .line 390
    :cond_0
    const-string v0, "Unable to start advertisement: not loaded yet"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->a()Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 395
    const-string v0, "Unable to start advertisement: player has not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_2
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->currentSection:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    .line 401
    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/c;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/models/sections/c;Ljava/util/List;)V

    goto :goto_0
.end method

.method private startAtPoint(Ljava/lang/String;F)V
    .locals 5

    .prologue
    .line 407
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-nez v0, :cond_2

    .line 409
    :cond_0
    const-string v0, "Unable to start advertisement: not loaded yet"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->a()Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 415
    const-string v0, "Unable to start advertisement: player has not set"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_3
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->currentSection:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    .line 421
    invoke-virtual {v0, p1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v3

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/c;->g()Ljava/util/ArrayList;

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

    check-cast v0, Lcom/my/target/core/models/banners/c;

    .line 426
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/c;->b()F

    move-result v4

    cmpl-float v4, v4, p2

    if-nez v4, :cond_4

    .line 428
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 432
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 434
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->loadingMidPoint:Landroid/util/Pair;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->loadingMidPoint:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_a

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->loadingMidPoint:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 438
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 442
    :goto_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->loadingMidPoint:Landroid/util/Pair;

    .line 444
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v1, p1}, Lcom/my/target/core/controllers/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 446
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto/16 :goto_0

    .line 451
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 453
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v1, v3, v0}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/models/sections/c;Ljava/util/List;)V

    goto/16 :goto_0

    .line 454
    :cond_7
    const-string v0, "midroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 455
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 457
    invoke-direct {p0, v3, p2}, Lcom/my/target/ads/instream/InstreamAudioAd;->loadMidPoint(Lcom/my/target/core/models/sections/c;F)V

    goto/16 :goto_0

    .line 458
    :cond_8
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 460
    invoke-virtual {v3}, Lcom/my/target/core/models/sections/c;->l()Lcom/my/target/core/models/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/my/target/ads/instream/InstreamAudioAd;->loadDoAfterService(Lcom/my/target/core/models/d;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :cond_9
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public configureMidpoints(F)V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->configureMidpoints(F[F)V

    .line 188
    return-void
.end method

.method public configureMidpoints(F[F)V
    .locals 2

    .prologue
    .line 192
    iput-object p2, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->userMidPoints:[F

    .line 193
    iput p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->audioDuration:F

    .line 195
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    const-string v1, "midroll"

    .line 198
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->userMidPoints:[F

    invoke-static {v0, v1, p1}, Lcom/my/target/core/utils/n;->a(Lcom/my/target/core/models/sections/c;[FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPoints:[F

    .line 202
    :cond_0
    return-void
.end method

.method public configureMidpointsPercents(F[F)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 206
    array-length v1, p2

    new-array v2, v1, [F

    move v1, v0

    .line 208
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 210
    aget v3, p2, v0

    .line 211
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1

    .line 213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 214
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

    .line 216
    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v0

    .line 208
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    div-float v4, p1, v6

    mul-float/2addr v3, v4

    aput v3, v2, v0

    goto :goto_1

    .line 222
    :cond_2
    if-lez v1, :cond_3

    .line 224
    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    .line 225
    array-length v0, v2

    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    .line 227
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->configureMidpoints(F[F)V

    .line 228
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->g()V

    .line 271
    :cond_0
    return-void
.end method

.method public getMidPoints()[F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPoints:[F

    return-object v0
.end method

.method public getPlayer()Lcom/my/target/ads/instream/InstreamAudioAdPlayer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->audioPlayer:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    return-object v0
.end method

.method public handleCompanionClick(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    .line 1450
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;Landroid/content/Context;)V

    .line 295
    :cond_0
    return-void
.end method

.method public handleCompanionClick(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;Landroid/content/Context;)V

    .line 303
    :cond_0
    return-void
.end method

.method public handleCompanionShow(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;)V

    .line 311
    :cond_0
    return-void
.end method

.method public isTrackingEnvironmentEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->f()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->isAdLoadStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
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

    .line 238
    :cond_0
    invoke-super {p0}, Lcom/my/target/core/facades/a;->load()V

    .line 239
    return-void
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string v0, "instreamaudioads"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/my/target/core/models/sections/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/my/target/core/models/sections/g;

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->section:Lcom/my/target/core/models/sections/g;

    const-string v1, "midroll"

    .line 358
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/sections/g;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/c;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->userMidPoints:[F

    iget v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->audioDuration:F

    invoke-static {v0, v1, v2}, Lcom/my/target/core/utils/n;->a(Lcom/my/target/core/models/sections/c;[FF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPoints:[F

    .line 361
    new-instance v0, Lcom/my/target/core/controllers/a;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/a;-><init>(Lcom/my/target/ads/instream/InstreamAudioAd;)V

    iput-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    .line 362
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/models/c;)V

    .line 363
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;)V

    .line 364
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    iget v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->volume:F

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/a;->a(F)V

    .line 365
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->completeSectionListener:Lcom/my/target/core/controllers/a$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/core/controllers/a$a;)V

    .line 366
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->audioPlayer:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->audioPlayer:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/InstreamAudioAdPlayer;)V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    invoke-interface {v0, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onLoad(Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto :goto_0

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    goto :goto_0
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    invoke-interface {v0, p1, p0}, Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAudioAd;)V

    .line 379
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->d()V

    .line 247
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->e()V

    .line 255
    :cond_0
    return-void
.end method

.method public setListener(Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;)V

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->instreamAudioAdListener:Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;

    .line 153
    return-void
.end method

.method public setPlayer(Lcom/my/target/ads/instream/InstreamAudioAdPlayer;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/a;->a(Lcom/my/target/ads/instream/InstreamAudioAdPlayer;)V

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->audioPlayer:Lcom/my/target/ads/instream/InstreamAudioAdPlayer;

    .line 162
    return-void
.end method

.method public setTrackingEnvironmentEnabled(Z)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/a;->a(Z)V

    .line 384
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 168
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

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0, p1}, Lcom/my/target/core/controllers/a;->a(F)V

    .line 175
    :cond_2
    iput p1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->volume:F

    goto :goto_0
.end method

.method public skip()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->b()V

    .line 279
    :cond_0
    return-void
.end method

.method public skipBanner()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->c()V

    .line 287
    :cond_0
    return-void
.end method

.method public startMidroll(F)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 330
    .line 331
    iget-object v1, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPoints:[F

    if-eqz v1, :cond_0

    .line 332
    iget-object v2, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->midPoints:[F

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 334
    invoke-static {v4, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    .line 336
    const/4 v0, 0x1

    .line 340
    :cond_0
    if-eqz v0, :cond_2

    .line 341
    const-string v0, "midroll"

    invoke-direct {p0, v0, p1}, Lcom/my/target/ads/instream/InstreamAudioAd;->startAtPoint(Ljava/lang/String;F)V

    .line 345
    :goto_1
    return-void

    .line 332
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_2
    const-string v0, "attempt to start wrong midpoint, use one of InstreamAd.getMidPoints() value"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startPauseroll()V
    .locals 1

    .prologue
    .line 325
    const-string v0, "pauseroll"

    invoke-direct {p0, v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->start(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public startPostroll()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "postroll"

    invoke-direct {p0, v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->start(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public startPreroll()V
    .locals 1

    .prologue
    .line 315
    const-string v0, "preroll"

    invoke-direct {p0, v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->start(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/my/target/ads/instream/InstreamAudioAd;->controller:Lcom/my/target/core/controllers/a;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/a;->f()V

    .line 263
    :cond_0
    return-void
.end method
