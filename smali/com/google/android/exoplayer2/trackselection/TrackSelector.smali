.class public abstract Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# instance fields
.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBandwidthMeter()Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object v0
.end method

.method public final init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 0

    .line 113
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-void
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
.end method

.method public abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
.end method
