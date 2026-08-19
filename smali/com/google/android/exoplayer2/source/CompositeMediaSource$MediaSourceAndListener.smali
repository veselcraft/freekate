.class final Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# instance fields
.field public final caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 212
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    .line 213
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;

    return-void
.end method
