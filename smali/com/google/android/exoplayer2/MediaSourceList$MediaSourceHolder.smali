.class final Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplayer2/MediaSourceInfoHolder;


# instance fields
.field public final activeMediaPeriodIds:Ljava/util/List;

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 484
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 485
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public reset(I)V
    .locals 0

    .line 489
    iput p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    const/4 p1, 0x0

    .line 490
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 491
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
