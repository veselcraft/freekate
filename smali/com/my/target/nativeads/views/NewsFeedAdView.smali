.class public Lcom/my/target/nativeads/views/NewsFeedAdView;
.super Landroid/widget/RelativeLayout;
.source "NewsFeedAdView.java"


# static fields
.field protected static final AD_ID:I

.field protected static final AGE_ID:I

.field protected static final COLOR_PLACEHOLDER_GRAY:I = -0x111112

.field protected static final CTA_ID:I

.field protected static final ICON_ID:I

.field protected static final LABELS_ID:I

.field protected static final RATING_ID:I

.field private static final STANDARD_BLUE:I = -0xff912c

.field private static final STANDARD_GREY:I = -0x666667

.field protected static final STARS_ID:I

.field protected static final TITLE_2_ID:I

.field protected static final TITLE_ID:I

.field protected static final URL_ID:I

.field protected static final VOTES_ID:I


# instance fields
.field protected final advertisingLabel:Landroid/widget/TextView;

.field protected advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

.field protected ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

.field protected final ctaButton:Landroid/widget/Button;

.field protected ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final disclaimerLabel:Landroid/widget/TextView;

.field protected disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

.field protected final labelsLayout:Landroid/widget/LinearLayout;

.field protected labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final ratingLayout:Landroid/widget/LinearLayout;

.field protected ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected starsParams:Landroid/widget/LinearLayout$LayoutParams;

.field protected final starsView:Lcom/my/target/nativeads/views/StarsRatingView;

.field protected final titleLabel:Landroid/widget/TextView;

.field protected titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final uiUtils:Lcom/my/target/core/utils/l;

.field protected final urlLabel:Landroid/widget/TextView;

.field protected urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected final votesLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->AGE_ID:I

    .line 60
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ICON_ID:I

    .line 61
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->LABELS_ID:I

    .line 62
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->TITLE_ID:I

    .line 63
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->URL_ID:I

    .line 64
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->AD_ID:I

    .line 65
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->TITLE_2_ID:I

    .line 66
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->CTA_ID:I

    .line 67
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->STARS_ID:I

    .line 68
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->VOTES_ID:I

    .line 69
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/NewsFeedAdView;->RATING_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    .line 88
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    .line 90
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    .line 92
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    .line 93
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 94
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    .line 95
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    .line 96
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    .line 98
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 100
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->initView()V

    .line 101
    return-void
.end method

.method private updateDefaultParams()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v3, 0x2

    const v2, -0x666667

    .line 228
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v5, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 230
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 232
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 239
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 245
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 248
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    const v1, -0xff912c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 249
    return-void
.end method


# virtual methods
.method public getAdvertisingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAgeRestrictionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method public getCtaButtonView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getDisclaimerTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDomainOrCategoryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getStarsRatingView()Lcom/my/target/nativeads/views/StarsRatingView;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVotesTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 105
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v0, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 106
    invoke-virtual {v1, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 107
    invoke-virtual {v2, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 108
    invoke-virtual {v3, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    .line 105
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/my/target/nativeads/views/NewsFeedAdView;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->AGE_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 112
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v5, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 113
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 116
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 117
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->AD_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->AGE_ID:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->ICON_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setId(I)V

    .line 127
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0x36

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->AD_ID:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->LABELS_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 134
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 135
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 136
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->AD_ID:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->ICON_ID:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 140
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 142
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->TITLE_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 145
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->URL_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 153
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->RATING_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 156
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->TITLE_2_ID:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->STARS_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 164
    invoke-virtual {v2, v8}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 166
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->VOTES_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 170
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 172
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->RATING_ID:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->CTA_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 176
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 177
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 178
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/NewsFeedAdView;->LABELS_ID:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 182
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const v0, -0x3a1508

    invoke-static {p0, v6, v0}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 186
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 189
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const v2, -0xff912c

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 190
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 192
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 195
    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    const v3, -0xff912c

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 196
    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 198
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 199
    new-array v3, v5, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 201
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/my/target/nativeads/views/NewsFeedAdView;->setClickable(Z)V

    .line 208
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    invoke-direct {p0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->updateDefaultParams()V

    .line 224
    return-void

    .line 186
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 192
    :array_1
    .array-data 4
        -0x3a1508
        -0x3a1508
    .end array-data
.end method

.method public loadImages()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 445
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 299
    iput-object p1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    .line 300
    const-string v0, "Setup banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 301
    const-string v0, "web"

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 355
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->titleLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAdvertisingLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 370
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_2
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDisclaimer()Ljava/lang/String;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 381
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 384
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 389
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 391
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 392
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 395
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 396
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 436
    :cond_2
    :goto_3
    return-void

    .line 307
    :cond_3
    const-string v0, "store"

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getSubcategory()Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v0, ""

    .line 313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_6
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getVotes()I

    move-result v1

    if-lez v1, :cond_7

    .line 330
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 334
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 337
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->votesLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getVotes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 342
    :cond_7
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    const v1, -0x111112

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setBackgroundColor(I)V

    .line 359
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setPlaceholderWidth(I)V

    .line 360
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setPlaceholderHeight(I)V

    goto/16 :goto_1

    .line 374
    :cond_9
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v6}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    const-string v0, "web"

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 414
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 415
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 419
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 420
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 421
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 422
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 427
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 430
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->ctaButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v1, p0, Lcom/my/target/nativeads/views/NewsFeedAdView;->labelsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_3
.end method
