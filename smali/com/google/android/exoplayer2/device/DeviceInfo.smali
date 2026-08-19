.class public final Lcom/google/android/exoplayer2/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/device/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/device/DeviceInfo;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    .line 59
    iput p2, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    .line 60
    iput p3, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 71
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/device/DeviceInfo;

    .line 72
    iget v1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    iget p1, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    add-int/2addr v1, v0

    return v1
.end method
