.class public Lcom/yandex/mobile/ads/nativeads/aa;
.super Lcom/yandex/mobile/ads/nativeads/at;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;",
            "Lcom/yandex/mobile/ads/nativeads/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/nativeads/at;-><init>(Lcom/yandex/mobile/ads/nativeads/a;)V

    .line 26
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/aa;->b:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/nativeads/ac;)V
    .locals 5

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/aa;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/aa;->b:Ljava/util/List;

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

    .line 33
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/nativeads/ac;->a(Lcom/yandex/mobile/ads/nativeads/c;)Lcom/yandex/mobile/ads/nativeads/ay;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v3

    .line 36
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/ay;->a()Landroid/view/View;

    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v2, v4, v3}, Lcom/yandex/mobile/ads/nativeads/ay;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->f()Lcom/yandex/mobile/ads/nativeads/i;

    move-result-object v2

    .line 42
    invoke-virtual {p0, v4, v0, v2}, Lcom/yandex/mobile/ads/nativeads/aa;->a(Landroid/view/View;Lcom/yandex/mobile/ads/nativeads/c;Lcom/yandex/mobile/ads/nativeads/i;)V

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
