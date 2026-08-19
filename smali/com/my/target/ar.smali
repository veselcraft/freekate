.class public Lcom/my/target/ar;
.super Ljava/lang/Object;
.source "InstreamAudioAdEngine.java"


# instance fields
.field private aB:Lcom/my/target/da;

.field private aC:Lcom/my/target/co;

.field private aE:Ljava/util/List;

.field private aF:F

.field private aG:I

.field private aH:I

.field private aI:Z

.field private final aM:Lcom/my/target/instreamads/InstreamAudioAd;

.field private final aN:Lcom/my/target/cx;

.field private final aO:Lcom/my/target/aj;

.field private aP:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

.field private final adConfig:Lcom/my/target/a;

.field private loadingTimeoutSeconds:I


# direct methods
.method private constructor <init>(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/cx;Lcom/my/target/a;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/my/target/ar;->aM:Lcom/my/target/instreamads/InstreamAudioAd;

    .line 70
    iput-object p2, p0, Lcom/my/target/ar;->aN:Lcom/my/target/cx;

    .line 71
    iput-object p3, p0, Lcom/my/target/ar;->adConfig:Lcom/my/target/a;

    .line 72
    invoke-static {}, Lcom/my/target/aj;->q()Lcom/my/target/aj;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    .line 73
    new-instance p2, Lcom/my/target/ar$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/my/target/ar$a;-><init>(Lcom/my/target/ar;Lcom/my/target/ar$1;)V

    invoke-virtual {p1, p2}, Lcom/my/target/aj;->a(Lcom/my/target/aj$b;)V

    .line 74
    invoke-static {}, Lcom/my/target/ij;->eD()Lcom/my/target/ij;

    return-void
.end method

.method public static a(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/cx;Lcom/my/target/a;)Lcom/my/target/ar;
    .locals 1

    .line 45
    new-instance v0, Lcom/my/target/ar;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/ar;-><init>(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/cx;Lcom/my/target/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/ar;)Lcom/my/target/da;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    return-object p0
.end method

.method static synthetic a(Lcom/my/target/ar;Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/ar;->a(Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/ar;Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;F)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/my/target/ar;->a(Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;F)V

    return-void
.end method

.method private a(Lcom/my/target/bz;Lcom/my/target/da;)V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0}, Lcom/my/target/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "can\'t load doAfter service: context is null"

    .line 368
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 371
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading doAfter service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/my/target/ar;->adConfig:Lcom/my/target/a;

    iget v2, p0, Lcom/my/target/ar;->loadingTimeoutSeconds:I

    invoke-static {p1, v1, v2}, Lcom/my/target/i;->a(Lcom/my/target/bz;Lcom/my/target/a;I)Lcom/my/target/b;

    move-result-object p1

    new-instance v1, Lcom/my/target/ar$1;

    invoke-direct {v1, p0, p2}, Lcom/my/target/ar$1;-><init>(Lcom/my/target/ar;Lcom/my/target/da;)V

    invoke-virtual {p1, v1}, Lcom/my/target/b;->a(Lcom/my/target/b$b;)Lcom/my/target/b;

    move-result-object p1

    .line 379
    invoke-virtual {p1, v0}, Lcom/my/target/b;->a(Landroid/content/Context;)Lcom/my/target/b;

    return-void
.end method

.method private a(Lcom/my/target/co;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "can\'t send stat: banner is null"

    .line 465
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0}, Lcom/my/target/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "can\'t send stat: context is null"

    .line 471
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 474
    :cond_1
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/my/target/di;->N(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/my/target/it;->a(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/my/target/da;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-ne p1, v0, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "midroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    iget v1, p0, Lcom/my/target/ar;->aH:I

    invoke-virtual {v0, v1}, Lcom/my/target/da;->v(I)V

    :cond_0
    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    const/4 v1, 0x0

    .line 351
    iput-boolean v1, p0, Lcom/my/target/ar;->aI:Z

    .line 352
    iput-object v0, p0, Lcom/my/target/ar;->aC:Lcom/my/target/co;

    .line 353
    iput-object v0, p0, Lcom/my/target/ar;->aP:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    const/4 v0, -0x1

    .line 354
    iput v0, p0, Lcom/my/target/ar;->aG:I

    .line 355
    iget-object v0, p0, Lcom/my/target/ar;->aM:Lcom/my/target/instreamads/InstreamAudioAd;

    invoke-virtual {v0}, Lcom/my/target/instreamads/InstreamAudioAd;->getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p1}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/my/target/ar;->aM:Lcom/my/target/instreamads/InstreamAudioAd;

    invoke-interface {v0, p1, v1}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onComplete(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/my/target/da;F)V
    .locals 4

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/my/target/da;->bX()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/co;

    .line 251
    invoke-virtual {v2}, Lcom/my/target/co;->getPoint()F

    move-result v3

    cmpl-float v3, v3, p2

    if-nez v3, :cond_0

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 257
    iget v2, p0, Lcom/my/target/ar;->aG:I

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    .line 259
    iput-object v0, p0, Lcom/my/target/ar;->aE:Ljava/util/List;

    .line 260
    invoke-direct {p0}, Lcom/my/target/ar;->ak()V

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {p1, p2}, Lcom/my/target/da;->f(F)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 267
    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/ar;->a(Ljava/util/ArrayList;Lcom/my/target/da;F)V

    goto :goto_1

    .line 271
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no one midpoint service for point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/my/target/ar;->b(Lcom/my/target/da;F)V

    :goto_1
    return-void
.end method

.method private a(Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading doAfter service failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object p2, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-ne p1, p2, :cond_1

    .line 394
    iget p2, p0, Lcom/my/target/ar;->aF:F

    invoke-direct {p0, p1, p2}, Lcom/my/target/ar;->b(Lcom/my/target/da;F)V

    :cond_1
    return-void

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/my/target/cx;->y(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 402
    invoke-virtual {p1, p2}, Lcom/my/target/da;->b(Lcom/my/target/da;)V

    .line 404
    :cond_3
    iget-object p2, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-ne p1, p2, :cond_4

    .line 406
    invoke-virtual {p1}, Lcom/my/target/da;->bX()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/ar;->aE:Ljava/util/List;

    .line 407
    invoke-direct {p0}, Lcom/my/target/ar;->ak()V

    :cond_4
    return-void
.end method

.method private a(Lcom/my/target/da;Lcom/my/target/cx;Ljava/lang/String;F)V
    .locals 1

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading midpoint services failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 443
    :cond_0
    iget-object p2, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-ne p1, p2, :cond_1

    iget p2, p0, Lcom/my/target/ar;->aF:F

    cmpl-float p2, p4, p2

    if-nez p2, :cond_1

    .line 445
    invoke-direct {p0, p1, p4}, Lcom/my/target/ar;->b(Lcom/my/target/da;F)V

    :cond_1
    return-void

    .line 450
    :cond_2
    invoke-virtual {p1}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/my/target/cx;->y(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 453
    invoke-virtual {p1, p2}, Lcom/my/target/da;->b(Lcom/my/target/da;)V

    .line 455
    :cond_3
    iget-object p2, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-ne p1, p2, :cond_4

    iget p2, p0, Lcom/my/target/ar;->aF:F

    cmpl-float p2, p4, p2

    if-nez p2, :cond_4

    .line 457
    invoke-direct {p0, p1, p4}, Lcom/my/target/ar;->a(Lcom/my/target/da;F)V

    :cond_4
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/my/target/da;F)V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0}, Lcom/my/target/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "can\'t load midpoint services: context is null"

    .line 418
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading midpoint services for point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/my/target/ar;->adConfig:Lcom/my/target/a;

    iget v2, p0, Lcom/my/target/ar;->loadingTimeoutSeconds:I

    invoke-static {p1, v1, v2}, Lcom/my/target/i;->a(Ljava/util/List;Lcom/my/target/a;I)Lcom/my/target/b;

    move-result-object p1

    new-instance v1, Lcom/my/target/ar$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/my/target/ar$2;-><init>(Lcom/my/target/ar;Lcom/my/target/da;F)V

    invoke-virtual {p1, v1}, Lcom/my/target/b;->a(Lcom/my/target/b$b;)Lcom/my/target/b;

    move-result-object p1

    .line 429
    invoke-virtual {p1, v0}, Lcom/my/target/b;->a(Landroid/content/Context;)Lcom/my/target/b;

    return-void
.end method

.method static synthetic a(Lcom/my/target/ar;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/my/target/ar;->aI:Z

    return p1
.end method

.method private ak()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget v1, p0, Lcom/my/target/ar;->aH:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/my/target/ar;->aE:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    iget v0, p0, Lcom/my/target/ar;->aG:I

    add-int/lit8 v0, v0, 0x1

    .line 290
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 292
    iput v0, p0, Lcom/my/target/ar;->aG:I

    .line 293
    iget-object v1, p0, Lcom/my/target/ar;->aE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/co;

    .line 294
    invoke-virtual {v0}, Lcom/my/target/ch;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "statistics"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "playbackStarted"

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/my/target/ar;->a(Lcom/my/target/co;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/my/target/ar;->ak()V

    goto :goto_0

    .line 301
    :cond_2
    iget v1, p0, Lcom/my/target/ar;->aH:I

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 303
    iput v1, p0, Lcom/my/target/ar;->aH:I

    .line 305
    :cond_3
    iput-object v0, p0, Lcom/my/target/ar;->aC:Lcom/my/target/co;

    .line 306
    invoke-static {v0}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;->newBanner(Lcom/my/target/co;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/ar;->aP:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/my/target/ar;->aP:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    iget-object v2, v2, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;->companionBanners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    iget-object v1, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v1, v0}, Lcom/my/target/aj;->a(Lcom/my/target/co;)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    iget v1, p0, Lcom/my/target/ar;->aF:F

    invoke-direct {p0, v0, v1}, Lcom/my/target/ar;->b(Lcom/my/target/da;F)V

    :goto_0
    return-void

    .line 285
    :cond_5
    :goto_1
    iget v1, p0, Lcom/my/target/ar;->aF:F

    invoke-direct {p0, v0, v1}, Lcom/my/target/ar;->b(Lcom/my/target/da;F)V

    return-void
.end method

.method static synthetic b(Lcom/my/target/ar;)Lcom/my/target/co;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/my/target/ar;->aC:Lcom/my/target/co;

    return-object p0
.end method

.method private b(Lcom/my/target/da;F)V
    .locals 3

    .line 319
    invoke-virtual {p1}, Lcom/my/target/da;->cb()Lcom/my/target/bz;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "midroll"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Lcom/my/target/bz;->o(Z)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/my/target/bz;->setPoint(F)V

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using doAfter service for point: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v1, p1, p2}, Lcom/my/target/ar;->a(Ljava/util/ArrayList;Lcom/my/target/da;F)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/my/target/ar;->a(Lcom/my/target/bz;Lcom/my/target/da;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0, p1}, Lcom/my/target/ar;->a(Lcom/my/target/da;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/my/target/ar;->aP:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    return-object p0
.end method

.method static synthetic d(Lcom/my/target/ar;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/my/target/ar;->aI:Z

    return p0
.end method

.method static synthetic e(Lcom/my/target/ar;)Lcom/my/target/aj;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    return-object p0
.end method

.method static synthetic f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/my/target/ar;->aM:Lcom/my/target/instreamads/InstreamAudioAd;

    return-object p0
.end method

.method static synthetic g(Lcom/my/target/ar;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/my/target/ar;->ak()V

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/my/target/ar;->loadingTimeoutSeconds:I

    return-void
.end method

.method public getPlayer()Lcom/my/target/instreamads/InstreamAudioAdPlayer;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0}, Lcom/my/target/aj;->getPlayer()Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    move-result-object v0

    return-object v0
.end method

.method public setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0, p1}, Lcom/my/target/aj;->setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0, p1}, Lcom/my/target/aj;->setVolume(F)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/my/target/ar;->stop()V

    .line 105
    iget-object v0, p0, Lcom/my/target/ar;->aN:Lcom/my/target/cx;

    invoke-virtual {v0, p1}, Lcom/my/target/cx;->y(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0}, Lcom/my/target/da;->bY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/my/target/aj;->setConnectionTimeout(I)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/my/target/ar;->aI:Z

    .line 110
    iget-object p1, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    invoke-virtual {p1}, Lcom/my/target/da;->bZ()I

    move-result p1

    iput p1, p0, Lcom/my/target/ar;->aH:I

    const/4 p1, -0x1

    .line 111
    iput p1, p0, Lcom/my/target/ar;->aG:I

    .line 112
    iget-object p1, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    invoke-virtual {p1}, Lcom/my/target/da;->bX()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/ar;->aE:Ljava/util/List;

    .line 113
    invoke-direct {p0}, Lcom/my/target/ar;->ak()V

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no section with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/my/target/ar;->aO:Lcom/my/target/aj;

    invoke-virtual {v0}, Lcom/my/target/aj;->stop()V

    .line 173
    iget-object v0, p0, Lcom/my/target/ar;->aB:Lcom/my/target/da;

    invoke-direct {p0, v0}, Lcom/my/target/ar;->a(Lcom/my/target/da;)V

    :cond_0
    return-void
.end method
