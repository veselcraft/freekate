.class public abstract Lcom/my/target/core/facades/b;
.super Lcom/my/target/core/facades/a;
.source "AbstractNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/facades/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/my/target/core/facades/a;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VIDEO_QUALITY:I = 0x168

.field private static final minViewAlpha:F = 0.5f

.field private static final minVisibleSquare:F = 0.6f


# instance fields
.field private autoLoadImages:Z

.field private autoLoadVideo:Z

.field protected banner:Lcom/my/target/core/models/banners/h;

.field private isShown:Z

.field private listener:Lcom/my/target/core/facades/b$a;

.field private final mediaListener:Lcom/my/target/core/net/b$a;

.field private nativeAdVideoController:Lcom/my/target/core/controllers/c;

.field private final promoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

.field private promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/my/target/nativeads/views/PromoCardRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private final showHelper:Lcom/my/target/core/utils/a$a;

.field private final statisticsListener:Lcom/my/target/core/controllers/c$a;

.field private final supportedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected videoData:Lcom/my/target/nativeads/models/VideoData;

.field private final viewClickListener:Landroid/view/View$OnClickListener;

.field private viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private visibleCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 304
    const-string v0, "nativeads"

    invoke-direct {p0, p1, v0, p3}, Lcom/my/target/core/facades/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/my/target/core/facades/b$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$1;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->statisticsListener:Lcom/my/target/core/controllers/c$a;

    .line 139
    new-instance v0, Lcom/my/target/core/facades/b$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$2;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->mediaListener:Lcom/my/target/core/net/b$a;

    .line 148
    iput-boolean v1, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    .line 149
    iput-boolean v1, p0, Lcom/my/target/core/facades/b;->autoLoadVideo:Z

    .line 155
    new-instance v0, Lcom/my/target/core/facades/b$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$3;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->promoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    .line 191
    new-instance v0, Lcom/my/target/core/facades/b$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$4;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    .line 235
    new-instance v0, Lcom/my/target/core/facades/b$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/b$5;-><init>(Lcom/my/target/core/facades/b;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->viewClickListener:Landroid/view/View$OnClickListener;

    .line 305
    iput-object p2, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    .line 306
    iget-object v0, p0, Lcom/my/target/core/facades/b;->adParams:Lcom/my/target/core/a;

    invoke-virtual {v0}, Lcom/my/target/core/a;->h()V

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doLoadSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/my/target/core/facades/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/facades/b;->visibleCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/my/target/core/facades/b;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->isShown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/my/target/core/facades/b;)Lcom/my/target/core/controllers/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    return-object v0
.end method

.method static synthetic access$500(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private doAutoLoadMedia()V
    .locals 4

    .prologue
    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->videoData:Lcom/my/target/nativeads/models/VideoData;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/my/target/core/facades/b;->videoData:Lcom/my/target/nativeads/models/VideoData;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/i;

    .line 422
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 423
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/i;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Starting load: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " urls"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 429
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 431
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/b;->mediaListener:Lcom/my/target/core/net/b$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 434
    :goto_1
    return-void

    .line 433
    :cond_5
    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doLoadSuccess()V

    goto :goto_1
.end method

.method private doLoadFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 395
    if-eqz p1, :cond_1

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    invoke-interface {v0, p1, p0}, Lcom/my/target/core/facades/b$a;->onNoAd(Ljava/lang/String;Lcom/my/target/core/facades/b;)V

    .line 397
    :cond_0
    return-void

    .line 395
    :cond_1
    const-string p1, "No ad"

    goto :goto_0
.end method

.method private doLoadSuccess()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/b$a;->onLoad(Lcom/my/target/core/facades/b;)V

    .line 403
    :cond_0
    return-void
.end method

.method private doRegisterView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 513
    instance-of v0, p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    if-eqz v0, :cond_1

    .line 515
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 516
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    iget-object v1, p0, Lcom/my/target/core/facades/b;->promoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setOnPromoCardListener(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 520
    check-cast v0, Landroid/view/ViewGroup;

    .line 522
    instance-of v1, v0, Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_4

    .line 524
    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 526
    check-cast v1, Lcom/my/target/nativeads/views/MediaAdView;

    .line 527
    invoke-virtual {v1}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 528
    invoke-virtual {v1}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v2, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    .line 533
    :cond_2
    iget-object v2, p0, Lcom/my/target/core/facades/b;->videoData:Lcom/my/target/nativeads/models/VideoData;

    if-eqz v2, :cond_4

    .line 535
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    if-nez v0, :cond_3

    .line 537
    new-instance v0, Lcom/my/target/core/controllers/c;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    iget-object v3, p0, Lcom/my/target/core/facades/b;->videoData:Lcom/my/target/nativeads/models/VideoData;

    invoke-direct {v0, v2, v3}, Lcom/my/target/core/controllers/c;-><init>(Lcom/my/target/core/models/banners/h;Lcom/my/target/nativeads/models/VideoData;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    .line 539
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/my/target/core/controllers/c;->a(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->statisticsListener:Lcom/my/target/core/controllers/c$a;

    invoke-virtual {v0, v2}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/core/controllers/c$a;)V

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    invoke-virtual {v0, v1}, Lcom/my/target/core/controllers/c;->a(Lcom/my/target/nativeads/views/MediaAdView;)V

    goto :goto_0

    .line 546
    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 548
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 549
    invoke-direct {p0, v2}, Lcom/my/target/core/facades/b;->doRegisterView(Landroid/view/View;)V

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private doUnregisterView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 557
    instance-of v0, p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    if-eqz v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 560
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/my/target/nativeads/views/MediaAdView;

    if-nez v0, :cond_1

    move-object v0, p1

    .line 562
    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 565
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 566
    invoke-direct {p0, v2}, Lcom/my/target/core/facades/b;->doUnregisterView(Landroid/view/View;)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 569
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final getBanner()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    return-object v0
.end method

.method public final handleClick()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    iget-object v2, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 448
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/b$a;->onClick(Lcom/my/target/core/facades/b;)V

    .line 451
    :cond_0
    return-void
.end method

.method public final handleShow()V
    .locals 2

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->isShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    iget-object v1, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/facades/b;->isShown:Z

    .line 459
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 460
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->visibleCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getCurrentCard()Lcom/my/target/nativeads/banners/NativePromoCard;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/my/target/core/facades/b;->visibleCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    check-cast v0, Lcom/my/target/core/models/banners/d;

    iget-object v1, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 471
    :cond_0
    return-void
.end method

.method public isAutoLoadImages()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    return v0
.end method

.method public isAutoLoadVideo()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/my/target/core/facades/b;->autoLoadVideo:Z

    return v0
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x28

    .line 316
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->g()Z

    move-result v0

    .line 318
    if-eqz v0, :cond_5

    .line 320
    const-string v0, "nativeads"

    invoke-virtual {p1, v0}, Lcom/my/target/core/models/c;->c(Ljava/lang/String;)Lcom/my/target/core/models/sections/i;

    move-result-object v0

    .line 321
    instance-of v1, v0, Lcom/my/target/core/models/sections/h;

    if-eqz v1, :cond_5

    .line 323
    check-cast v0, Lcom/my/target/core/models/sections/h;

    .line 324
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->b()I

    move-result v1

    if-lez v1, :cond_5

    .line 327
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/h;

    .line 329
    iget-object v2, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    iput-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-nez v0, :cond_2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No supported banners found for Ad types \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/my/target/core/async/a;

    invoke-direct {v1, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 356
    const-class v0, Lcom/my/target/core/facades/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1, v4}, Lcom/my/target/core/async/a;->a(I)V

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v1}, Lcom/my/target/core/async/a;->a()V

    .line 362
    invoke-direct {p0, v5}, Lcom/my/target/core/facades/b;->doLoadFailure(Ljava/lang/String;)V

    .line 390
    :goto_1
    return-void

    .line 335
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Banner "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' does not matches for Ad types \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/facades/b;->supportedTypes:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 339
    new-instance v2, Lcom/my/target/core/async/a;

    invoke-direct {v2, v0}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 340
    const-class v0, Lcom/my/target/core/facades/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2, v4}, Lcom/my/target/core/async/a;->a(I)V

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lcom/my/target/core/models/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v2}, Lcom/my/target/core/async/a;->a()V

    goto/16 :goto_0

    .line 366
    :cond_2
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    .line 367
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    .line 368
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    .line 371
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x168

    .line 370
    invoke-static {v0, v1}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/facades/b;->videoData:Lcom/my/target/nativeads/models/VideoData;

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getCards()Ljava/util/List;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->visibleCards:Ljava/util/ArrayList;

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_5

    .line 382
    invoke-direct {p0}, Lcom/my/target/core/facades/b;->doAutoLoadMedia()V

    goto/16 :goto_1

    .line 389
    :cond_5
    invoke-direct {p0, v5}, Lcom/my/target/core/facades/b;->doLoadFailure(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/my/target/core/facades/b;->doLoadFailure(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public final registerView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 478
    :cond_0
    if-eq p1, v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/my/target/core/facades/b;->unregisterView()V

    .line 481
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 482
    invoke-direct {p0, p1}, Lcom/my/target/core/facades/b;->doRegisterView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    invoke-interface {v0}, Lcom/my/target/core/utils/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/my/target/core/utils/a;->a()Lcom/my/target/core/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/a;->a(Lcom/my/target/core/utils/a$a;)V

    .line 485
    :cond_1
    return-void
.end method

.method public setAutoLoadImages(Z)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/my/target/core/facades/b;->autoLoadImages:Z

    .line 276
    return-void
.end method

.method public setAutoLoadVideo(Z)V
    .locals 0

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/my/target/core/facades/b;->autoLoadVideo:Z

    .line 286
    return-void
.end method

.method public setListener(Lcom/my/target/core/facades/b$a;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/my/target/core/facades/b;->listener:Lcom/my/target/core/facades/b$a;

    .line 294
    return-void
.end method

.method public final unregisterView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setOnPromoCardListener(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;)V

    .line 493
    :cond_0
    iput-object v2, p0, Lcom/my/target/core/facades/b;->promoCardRecyclerViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/my/target/core/facades/b;->nativeAdVideoController:Lcom/my/target/core/controllers/c;

    invoke-virtual {v0}, Lcom/my/target/core/controllers/c;->b()V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 504
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/my/target/core/facades/b;->doUnregisterView(Landroid/view/View;)V

    .line 505
    :cond_3
    invoke-static {}, Lcom/my/target/core/utils/a;->a()Lcom/my/target/core/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b;->showHelper:Lcom/my/target/core/utils/a$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/a;->b(Lcom/my/target/core/utils/a$a;)V

    .line 506
    iget-object v0, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 507
    iput-object v2, p0, Lcom/my/target/core/facades/b;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 509
    :cond_4
    return-void
.end method
