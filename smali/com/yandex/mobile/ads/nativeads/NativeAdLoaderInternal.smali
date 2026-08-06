.class public Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderInternal;
.super Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;)V

    .line 21
    return-void
.end method


# virtual methods
.method public loadAdUnit(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 1
    .param p1, "adRequest"    # Lcom/yandex/mobile/ads/AdRequest;

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ar;->b:Lcom/yandex/mobile/ads/nativeads/ar;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderInternal;->a(Lcom/yandex/mobile/ads/AdRequest;Lcom/yandex/mobile/ads/nativeads/ar;)V

    .line 25
    return-void
.end method
