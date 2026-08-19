.class final Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# instance fields
.field public allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

.field public final endPosition:J

.field public next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field public final startPosition:J

.field public wasInitialized:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 492
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .locals 2

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 525
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 526
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    return-object v1
.end method

.method public initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 503
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->wasInitialized:Z

    return-void
.end method

.method public translateOffset(J)I
    .locals 2

    .line 515
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/Allocation;->offset:I

    add-int/2addr p2, p1

    return p2
.end method
