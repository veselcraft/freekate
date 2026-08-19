.class final Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public atomPosition:J

.field public auxiliaryDataPosition:J

.field public dataPosition:J

.field public definesEncryptionData:Z

.field public header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

.field public nextFragmentDecodeTime:J

.field public nextFragmentDecodeTimeIncludesMoov:Z

.field public sampleCompositionTimeOffsetUsTable:[I

.field public sampleCount:I

.field public sampleDecodingTimeUsTable:[J

.field public final sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public sampleSizeTable:[I

.field public trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public trunCount:I

.field public trunDataPosition:[J

.field public trunLength:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 104
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    new-array v1, v0, [I

    .line 105
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    new-array v1, v0, [I

    .line 106
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    new-array v1, v0, [I

    .line 107
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    new-array v1, v0, [J

    .line 108
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    new-array v1, v0, [Z

    .line 109
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    new-array v0, v0, [Z

    .line 110
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public fillEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 178
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 179
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public fillEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 190
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public getSamplePresentationTimeUs(I)J
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public initEncryptionData(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 168
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    return-void
.end method

.method public initTables(II)V
    .locals 1

    .line 139
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    .line 140
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 142
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    .line 143
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    array-length p1, p1

    if-ge p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x7d

    .line 148
    div-int/lit8 p2, p2, 0x64

    .line 149
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 150
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    .line 151
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    .line 152
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 153
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    const-wide/16 v1, 0x0

    .line 123
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 124
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 125
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    return-void
.end method

.method public sampleHasSubsampleEncryptionTable(I)Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
