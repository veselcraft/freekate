.class Lcom/yandex/mobile/ads/nativeads/aq$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/aq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/aq$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/nativeads/aq$a",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/aq;->e(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/nativeads/s;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/nativeads/aq$1$1;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/nativeads/g;

    move-result-object v0

    return-object v0
.end method
