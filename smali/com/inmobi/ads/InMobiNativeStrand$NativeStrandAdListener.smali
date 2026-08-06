.class public interface abstract Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNativeStrand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeStrandAdListener"
.end annotation


# virtual methods
.method public abstract onAdClicked(Lcom/inmobi/ads/InMobiNativeStrand;)V
.end method

.method public abstract onAdImpressed(Lcom/inmobi/ads/InMobiNativeStrand;)V
.end method

.method public abstract onAdLoadFailed(Lcom/inmobi/ads/InMobiNativeStrand;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
.end method

.method public abstract onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNativeStrand;)V
.end method
