.class public final Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

.field private b:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private c:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private d:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

.field private i:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

.field private j:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

.field private k:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

.field private l:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v7, -0x1000000

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setBackgroundColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v7, v1}, Lcom/yandex/mobile/ads/utils/k;->a(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setBorderColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setBorderWidth(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-direct {v1, v3, v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setContentPadding(Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setImageMargins(Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->a:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->b:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setNormalColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->c:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setPressedColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    invoke-virtual {v1, v7}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setTextAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    sget-object v2, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;->PREFERRED_RATIO:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;-><init>(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;F)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;->setWidthConstraint(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;

    sget-object v2, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;->FIXED:Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;-><init>(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint$SizeConstraintType;F)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;->setWidthConstraint(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;-><init>()V

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->setBackgroundStarColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    move-result-object v0

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->d:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->setProgressStarColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->a:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->c:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->a:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->d:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->a:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->a:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;->a:I

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setTextSize(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontFamilyName(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->setFontStyle(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->a:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->c:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->d:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic e(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic f(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic g(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic h(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    return-object v0
.end method

.method static synthetic i(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    return-object v0
.end method

.method static synthetic j(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    return-object v0
.end method

.method static synthetic k(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    return-object v0
.end method

.method static synthetic l(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;-><init>(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;B)V

    return-object v0
.end method

.method public withAgeAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "ageAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->b:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 229
    return-object p0
.end method

.method public withBannerAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 7
    .param p1, "bannerAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v5, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->a:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    if-eqz p1, :cond_0

    invoke-virtual {v5, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->a:Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    .line 242
    return-object p0

    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBorderColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBorderWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getImageMargins()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v4

    new-instance v6, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;-><init>()V

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v6, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setBackgroundColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v6

    if-eqz v1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setBorderColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v1

    cmpl-float v0, v2, v3

    if-ltz v0, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setBorderWidth(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getContentPadding()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    :goto_4
    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setContentPadding(Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v1

    if-eqz v4, :cond_9

    move-object v0, v4

    :goto_5
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->setImageMargins(Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBackgroundColor()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBorderColor()I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getBorderWidth()F

    move-result v0

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_8

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getLeft()F

    move-result v0

    :goto_6
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v6

    cmpl-float v6, v6, v3

    if-ltz v6, :cond_7

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;->getRight()F

    move-result v3

    :cond_7
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    invoke-direct {v1, v0, v3}, Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;-><init>(FF)V

    move-object v0, v1

    goto :goto_4

    :cond_8
    move v0, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;->getImageMargins()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;

    move-result-object v0

    goto :goto_5
.end method

.method public withBodyAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "bodyAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->c:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->c:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 255
    return-object p0
.end method

.method public withCallToActionAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 7
    .param p1, "callToActionAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    .prologue
    .line 267
    iget-object v4, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    if-eqz p1, :cond_0

    invoke-virtual {v4, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->k:Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    .line 268
    return-object p0

    .line 267
    :cond_1
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getTextAppearance()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getBorderColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getBorderWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getNormalColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getPressedColor()I

    move-result v3

    new-instance v6, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setTextAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v5

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v5, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setBorderColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v5

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setBorderWidth(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v1

    if-eqz v2, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setNormalColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v1

    if-eqz v3, :cond_5

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->setPressedColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getBorderColor()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getBorderWidth()F

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getNormalColor()I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;->getPressedColor()I

    move-result v0

    goto :goto_4
.end method

.method public withDomainAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "domainAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->d:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->d:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 281
    return-object p0
.end method

.method public withFaviconAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "faviconAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->j:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 294
    return-object p0
.end method

.method public withImageAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "imageAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->i:Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;

    .line 309
    return-object p0
.end method

.method public withRatingAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 4
    .param p1, "ratingAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    .prologue
    .line 321
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->l:Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    .line 322
    return-object p0

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getBackgroundStarColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getProgressStarColor()I

    move-result v1

    new-instance v3, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;-><init>()V

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->setBackgroundStarColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    move-result-object v3

    if-eqz v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->setProgressStarColor(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;->build()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getBackgroundStarColor()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;->getProgressStarColor()I

    move-result v0

    goto :goto_2
.end method

.method public withReviewCountAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "reviewCountAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->e:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 335
    return-object p0
.end method

.method public withSponsoredAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "sponsoredAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->f:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 348
    return-object p0
.end method

.method public withTitleAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "titleAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->g:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 361
    return-object p0
.end method

.method public withWarningAppearance(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;
    .locals 1
    .param p1, "warningAppearance"    # Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/nativeads/template/appearance/a;->a(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;->h:Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;

    .line 374
    return-object p0
.end method
