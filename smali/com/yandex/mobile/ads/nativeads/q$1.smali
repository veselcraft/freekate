.class Lcom/yandex/mobile/ads/nativeads/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/nativeads/q;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/q;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/q;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/q$1;->a:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
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
    .line 78
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q$1;->a:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/q;)Lcom/yandex/mobile/ads/nativeads/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q$1;->a:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/q;)Lcom/yandex/mobile/ads/nativeads/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ad;->a()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q$1;->a:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->b(Lcom/yandex/mobile/ads/nativeads/q;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;->onFinishLoadingImages()V

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
