.class public Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# instance fields
.field private final approxBytesPerFrame:J

.field private ceilingBytePosition:J

.field private ceilingTimePosition:J

.field private floorBytePosition:J

.field private floorTimePosition:J

.field private nextSearchBytePosition:J

.field private final seekTimeUs:J

.field private final targetTimePosition:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    .line 318
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 319
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 320
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 321
    iput-wide p9, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 322
    iput-wide p11, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 323
    iput-wide p13, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 325
    invoke-static/range {p3 .. p14}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method protected static calculateNextSearchBytePosition(JJJJJJ)J
    .locals 7

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_1

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    .line 303
    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    .line 306
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method private getCeilingBytePosition()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method private getFloorBytePosition()J
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method private getNextSearchBytePosition()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private getSeekTimeUs()J
    .locals 2

    .line 357
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method private getTargetTimePosition()J
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method private updateNextSearchBytePosition()V
    .locals 12

    .line 380
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 381
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method private updateSeekCeiling(JJ)V
    .locals 0

    .line 369
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 370
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

.method private updateSeekFloor(JJ)V
    .locals 0

    .line 362
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 363
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method
