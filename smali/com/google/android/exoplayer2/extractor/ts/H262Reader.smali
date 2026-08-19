.class public final Lcom/google/android/exoplayer2/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final FRAME_RATE_VALUES:[D


# instance fields
.field private final csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private frameDurationUs:J

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleHasPicture:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startedFirstSample:Z

.field private totalBytesWritten:J

.field private final userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 49
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 81
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    :goto_0
    return-void
.end method

.method private static parseCsdBuffer(Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 8

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x4

    .line 225
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    .line 226
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    .line 227
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v2, v1

    shr-int/lit8 v6, v4, 0x4

    or-int/2addr v2, v6

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x7

    .line 232
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xf0

    shr-int/2addr v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v6, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v4, 0x79

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x64

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v4, 0x10

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x9

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v4, 0x4

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x3

    :goto_0
    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 248
    :goto_1
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 250
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const-string v6, "video/mpeg2"

    .line 251
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 253
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 255
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 259
    aget-byte v4, v0, v5

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 260
    sget-object v5, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 261
    aget-wide v1, v5, v4

    .line 262
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    add-int/lit8 p0, p0, 0x9

    .line 263
    aget-byte v4, v0, p0

    and-int/lit8 v4, v4, 0x60

    shr-int/lit8 v3, v4, 0x5

    .line 264
    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x1f

    if-eq v3, p0, :cond_3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 266
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    int-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    mul-double v1, v1, v3

    :cond_3
    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v1

    double-to-long v1, v3

    .line 271
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    .line 121
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 127
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 128
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 131
    :goto_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 135
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v4, :cond_0

    .line 136
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 138
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    return-void

    .line 145
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    .line 150
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_5

    if-lez v8, :cond_3

    .line 152
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 157
    :goto_1
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v12, v5, v9}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 159
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->parseCsdBuffer(Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 160
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v12, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 161
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    .line 162
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 165
    :cond_5
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v9, :cond_8

    if-lez v8, :cond_6

    .line 168
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    neg-int v1, v8

    .line 173
    :goto_2
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    .line 175
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v8, v9, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 176
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v8, v9, v12}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_7
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_8

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    add-int/lit8 v8, v4, 0x2

    aget-byte v1, v1, v8

    if-ne v1, v11, :cond_8

    .line 180
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_8
    if-eqz v5, :cond_a

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_9

    goto :goto_3

    :cond_9
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_11

    .line 202
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto :goto_5

    :cond_a
    :goto_3
    sub-int v1, v2, v4

    .line 185
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_b

    .line 187
    iget-boolean v15, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 188
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v8, v12

    long-to-int v4, v8

    sub-int v16, v4, v1

    .line 189
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    const/16 v18, 0x0

    move/from16 v17, v1

    invoke-interface/range {v12 .. v18}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 191
    :cond_b
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v4, :cond_c

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v8, :cond_f

    .line 193
    :cond_c
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v12, v1

    sub-long/2addr v8, v12

    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->samplePosition:J

    .line 194
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v12

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_e

    .line 195
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v8, v14

    goto :goto_4

    :cond_e
    const-wide/16 v8, 0x0

    :goto_4
    iput-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 196
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 197
    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    .line 198
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    :cond_f
    if-nez v5, :cond_10

    const/4 v10, 0x1

    .line 200
    :cond_10
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->sampleHasPicture:Z

    :cond_11
    :goto_5
    move v1, v7

    goto/16 :goto_0
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 105
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;->startedFirstSample:Z

    return-void
.end method
