.class public Lcom/yandex/mobile/ads/nativeads/template/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private final b:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private final c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private final d:Lcom/yandex/mobile/ads/nativeads/NativeAdType;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;Lcom/yandex/mobile/ads/nativeads/NativeAdType;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getFavicon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 31
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getIcon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 32
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 34
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    .line 35
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z
    .locals 2

    .prologue
    .line 38
    const-string v0, "large"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wide"

    .line 39
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/template/c;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0

    :cond_2
    move v2, v1

    .line 63
    goto :goto_1
.end method

.method b(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 44
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 46
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    div-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 51
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 53
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/nativeads/template/c;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0

    :cond_1
    move v1, v2

    .line 72
    goto :goto_1
.end method

.method e()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/c;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/template/c;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
