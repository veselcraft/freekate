.class Lcom/yandex/mobile/ads/nativeads/z;
.super Lcom/yandex/mobile/ads/nativeads/ab;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/yandex/mobile/ads/nativeads/ao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/aj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yandex/mobile/ads/nativeads/ao;",
            ">;",
            "Lcom/yandex/mobile/ads/nativeads/aj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/nativeads/ab;-><init>(Lcom/yandex/mobile/ads/nativeads/aj;)V

    .line 27
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/z;->b:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/ax$a;Z)Lcom/yandex/mobile/ads/ax;
    .locals 1

    .prologue
    .line 32
    .line 33
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    if-ne v0, p1, :cond_0

    .line 34
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/nativeads/z;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object p1, Lcom/yandex/mobile/ads/ax$a;->f:Lcom/yandex/mobile/ads/ax$a;

    .line 39
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/y;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/nativeads/y;-><init>(Lcom/yandex/mobile/ads/ax$a;)V

    return-object v0
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/as;Lcom/yandex/mobile/ads/nativeads/au;Z)Z
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/au;->b()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ax;

    .line 64
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ax;->c()I

    move-result v0

    invoke-interface {p1, v0, p3}, Lcom/yandex/mobile/ads/nativeads/as;->a(IZ)Lcom/yandex/mobile/ads/ax;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/ax;->b()Lcom/yandex/mobile/ads/ax$a;

    move-result-object v0

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    if-eq v0, v2, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Z)Z
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ao;

    .line 45
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->e()Lcom/yandex/mobile/ads/nativeads/as;

    move-result-object v2

    .line 46
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->f()Lcom/yandex/mobile/ads/nativeads/au;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v2, v0, p1}, Lcom/yandex/mobile/ads/nativeads/z;->a(Lcom/yandex/mobile/ads/nativeads/as;Lcom/yandex/mobile/ads/nativeads/au;Z)Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
