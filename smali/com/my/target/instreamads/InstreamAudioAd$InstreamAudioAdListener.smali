.class public interface abstract Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/instreamads/InstreamAudioAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstreamAudioAdListener"
.end annotation


# virtual methods
.method public abstract onBannerComplete(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V
.end method

.method public abstract onBannerStart(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V
.end method

.method public abstract onBannerTimeLeftChange(FFLcom/my/target/instreamads/InstreamAudioAd;)V
.end method

.method public abstract onComplete(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V
.end method

.method public abstract onLoad(Lcom/my/target/instreamads/InstreamAudioAd;)V
.end method

.method public abstract onNoAd(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V
.end method
