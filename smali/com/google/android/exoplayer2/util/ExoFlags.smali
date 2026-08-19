.class public final Lcom/google/android/exoplayer2/util/ExoFlags;
.super Ljava/lang/Object;
.source "ExoFlags.java"


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ExoFlags;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/ExoFlags$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/util/ExoFlags;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/util/ExoFlags;

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ExoFlags;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ExoFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ExoFlags;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ExoFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ExoFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ExoFlags;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
