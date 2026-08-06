.class public Lcom/yandex/mobile/ads/nativeads/ad;
.super Lcom/yandex/mobile/ads/nativeads/at;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/mobile/ads/nativeads/j;

.field private c:Lcom/yandex/mobile/ads/nativeads/ac;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/nativeads/at;-><init>(Lcom/yandex/mobile/ads/nativeads/a;)V

    .line 24
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ad;->b:Lcom/yandex/mobile/ads/nativeads/j;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ad;->c:Lcom/yandex/mobile/ads/nativeads/ac;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ad;->b:Lcom/yandex/mobile/ads/nativeads/j;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 52
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ad;->c:Lcom/yandex/mobile/ads/nativeads/ac;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/nativeads/ac;->a(Lcom/yandex/mobile/ads/nativeads/c;)Lcom/yandex/mobile/ads/nativeads/ay;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/yandex/mobile/ads/nativeads/ay$a;

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/ay;->a()Landroid/view/View;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v2, v3, v0}, Lcom/yandex/mobile/ads/nativeads/ay;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/ac;)V
    .locals 6

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ad;->c:Lcom/yandex/mobile/ads/nativeads/ac;

    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ad;->b:Lcom/yandex/mobile/ads/nativeads/j;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ad;->b:Lcom/yandex/mobile/ads/nativeads/j;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->a()Lcom/yandex/mobile/ads/nativeads/i;

    move-result-object v2

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ad;->b:Lcom/yandex/mobile/ads/nativeads/j;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 33
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/nativeads/ac;->a(Lcom/yandex/mobile/ads/nativeads/c;)Lcom/yandex/mobile/ads/nativeads/ay;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v4

    .line 36
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/ay;->a()Landroid/view/View;

    move-result-object v5

    .line 37
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v1, v5, v4}, Lcom/yandex/mobile/ads/nativeads/ay;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->f()Lcom/yandex/mobile/ads/nativeads/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->f()Lcom/yandex/mobile/ads/nativeads/i;

    move-result-object v1

    .line 42
    :goto_1
    invoke-virtual {p0, v5, v0, v1}, Lcom/yandex/mobile/ads/nativeads/ad;->a(Landroid/view/View;Lcom/yandex/mobile/ads/nativeads/c;Lcom/yandex/mobile/ads/nativeads/i;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 41
    goto :goto_1

    .line 47
    :cond_2
    return-void
.end method
