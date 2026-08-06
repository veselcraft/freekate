.class public Lcom/my/target/nativeads/views/ContentWallAdView;
.super Landroid/widget/RelativeLayout;
.source "ContentWallAdView.java"


# static fields
.field protected static final AD_ID:I

.field protected static final AGE_ID:I

.field protected static final IMAGE_ID:I

.field protected static final STARS_ID:I

.field protected static final VOTES_ID:I


# instance fields
.field protected final advertisingLabel:Landroid/widget/TextView;

.field protected advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

.field protected ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

.field protected final mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

.field protected mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected starsParams:Landroid/widget/LinearLayout$LayoutParams;

.field protected final starsView:Lcom/my/target/nativeads/views/StarsRatingView;

.field protected final uiUtils:Lcom/my/target/core/utils/l;

.field protected final votesLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ContentWallAdView;->AGE_ID:I

    .line 24
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ContentWallAdView;->AD_ID:I

    .line 25
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ContentWallAdView;->IMAGE_ID:I

    .line 26
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ContentWallAdView;->STARS_ID:I

    .line 27
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ContentWallAdView;->VOTES_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/my/target/nativeads/views/ContentWallAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/views/ContentWallAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 94
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    .line 95
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getMediaAdView(Landroid/content/Context;)Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 96
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 97
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->votesLabel:Landroid/widget/TextView;

    .line 98
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 99
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/ContentWallAdView;->initView()V

    .line 100
    return-void
.end method


# virtual methods
.method public getAdvertisingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAgeRestrictionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method public getMediaAdView()Lcom/my/target/nativeads/views/MediaAdView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    return-object v0
.end method

.method public initView()V
    .locals 9

    .prologue
    const/16 v4, 0xc

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v0, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 105
    invoke-virtual {v1, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 106
    invoke-virtual {v2, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 107
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    .line 104
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/my/target/nativeads/views/ContentWallAdView;->setPadding(IIII)V

    .line 110
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    sget v1, Lcom/my/target/nativeads/views/ContentWallAdView;->AGE_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 111
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v5, v5, v5}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 115
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v7}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 119
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ContentWallAdView;->AD_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    sget v2, Lcom/my/target/nativeads/views/ContentWallAdView;->AGE_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    sget v1, Lcom/my/target/nativeads/views/ContentWallAdView;->IMAGE_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setId(I)V

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 131
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/MediaAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    sget v1, Lcom/my/target/nativeads/views/ContentWallAdView;->STARS_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 135
    invoke-virtual {v2, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->votesLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ContentWallAdView;->VOTES_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/ContentWallAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 144
    invoke-virtual {v2, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 145
    invoke-virtual {v3, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 146
    invoke-virtual {v4, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 143
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    const-string v1, "#55000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 148
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const v1, -0x3a1508

    invoke-static {p0, v5, v1}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/my/target/nativeads/views/ContentWallAdView;->setClickable(Z)V

    .line 156
    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {p0, v1}, Lcom/my/target/nativeads/views/ContentWallAdView;->addView(Landroid/view/View;)V

    .line 158
    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ContentWallAdView;->addView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public loadImages()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 191
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    .line 192
    invoke-interface {v1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    .line 171
    invoke-interface {v2}, Lcom/my/target/nativeads/banners/NativePromoBanner;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 172
    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 173
    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 174
    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    .line 175
    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 178
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/my/target/nativeads/views/ContentWallAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iput-object p1, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    .line 59
    const-string v0, "Setup banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 61
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v1

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAdvertisingLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentWallAdView;->mediaAdView:Lcom/my/target/nativeads/views/MediaAdView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    goto :goto_1
.end method
