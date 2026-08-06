.class public final Lcom/my/target/core/factories/a;
.super Ljava/lang/Object;
.source "BannersFactory.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/core/models/banners/d;
    .locals 2

    .prologue
    .line 25
    const-string v0, "nativeads"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const-string v0, "promo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "teaser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28
    :cond_0
    new-instance v0, Lcom/my/target/core/models/banners/h;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-object v0

    .line 30
    :cond_1
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    const-string v0, "fullscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    :cond_2
    new-instance v0, Lcom/my/target/core/models/banners/f;

    const-string v1, "banner"

    invoke-direct {v0, p0, v1}, Lcom/my/target/core/models/banners/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "promo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35
    new-instance v0, Lcom/my/target/core/models/banners/g;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_4
    const-string v0, "fullscreenslider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    new-instance v0, Lcom/my/target/core/models/banners/f;

    const-string v1, "banner"

    invoke-direct {v0, p0, v1}, Lcom/my/target/core/models/banners/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_5
    const-string v0, "standard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "teaser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    :cond_6
    new-instance v0, Lcom/my/target/core/models/banners/j;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_7
    const-string v0, "showcase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "appwall"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    :cond_8
    const-string v0, "showcase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "teaser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    :cond_9
    new-instance v0, Lcom/my/target/core/models/banners/b;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_a
    const-string v0, "video"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    invoke-static {p0}, Lcom/my/target/core/factories/a;->a(Ljava/lang/String;)Lcom/my/target/core/models/banners/m;

    move-result-object v0

    goto/16 :goto_0

    .line 52
    :cond_b
    const-string v0, "statistics"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    new-instance v0, Lcom/my/target/core/models/banners/l;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_c
    const-string v0, "audio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 57
    invoke-static {p0}, Lcom/my/target/core/factories/a;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/c;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :cond_d
    const-string v0, "statistics"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    new-instance v0, Lcom/my/target/core/models/banners/k;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/models/banners/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/my/target/core/models/banners/m;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/my/target/core/models/banners/m;

    const-string v1, "video"

    invoke-direct {v0, p0, v1}, Lcom/my/target/core/models/banners/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/my/target/core/models/banners/c;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/my/target/core/models/banners/c;

    const-string v1, "audio"

    invoke-direct {v0, p0, v1}, Lcom/my/target/core/models/banners/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/my/target/core/models/banners/e;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/my/target/core/models/banners/e;

    const-string v1, "companion"

    invoke-direct {v0, p0, v1}, Lcom/my/target/core/models/banners/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
