.class abstract Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private static isCompatibleBrand(IZ)Z
    .locals 5

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 215
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p1, v3

    if-ne v4, p0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z
    .locals 21

    move-object/from16 v0, p0

    .line 110
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :cond_1
    :goto_0
    long-to-int v4, v3

    .line 114
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x40

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v8, v4, :cond_12

    const/16 v11, 0x8

    .line 121
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 123
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    invoke-interface {v0, v12, v7, v11, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_8

    .line 128
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 129
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const-wide/16 v15, 0x1

    const/16 v10, 0x10

    cmp-long v17, v12, v15

    if-nez v17, :cond_3

    .line 134
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    .line 133
    invoke-interface {v0, v12, v11, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 135
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 136
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v12

    goto :goto_2

    :cond_3
    const-wide/16 v15, 0x0

    cmp-long v10, v12, v15

    if-nez v10, :cond_4

    .line 139
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v15

    cmp-long v10, v15, v5

    if-eqz v10, :cond_4

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v12

    sub-long/2addr v15, v12

    int-to-long v12, v11

    add-long/2addr v12, v15

    :cond_4
    const/16 v10, 0x8

    :goto_2
    int-to-long v5, v10

    cmp-long v17, v12, v5

    if-gez v17, :cond_5

    return v7

    :cond_5
    add-int/2addr v8, v10

    const v10, 0x6d6f6f76

    if-ne v14, v10, :cond_7

    long-to-int v5, v12

    add-int/2addr v4, v5

    const-wide/16 v15, -0x1

    cmp-long v5, v1, v15

    if-eqz v5, :cond_6

    int-to-long v5, v4

    cmp-long v10, v5, v1

    if-lez v10, :cond_6

    long-to-int v4, v1

    :cond_6
    move-wide v5, v15

    goto :goto_1

    :cond_7
    const-wide/16 v15, -0x1

    const v10, 0x6d6f6f66

    if-eq v14, v10, :cond_11

    const v10, 0x6d766578

    if-ne v14, v10, :cond_8

    goto :goto_7

    :cond_8
    move-wide/from16 v17, v1

    int-to-long v1, v8

    add-long/2addr v1, v12

    sub-long/2addr v1, v5

    move/from16 v19, v8

    int-to-long v7, v4

    cmp-long v20, v1, v7

    if-ltz v20, :cond_9

    goto :goto_8

    :cond_9
    sub-long/2addr v12, v5

    long-to-int v1, v12

    add-int v8, v19, v1

    const v2, 0x66747970

    if-ne v14, v2, :cond_f

    if-ge v1, v11, :cond_a

    const/4 v2, 0x0

    return v2

    :cond_a
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 182
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {v0, v5, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 183
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_d

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    const/4 v6, 0x4

    .line 187
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v7, p2

    goto :goto_4

    .line 188
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    move/from16 v7, p2

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    move/from16 v7, p2

    :goto_5
    if-nez v9, :cond_e

    const/4 v2, 0x0

    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    move/from16 v7, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 199
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_10
    :goto_6
    move-wide v5, v15

    move-wide/from16 v1, v17

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_11
    :goto_7
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    :goto_9
    if-eqz v9, :cond_13

    move/from16 v1, p1

    if-ne v1, v0, :cond_13

    const/4 v7, 0x1

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    :goto_a
    return v7
.end method
