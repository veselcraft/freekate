.class Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a:Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 247
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 250
    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Landroid/graphics/drawable/Drawable;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 253
    invoke-static {v1, v4, v3}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Landroid/graphics/drawable/Drawable;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishLoadingImages()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a:Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a(Landroid/widget/ImageView;)V

    .line 239
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a:Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->b(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a(Landroid/widget/ImageView;)V

    .line 240
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a:Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->c(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a(Landroid/widget/ImageView;)V

    .line 241
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a:Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->d(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView$1;->a(Landroid/widget/ImageView;)V

    .line 242
    return-void
.end method
