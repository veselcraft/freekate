.class public final Lcom/google/android/exoplayer2/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private randomAccessIndicator:Z

.field private sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

.field private final sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    .line 83
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 84
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 88
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 89
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private assertTracksCreated()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 195
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v1, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v1

    .line 202
    iget v3, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 203
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v3

    .line 207
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 209
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    const-string v6, "video/avc"

    .line 210
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 211
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    .line 212
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    .line 213
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 214
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 215
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 207
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->putSps(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->putPps(Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->putSps(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->putPps(Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 233
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 234
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget p4, p4, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p4

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 236
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 237
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p4, p5, p6, v0}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    move-wide v2, p1

    move v4, p3

    .line 240
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->endNalUnit(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    :cond_5
    return-void
.end method

.method private nalUnitData([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 14

    .line 122
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->assertTracksCreated()V

    .line 124
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 125
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 126
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 129
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 130
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 138
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    return-void

    .line 143
    :cond_0
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 149
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 152
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 157
    :goto_1
    iget-wide v12, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v7, p0

    move-wide v8, v4

    .line 156
    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    .line 159
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    .line 107
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 108
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 110
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 117
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    :cond_0
    return-void
.end method
