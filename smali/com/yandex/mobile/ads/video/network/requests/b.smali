.class public Lcom/yandex/mobile/ads/video/network/requests/b;
.super Lcom/yandex/mobile/ads/network/request/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/network/request/c",
        "<",
        "Ljava/lang/Void;",
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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/mobile/ads/network/request/c;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/yandex/mobile/ads/network/core/h;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/s;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    return-object v0
.end method
