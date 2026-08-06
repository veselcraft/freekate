.class Lcom/yandex/mobile/ads/network/core/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/network/core/k;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/network/core/k;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k$3;->a:Lcom/yandex/mobile/ads/network/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 461
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$3;->a:Lcom/yandex/mobile/ads/network/core/k;

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/k;->a(Lcom/yandex/mobile/ads/network/core/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/k$a;

    .line 462
    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/k$a;->a(Lcom/yandex/mobile/ads/network/core/k$a;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/network/core/k$c;

    .line 466
    invoke-static {v1}, Lcom/yandex/mobile/ads/network/core/k$c;->a(Lcom/yandex/mobile/ads/network/core/k$c;)Lcom/yandex/mobile/ads/network/core/k$d;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 467
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/k$a;->a()Lcom/yandex/mobile/ads/network/core/error/h;

    move-result-object v4

    if-nez v4, :cond_2

    .line 470
    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/k$a;->b(Lcom/yandex/mobile/ads/network/core/k$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/yandex/mobile/ads/network/core/k$c;->a(Lcom/yandex/mobile/ads/network/core/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 471
    invoke-static {v1}, Lcom/yandex/mobile/ads/network/core/k$c;->a(Lcom/yandex/mobile/ads/network/core/k$c;)Lcom/yandex/mobile/ads/network/core/k$d;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/yandex/mobile/ads/network/core/k$d;->a(Lcom/yandex/mobile/ads/network/core/k$c;)V

    goto :goto_0

    .line 473
    :cond_2
    invoke-static {v1}, Lcom/yandex/mobile/ads/network/core/k$c;->a(Lcom/yandex/mobile/ads/network/core/k$c;)Lcom/yandex/mobile/ads/network/core/k$d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/k$a;->a()Lcom/yandex/mobile/ads/network/core/error/h;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/yandex/mobile/ads/network/core/k$d;->a(Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$3;->a:Lcom/yandex/mobile/ads/network/core/k;

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/k;->a(Lcom/yandex/mobile/ads/network/core/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 478
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k$3;->a:Lcom/yandex/mobile/ads/network/core/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/k;->a(Lcom/yandex/mobile/ads/network/core/k;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 479
    return-void
.end method
