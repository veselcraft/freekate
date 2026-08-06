.class Lcom/yandex/mobile/ads/nativeads/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/report/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/l;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/l;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/l$1;->a:Lcom/yandex/mobile/ads/nativeads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string v0, "bind_type"

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/l$1;->a:Lcom/yandex/mobile/ads/nativeads/l;

    invoke-static {v2}, Lcom/yandex/mobile/ads/nativeads/l;->a(Lcom/yandex/mobile/ads/nativeads/l;)Lcom/yandex/mobile/ads/nativeads/ao$a;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/mobile/ads/nativeads/ao$a;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "native_ad_type"

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/l$1;->a:Lcom/yandex/mobile/ads/nativeads/l;

    invoke-static {v2}, Lcom/yandex/mobile/ads/nativeads/l;->b(Lcom/yandex/mobile/ads/nativeads/l;)Lcom/yandex/mobile/ads/nativeads/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l$1;->a:Lcom/yandex/mobile/ads/nativeads/l;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/l;->b(Lcom/yandex/mobile/ads/nativeads/l;)Lcom/yandex/mobile/ads/nativeads/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 102
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    .line 105
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/g;->d()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "image_sizes"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object v1
.end method
