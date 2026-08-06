.class public Lcom/yandex/mobile/ads/network/request/a;
.super Lcom/yandex/mobile/ads/network/request/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/network/request/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/e;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<",
            "Lcom/yandex/mobile/ads/n",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/network/request/b;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/e;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected b(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/request/a;->d(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/request/a;->b(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
