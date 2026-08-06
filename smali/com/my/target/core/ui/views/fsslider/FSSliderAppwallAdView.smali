.class public Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;
.super Landroid/widget/RelativeLayout;
.source "FSSliderAppwallAdView.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:Lcom/my/target/core/ui/views/PageDotsView;

.field private final e:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

.field private final g:Lcom/my/target/core/utils/l;

.field private final h:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->a:I

    .line 23
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->b:I

    .line 24
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    .line 49
    new-instance v0, Lcom/my/target/core/ui/views/PageDotsView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/PageDotsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->d:Lcom/my/target/core/ui/views/PageDotsView;

    .line 50
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->e:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->h:Landroid/widget/FrameLayout;

    .line 53
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    .line 54
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    sget v1, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->a:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setId(I)V

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    .line 59
    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    .line 60
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    .line 61
    invoke-virtual {v4, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->e:Lcom/my/target/core/ui/views/controls/IconButton;

    sget v1, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->c:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setId(I)V

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->d:Lcom/my/target/core/ui/views/PageDotsView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/PageDotsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->d:Lcom/my/target/core/ui/views/PageDotsView;

    sget v1, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->b:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/PageDotsView;->setId(I)V

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    const/4 v1, 0x2

    sget v2, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 89
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->d:Lcom/my/target/core/ui/views/PageDotsView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->addView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->e:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->addView(Landroid/view/View;)V

    .line 101
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->d:Lcom/my/target/core/ui/views/PageDotsView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/PageDotsView;->a(I)V

    .line 124
    return-void
.end method

.method public final a(Lcom/my/target/core/models/sections/e;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/sections/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->e:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 115
    :goto_0
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->d:Lcom/my/target/core/ui/views/PageDotsView;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->l()I

    move-result v2

    .line 117
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->i()I

    move-result v3

    .line 116
    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/ui/views/PageDotsView;->a(III)V

    .line 118
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->j()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setBanners(Ljava/util/ArrayList;I)V

    .line 119
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->g:Lcom/my/target/core/utils/l;

    const/16 v1, 0x24

    .line 111
    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/my/target/core/resources/a;->d(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->e:Lcom/my/target/core/ui/views/controls/IconButton;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->e:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public setFSSliderCardListener(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->f:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setFsSliderCardListener(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;)V

    .line 43
    return-void
.end method
