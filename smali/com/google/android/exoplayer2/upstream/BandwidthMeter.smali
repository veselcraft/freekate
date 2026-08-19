.class public interface abstract Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public abstract getTimeToFirstByteEstimateUs()J
.end method

.method public abstract getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
.end method
