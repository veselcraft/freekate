.class public interface abstract Lcom/my/target/ads/instream/InstreamAd$InstreamAdListener;
.super Ljava/lang/Object;
.source "InstreamAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstreamAdListener"
.end annotation


# virtual methods
.method public abstract onBannerComplete(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;)V
.end method

.method public abstract onBannerStart(Lcom/my/target/ads/instream/InstreamAd;Lcom/my/target/ads/instream/InstreamAd$InstreamAdBanner;)V
.end method

.method public abstract onBannerTimeLeftChange(FFLcom/my/target/ads/instream/InstreamAd;)V
.end method

.method public abstract onComplete(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V
.end method

.method public abstract onLoad(Lcom/my/target/ads/instream/InstreamAd;)V
.end method

.method public abstract onNoAd(Ljava/lang/String;Lcom/my/target/ads/instream/InstreamAd;)V
.end method
