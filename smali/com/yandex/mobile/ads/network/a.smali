.class public Lcom/yandex/mobile/ads/network/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/al;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/al;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;Lcom/yandex/mobile/ads/network/a$a;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/al;",
            "Lcom/yandex/mobile/ads/network/a$a",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 59
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-interface {p2, v4}, Lcom/yandex/mobile/ads/network/a$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static b(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/al;",
            ")I"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/al;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/al;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/yandex/mobile/ads/network/a$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/network/a$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;Lcom/yandex/mobile/ads/network/a$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
