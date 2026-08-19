.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# instance fields
.field public final endPlayback:Z

.field public final forceBufferingState:Z

.field public final periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final periodPositionUs:J

.field public final requestedContentPositionUs:J

.field public final setTargetLiveOffset:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V
    .locals 0

    .line 2892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2893
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2894
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 2895
    iput-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 2896
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 2897
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    .line 2898
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    return-void
.end method
