.class public interface abstract Lcom/google/android/exoplayer2/Player$EventListener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
.end method

.method public abstract onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
.end method

.method public abstract onIsLoadingChanged(Z)V
.end method

.method public abstract onIsPlayingChanged(Z)V
.end method

.method public abstract onLoadingChanged(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
.end method

.method public abstract onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onPlayWhenReadyChanged(ZI)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlaybackStateChanged(I)V
.end method

.method public abstract onPlaybackSuppressionReasonChanged(I)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
.end method

.method public abstract onSeekProcessed()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onStaticMetadataChanged(Ljava/util/List;)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
.end method
