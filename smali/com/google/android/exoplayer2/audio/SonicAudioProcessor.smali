.class public final Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private inputBytes:J

.field private inputEnded:Z

.field private outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBytes:J

.field private pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private pendingOutputSampleRate:I

.field private pendingSonicRecreation:Z

.field private pitch:F

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private sonic:Lcom/google/android/exoplayer2/audio/Sonic;

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 67
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 68
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 69
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 70
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 71
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 73
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 3

    .line 144
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 149
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 152
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    return-object v2

    .line 145
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method public flush()V
    .locals 9

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 221
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 222
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    if-eqz v2, :cond_0

    .line 223
    new-instance v2, Lcom/google/android/exoplayer2/audio/Sonic;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    iget v7, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    iget v8, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/Sonic;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->flush()V

    .line 234
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 235
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 236
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public getMediaDuration(J)J
    .locals 15

    move-object v0, p0

    .line 129
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    const-wide/16 v3, 0x400

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 130
    iget-wide v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/Sonic;->getPendingInputBytes()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    .line 131
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v1, v2, :cond_0

    .line 132
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    mul-long v11, v7, v3

    .line 133
    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v1, v2

    mul-long v13, v3, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 138
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutputSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 194
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 195
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 199
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutput(Ljava/nio/ShortBuffer;)V

    .line 202
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 208
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    sub-float/2addr v0, v1

    .line 162
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->getOutputSize()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/Sonic;->queueEndOfStream()V

    :cond_0
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/Sonic;

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 174
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->queueInput(Ljava/nio/ShortBuffer;)V

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    .line 243
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    .line 244
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 245
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 246
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 247
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 248
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 250
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingOutputSampleRate:I

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    const/4 v1, 0x0

    .line 253
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->sonic:Lcom/google/android/exoplayer2/audio/Sonic;

    const-wide/16 v1, 0x0

    .line 254
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputBytes:J

    .line 255
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->outputBytes:J

    .line 256
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->inputEnded:Z

    return-void
.end method

.method public setPitch(F)V
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 100
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pitch:F

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 86
    iput p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->speed:F

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->pendingSonicRecreation:Z

    :cond_0
    return-void
.end method
