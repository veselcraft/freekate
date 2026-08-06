.class public final Lcom/my/target/core/factories/d;
.super Ljava/lang/Object;
.source "FSAdFactory.java"


# direct methods
.method public static a(Lcom/my/target/core/models/c;Landroid/content/Context;)Lcom/my/target/core/facades/c;
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/my/target/core/models/c;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/sections/i;

    .line 28
    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullscreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v0, Lcom/my/target/core/models/sections/d;

    if-eqz v2, :cond_3

    .line 30
    check-cast v0, Lcom/my/target/core/models/sections/d;

    .line 31
    invoke-virtual {v0}, Lcom/my/target/core/models/sections/d;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/a;

    .line 33
    const-string v2, "banner"

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/a;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    new-instance v1, Lcom/my/target/core/facades/d;

    check-cast v0, Lcom/my/target/core/models/banners/f;

    invoke-direct {v1, v0, p0, p1}, Lcom/my/target/core/facades/d;-><init>(Lcom/my/target/core/models/banners/f;Lcom/my/target/core/models/c;Landroid/content/Context;)V

    move-object v0, v1

    .line 54
    :goto_0
    return-object v0

    .line 36
    :cond_2
    const-string v2, "promo"

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/a;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    new-instance v1, Lcom/my/target/core/facades/e;

    check-cast v0, Lcom/my/target/core/models/banners/g;

    invoke-direct {v1, v0, p0, p1}, Lcom/my/target/core/facades/e;-><init>(Lcom/my/target/core/models/banners/g;Lcom/my/target/core/models/c;Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_0

    .line 42
    :cond_3
    invoke-interface {v0}, Lcom/my/target/core/models/sections/i;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullscreenslider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/sections/e;

    if-eqz v2, :cond_0

    .line 45
    check-cast v0, Lcom/my/target/core/models/sections/e;

    .line 46
    new-instance v1, Lcom/my/target/core/facades/f;

    invoke-direct {v1, v0, p0, p1}, Lcom/my/target/core/facades/f;-><init>(Lcom/my/target/core/models/sections/e;Lcom/my/target/core/models/c;Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_0

    .line 54
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
