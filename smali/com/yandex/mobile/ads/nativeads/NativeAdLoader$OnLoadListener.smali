.class public interface abstract Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadListener"
.end annotation


# virtual methods
.method public abstract onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
.end method

.method public abstract onAppInstallAdLoaded(Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAd;)V
.end method

.method public abstract onContentAdLoaded(Lcom/yandex/mobile/ads/nativeads/NativeContentAd;)V
.end method
