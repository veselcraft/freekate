.class Lcom/yandex/mobile/ads/ar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yandex/mobile/ads/nativeads/f;

.field final synthetic c:Lcom/yandex/mobile/ads/nativeads/n;

.field final synthetic d:Lcom/yandex/mobile/ads/ar;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/ar;Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/n;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yandex/mobile/ads/ar$1;->d:Lcom/yandex/mobile/ads/ar;

    iput-object p2, p0, Lcom/yandex/mobile/ads/ar$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/ar$1;->b:Lcom/yandex/mobile/ads/nativeads/f;

    iput-object p4, p0, Lcom/yandex/mobile/ads/ar$1;->c:Lcom/yandex/mobile/ads/nativeads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 105
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/j;

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/nativeads/c;

    const-string v2, "image"

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v7, v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v3, :cond_1

    move v2, v3

    :goto_2
    if-eqz v2, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/nativeads/j;->a(Ljava/util/List;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar$1;->b:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/nativeads/f;->a(Ljava/util/Map;)V

    .line 111
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar$1;->d:Lcom/yandex/mobile/ads/ar;

    iget-object v1, p0, Lcom/yandex/mobile/ads/ar$1;->c:Lcom/yandex/mobile/ads/nativeads/n;

    iget-object v2, p0, Lcom/yandex/mobile/ads/ar$1;->b:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/ar;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V

    .line 112
    return-void
.end method
