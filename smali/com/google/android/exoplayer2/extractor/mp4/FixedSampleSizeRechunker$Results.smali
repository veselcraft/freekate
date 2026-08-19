.class public final Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# instance fields
.field public final duration:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J


# direct methods
.method private constructor <init>([J[II[J[IJ)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 49
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 50
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 51
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 52
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 53
    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    return-void
.end method

.method synthetic constructor <init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJ)V

    return-void
.end method
