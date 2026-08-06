.class public Lcom/my/target/nativeads/views/ChatListAdView;
.super Landroid/widget/RelativeLayout;
.source "ChatListAdView.java"


# static fields
.field protected static final AD_ID:I

.field protected static final AGE_ID:I

.field protected static final COLOR_PLACEHOLDER_GRAY:I = -0x111112

.field protected static final DESC_ID:I

.field protected static final ICON_ID:I

.field protected static final LABELS_ID:I

.field private static final LETTERS_GREY:I = -0x666667

.field protected static final RATING_ID:I

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

.field protected final descriptionLabel:Landroid/widget/TextView;

.field protected descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

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
    .line 33
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->AGE_ID:I

    .line 34
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->ICON_ID:I

    .line 35
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->LABELS_ID:I

    .line 36
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->TITLE_ID:I

    .line 37
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->URL_ID:I

    .line 38
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->DESC_ID:I

    .line 39
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->AD_ID:I

    .line 40
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->TITLE_2_ID:I

    .line 41
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->STARS_ID:I

    .line 42
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->VOTES_ID:I

    .line 43
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/nativeads/views/ChatListAdView;->RATING_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/my/target/nativeads/views/ChatListAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/views/ChatListAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 213
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    .line 214
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    .line 215
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    .line 216
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    .line 217
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    .line 218
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    .line 219
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    .line 220
    new-instance v0, Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-direct {v0, p1}, Lcom/my/target/nativeads/views/StarsRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    .line 221
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    .line 222
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    .line 224
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    .line 226
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/ChatListAdView;->initView()V

    .line 227
    return-void
.end method


# virtual methods
.method public getAdvertisingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAgeRestrictionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    return-object v0
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDisclaimerTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDomainOrCategoryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    return-object v0
.end method

.method public getStarsRatingView()Lcom/my/target/nativeads/views/StarsRatingView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVotesTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView()V
    .locals 10

    .prologue
    const v9, -0x666667

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 231
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0xc

    .line 232
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc

    .line 233
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v4, 0xc

    .line 234
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    .line 231
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/my/target/nativeads/views/ChatListAdView;->setPadding(IIII)V

    .line 237
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->AGE_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setId(I)V

    .line 238
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v6, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 239
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v8, v8, v8}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 240
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 243
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v9}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v6, v9}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 247
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v8}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 249
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->AD_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 250
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->AGE_ID:I

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 253
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 255
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->ICON_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setId(I)V

    .line 259
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0x36

    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    sget v2, Lcom/my/target/nativeads/views/ChatListAdView;->AD_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 261
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->LABELS_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 266
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 267
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 268
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 270
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    sget v2, Lcom/my/target/nativeads/views/ChatListAdView;->AD_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->ICON_ID:I

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 272
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 273
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 274
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->TITLE_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 277
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 279
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 284
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->URL_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 285
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 287
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 288
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->DESC_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 293
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 295
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 296
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabelParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->RATING_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 301
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    sget v2, Lcom/my/target/nativeads/views/ChatListAdView;->TITLE_2_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->STARS_ID:I

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setId(I)V

    .line 308
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v3, 0xc

    .line 309
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 311
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    sget v1, Lcom/my/target/nativeads/views/ChatListAdView;->VOTES_ID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 314
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 317
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 319
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    sget v2, Lcom/my/target/nativeads/views/ChatListAdView;->RATING_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 320
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 324
    const v0, -0x3a1508

    invoke-static {p0, v8, v0}, Lcom/my/target/core/utils/l;->a(Landroid/view/View;II)V

    .line 326
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 329
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 330
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 332
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 335
    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    const v3, -0x333334

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 336
    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->uiUtils:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 338
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 339
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v8

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 341
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-virtual {p0, v6}, Lcom/my/target/nativeads/views/ChatListAdView;->setClickable(Z)V

    .line 346
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ChatListAdView;->addView(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ChatListAdView;->addView(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ChatListAdView;->addView(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ChatListAdView;->addView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ChatListAdView;->addView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/ChatListAdView;->addView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    return-void

    .line 326
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 332
    :array_1
    .array-data 4
        -0x3a1508
        -0x3a1508
    .end array-data
.end method

.method public loadImages()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 369
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 115
    iput-object p1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->banner:Lcom/my/target/nativeads/banners/NativePromoBanner;

    .line 116
    const-string v0, "Setup banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 118
    const-string v0, "web"

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 165
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->titleLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->descriptionLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->advertisingLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAdvertisingLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 177
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_2
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getDisclaimer()Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 187
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/my/target/nativeads/views/ChatListAdView;->removeView(Landroid/view/View;)V

    .line 188
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_3
    return-void

    .line 123
    :cond_1
    const-string v0, "store"

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getNavigationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getSubcategory()Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v0, ""

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_4
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getVotes()I

    move-result v1

    if-lez v1, :cond_5

    .line 146
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->labelsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 150
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->starsView:Lcom/my/target/nativeads/views/StarsRatingView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/StarsRatingView;->setRating(F)V

    .line 153
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->votesLabel:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getVotes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 157
    :cond_5
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/my/target/nativeads/views/ChatListAdView;->urlLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ratingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    const v1, -0x111112

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setBackgroundColor(I)V

    .line 169
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setPlaceholderWidth(I)V

    .line 170
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->iconImageView:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoBanner;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setPlaceholderHeight(I)V

    goto/16 :goto_1

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->ageRestrictionLabel:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/BorderedTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 195
    :cond_8
    iget-object v0, p0, Lcom/my/target/nativeads/views/ChatListAdView;->disclaimerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
