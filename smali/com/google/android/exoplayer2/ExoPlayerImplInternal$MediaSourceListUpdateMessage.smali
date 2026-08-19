.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# instance fields
.field private final mediaSourceHolders:Ljava/util/List;

.field private final positionUs:J

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private final windowIndex:I


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJ)V
    .locals 0

    .line 2950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2951
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    .line 2952
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 2953
    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    .line 2954
    iput-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V
    .locals 0

    .line 2939
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I
    .locals 0

    .line 2939
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;
    .locals 0

    .line 2939
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 0

    .line 2939
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J
    .locals 2

    .line 2939
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-wide v0
.end method
