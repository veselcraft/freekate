.class public Lcom/yandex/mobile/ads/nativeads/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/NativeContentAd;
    .locals 2

    .prologue
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p5}, Lcom/yandex/mobile/ads/nativeads/m;->c(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/d;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/ak;

    invoke-direct {v1, p1, p2, p4, v0}, Lcom/yandex/mobile/ads/nativeads/ak;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/d;)V

    return-object v1
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/j;)Lcom/yandex/mobile/ads/nativeads/au;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/j;->e()Lcom/yandex/mobile/ads/nativeads/ax;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/au;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/nativeads/au;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/n;)Lcom/yandex/mobile/ads/nativeads/au;
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/n;->c()Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/t;->a()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/n;->c()Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/t;->c()Ljava/util/List;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/yandex/mobile/ads/nativeads/au;

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/nativeads/au;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/j;)Lcom/yandex/mobile/ads/nativeads/au;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/j;->e()Lcom/yandex/mobile/ads/nativeads/ax;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/n;->c()Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/t;->c()Ljava/util/List;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/au;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/nativeads/au;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/n;Ljava/util/List;)Lcom/yandex/mobile/ads/nativeads/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/nativeads/n;",
            "Ljava/util/List",
            "<+",
            "Lcom/yandex/mobile/ads/nativeads/ao;",
            ">;)",
            "Lcom/yandex/mobile/ads/nativeads/d",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/nativeads/m;->a(Lcom/yandex/mobile/ads/nativeads/n;)Lcom/yandex/mobile/ads/nativeads/au;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/v;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/au;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/yandex/mobile/ads/nativeads/ae;->a()Lcom/yandex/mobile/ads/nativeads/ae;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/nativeads/v;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/ae;)V

    .line 125
    new-instance v2, Lcom/yandex/mobile/ads/nativeads/z;

    invoke-direct {v2, p3, v1}, Lcom/yandex/mobile/ads/nativeads/z;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/aj;)V

    .line 127
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/x;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/n;->b()Lcom/yandex/mobile/ads/n;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/n;->a()Lcom/yandex/mobile/ads/e;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4}, Lcom/yandex/mobile/ads/nativeads/x;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/e;)V

    .line 128
    new-instance v3, Lcom/yandex/mobile/ads/nativeads/aa;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/au;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/yandex/mobile/ads/nativeads/aa;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/a;)V

    .line 130
    new-instance v4, Lcom/yandex/mobile/ads/nativeads/d;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/yandex/mobile/ads/nativeads/d;-><init>(Lcom/yandex/mobile/ads/nativeads/as;Lcom/yandex/mobile/ads/nativeads/au;Lcom/yandex/mobile/ads/nativeads/ap;Lcom/yandex/mobile/ads/nativeads/at;)V

    return-object v4
.end method

.method public a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)Lcom/yandex/mobile/ads/nativeads/u;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/nativeads/m;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/List;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/yandex/mobile/ads/nativeads/m;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/n;Ljava/util/List;)Lcom/yandex/mobile/ads/nativeads/d;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/w;

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/nativeads/w;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/d;)V

    return-object v1
.end method

.method public b(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAd;
    .locals 2

    .prologue
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p5}, Lcom/yandex/mobile/ads/nativeads/m;->c(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/d;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/af;

    invoke-direct {v1, p1, p2, p4, v0}, Lcom/yandex/mobile/ads/nativeads/af;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/d;)V

    return-object v1
.end method

.method b(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/nativeads/n;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/n;->c()Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/t;->b()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/nativeads/j;

    .line 151
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/nativeads/m;->a(Lcom/yandex/mobile/ads/nativeads/j;)Lcom/yandex/mobile/ads/nativeads/au;

    move-result-object v5

    .line 152
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/nativeads/m;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/NativeContentAd;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/nativeads/m;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAd;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_2
    return-object v6
.end method

.method c(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/nativeads/j;",
            "Lcom/yandex/mobile/ads/nativeads/n;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            "Lcom/yandex/mobile/ads/nativeads/au;",
            ")",
            "Lcom/yandex/mobile/ads/nativeads/d",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/nativeads/n;->b()Lcom/yandex/mobile/ads/n;

    move-result-object v3

    .line 95
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/nativeads/n;->a()Lcom/yandex/mobile/ads/e;

    move-result-object v5

    .line 97
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/k;

    invoke-virtual {p5}, Lcom/yandex/mobile/ads/nativeads/au;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/yandex/mobile/ads/nativeads/ae;->a()Lcom/yandex/mobile/ads/nativeads/ae;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/nativeads/k;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/ae;)V

    .line 98
    new-instance v6, Lcom/yandex/mobile/ads/nativeads/ab;

    invoke-direct {v6, v0}, Lcom/yandex/mobile/ads/nativeads/ab;-><init>(Lcom/yandex/mobile/ads/nativeads/aj;)V

    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/q;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/nativeads/q;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/e;)V

    .line 101
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/ad;

    invoke-direct {v1, p2, v0}, Lcom/yandex/mobile/ads/nativeads/ad;-><init>(Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/a;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/ad;)V

    .line 104
    new-instance v2, Lcom/yandex/mobile/ads/nativeads/d;

    invoke-direct {v2, v6, p5, v0, v1}, Lcom/yandex/mobile/ads/nativeads/d;-><init>(Lcom/yandex/mobile/ads/nativeads/as;Lcom/yandex/mobile/ads/nativeads/au;Lcom/yandex/mobile/ads/nativeads/ap;Lcom/yandex/mobile/ads/nativeads/at;)V

    return-object v2
.end method
