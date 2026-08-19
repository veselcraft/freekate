.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# instance fields
.field public final audioTrackPositionUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field public final skipSilence:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJ)V
    .locals 0

    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1851
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1852
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->skipSilence:Z

    .line 1853
    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    .line 1854
    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1835
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;ZJJ)V

    return-void
.end method
