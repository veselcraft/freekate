.class public final Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field private final retryDelayMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    .line 198
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I
    .locals 0

    .line 191
    iget p0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .locals 2

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
