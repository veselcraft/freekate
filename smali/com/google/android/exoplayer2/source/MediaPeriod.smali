.class public interface abstract Lcom/google/android/exoplayer2/source/MediaPeriod;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;


# virtual methods
.method public abstract continueLoading(J)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method

.method public abstract selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
.end method
