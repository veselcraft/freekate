.class public final Lcom/google/android/exoplayer2/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# instance fields
.field private firstSampleTimestampUs:J

.field private lastSampleTimestampUs:J

.field private sharedInitializationStarted:Z

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    return-void
.end method

.method public static ptsToUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    .line 205
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToNonWrappedPts(J)J
    .locals 2

    const-wide/32 v0, 0x15f90

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 229
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToWrappedPts(J)J
    .locals 2

    .line 216
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide p0

    const-wide v0, 0x200000000L

    rem-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized adjustSampleTimestamp(J)J
    .locals 5

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 181
    monitor-exit p0

    return-wide v0

    .line 184
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 185
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    goto :goto_0

    .line 187
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    sub-long/2addr v0, p1

    .line 189
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 191
    :cond_2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adjustTsTimestamp(J)J
    .locals 8

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 156
    monitor-exit p0

    return-wide v0

    .line 158
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 161
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 162
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-wide p1, v6

    .line 170
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirstSampleTimestampUs()J
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAdjustedTimestampUs()J
    .locals 7

    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 117
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v2, v0

    goto :goto_0

    .line 118
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    move-wide v2, v0

    .line 116
    :cond_1
    :goto_0
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimestampOffsetUs()J
    .locals 7

    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 133
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-wide v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset(J)V
    .locals 0

    monitor-enter p0

    .line 143
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->sharedInitializationStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sharedInitializeOrWait(ZJ)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->sharedInitializationStarted:Z

    if-nez v0, :cond_0

    .line 91
    iput-wide p2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->sharedInitializationStarted:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 94
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    cmp-long p1, p2, v0

    if-eqz p1, :cond_2

    .line 95
    :cond_1
    :goto_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-nez p3, :cond_2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
