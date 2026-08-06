.class public Lcom/yandex/mobile/ads/video/network/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/request/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/network/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/network/request/c$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/network/f$a;->a:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    .line 243
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/network/f$a;->a:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    if-eqz v0, :cond_0

    .line 248
    if-nez p1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/network/f$a;->a:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    const-string v1, "Tracking error"

    invoke-static {v1}, Lcom/yandex/mobile/ads/video/VideoAdError;->createInternalError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;->onTrackingError(Lcom/yandex/mobile/ads/video/VideoAdError;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p1, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/error/h;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/video/VideoAdError;->createConnectionError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;

    move-result-object v0

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/video/network/f$a;->a:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;->onTrackingError(Lcom/yandex/mobile/ads/video/VideoAdError;)V

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, "Tracking error"

    invoke-static {v0}, Lcom/yandex/mobile/ads/video/VideoAdError;->createInternalError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method
