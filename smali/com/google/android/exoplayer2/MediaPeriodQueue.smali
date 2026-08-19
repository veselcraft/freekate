.class final Lcom/google/android/exoplayer2/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private final analyticsCollectorHandler:Landroid/os/Handler;

.field private length:I

.field private loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$mWNPMcRbVVz2oDENMZzwGKF1Dk8(Lcom/google/android/exoplayer2/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->lambda$notifyQueueUpdate$0(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollectorHandler:Landroid/os/Handler;

    .line 74
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 75
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method private areDurationsCompatible(JJ)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

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

.method private canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z
    .locals 5

    .line 523
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 7

    .line 582
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 606
    iget-object v11, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 611
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 612
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 613
    iget-object v0, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 614
    iget-object v2, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    .line 615
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v0

    if-ne v0, v14, :cond_0

    return-object v15

    .line 624
    :cond_0
    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    .line 625
    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 626
    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 627
    iget-object v2, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    .line 628
    iget-object v2, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v8, v3, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v2, v0, :cond_3

    .line 634
    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 640
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 635
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    .line 644
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 645
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 646
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    goto :goto_0

    .line 650
    :cond_2
    iget-wide v4, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :goto_0
    move-wide v10, v2

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v10, v12

    .line 657
    :goto_1
    iget-object v6, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v0, p1

    move-wide v2, v10

    .line 658
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    .line 660
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v12, 0x0

    .line 663
    iget-object v10, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 664
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v8, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 665
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 666
    iget v3, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    .line 667
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v0

    if-ne v0, v14, :cond_5

    return-object v15

    .line 671
    :cond_5
    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 672
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v4

    if-ge v4, v0, :cond_6

    .line 675
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 684
    :cond_6
    iget-wide v0, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    .line 689
    iget-object v1, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v3, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 695
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 690
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v15

    .line 699
    :cond_7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_8
    move-wide v3, v0

    .line 701
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 710
    :cond_9
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 711
    iget-object v0, v9, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v1, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v0

    if-ne v4, v0, :cond_a

    .line 713
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v5

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 720
    :cond_a
    iget-object v2, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v11, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 12

    move-object v0, p2

    .line 733
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 734
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 743
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getMediaPeriodInfoForAd(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 17

    move-object/from16 v0, p0

    .line 759
    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 761
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v3, p1

    .line 763
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v2, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v3, v7, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 764
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    .line 766
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    .line 767
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v9, v11

    if-eqz v1, :cond_1

    cmp-long v1, v4, v9

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    .line 771
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    move-wide v3, v4

    .line 773
    :goto_1
    new-instance v14, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v1, v14

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZ)V

    return-object v14
.end method

.method private getMediaPeriodInfoForContent(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 790
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 791
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v5

    .line 792
    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide/from16 v8, p7

    invoke-direct {v7, v2, v8, v9, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 793
    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v2

    .line 794
    invoke-direct {v0, v1, v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInWindow(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v17

    .line 795
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v18

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    .line 798
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_0

    :cond_0
    move-wide v12, v8

    :goto_0
    cmp-long v1, v12, v8

    if-eqz v1, :cond_2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v12, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v14, v12

    goto :goto_2

    .line 802
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    move-wide v14, v5

    :goto_2
    cmp-long v1, v14, v8

    if-eqz v1, :cond_3

    cmp-long v1, v3, v14

    if-ltz v1, :cond_3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    sub-long v5, v14, v5

    .line 806
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v8, v3

    .line 808
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZ)V

    return-object v1
.end method

.method private isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 1

    .line 820
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLastInTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .locals 6

    .line 834
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 835
    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v0, p1

    .line 837
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLastInWindow(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    .line 824
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 827
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 828
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    .line 829
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$notifyQueueUpdate$0(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method private notifyQueueUpdate()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    if-eqz v0, :cond_2

    .line 425
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_0

    .line 428
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 429
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 432
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollectorHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 6

    .line 456
    invoke-virtual {p0, p1, p6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 457
    invoke-virtual {p6, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_0

    .line 459
    invoke-virtual {p6, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p0

    .line 460
    new-instance p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 462
    :cond_0
    invoke-virtual {p6, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    .line 463
    new-instance p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J
    .locals 5

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 481
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_0

    .line 484
    iget-wide p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide p1

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_2

    .line 490
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    iget-object p1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    return-wide p1

    .line 494
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_0

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_1
    if-eqz v1, :cond_4

    .line 498
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 500
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v3, v0, :cond_3

    .line 503
    iget-object p1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    return-wide p1

    .line 506
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_1

    .line 509
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    .line 510
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez p1, :cond_5

    .line 512
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 513
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_5
    return-wide v0
.end method

.method private updateForPlaybackModeChange(Lcom/google/android/exoplayer2/Timeline;)Z
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 545
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 547
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v2, p1

    .line 548
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v3

    .line 550
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v2, :cond_1

    .line 552
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1

    .line 555
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 559
    :cond_2
    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 568
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v2

    .line 571
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method


# virtual methods
.method public advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne v0, v2, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    if-nez v0, :cond_2

    .line 245
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 247
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 285
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 289
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 290
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :goto_0
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 293
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 296
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 297
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    return-void
.end method

.method public enqueueNextMediaPeriodHolder([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 11

    move-object v0, p0

    move-object/from16 v8, p5

    .line 165
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v1, :cond_1

    .line 166
    iget-object v1, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    :goto_0
    move-wide v3, v1

    .line 170
    new-instance v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-object v1, v10

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 179
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    goto :goto_1

    .line 182
    :cond_2
    iput-object v10, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 183
    iput-object v10, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_1
    const/4 v1, 0x0

    .line 185
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 186
    iput-object v10, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 187
    iget v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    .line 188
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    return-object v10
.end method

.method public getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    goto :goto_0

    .line 142
    :cond_0
    iget-object p3, p3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 13

    .line 382
    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 383
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v10

    .line 384
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInWindow(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v11

    .line 385
    invoke-direct {p0, p1, v1, v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v12

    .line 386
    iget-object v0, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 388
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 389
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v0, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    :cond_0
    :goto_0
    move-wide v8, v2

    goto :goto_1

    .line 390
    :cond_1
    iget-wide v2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    goto :goto_0

    .line 393
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v6, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZ)V

    return-object p1
.end method

.method public isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 263
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 264
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 268
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 269
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 271
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne p1, v2, :cond_2

    .line 272
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x1

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 276
    iget v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    goto :goto_1

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 279
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->notifyQueueUpdate()V

    return v1
.end method

.method public resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 7

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    .line 417
    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;JJLcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public shouldLoadNextMediaPeriod()Z
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateQueuedPeriods(Lcom/google/android/exoplayer2/Timeline;JJ)Z
    .locals 8

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 323
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v1

    goto :goto_1

    .line 334
    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 337
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 339
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 341
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    move-object v1, v4

    .line 347
    :goto_1
    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 348
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 351
    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 355
    iget-wide p1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    .line 357
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    .line 358
    :goto_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_5

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p3, p4, v3

    if-eqz p3, :cond_4

    cmp-long p3, p4, p1

    if-ltz p3, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 362
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 367
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public updateRepeatMode(Lcom/google/android/exoplayer2/Timeline;I)Z
    .locals 0

    .line 87
    iput p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result p1

    return p1
.end method

.method public updateShuffleModeEnabled(Lcom/google/android/exoplayer2/Timeline;Z)Z
    .locals 0

    .line 100
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result p1

    return p1
.end method
