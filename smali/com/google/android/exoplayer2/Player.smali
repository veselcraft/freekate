.class public interface abstract Lcom/google/android/exoplayer2/Player;
.super Ljava/lang/Object;
.source "Player.java"


# virtual methods
.method public abstract getBufferedPosition()J
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleModeEnabled()Z
.end method

.method public abstract getTotalBufferedDuration()J
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract setMediaItems(Ljava/util/List;Z)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract stop(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
