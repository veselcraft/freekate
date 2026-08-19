.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# instance fields
.field private analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private buildCalled:Z

.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private detachSurfaceTimeoutMs:J

.field private foregroundModeTimeoutMs:J

.field private handleAudioBecomingNoisy:Z

.field private handleAudioFocus:Z

.field private livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field private loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private looper:Landroid/os/Looper;

.field private mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

.field private pauseAtEndOfMediaItems:Z

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private releaseTimeoutMs:J

.field private final renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private skipSilenceEnabled:Z

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private useLazyPreparation:Z

.field private videoScalingMode:I

.field private wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 8

    .line 217
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v4, p1, p3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    new-instance v5, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 223
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    sget-object p3, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v7, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 217
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    .line 252
    iput-object p3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 253
    iput-object p4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 254
    iput-object p5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 255
    iput-object p6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 256
    iput-object p7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 257
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 258
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 p1, 0x0

    .line 259
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wakeMode:I

    const/4 p1, 0x1

    .line 260
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->videoScalingMode:I

    .line 261
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    .line 262
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 263
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 264
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 p1, 0x1f4

    .line 265
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p1, 0x7d0

    .line 266
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/SeekParameters;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->releaseTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->handleAudioFocus:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wakeMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->videoScalingMode:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->skipSilenceEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/os/Looper;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 585
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 586
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    .line 587
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V

    return-object v0
.end method
