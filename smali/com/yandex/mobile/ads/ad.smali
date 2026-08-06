.class Lcom/yandex/mobile/ads/ad;
.super Lcom/yandex/mobile/ads/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/ac;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/u;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/t;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/yandex/mobile/ads/t;)Lcom/yandex/mobile/ads/aj;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/ad;->c(Lcom/yandex/mobile/ads/t;)Lcom/yandex/mobile/ads/ah;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/yandex/mobile/ads/t;)Lcom/yandex/mobile/ads/ah;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/u;->b(Lcom/yandex/mobile/ads/t;)Lcom/yandex/mobile/ads/aj;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/ah;

    .line 24
    check-cast p1, Lcom/yandex/mobile/ads/ac;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/am;)V

    .line 25
    return-object v0
.end method
