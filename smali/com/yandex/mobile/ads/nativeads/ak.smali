.class Lcom/yandex/mobile/ads/nativeads/ak;
.super Lcom/yandex/mobile/ads/nativeads/l;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/al;


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
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/nativeads/l;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/d;)V

    .line 30
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
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    const-string v1, "body"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "sponsored"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

.method public bindContentAd(Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;)V
    .locals 2
    .param p1, "contentAdView"    # Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/NativeAdException;
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/am;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ak;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/nativeads/am;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;Lcom/yandex/mobile/ads/nativeads/f;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/ak;->a(Lcom/yandex/mobile/ads/nativeads/ac;)V

    .line 54
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->a(Lcom/yandex/mobile/ads/nativeads/ao;)V

    .line 56
    :cond_0
    return-void
.end method
