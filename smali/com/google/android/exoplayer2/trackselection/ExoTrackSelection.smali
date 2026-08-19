.class public interface abstract Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# virtual methods
.method public abstract blacklist(IJ)Z
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluateQueueSize(JLjava/util/List;)I
.end method

.method public abstract getSelectedFormat()Lcom/google/android/exoplayer2/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract onDiscontinuity()V
.end method

.method public abstract onPlayWhenReadyChanged(Z)V
.end method

.method public abstract onPlaybackSpeed(F)V
.end method

.method public abstract onRebuffer()V
.end method

.method public abstract shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
.end method

.method public abstract updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
.end method
