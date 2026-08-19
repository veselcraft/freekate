.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# instance fields
.field private final adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    cmp-long p1, p9, p5

    if-gez p1, :cond_0

    const-string p1, "AdaptiveTrackSelection"

    const-string p2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    .line 287
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p9, p5

    .line 293
    :cond_0
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    const-wide/16 p1, 0x3e8

    mul-long p5, p5, p1

    .line 294
    iput-wide p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long p7, p7, p1

    .line 295
    iput-wide p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long p9, p9, p1

    .line 296
    iput-wide p9, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 297
    iput p11, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 298
    iput p12, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 300
    invoke-static {p13}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 301
    iput-object p14, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 302
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    const/4 p1, 0x0

    .line 303
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 304
    iput-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method static synthetic access$000([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAdaptationCheckpoints([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static addCheckpoint(Ljava/util/List;[J)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 685
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 686
    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 689
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_1

    goto :goto_2

    .line 693
    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private determineIdealSelectedIndex(JJ)I
    .locals 5

    .line 480
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAllocatedBandwidth(J)J

    move-result-wide p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 482
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v2, :cond_3

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 483
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 484
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 485
    iget v2, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->canSelectFormat(Lcom/google/android/exoplayer2/Format;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static getAdaptationCheckpoints([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .locals 12

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 584
    :goto_0
    array-length v3, p0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1

    .line 585
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v3

    if-le v3, v6, :cond_0

    .line 586
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 588
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v6, v4, v5, v4, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 589
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 591
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getSortedTrackBitrates([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)[[J

    move-result-object v2

    .line 596
    array-length v3, v2

    new-array v3, v3, [I

    .line 597
    array-length v7, v2

    new-array v7, v7, [J

    const/4 v8, 0x0

    .line 598
    :goto_2
    array-length v9, v2

    if-ge v8, v9, :cond_3

    .line 599
    aget-object v9, v2, v8

    array-length v9, v9

    if-nez v9, :cond_2

    move-wide v10, v4

    goto :goto_3

    :cond_2
    aget-object v9, v2, v8

    aget-wide v10, v9, v1

    :goto_3
    aput-wide v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 601
    :cond_3
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 603
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    .line 604
    :goto_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 605
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 606
    aget v9, v3, v8

    add-int/2addr v9, v6

    aput v9, v3, v8

    .line 607
    aget-object v10, v2, v8

    aget-wide v9, v10, v9

    aput-wide v9, v7, v8

    .line 608
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 611
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 612
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 613
    aget-wide v3, v7, v2

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    aput-wide v3, v7, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 616
    :cond_6
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 617
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 618
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 619
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v2, :cond_7

    .line 620
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 622
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getAllocatedBandwidth(J)J
    .locals 6

    .line 541
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getTotalAllocatableBandwidth(J)J

    move-result-wide p1

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 546
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 547
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 551
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 552
    iget-wide v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget-wide v4, v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr v4, v2

    long-to-float p2, v4

    div-float/2addr p1, p2

    .line 555
    iget-wide v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v0, v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    sub-long/2addr v0, v2

    long-to-float p2, v0

    mul-float p1, p1, p2

    float-to-long p1, p1

    add-long/2addr v2, p1

    return-wide v2
.end method

.method private getLastChunkDurationUs(Ljava/util/List;)J
    .locals 7

    .line 531
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    return-wide v1

    .line 534
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 535
    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_1

    sub-long v1, v5, v3

    :cond_1
    return-wide v1
.end method

.method private getNextChunkDurationUs([Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;Ljava/util/List;)J
    .locals 4

    .line 510
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v0, p1, v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    aget-object p1, p1, p2

    .line 512
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 516
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 517
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide p1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide p1

    return-wide p1
.end method

.method private static getSortedTrackBitrates([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)[[J
    .locals 9

    .line 627
    array-length v0, p0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 628
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 629
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    new-array v3, v1, [J

    .line 631
    aput-object v3, v0, v2

    goto :goto_2

    .line 634
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v0, v2

    const/4 v4, 0x0

    .line 635
    :goto_1
    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 636
    aget-object v6, v0, v2

    iget-object v7, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v5, v5, v4

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v7, v5

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 638
    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;
    .locals 17

    move-object/from16 v0, p0

    .line 654
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->treeKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 655
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 656
    aget-object v4, v0, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    goto :goto_5

    .line 659
    :cond_0
    aget-object v4, v0, v3

    array-length v4, v4

    new-array v5, v4, [D

    const/4 v6, 0x0

    .line 660
    :goto_1
    aget-object v7, v0, v3

    array-length v7, v7

    const-wide/16 v8, 0x0

    if-ge v6, v7, :cond_2

    .line 661
    aget-object v7, v0, v3

    aget-wide v10, v7, v6

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    aget-object v7, v0, v3

    aget-wide v8, v7, v6

    long-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    :goto_2
    aput-wide v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 663
    aget-wide v6, v5, v4

    aget-wide v10, v5, v2

    sub-double/2addr v6, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_4

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 665
    aget-wide v13, v5, v10

    add-int/lit8 v10, v10, 0x1

    aget-wide v15, v5, v10

    add-double/2addr v13, v15

    mul-double v13, v13, v11

    cmpl-double v11, v6, v8

    if-nez v11, :cond_3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    .line 667
    :cond_3
    aget-wide v11, v5, v2

    sub-double/2addr v13, v11

    div-double v11, v13, v6

    .line 668
    :goto_4
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    :cond_5
    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private getTotalAllocatableBandwidth(J)J
    .locals 7

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 562
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 563
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTimeToFirstByteEstimateUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v6, p1, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p1, p1

    .line 567
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float p2, p1, p2

    long-to-float v2, v2

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    .line 568
    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    long-to-float v0, v0

    mul-float v0, v0, p2

    div-float/2addr v0, p1

    float-to-long p1, v0

    return-wide p1

    :cond_1
    :goto_0
    long-to-float p1, v0

    .line 565
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 496
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 499
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1

    .line 500
    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    :goto_1
    return-wide p1
.end method


# virtual methods
.method protected canSelectFormat(Lcom/google/android/exoplayer2/Format;IJ)Z
    .locals 1

    int-to-long p1, p2

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public disable()V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    return-void
.end method

.method public enable()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 310
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 10

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 393
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(JLjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 396
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 397
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 399
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return v3

    .line 402
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 403
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 404
    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v4, p1

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 405
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    .line 407
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    return v2

    .line 411
    :cond_3
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v4

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v0

    .line 412
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 417
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 418
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 419
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v8, p1

    .line 420
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 421
    invoke-static {v8, v9, v1}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_4

    .line 422
    iget v1, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v5, :cond_4

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    const/16 v8, 0x2d0

    if-ge v1, v8, :cond_4

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v4, v5, :cond_4

    const/16 v5, 0x500

    if-ge v4, v5, :cond_4

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v1, v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .locals 2

    .line 468
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method protected shouldEvaluateQueueSize(JLjava/util/List;)Z
    .locals 5

    .line 456
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 458
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 5

    .line 333
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 334
    invoke-direct {p0, p8, p7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getNextChunkDurationUs([Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;Ljava/util/List;)J

    move-result-wide v0

    .line 337
    iget p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez p8, :cond_0

    const/4 p3, 0x1

    .line 338
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 339
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void

    .line 343
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 346
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    :goto_0
    if-eq v3, v4, :cond_2

    .line 349
    invoke-static {p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget p8, p7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move v2, v3

    .line 351
    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result p7

    .line 352
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result p1

    if-nez p1, :cond_4

    .line 354
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 355
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 356
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le v0, v1, :cond_3

    .line 357
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide p5

    cmp-long v0, p3, p5

    if-gez v0, :cond_3

    goto :goto_1

    .line 361
    :cond_3
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge p2, p1, :cond_4

    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_4

    :goto_1
    move p7, v2

    :cond_4
    if-ne p7, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 p8, 0x3

    .line 370
    :goto_2
    iput p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 371
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void
.end method
