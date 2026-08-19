.class public final Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method private checkNextByte(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 119
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 121
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 122
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return p1
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 6

    .line 95
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->checkNextByte(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->checkNextByte(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 106
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 108
    invoke-interface {v5, p1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    :cond_3
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 59
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 60
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 63
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    .line 64
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 65
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 61
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 11

    .line 85
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->outputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 87
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 77
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 78
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 p1, 0x2

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return-void
.end method
