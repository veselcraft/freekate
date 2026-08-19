.class public final Lcom/google/android/exoplayer2/Player$PositionInfo;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final positionMs:J

.field public final windowIndex:I

.field public final windowUid:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 456
    iput p2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowIndex:I

    .line 457
    iput-object p3, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 458
    iput p4, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    .line 459
    iput-wide p5, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    .line 460
    iput-wide p7, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    .line 461
    iput p9, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    .line 462
    iput p10, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 470
    const-class v2, Lcom/google/android/exoplayer2/Player$PositionInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 474
    iget v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    iget v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 480
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 481
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowIndex:I

    .line 488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->periodIndex:I

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->windowIndex:I

    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->positionMs:J

    .line 492
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->contentPositionMs:J

    .line 493
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adGroupIndex:I

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo;->adIndexInAdGroup:I

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 486
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
