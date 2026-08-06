.class public Lcom/yandex/mobile/ads/video/network/requests/a;
.super Lcom/yandex/mobile/ads/video/network/requests/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/video/network/requests/c",
        "<",
        "Lcom/yandex/mobile/ads/video/BlocksInfoRequest;",
        "Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/video/BlocksInfoRequest;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/yandex/mobile/ads/video/network/requests/c;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v1, "partner_id"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "category_id"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->c:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    return-object v1
.end method

.method protected a(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;I)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "partner_id"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "category_id"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 51
    const-string v1, "code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->d:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)Lcom/yandex/mobile/ads/report/b;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/video/network/requests/a;->a(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;I)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/yandex/mobile/ads/video/parser/a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/parser/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/video/parser/a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/video/network/requests/a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Lcom/yandex/mobile/ads/report/b;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/yandex/mobile/ads/video/BlocksInfoRequest;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/video/network/requests/a;->a(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    return-object v0
.end method
