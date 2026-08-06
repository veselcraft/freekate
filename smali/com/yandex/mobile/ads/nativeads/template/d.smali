.class public Lcom/yandex/mobile/ads/nativeads/template/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private final d:Ljava/lang/Float;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;Lcom/yandex/mobile/ads/nativeads/NativeAdType;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 31
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getRating()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->d:Ljava/lang/Float;

    .line 32
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getReviewCount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->e:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getWarning()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->f:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    .line 36
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_1

    const-string v0, "large"

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 40
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wide"

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->c:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 41
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a()Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    if-eq v0, v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->i()Z

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

.method c()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->d:Ljava/lang/Float;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->a()Z

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

.method e()Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->c()Z

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

.method f()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->b()Z

    move-result v0

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/template/d;->i()Z

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

.method public h()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
