.class public final Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;


# instance fields
.field private final bytePositionToUpdate:J

.field private final timestampToUpdate:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 416
    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    .line 440
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 441
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)I
    .locals 0

    .line 395
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-wide v0
.end method

.method public static overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 7

    .line 451
    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 7

    .line 471
    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 7

    .line 462
    new-instance v6, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method
