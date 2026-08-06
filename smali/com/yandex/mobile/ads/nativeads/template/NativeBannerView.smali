.class public final Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;
.super Lcom/yandex/mobile/ads/nativeads/NativeAdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/NativeAdView",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/ao;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private A:Lcom/yandex/mobile/ads/nativeads/template/c;

.field private B:Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;

.field private final C:Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

.field private b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/yandex/mobile/ads/nativeads/template/f;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/yandex/mobile/ads/nativeads/template/e;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/LinearLayout;

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

.field private y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

.field private z:Lcom/yandex/mobile/ads/nativeads/template/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "#eaeaea"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    .line 119
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    .line 120
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->r:I

    .line 235
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;-><init>(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->C:Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .line 144
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    .line 119
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    .line 120
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->r:I

    .line 235
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;-><init>(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->C:Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .line 156
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    .line 119
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    .line 120
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->r:I

    .line 235
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;-><init>(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->C:Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .line 171
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m()V

    .line 172
    return-void
.end method

.method static synthetic a(Landroid/graphics/drawable/Drawable;II)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-array v0, v4, [Landroid/animation/PropertyValuesHolder;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v3

    aput p2, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    .line 991
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getWidth()I

    move-result v0

    .line 992
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getHeight()I

    move-result v1

    .line 994
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    .line 995
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getImageAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->getWidthConstraint()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;)Lcom/yandex/mobile/ads/nativeads/template/a;

    move-result-object v2

    .line 997
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a;->a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/nativeads/template/a$d;

    move-result-object v0

    .line 999
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1000
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1001
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1003
    return-object v1
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static a(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;)Lcom/yandex/mobile/ads/nativeads/template/a;
    .locals 2

    .prologue
    .line 610
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$2;->a:[I

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->getSizeConstraintType()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 621
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/a$c;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->getValue()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$c;-><init>(F)V

    .line 625
    :goto_0
    return-object v0

    .line 612
    :pswitch_0
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/a$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->getValue()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$a;-><init>(F)V

    goto :goto_0

    .line 615
    :pswitch_1
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/a$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->getValue()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$b;-><init>(F)V

    goto :goto_0

    .line 618
    :pswitch_2
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/a$c;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;->getValue()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/a$c;-><init>(F)V

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 812
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 813
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    return-void
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 225
    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget v0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method private m()V
    .locals 13

    .prologue
    const/16 v5, 0x11

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 272
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    .line 274
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    .line 275
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 277
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v10, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/template/f;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/f;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/f;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v11}, Lcom/yandex/mobile/ads/nativeads/template/f;->setMaxLines(I)V

    invoke-virtual {v2, v5}, Lcom/yandex/mobile/ads/nativeads/template/f;->setGravity(I)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v10, v10, v3}, Lcom/yandex/mobile/ads/nativeads/template/f;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h:Lcom/yandex/mobile/ads/nativeads/template/f;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h:Lcom/yandex/mobile/ads/nativeads/template/f;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    const v4, 0x800005

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    .line 278
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/e;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x101007d

    invoke-direct {v0, v5, v6, v7}, Lcom/yandex/mobile/ads/nativeads/template/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/e;->setNumStars(I)V

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/e;->setStepSize(F)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->l:Lcom/yandex/mobile/ads/nativeads/template/e;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->l:Lcom/yandex/mobile/ads/nativeads/template/e;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v0, v6, :cond_0

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x101032b

    invoke-direct {v0, v6, v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_0
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setMaxLines(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setMinimumHeight(I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setMinHeight(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    .line 279
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->w:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->w:Landroid/widget/LinearLayout;

    .line 280
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iput-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    .line 282
    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o()V

    .line 291
    return-void

    .line 278
    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private n()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 536
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 537
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 538
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 540
    return-object v0
.end method

.method private o()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 599
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBorderWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBorderColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v2

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    iget v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v2

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v2

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    iget v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    iget v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 600
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getPressedColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getNormalColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v7, [I

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getBorderWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getCallToActionAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getBorderColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v7

    aput-object v2, v0, v8

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->l:Lcom/yandex/mobile/ads/nativeads/template/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/e;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getRatingAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getProgressStarColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getRatingAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getBackgroundStarColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getRatingAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getBackgroundStarColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 602
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getAgeAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getAgeAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getAgeAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getAgeAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBodyAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBodyAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBodyAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBodyAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getDomainAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getDomainAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getDomainAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getDomainAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getReviewCountAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getReviewCountAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getReviewCountAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getReviewCountAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h:Lcom/yandex/mobile/ads/nativeads/template/f;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getSponsoredAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getSponsoredAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/f;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h:Lcom/yandex/mobile/ads/nativeads/template/f;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getSponsoredAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/f;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h:Lcom/yandex/mobile/ads/nativeads/template/f;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getSponsoredAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/yandex/mobile/ads/nativeads/template/f;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getTitleAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getTitleAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getTitleAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getTitleAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getWarningAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontFamilyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getWarningAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getFontStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getWarningAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getWarningAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 604
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->invalidate()V

    .line 605
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->requestLayout()V

    .line 606
    return-void

    .line 599
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public applyAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;)V
    .locals 1
    .param p1, "templateAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    .line 183
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o()V

    .line 185
    :cond_0
    return-void
.end method

.method b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method c()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    return-object v0
.end method

.method d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method e()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    .line 1057
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->A:Lcom/yandex/mobile/ads/nativeads/template/c;

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v1

    .line 1059
    if-eqz v1, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->A:Lcom/yandex/mobile/ads/nativeads/template/c;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/nativeads/template/c;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->v:Landroid/widget/ImageView;

    .line 1066
    :cond_0
    return-object v0
.end method

.method f()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->h:Lcom/yandex/mobile/ads/nativeads/template/f;

    return-object v0
.end method

.method g()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method h()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method i()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method j()Landroid/view/View;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->l:Lcom/yandex/mobile/ads/nativeads/template/e;

    return-object v0
.end method

.method k()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method l()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 836
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->A:Lcom/yandex/mobile/ads/nativeads/template/c;

    if-eqz v0, :cond_5

    .line 837
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 838
    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->A:Lcom/yandex/mobile/ads/nativeads/template/c;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v3

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/c;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    sub-int v1, v2, v1

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getImageMargins()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v3

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v5

    invoke-static {v3, v5}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getImageMargins()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v5

    invoke-static {v0, v5}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/c;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getFavicon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getHeight()I

    move-result v0

    iget-object v7, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getFaviconAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;->getWidthConstraint()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    move-result-object v7

    invoke-static {v7}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;)Lcom/yandex/mobile/ads/nativeads/template/a;

    move-result-object v7

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v6, v0}, Lcom/yandex/mobile/ads/nativeads/template/a;->a(Landroid/content/Context;III)Lcom/yandex/mobile/ads/nativeads/template/a$d;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v0, v7}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/nativeads/template/a$d;->a()I

    move-result v8

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/nativeads/template/a$d;->b()I

    move-result v6

    invoke-direct {v0, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object v6, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/c;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getIcon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3, v5}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    :cond_1
    iget-object v6, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/c;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3, v5}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v9}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(I)V

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/c;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getWidth()I

    move-result v3

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getHeight()I

    move-result v1

    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/nativeads/template/c;->c(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v6, v0

    int-to-float v1, v1

    div-float v1, v6, v1

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/nativeads/template/c;->b(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z

    move-result v3

    if-nez v3, :cond_3

    int-to-float v0, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x1

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object v0, v3

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/d;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/d;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/d;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->r:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_2
    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->getBannerAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v3

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v9, v1, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/d;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    :goto_5
    int-to-float v0, v2

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMinWidth(I)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 842
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/d;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/d;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->onMeasure(II)V

    .line 846
    return-void

    .line 838
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_d

    int-to-float v0, v2

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v2

    goto/16 :goto_1

    .line 840
    :cond_8
    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->p:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->q:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    invoke-interface {v0, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->u:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 842
    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    const/high16 v2, 0x42b80000    # 92.0f

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/utils/k;->a(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_6

    :cond_d
    move v0, v1

    move v1, v3

    goto/16 :goto_1
.end method

.method public setAd(Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;)V
    .locals 4
    .param p1, "nativeAd"    # Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->B:Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;

    if-eq v1, p1, :cond_1

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->B:Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->B:Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->C:Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;->removeImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->C:Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    invoke-interface {p1, v1}, Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;->addImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V

    .line 200
    invoke-interface {p1}, Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;->getAdType()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->x:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    .line 201
    invoke-interface {p1}, Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;->getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    .line 202
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/d;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->x:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/d;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;Lcom/yandex/mobile/ads/nativeads/NativeAdType;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->z:Lcom/yandex/mobile/ads/nativeads/template/d;

    .line 203
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/c;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->y:Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->x:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/c;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;Lcom/yandex/mobile/ads/nativeads/NativeAdType;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->A:Lcom/yandex/mobile/ads/nativeads/template/c;

    .line 205
    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/r;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/yandex/mobile/ads/nativeads/r;->a(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)V

    .line 206
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->o:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->n:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->k:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->g:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->v:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Landroid/widget/ImageView;)V

    .line 210
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->B:Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;
    :try_end_0
    .catch Lcom/yandex/mobile/ads/nativeads/NativeAdException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
