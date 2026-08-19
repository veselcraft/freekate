.class final Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# instance fields
.field public final durationUs:J

.field public final flags:[I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J

.field public final track:Lcom/google/android/exoplayer2/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length p4, p3

    array-length v0, p5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 53
    array-length p4, p2

    array-length v0, p5

    if-ne p4, v0, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 54
    array-length p4, p6

    array-length v0, p5

    if-ne p4, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 57
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    .line 58
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    .line 60
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    .line 61
    iput-object p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    .line 62
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 63
    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    .line 64
    array-length p1, p6

    if-lez p1, :cond_3

    .line 65
    array-length p1, p6

    sub-int/2addr p1, v2

    aget p2, p6, p1

    const/high16 p3, 0x20000000

    or-int/2addr p2, p3

    aput p2, p6, p1

    :cond_3
    return-void
.end method
