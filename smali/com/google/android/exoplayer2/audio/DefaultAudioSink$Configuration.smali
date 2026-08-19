.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# instance fields
.field public final availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final bufferSize:I

.field public final inputFormat:Lcom/google/android/exoplayer2/Format;

.field public final inputPcmFrameSize:I

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputMode:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;IIIIIIIZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 0

    .line 1963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1964
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 1965
    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    .line 1966
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    .line 1967
    iput p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    .line 1968
    iput p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 1969
    iput p6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    .line 1970
    iput p7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 1971
    iput-object p10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 1974
    invoke-direct {p0, p8, p9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->computeBufferSize(IZ)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    return-void
.end method

.method private computeBufferSize(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    return p1

    .line 2102
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-wide/32 p1, 0x3d090

    .line 2109
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getEncodedDefaultBufferSize(J)I

    move-result p1

    return p1

    .line 2111
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    const-wide/32 p1, 0x2faf080

    .line 2107
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getEncodedDefaultBufferSize(J)I

    move-result p1

    return p1

    :cond_3
    if-eqz p2, :cond_4

    const/high16 p1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2104
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getPcmDefaultBufferSize(F)I

    move-result p1

    return p1
.end method

.method private createAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 2

    .line 2037
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2038
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrackV29(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2040
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrackV21(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    .line 2042
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrackV9(Lcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method private createAudioTrackV21(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 7

    .line 2066
    new-instance v6, Landroid/media/AudioTrack;

    .line 2067
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getAudioTrackAttributesV21(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2068
    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1000(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v6
.end method

.method private createAudioTrackV29(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 3

    .line 2049
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2050
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1000(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 2052
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getAudioTrackAttributesV21(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object p1

    .line 2053
    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 2054
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 2055
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 2056
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 2057
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 2058
    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2059
    :goto_0
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 2060
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method private createAudioTrackV9(Lcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 8

    .line 2075
    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    if-nez p2, :cond_0

    .line 2077
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object p1

    .line 2086
    :cond_0
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v6, 0x1

    move-object v0, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object p1
.end method

.method private static getAudioTrackAttributesV21(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p1, :cond_0

    .line 2144
    invoke-static {}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    .line 2146
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method private static getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;
    .locals 2

    .line 2152
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 2153
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 2154
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2155
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 2156
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private getEncodedDefaultBufferSize(J)I
    .locals 3

    .line 2116
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$1100(I)I

    move-result v0

    .line 2117
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    .line 2120
    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private getPcmDefaultBufferSize(F)I
    .locals 6

    .line 2124
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2125
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2126
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    mul-int/lit8 v1, v0, 0x4

    const-wide/32 v2, 0x3d090

    .line 2128
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->durationUsToFrames(J)J

    move-result-wide v2

    long-to-int v3, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    mul-int v3, v3, v2

    const-wide/32 v4, 0xb71b0

    .line 2130
    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->durationUsToFrames(J)J

    move-result-wide v4

    long-to-int v2, v4

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    mul-int v2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2132
    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 2135
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public buildAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 8

    .line 2003
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->createAudioTrack(ZLcom/google/android/exoplayer2/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2015
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p2, 0x1

    if-ne v1, p2, :cond_0

    return-object p1

    .line 2018
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2023
    :catch_0
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2029
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v6

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIIILcom/google/android/exoplayer2/Format;ZLjava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    move-object v7, p1

    .line 2005
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2011
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIIILcom/google/android/exoplayer2/Format;ZLjava/lang/Exception;)V

    throw p1
.end method

.method public canReuseAudioTrack(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;)Z
    .locals 2

    .line 1979
    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public durationUsToFrames(J)J
    .locals 2

    .line 1995
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public framesToDurationUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1991
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public inputFramesToDurationUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 1987
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public outputModeIsOffload()Z
    .locals 2

    .line 2160
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
