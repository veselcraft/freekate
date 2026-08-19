.class public interface abstract Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# virtual methods
.method public abstract getBlacklistDurationMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
.end method

.method public abstract getMinimumLoadableRetryCount(I)I
.end method

.method public abstract getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
.end method

.method public abstract onLoadTaskConcluded(J)V
.end method
