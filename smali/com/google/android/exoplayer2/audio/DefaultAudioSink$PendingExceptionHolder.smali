.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# instance fields
.field private pendingException:Ljava/lang/Exception;

.field private throwDeadlineMs:J

.field private final throwDelayMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 2171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2172
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwDelayMs:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 2193
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    return-void
.end method

.method public throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V
    .locals 4

    .line 2176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2177
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    if-nez v2, :cond_0

    .line 2178
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 2179
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwDelayMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    .line 2181
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return-void

    .line 2186
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 2187
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 2188
    throw p1
.end method
