.class public interface abstract Lcom/yandex/mobile/ads/InterstitialEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/InterstitialEventListener$SimpleInterstitialEventListener;
    }
.end annotation


# virtual methods
.method public abstract onInterstitialDismissed()V
.end method

.method public abstract onInterstitialFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
.end method

.method public abstract onInterstitialLoaded()V
.end method

.method public abstract onInterstitialShown()V
.end method
