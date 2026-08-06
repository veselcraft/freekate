.class public Lcom/yandex/mobile/ads/network/request/d;
.super Lcom/yandex/mobile/ads/network/request/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/network/request/b",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/t;",
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
            "Lcom/yandex/mobile/ads/nativeads/t;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/network/request/b;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/e;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected b(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/nativeads/t;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/request/d;->d(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/String;

    move-result-object v1

    .line 39
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/aq;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/t;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/yandex/mobile/ads/nativeads/s; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected synthetic c(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/request/d;->b(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v0

    return-object v0
.end method
