.class public Lcom/my/target/nativeads/views/AppwallAdTeaserView;
.super Landroid/widget/RelativeLayout;
.source "AppwallAdTeaserView.java"


# instance fields
.field private banner:Lcom/my/target/nativeads/banners/NativeAppwallBanner;

.field private bannerIcon:Lcom/my/target/core/ui/views/CacheImageView;

.field private coinsBgShape:Landroid/graphics/drawable/ShapeDrawable;

.field private coinsCountView:Landroid/widget/TextView;

.field private coinsIconView:Lcom/my/target/core/ui/views/CacheImageView;

.field private coinsLayout:Landroid/widget/LinearLayout;

.field private descrView:Landroid/widget/TextView;

.field private notificationView:Lcom/my/target/core/ui/views/CacheImageView;

.field private openImageView:Lcom/my/target/core/ui/views/CacheImageView;

.field private starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

.field private statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

.field private textColor:I

.field private titleView:Landroid/widget/TextView;

.field private viewed:Z

.field private votesCountView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/16 v0, 0x24

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->textColor:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->viewed:Z

    .line 45
    invoke-direct {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->initView()V

    .line 46
    return-void
.end method

.method private getPx(I)I
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private initView()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, -0x2

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 53
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v0

    .line 55
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    .line 57
    const/16 v2, 0x35

    invoke-direct {p0, v2}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v2

    .line 63
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 66
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v10, [I

    fill-array-data v5, :array_1

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 75
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setBackgroundColor(I)V

    .line 77
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v4, v2, v1

    add-int/2addr v4, v1

    add-int v5, v2, v0

    add-int/2addr v5, v0

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    new-instance v4, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->bannerIcon:Lcom/my/target/core/ui/views/CacheImageView;

    .line 80
    iget-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->bannerIcon:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v4, v1, v0, v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setPadding(IIII)V

    .line 81
    iget-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->bannerIcon:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v4, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v3

    .line 84
    new-instance v4, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 86
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v3, 0x39

    invoke-direct {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 88
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 89
    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v3, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;)V

    .line 92
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v3

    .line 93
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v6, 0x8

    new-array v6, v6, [F

    int-to-float v7, v3

    aput v7, v6, v9

    int-to-float v7, v3

    aput v7, v6, v11

    int-to-float v7, v3

    aput v7, v6, v10

    int-to-float v7, v3

    aput v7, v6, v13

    const/4 v7, 0x4

    int-to-float v8, v3

    aput v8, v6, v7

    const/4 v7, 0x5

    int-to-float v8, v3

    aput v8, v6, v7

    const/4 v7, 0x6

    int-to-float v8, v3

    aput v8, v6, v7

    const/4 v7, 0x7

    int-to-float v3, v3

    aput v3, v6, v7

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsBgShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 95
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 98
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsBgShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v3

    invoke-direct {p0, v10}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v4

    invoke-virtual {v1, v9, v3, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    new-instance v1, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsIconView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 115
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsIconView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    invoke-direct {v0, v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 123
    new-instance v1, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 124
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    new-instance v1, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 130
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    invoke-virtual {v0, v9, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setId(I)V

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 142
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 143
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 145
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;)V

    .line 148
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    iget v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 155
    invoke-virtual {v0, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setId(I)V

    .line 158
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;)V

    .line 161
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    invoke-virtual {v0, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 164
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    new-instance v1, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 167
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v2

    invoke-virtual {v1, v9, v9, v9, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setPadding(IIII)V

    .line 168
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {p0, v10}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/my/target/nativeads/views/StarsRatingView;->setStarsPadding(F)V

    .line 169
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v1, v10}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 170
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {v0, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 174
    invoke-virtual {v0, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 177
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    invoke-direct {p0, v10}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v2

    invoke-virtual {v1, v9, v2, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    iget v2, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        -0x1
        -0x101011
    .end array-data

    .line 66
    :array_1
    .array-data 4
        -0x1d0b05
        -0x3a1508
    .end array-data
.end method


# virtual methods
.method public getBanner()Lcom/my/target/nativeads/banners/NativeAppwallBanner;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->banner:Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    return-object v0
.end method

.method public getBannerIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->bannerIcon:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getCoinsCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCoinsIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsIconView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNotificationImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getOpenImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getStarsRatingView()Lcom/my/target/nativeads/views/StarsRatingView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    return-object v0
.end method

.method public getStatusIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVotesCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isViewed()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->viewed:Z

    return v0
.end method

.method protected removeNotification()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->removeView(Landroid/view/View;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setNativeAppwallBanner(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 188
    iput-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->banner:Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    .line 190
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->bannerIcon:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 191
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getBubbleIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 193
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->isHasNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getBubbleIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 209
    :goto_0
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoins()I

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsIconView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoinsIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 214
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoins()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsCountView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoinsIconTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsBgShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoinsIconBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 232
    :goto_1
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getStatusIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getStatusIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    .line 243
    :goto_2
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getCoins()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->isAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    const/16 v1, 0x46

    invoke-direct {p0, v1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    :cond_1
    :goto_3
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 254
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getVotes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :goto_4
    return-void

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->notificationView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 219
    :cond_3
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->isAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getGotoAppIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setImageData(Lcom/my/target/nativeads/models/ImageData;)V

    goto :goto_1

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->coinsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->openImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    goto :goto_1

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->statusIconView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    goto :goto_2

    .line 245
    :cond_6
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getStatusIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->starsRatingView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v4}, Lcom/my/target/nativeads/views/StarsRatingView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->votesCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->descrView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-direct {p0, v5}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4
.end method

.method public setViewed(Z)V
    .locals 0

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->viewed:Z

    .line 291
    return-void
.end method
