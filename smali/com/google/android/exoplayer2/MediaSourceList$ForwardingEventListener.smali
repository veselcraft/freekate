.class final Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# instance fields
.field private drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

.field private mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic this$0:Lcom/google/android/exoplayer2/MediaSourceList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 1

    .line 528
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 530
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$100(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 531
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    return-void
.end method

.method private maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/MediaSourceList;->access$200(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->access$300(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;I)I

    move-result p1

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 667
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 669
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$000(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget v1, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 673
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 675
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->access$100(Lcom/google/android/exoplayer2/MediaSourceList;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 642
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :cond_0
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 588
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_0
    return-void
.end method
