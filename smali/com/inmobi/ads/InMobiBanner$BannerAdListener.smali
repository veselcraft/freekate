.class public interface abstract Lcom/inmobi/ads/InMobiBanner$BannerAdListener;
.super Ljava/lang/Object;
.source "InMobiBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BannerAdListener"
.end annotation


# virtual methods
.method public abstract onAdDismissed(Lcom/inmobi/ads/InMobiBanner;)V
.end method

.method public abstract onAdDisplayed(Lcom/inmobi/ads/InMobiBanner;)V
.end method

.method public abstract onAdInteraction(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
.end method

.method public abstract onAdLoadSucceeded(Lcom/inmobi/ads/InMobiBanner;)V
.end method

.method public abstract onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserLeftApplication(Lcom/inmobi/ads/InMobiBanner;)V
.end method
