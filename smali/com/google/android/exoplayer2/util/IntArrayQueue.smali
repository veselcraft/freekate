.class public final Lcom/google/android/exoplayer2/util/IntArrayQueue;
.super Ljava/lang/Object;
.source "IntArrayQueue.java"


# instance fields
.field private data:[I

.field private headIndex:I

.field private size:I

.field private tailIndex:I

.field private wrapAroundMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->tailIndex:I

    .line 40
    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    .line 42
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->wrapAroundMask:I

    return-void
.end method

.method private doubleArraySize()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    .line 101
    new-array v1, v1, [I

    .line 102
    array-length v2, v0

    iget v3, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->headIndex:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    .line 104
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput v4, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->headIndex:I

    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->tailIndex:I

    .line 109
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    .line 110
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->wrapAroundMask:I

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 47
    iget v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->doubleArraySize()V

    .line 51
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->tailIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->tailIndex:I

    .line 52
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    aput p1, v1, v0

    .line 53
    iget p1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->tailIndex:I

    .line 87
    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()I
    .locals 4

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->data:[I

    iget v2, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->headIndex:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 67
    iget v3, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->headIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 68
    iput v0, p0, Lcom/google/android/exoplayer2/util/IntArrayQueue;->size:I

    return v1

    .line 63
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
