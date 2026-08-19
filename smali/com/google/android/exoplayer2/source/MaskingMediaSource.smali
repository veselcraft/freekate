.class public final Lcom/google/android/exoplayer2/source/MaskingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "MaskingMediaSource.java"


# instance fields
.field private hasRealTimeline:Z

.field private hasStartedPreparing:Z

.field private isPrepared:Z

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

.field private unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

.field private final useLazyPreparation:Z

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->isSingleWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->useLazyPreparation:Z

    .line 62
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 63
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 64
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 67
    invoke-static {p2, p1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithPlaceholderTimeline(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    :goto_1
    return-void
.end method

.method private getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 233
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 234
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object p1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 226
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 242
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 254
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 257
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->overridePreparePositionUs(J)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    .locals 1

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 116
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 117
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    goto :goto_0

    .line 124
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 125
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    const/4 p1, 0x0

    .line 127
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 222
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 12

    .line 152
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 154
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionOverrideUs()J

    move-result-wide p1

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    goto/16 :goto_3

    .line 159
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object p2, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    goto/16 :goto_3

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 181
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    .line 182
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-eqz v2, :cond_3

    .line 184
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionUs()J

    move-result-wide v2

    .line 185
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 186
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 188
    invoke-virtual {v2, p2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-eqz p2, :cond_3

    move-wide v10, v4

    goto :goto_1

    :cond_3
    move-wide v10, v0

    .line 193
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v9, 0x0

    move-object v6, p3

    .line 194
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p2

    .line 196
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 197
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 199
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz p2, :cond_4

    .line 200
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    goto :goto_2

    .line 201
    :cond_4
    invoke-static {p3, p1, v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 202
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-eqz p1, :cond_5

    .line 204
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    .line 205
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 206
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 p2, 0x1

    .line 209
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 210
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    .line 211
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    if-eqz p1, :cond_6

    .line 213
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 214
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    :cond_6
    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 83
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->useLazyPreparation:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    const/4 p1, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 135
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    :cond_0
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->isPrepared:Z

    .line 144
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 145
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    return-void
.end method
