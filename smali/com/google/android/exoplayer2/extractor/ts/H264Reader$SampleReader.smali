.class final Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;

.field private previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;ZZ)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 292
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 293
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 294
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 295
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 296
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 297
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplayer2/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 298
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 299
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 300
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    return-void
.end method

.method private outputSample(I)V
    .locals 7

    .line 483
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 484
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 347
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 351
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    .line 352
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 354
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 357
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 358
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 361
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 362
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 363
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 367
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 370
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 371
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 374
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 375
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_5

    .line 377
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 378
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    return-void

    .line 381
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 384
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 385
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 387
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void

    .line 390
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    .line 391
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 392
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_9

    .line 393
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 396
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 398
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v5, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 404
    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v5, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 405
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 406
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 409
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 411
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 414
    :cond_c
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_1

    :cond_d
    move v14, v3

    goto :goto_0

    :cond_e
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 418
    :goto_1
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 421
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 424
    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 430
    :goto_3
    iget v2, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_15

    .line 431
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v3, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 434
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v3, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 435
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 436
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 439
    :cond_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    :cond_15
    if-ne v2, v5, :cond_19

    .line 441
    iget-boolean v2, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19

    .line 443
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 446
    :cond_16
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 447
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 448
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 451
    :cond_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_7

    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_19
    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    .line 454
    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v8 .. v22}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 457
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public endNalUnit(JIZZ)Z
    .locals 5

    .line 462
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 463
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 465
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_1

    .line 466
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 467
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 469
    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 470
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 471
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 472
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 475
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result p5

    .line 476
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    if-eqz p5, :cond_5

    if-ne p2, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return p1
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public putSps(Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 317
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 0

    .line 322
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 323
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 324
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 325
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 331
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 332
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 333
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 p1, 0x0

    .line 334
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 335
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_2
    return-void
.end method
