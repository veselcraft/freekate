.class Lcom/yandex/mobile/ads/nativeads/af;
.super Lcom/yandex/mobile/ads/nativeads/l;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/ag;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/nativeads/j;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            "Lcom/yandex/mobile/ads/nativeads/d",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/nativeads/l;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/d;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "body"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "call_to_action"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "rating"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "sponsored"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method public bindAppInstallAd(Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;)V
    .locals 2
    .param p1, "appInstallAdView"    # Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/NativeAdException;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ah;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/af;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/nativeads/ah;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;Lcom/yandex/mobile/ads/nativeads/f;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/af;->a(Lcom/yandex/mobile/ads/nativeads/ac;)V

    .line 57
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->a(Lcom/yandex/mobile/ads/nativeads/ao;)V

    .line 59
    :cond_0
    return-void
.end method
