.class public abstract Lcom/yandex/mobile/ads/video/network/requests/c;
.super Lcom/yandex/mobile/ads/network/request/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/network/request/f",
        "<TR;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<TT;>;",
            "Landroid/content/Context;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/network/request/f;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<TT;>;",
            "Landroid/content/Context;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/video/network/requests/c;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/network/core/o;I)Lcom/yandex/mobile/ads/network/core/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            "I)",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    iget-object v2, p1, Lcom/yandex/mobile/ads/network/core/o;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/yandex/mobile/ads/network/core/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 60
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/video/network/requests/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/video/network/requests/c;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v0

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/video/network/requests/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/network/core/s;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/yandex/mobile/ads/video/network/b;

    invoke-direct {v0, p2, p1}, Lcom/yandex/mobile/ads/video/network/b;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/s;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
