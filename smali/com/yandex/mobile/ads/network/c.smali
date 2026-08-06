.class public Lcom/yandex/mobile/ads/network/c;
.super Lcom/yandex/mobile/ads/network/core/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const/16 v0, 0x15

    .line 29
    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/yandex/mobile/ads/network/e;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 28
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/network/core/j;-><init>(Lcom/yandex/mobile/ads/network/core/j$a;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 32
    return-void

    :cond_0
    move-object v0, v1

    .line 30
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/q;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/al;->o:Lcom/yandex/mobile/ads/al;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/al;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yandex/mobile/ads/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-super {p0, p1, v0}, Lcom/yandex/mobile/ads/network/core/j;->a(Lcom/yandex/mobile/ads/network/core/q;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
