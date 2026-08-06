.class public final Lcom/my/target/core/controllers/c;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Lcom/my/target/core/ui/views/video/VideoTextureView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/controllers/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/target/core/models/banners/h;

.field private final b:Lcom/my/target/nativeads/models/VideoData;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final e:Landroid/content/DialogInterface$OnDismissListener;

.field private final f:Lcom/my/target/core/ui/b$a;

.field private g:Lcom/my/target/nativeads/views/MediaAdView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;

.field private n:Lcom/my/target/core/ui/b;

.field private o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/my/target/core/ui/views/video/VideoTextureView;

.field private q:Z

.field private r:Lcom/my/target/core/controllers/c$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/banners/h;Lcom/my/target/nativeads/models/VideoData;)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/my/target/core/controllers/c$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/c$1;-><init>(Lcom/my/target/core/controllers/c;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->c:Landroid/view/View$OnClickListener;

    .line 58
    new-instance v0, Lcom/my/target/core/controllers/c$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/c$2;-><init>(Lcom/my/target/core/controllers/c;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 85
    new-instance v0, Lcom/my/target/core/controllers/c$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/c$3;-><init>(Lcom/my/target/core/controllers/c;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 137
    new-instance v0, Lcom/my/target/core/controllers/c$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/c$4;-><init>(Lcom/my/target/core/controllers/c;)V

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->f:Lcom/my/target/core/ui/b$a;

    .line 214
    iput-object p1, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    .line 215
    iput-object p2, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    .line 216
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/c;->j:Z

    .line 217
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/c;->q:Z

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/c;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/my/target/core/controllers/c;->h:I

    return p1
.end method

.method static synthetic a(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/views/video/VideoTextureView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/controllers/c;Lcom/my/target/core/ui/views/video/VideoTextureView;)Lcom/my/target/core/ui/views/video/VideoTextureView;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 577
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 578
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 579
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_1

    .line 566
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 567
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Z)V

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->h()V

    .line 573
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/controllers/c;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/my/target/core/controllers/c;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/controllers/c$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    return-object v0
.end method

.method private b(F)V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->o:Ljava/util/HashSet;

    invoke-interface {v0, p1, v1}, Lcom/my/target/core/controllers/c$a;->a(FLjava/util/HashSet;)V

    .line 590
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 626
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 627
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 630
    return-void
.end method

.method static synthetic b(Lcom/my/target/core/controllers/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/my/target/core/controllers/c;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/my/target/core/controllers/c;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/my/target/core/controllers/c;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/c;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/my/target/core/controllers/c;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/my/target/core/controllers/c;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/my/target/core/controllers/c;->l()V

    return-void
.end method

.method static synthetic f(Lcom/my/target/core/controllers/c;)V
    .locals 1

    .prologue
    .line 22
    .line 1516
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 1518
    const-string v0, "Audiofocus loss can duck, set volume to 0.3"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1519
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->q:Z

    if-nez v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j()V

    .line 22
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    return-object v0
.end method

.method static synthetic h(Lcom/my/target/core/controllers/c;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    return v0
.end method

.method static synthetic i(Lcom/my/target/core/controllers/c;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/my/target/core/controllers/c;->k()V

    return-void
.end method

.method static synthetic j(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/views/MediaAdView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    return-object v0
.end method

.method static synthetic k(Lcom/my/target/core/controllers/c;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    return v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->g()V

    .line 528
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/models/banners/h;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->h()V

    .line 622
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/my/target/core/controllers/c;)Lcom/my/target/core/ui/b;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    return-object v0
.end method

.method static synthetic n(Lcom/my/target/core/controllers/c;)Lcom/my/target/nativeads/models/VideoData;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    return-object v0
.end method

.method static synthetic o(Lcom/my/target/core/controllers/c;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic p(Lcom/my/target/core/controllers/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 22
    .line 1532
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->m:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->m:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1539
    :cond_1
    iput-boolean v4, p0, Lcom/my/target/core/controllers/c;->k:Z

    .line 1540
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1594
    new-instance v1, Lcom/my/target/core/ui/b;

    invoke-direct {v1, v0}, Lcom/my/target/core/ui/b;-><init>(Landroid/content/Context;)V

    .line 1595
    iget-object v2, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    iget-object v3, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v1, v2, v3}, Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/models/banners/h;Lcom/my/target/nativeads/models/VideoData;)V

    .line 1596
    iget-object v2, p0, Lcom/my/target/core/controllers/c;->f:Lcom/my/target/core/ui/b$a;

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/ui/b$a;)V

    .line 1597
    iget-object v2, p0, Lcom/my/target/core/controllers/c;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1599
    iget-object v2, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-nez v2, :cond_2

    invoke-static {p0, v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/controllers/c;Landroid/content/Context;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 1600
    :cond_2
    iget-object v2, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 1601
    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/c;->b(Landroid/content/Context;)V

    .line 1603
    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    if-ne v0, v4, :cond_3

    .line 1605
    const/4 v0, 0x4

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 1606
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->i()V

    .line 1609
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1610
    if-eqz v0, :cond_4

    .line 1612
    iget-object v2, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1614
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/b;->a(Lcom/my/target/core/ui/views/video/VideoTextureView;)V

    .line 1540
    iput-object v1, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    .line 1541
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->a()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1542
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->q:Z

    if-eqz v0, :cond_6

    .line 1544
    invoke-direct {p0}, Lcom/my/target/core/controllers/c;->k()V

    .line 1550
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->show()V

    .line 1551
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    if-eqz v0, :cond_5

    .line 1553
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->b()V

    .line 1555
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v0, v1, v4}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 1558
    iput v4, p0, Lcom/my/target/core/controllers/c;->h:I

    goto :goto_0

    .line 1547
    :cond_6
    invoke-direct {p0}, Lcom/my/target/core/controllers/c;->l()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    .line 223
    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, v3}, Lcom/my/target/core/controllers/c;->a(Z)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iput-boolean v3, p0, Lcom/my/target/core/controllers/c;->j:Z

    .line 232
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->d()V

    goto :goto_0

    .line 238
    :cond_2
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle visible, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/core/controllers/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-nez v0, :cond_4

    .line 246
    iput-boolean v3, p0, Lcom/my/target/core/controllers/c;->l:Z

    .line 247
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/controllers/c;Landroid/content/Context;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 248
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 249
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/my/target/nativeads/views/MediaAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :cond_4
    invoke-direct {p0}, Lcom/my/target/core/controllers/c;->k()V

    .line 255
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->b:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v0, v1, v3}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    goto :goto_0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/b;->a(Z)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/b;->a(Z)V

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 445
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->f()V

    .line 446
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    invoke-interface {v0}, Lcom/my/target/core/controllers/c$a;->a()V

    .line 450
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->o:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 452
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/controllers/c;->o:Ljava/util/HashSet;

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->getStats()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 460
    const-string v3, "playheadReachedValue"

    invoke-virtual {v0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v0, Lcom/my/target/core/models/i;

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/my/target/core/controllers/c;->o:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/i;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 466
    :cond_2
    invoke-direct {p0, v1}, Lcom/my/target/core/controllers/c;->b(F)V

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/controllers/c;->l:Z

    .line 469
    :cond_3
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->i:Z

    if-eqz v0, :cond_4

    .line 471
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_4

    .line 472
    iput-boolean v5, p0, Lcom/my/target/core/controllers/c;->i:Z

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 477
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->f()F

    move-result p2

    .line 478
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_5

    .line 480
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0, p1, p2}, Lcom/my/target/core/ui/b;->a(FF)V

    .line 484
    :cond_5
    :goto_3
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_8

    .line 486
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_6

    .line 487
    invoke-direct {p0, p1}, Lcom/my/target/core/controllers/c;->b(F)V

    .line 488
    :cond_6
    cmpl-float v0, p1, p2

    if-nez v0, :cond_7

    .line 490
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->e()V

    .line 491
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 492
    iput-boolean v5, p0, Lcom/my/target/core/controllers/c;->j:Z

    .line 493
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_7

    .line 495
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a()V

    .line 499
    :cond_7
    return-void

    :cond_8
    move p1, p2

    .line 498
    goto/16 :goto_0

    :cond_9
    move p2, v1

    goto :goto_3
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/my/target/core/controllers/c;->m:Landroid/view/View$OnClickListener;

    .line 205
    return-void
.end method

.method public final a(Lcom/my/target/core/controllers/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/my/target/core/controllers/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/my/target/core/controllers/c;->r:Lcom/my/target/core/controllers/c$a;

    .line 210
    return-void
.end method

.method public final a(Lcom/my/target/nativeads/views/MediaAdView;)V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->b()V

    .line 264
    iput-object p1, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    .line 266
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-nez v0, :cond_0

    .line 268
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->j:Z

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->i()V

    .line 277
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->m:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 279
    new-instance v0, Lcom/my/target/core/controllers/c$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/controllers/c$5;-><init>(Lcom/my/target/core/controllers/c;)V

    invoke-virtual {p1, v0}, Lcom/my/target/nativeads/views/MediaAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_1
    return-void

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->e()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 505
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->e()V

    .line 506
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregister from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->d()V

    .line 296
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->c()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iput-object v2, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    .line 300
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call release texture view on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 308
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->e()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/controllers/c;->l:Z

    .line 315
    iput-object v2, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 316
    invoke-static {p0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/core/controllers/c;)V

    .line 317
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 321
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 325
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->j:Z

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handle invisible, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/my/target/core/controllers/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " obj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x2

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 329
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->i()V

    .line 332
    iput v2, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->e()V

    .line 337
    const/4 v0, 0x3

    iput v0, p0, Lcom/my/target/core/controllers/c;->h:I

    .line 338
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a()V

    goto :goto_0

    .line 343
    :cond_2
    iget v0, p0, Lcom/my/target/core/controllers/c;->h:I

    if-eq v0, v2, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/my/target/core/controllers/c;->e()V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    const/4 v0, 0x0

    .line 354
    iput-boolean v2, p0, Lcom/my/target/core/controllers/c;->l:Z

    .line 355
    iget-object v1, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 364
    :cond_1
    iget-boolean v1, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v1}, Lcom/my/target/core/ui/b;->b()V

    .line 367
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/c;->a(Landroid/content/Context;)V

    .line 370
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 387
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->c()V

    .line 395
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    if-eqz v1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->p:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    :cond_1
    iget-boolean v1, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v1}, Lcom/my/target/core/ui/b;->e()V

    .line 425
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/my/target/core/controllers/c;->a(Landroid/content/Context;)V

    .line 428
    :cond_3
    return-void

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/controllers/c;->a:Lcom/my/target/core/models/banners/h;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/h;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->g:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getPlayButtonView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-boolean v0, p0, Lcom/my/target/core/controllers/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/my/target/core/controllers/c;->n:Lcom/my/target/core/ui/b;

    invoke-virtual {v0}, Lcom/my/target/core/ui/b;->d()V

    .line 440
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method
