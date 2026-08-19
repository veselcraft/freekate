.class public final Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
.super Ljava/lang/Object;
.source "MediaItem.java"


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJZZZ)V
    .locals 0

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    .line 1122
    iput-wide p3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    .line 1123
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    .line 1124
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    .line 1125
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    return-void
.end method

.method synthetic constructor <init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1089
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(JJZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1133
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1137
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 1139
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1148
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1149
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1150
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1151
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1152
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    add-int/2addr v1, v0

    return v1
.end method
