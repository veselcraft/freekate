.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

.field private final sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method public static synthetic $r8$lambda$37aVf_b2LCldDJg5WXI_8RjtP3E()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 38
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 109
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3

    .line 126
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 133
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 135
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;->seek()V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 7

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_4

    .line 77
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 78
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 83
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p1, v5, v2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 85
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    .line 88
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 92
    :cond_0
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_2

    return v5

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x6

    .line 101
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    .line 72
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 75
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0
.end method
