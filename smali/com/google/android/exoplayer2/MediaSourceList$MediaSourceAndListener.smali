.class final Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;)V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 516
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 517
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    return-void
.end method
