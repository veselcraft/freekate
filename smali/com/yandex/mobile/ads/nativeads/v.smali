.class public Lcom/yandex/mobile/ads/nativeads/v;
.super Lcom/yandex/mobile/ads/nativeads/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;",
            "Lcom/yandex/mobile/ads/nativeads/ae;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/k;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/ae;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/nativeads/aj$b;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/nativeads/aj$b;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 25
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/v;->a:Lcom/yandex/mobile/ads/nativeads/ae;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/ae;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/nativeads/aj$b;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
