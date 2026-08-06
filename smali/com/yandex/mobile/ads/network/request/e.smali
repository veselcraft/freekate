.class public Lcom/yandex/mobile/ads/network/request/e;
.super Lcom/yandex/mobile/ads/network/request/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/network/request/c",
        "<",
        "Lcom/yandex/mobile/ads/network/core/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/mobile/ads/network/request/c;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p1}, Lcom/yandex/mobile/ads/network/core/h;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/s;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    return-object v0
.end method
