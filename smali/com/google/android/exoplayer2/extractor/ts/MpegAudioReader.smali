.class public final Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private formatId:Ljava/lang/String;

.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

.field private final headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasFF:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 69
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 70
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    return-void
.end method

.method private findHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 132
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 136
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 137
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 138
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 140
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 142
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 144
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 145
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private readFrameRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 224
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 225
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge p1, v4, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 231
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 p1, 0x0

    .line 232
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 233
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method

.method private readHeaderRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 172
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge p1, v2, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 179
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 182
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 183
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    .line 188
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v3, :cond_2

    const-wide/32 v3, 0xf4240

    .line 189
    iget v5, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v5, v5

    mul-long v5, v5, v3

    iget p1, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v3, p1

    div-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 190
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 192
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 193
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const/16 v3, 0x1000

    .line 194
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 195
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 196
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 199
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 200
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 204
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 p1, 0x2

    .line 205
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->readFrameRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 103
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->findHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 79
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    return-void
.end method
