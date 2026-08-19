.class final Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "MergingMediaSource.java"


# instance fields
.field private final periodDurationsUs:[J

.field private final windowDurationsUs:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/util/Map;)V
    .locals 12

    .line 331
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 336
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    .line 339
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 340
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    .line 342
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 343
    iget-object v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 344
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    goto :goto_2

    .line 345
    :cond_1
    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_2
    aput-wide v3, v5, v2

    .line 346
    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v6

    if-eqz v8, :cond_2

    .line 347
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    iget v7, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    aget-wide v8, v6, v7

    aget-wide v10, v5, v2

    sub-long/2addr v3, v10

    sub-long/2addr v8, v3

    aput-wide v8, v6, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 2

    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 366
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 4

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 355
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, p3

    if-eqz p1, :cond_1

    .line 357
    iget-wide v2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long p1, v2, p3

    if-nez p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_1

    .line 358
    :cond_1
    :goto_0
    iget-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 359
    :goto_1
    iput-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-object p2
.end method
