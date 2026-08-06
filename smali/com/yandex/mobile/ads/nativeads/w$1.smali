.class Lcom/yandex/mobile/ads/nativeads/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/report/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/w;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/w;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/w$1;->a:Lcom/yandex/mobile/ads/nativeads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
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
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v1, "bind_type"

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/w$1;->a:Lcom/yandex/mobile/ads/nativeads/w;

    invoke-static {v2}, Lcom/yandex/mobile/ads/nativeads/w;->a(Lcom/yandex/mobile/ads/nativeads/w;)Lcom/yandex/mobile/ads/nativeads/ao$a;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/mobile/ads/nativeads/ao$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "native_ad_type"

    sget-object v2, Lcom/yandex/mobile/ads/nativeads/ar;->b:Lcom/yandex/mobile/ads/nativeads/ar;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/ar;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0
.end method
