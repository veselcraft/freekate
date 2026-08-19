.class public final Lcom/google/android/exoplayer2/video/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"


# static fields
.field public static final UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 99
    iput p2, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 100
    iput p3, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    .line 101
    iput p4, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/video/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 110
    check-cast p1, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 111
    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 123
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
