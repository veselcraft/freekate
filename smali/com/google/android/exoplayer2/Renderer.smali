.class public interface abstract Lcom/google/android/exoplayer2/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V
.end method

.method public abstract getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;
.end method

.method public abstract getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReadingPositionUs()J
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lcom/google/android/exoplayer2/source/SampleStream;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
.end method

.method public abstract render(JJ)V
.end method

.method public abstract replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V
.end method

.method public abstract reset()V
.end method

.method public abstract resetPosition(J)V
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract setPlaybackSpeed(FF)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
