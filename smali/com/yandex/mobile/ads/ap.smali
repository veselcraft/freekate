.class final Lcom/yandex/mobile/ads/ap;
.super Lcom/yandex/mobile/ads/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/g",
        "<",
        "Ljava/lang/String;",
        "Lcom/yandex/mobile/ads/aq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/aq;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/g;-><init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/w;)V

    .line 18
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yandex/mobile/ads/ap;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/aq;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/aq;->onAdLoaded()V

    .line 53
    :cond_0
    return-void
.end method
