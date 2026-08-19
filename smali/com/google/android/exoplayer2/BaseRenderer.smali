.class public abstract Lcom/google/android/exoplayer2/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Renderer;
.implements Lcom/google/android/exoplayer2/RendererCapabilities;


# instance fields
.field private configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private index:I

.field private readingPositionUs:J

.field private state:I

.field private stream:Lcom/google/android/exoplayer2/source/SampleStream;

.field private streamFormats:[Lcom/google/android/exoplayer2/Format;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private throwRendererExceptionIsExecuting:Z

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->trackType:I

    .line 53
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    const-wide/high16 v0, -0x8000000000000000L

    .line 54
    iput-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    return-void
.end method


# virtual methods
.method protected final createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 8

    if-eqz p2, :cond_0

    .line 358
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    const/4 v0, 0x0

    .line 362
    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 367
    throw p1

    .line 366
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    :cond_0
    const/4 v1, 0x4

    const/4 v6, 0x4

    .line 370
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getIndex()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    .line 369
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method public final disable()V
    .locals 3

    .line 170
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 172
    iput v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 175
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 176
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V
    .locals 9

    move-object v7, p0

    move v8, p6

    .line 94
    iget v0, v7, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move-object v0, p1

    .line 95
    iput-object v0, v7, Lcom/google/android/exoplayer2/BaseRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 96
    iput v1, v7, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    move/from16 v0, p7

    .line 98
    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplayer2/BaseRenderer;->onEnabled(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 99
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/BaseRenderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    move-wide v0, p4

    .line 100
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->configuration:Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->index:I

    return v0
.end method

.method public final getReadingPositionUs()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplayer2/source/SampleStream;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method protected final getStreamFormats()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 5

    .line 130
    iget-wide v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method protected abstract onDisabled()V
.end method

.method protected abstract onEnabled(ZZ)V
.end method

.method protected abstract onPositionReset(JZ)V
.end method

.method protected abstract onReset()V
.end method

.method protected abstract onStarted()V
.end method

.method protected abstract onStopped()V
.end method

.method protected abstract onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
.end method

.method protected final readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 397
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 398
    iput-wide p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 399
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 401
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 402
    iget-wide p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 404
    iget-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    .line 405
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 408
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v1, v3

    .line 409
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 410
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 411
    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method public final replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V
    .locals 6

    .line 114
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 115
    iput-object p2, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    .line 116
    iput-wide p5, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamFormats:[Lcom/google/android/exoplayer2/Format;

    .line 118
    iput-wide p5, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/FormatHolder;->clear()V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 157
    iput-wide p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->readingPositionUs:J

    .line 158
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->index:I

    return-void
.end method

.method protected skipSource(J)I
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->stream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/SampleStream;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 164
    iput v1, p0, Lcom/google/android/exoplayer2/BaseRenderer;->state:I

    .line 165
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->onStopped()V

    return-void
.end method
