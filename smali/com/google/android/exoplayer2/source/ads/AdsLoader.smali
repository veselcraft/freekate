.class public interface abstract Lcom/google/android/exoplayer2/source/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# virtual methods
.method public abstract handlePrepareComplete(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V
.end method

.method public abstract handlePrepareError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;IILjava/io/IOException;)V
.end method

.method public varargs abstract setSupportedContentTypes([I)V
.end method

.method public abstract start(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/ui/AdViewProvider;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V
.end method

.method public abstract stop(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V
.end method
