.class public interface abstract Lcom/inmobi/ads/InMobiNative$NativeAdListener;
.super Ljava/lang/Object;
.source "InMobiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdListener"
.end annotation


# virtual methods
.method public abstract onAdDismissed(Lcom/inmobi/ads/InMobiNative;)V
.end method

.method public abstract onAdDisplayed(Lcom/inmobi/ads/InMobiNative;)V
.end method

.method public abstract onAdLoadFailed(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
.end method

.method public abstract onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNative;)V
.end method

.method public abstract onUserLeftApplication(Lcom/inmobi/ads/InMobiNative;)V
.end method
