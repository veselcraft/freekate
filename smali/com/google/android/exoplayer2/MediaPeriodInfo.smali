.class final Lcom/google/android/exoplayer2/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# instance fields
.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final isLastInTimelineWindow:Z

.field public final requestedContentPositionUs:J

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZ)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 74
    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    .line 75
    iput-wide p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 76
    iput-wide p6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    .line 77
    iput-wide p8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 78
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 79
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    .line 80
    iput-boolean p12, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    return-void
.end method


# virtual methods
.method public copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 16

    move-object/from16 v0, p0

    .line 106
    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZ)V

    :goto_0
    return-object v1
.end method

.method public copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .locals 16

    move-object/from16 v0, p0

    .line 88
    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZZ)V

    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 124
    const-class v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 128
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 135
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 142
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 143
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 144
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    iget-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 146
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 147
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    add-int/2addr v1, v0

    return v1
.end method
