.class Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "ProgressiveMediaSource.java"


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 381
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 392
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    return-object p2
.end method
