.class public Lcom/yandex/mobile/ads/video/tracking/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;,
        Lcom/yandex/mobile/ads/video/tracking/Tracker$Events;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/video/tracking/Tracker;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/tracking/Tracker;->a:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/yandex/mobile/ads/video/tracking/Tracker;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/yandex/mobile/ads/video/core/b;->a()Lcom/yandex/mobile/ads/video/core/b;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/video/tracking/Tracker;->b:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    invoke-virtual {v2, v0, v3}, Lcom/yandex/mobile/ads/video/core/b;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/tracking/Tracker;->b:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/tracking/Tracker;->b:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    const-string v1, "For %s there are no events."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 102
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/video/VideoAdError;->createInternalError(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdError;

    move-result-object v1

    .line 101
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;->onTrackingError(Lcom/yandex/mobile/ads/video/VideoAdError;)V

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public setErrorListener(Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;)V
    .locals 0
    .param p1, "errorListener"    # Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/tracking/Tracker;->b:Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;

    .line 108
    return-void
.end method

.method public trackAdEvent(Lcom/yandex/mobile/ads/video/models/ad/VideoAd;Ljava/lang/String;)V
    .locals 1
    .param p1, "ad"    # Lcom/yandex/mobile/ads/video/models/ad/VideoAd;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/models/ad/VideoAd;->getTrackingEvents()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/yandex/mobile/ads/video/tracking/Tracker;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public trackCreativeEvent(Lcom/yandex/mobile/ads/video/models/ad/Creative;Ljava/lang/String;)V
    .locals 1
    .param p1, "creative"    # Lcom/yandex/mobile/ads/video/models/ad/Creative;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/video/models/ad/Creative;->getTrackingEvents()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/yandex/mobile/ads/video/tracking/Tracker;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    return-void
.end method
