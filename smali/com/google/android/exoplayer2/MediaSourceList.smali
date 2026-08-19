.class final Lcom/google/android/exoplayer2/MediaSourceList;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# instance fields
.field private final childSources:Ljava/util/HashMap;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final enabledMediaSourceHolders:Ljava/util/Set;

.field private isPrepared:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

.field private final mediaSourceByUid:Ljava/util/Map;

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final mediaSourceHolders:Ljava/util/List;

.field private final mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public static synthetic $r8$lambda$IvId91cF5h9kInKwFrUZDZ47tvc(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->lambda$prepareChildSource$0(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 102
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 103
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    .line 106
    new-instance p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 107
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 112
    invoke-virtual {v0, p3, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result p0

    return p0
.end method

.method private correctOffsets(II)V
    .locals 2

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 409
    iget v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    if-eqz p1, :cond_0

    .line 388
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    return-void
.end method

.method private disableUnusedMediaSources()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 376
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 378
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->disableChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableMediaSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    return-void
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-static {p0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 6

    const/4 v0, 0x0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 423
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->getPeriodUid(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 424
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 460
    invoke-static {p0}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getPeriodUid(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getWindowIndexForChildWindowIndex(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I
    .locals 0

    .line 432
    iget p0, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$prepareChildSource$0(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;->onPlaylistUpdateRequested()V

    return-void
.end method

.method private maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 3

    .line 448
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 450
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 451
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 452
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 453
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 5

    .line 436
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 437
    new-instance v1, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaSourceList;)V

    .line 439
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;-><init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 440
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 442
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 443
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method private removeMediaSourcesInternal(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 395
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 397
    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->correctOffsets(II)V

    .line 399
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 400
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    if-eqz v2, :cond_0

    .line 401
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .locals 3

    .line 139
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move p3, p1

    .line 141
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 142
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    if-lez p3, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 145
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 146
    iget v1, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 148
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->reset(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->reset(I)V

    .line 152
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    .line 153
    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->correctOffsets(II)V

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    if-eqz v1, :cond_2

    .line 159
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->disableChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 2

    .line 304
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 306
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaSourceList;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 307
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 308
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->enableMediaSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 309
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 311
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->disableUnusedMediaSources()V

    return-object p1
.end method

.method public createTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 358
    iput v1, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 359
    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    return v0
.end method

.method public prepare(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 3

    .line 284
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 285
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    const/4 p1, 0x0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 288
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 289
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    return-void
.end method

.method public release()V
    .locals 5

    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 337
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 340
    invoke-static {v3, v4, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 343
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 324
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 325
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 326
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->disableUnusedMediaSources()V

    .line 330
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    return-void
.end method

.method public removeMediaSourceRange(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 189
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public setMediaSources(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result v0

    .line 272
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 275
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    const/4 v1, 0x0

    .line 276
    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 279
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    return-object p1
.end method
