.class public final Lcom/my/target/core/factories/c;
.super Ljava/lang/Object;
.source "EnginesFactory.java"


# direct methods
.method public static a(Lcom/my/target/core/facades/g;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/my/target/core/engines/b;
    .locals 3

    .prologue
    .line 28
    instance-of v0, p0, Lcom/my/target/nativeads/NativeAppwallAd;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/my/target/core/engines/c;

    check-cast p0, Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/c;-><init>(Lcom/my/target/nativeads/NativeAppwallAd;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 57
    :goto_0
    return-object v0

    .line 29
    :cond_0
    instance-of v0, p0, Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 31
    check-cast v0, Lcom/my/target/core/facades/h;

    .line 32
    const-string v1, "native"

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->j()Lcom/my/target/core/models/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/models/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 35
    const-string v0, "standard_300x250"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/my/target/core/engines/g;

    check-cast p1, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p1, p2}, Lcom/my/target/core/engines/g;-><init>(Lcom/my/target/ads/MyTargetView;Landroid/content/Context;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/my/target/core/engines/i;

    check-cast p1, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p1, v1, p2}, Lcom/my/target/core/engines/i;-><init>(Lcom/my/target/ads/MyTargetView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Lcom/my/target/core/engines/h;

    check-cast p1, Lcom/my/target/ads/MyTargetView;

    check-cast p0, Lcom/my/target/core/facades/h;

    .line 46
    invoke-virtual {p0}, Lcom/my/target/core/facades/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/my/target/core/engines/h;-><init>(Lcom/my/target/ads/MyTargetView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_3
    instance-of v0, p0, Lcom/my/target/core/facades/d;

    if-eqz v0, :cond_4

    .line 50
    new-instance v0, Lcom/my/target/core/engines/d;

    check-cast p0, Lcom/my/target/core/facades/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/d;-><init>(Lcom/my/target/core/facades/d;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_4
    instance-of v0, p0, Lcom/my/target/core/facades/e;

    if-eqz v0, :cond_5

    .line 52
    new-instance v0, Lcom/my/target/core/engines/e;

    check-cast p0, Lcom/my/target/core/facades/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/e;-><init>(Lcom/my/target/core/facades/e;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_5
    instance-of v0, p0, Lcom/my/target/core/facades/f;

    if-eqz v0, :cond_6

    .line 54
    new-instance v0, Lcom/my/target/core/engines/f;

    check-cast p0, Lcom/my/target/core/facades/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/core/engines/f;-><init>(Lcom/my/target/core/facades/f;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
